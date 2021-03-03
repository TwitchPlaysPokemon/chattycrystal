use rocket::{get, routes};
use rocket::config::{Config, Environment, LoggingLevel};
use crate::*;
use std::process::Command;
use std::sync;

pub fn send_hud_data(message: &str) {
    let message = message.to_owned();
    thread::Builder::new()
    .name("hud".to_string())
    .spawn(move || {
        HUD.get(&message).send().ok();
    })
    .expect("error: failed to start hud thread");
}

#[derive(Serialize, Debug, Default)]
pub struct HiddenPowerInfo {
    pub type_id: u8,
    pub type_name: String,
    pub power: u8,
}

#[derive(Serialize, Deserialize, Debug, Default, PartialEq, Eq, Hash, Clone, Copy)]
pub struct TrainerInfo {
    pub class: u8,
    pub id: u8
}

fn load_trainers() -> HashMap<Vec<u8>, String> {
    if let Ok(f) = File::open("trainer_name_map") {
        println!("Loading trainers from disk");
        bincode::deserialize_from(f).unwrap()
    } else {
        println!("No trainer list found, starting new one");
        Default::default()
    }
}

lazy_static! {
    pub static ref CHATTER_EMOTE: Mutex<ChatterState> = Mutex::new(Default::default());
    pub static ref CHATOT_LOCK: sync::Arc<sync::Mutex<()>> = sync::Arc::new(sync::Mutex::new(()));
    pub static ref CURRENT_EMOTE_NAME: Mutex<String> = Mutex::new(String::new());
    pub static ref HIDDEN_POWER: Mutex<HiddenPowerInfo> = Mutex::new(Default::default());
    pub static ref TEXT_INJECT: Mutex<String> = Mutex::new(String::new());
    pub static ref NEXT_MESSAGE: Mutex<String> = Mutex::new(String::new());
    pub static ref TRAINER_INDEX: Mutex<HashMap<Vec<u8>, String>> = Mutex::new(load_trainers());
    pub static ref CURRENT_TRAINER_NAME: Mutex<String> = Mutex::new("".to_string());
    pub static ref CURRENT_TRAINER_IDS: Mutex<TrainerInfo> = Mutex::new(Default::default());
    pub static ref NEXT_TRAINER_NAME: Mutex<String> = Mutex::new(String::new());
    pub static ref HUD: reqwest::Client = reqwest::Client::builder().timeout(Duration::new(5, 0)).build().unwrap();
}

pub fn start_endpoints() {
    println!("Starting up...");

    println!("Init symfile...");
    lazy_static::initialize(&SYM);
    lazy_static::initialize(&GEN_2_TEXTMAP);

    println!("Init chatter emote list...");
    lazy_static::initialize(&CHATTER_INDEX);

    println!("Init trainer index");
    lazy_static::initialize(&TRAINER_INDEX);

    BIZHAWK.pause().ok();

    BIZHAWK.remove_callback("text_inject").ok();
    BIZHAWK.remove_callback("chatter").ok();
    BIZHAWK.remove_callback("chatter_move_name").ok();
    BIZHAWK.remove_callback("hidden_power").ok();
    BIZHAWK.remove_callback("get_trainer_name").ok();
    BIZHAWK.remove_callback("inject_trainer_name").ok();
    BIZHAWK.remove_callback("chatot_cry").ok();

    BIZHAWK.on_memory_execute_if("text_inject", 
                                 SYM["AissInjectTextHere"].bus_addr, 
                                 0x02, 
                                 SYM["hROMBank"].bus_addr, 
                                 SYM["AissInjectTextHere"].bank, 
                                 &format!("http://localhost:{}/text_inject", SETTINGS.port)).ok();

    BIZHAWK.on_memory_execute_if("chatter", 
                                 SYM["BattleCommand_Chatter"].bus_addr, 
                                 0x02, 
                                 SYM["hROMBank"].bus_addr, 
                                 SYM["BattleCommand_Chatter"].bank, 
                                 &format!("http://localhost:{}/chatter", SETTINGS.port)).ok();

    BIZHAWK.on_memory_execute_if("chatter_move_name", 
                                 SYM["AissLoadMoveNameHere"].bus_addr, 
                                 0x02, 
                                 SYM["hROMBank"].bus_addr, 
                                 SYM["AissLoadMoveNameHere"].bank, 
                                 &format!("http://localhost:{}/chatter_move_name", SETTINGS.port)).ok();

    BIZHAWK.on_memory_execute_if("hidden_power", 
                                 SYM["BattleCommand_ChattyHP"].bus_addr, 
                                 0x02, 
                                 SYM["hROMBank"].bus_addr, 
                                 SYM["BattleCommand_ChattyHP"].bank, 
                                 &format!("http://localhost:{}/hidden_power", SETTINGS.port)).ok();

    BIZHAWK.on_memory_execute_if("get_trainer_name", 
                                 SYM["AissCollectClassAndID"].bus_addr, 
                                 0x02, 
                                 SYM["hROMBank"].bus_addr, 
                                 SYM["AissCollectClassAndID"].bank, 
                                 &format!("http://localhost:{}/get_trainer_name", SETTINGS.port)).ok();

    BIZHAWK.on_memory_execute_if("inject_trainer_name", 
                                 SYM["AissInjectTrainerNameHere"].bus_addr, 
                                 0x02, 
                                 SYM["hROMBank"].bus_addr, 
                                 SYM["AissInjectTrainerNameHere"].bank, 
                                 &format!("http://localhost:{}/inject_trainer_name", SETTINGS.port)).ok();

    BIZHAWK.on_memory_read_if("chatot_cry", 
                                SYM["ChatotCry"].bus_addr,
                                0x02,
                                SYM["hROMBank"].bus_addr, 
                                SYM["ChatotCry"].bank, 
                                &format!("http://localhost:{}/chatot_cry", SETTINGS.port)).ok();

    BIZHAWK.write_u16(&MemRegion::ROM, &SYM["ChatotCry"].addr + 0x04, 0x0000).ok();

    BIZHAWK.play().ok();

    thread::Builder::new()
        .name("endpoint_api".to_string())
        .spawn(move || {
            let config = Config::build(Environment::Staging)
                .address("localhost")
                .port(SETTINGS.port)
                .log_level(if SETTINGS.debug { LoggingLevel::Normal } else { LoggingLevel::Off })
                .finalize().unwrap();
            rocket::custom(config).mount("/", routes![text_inject, chatter, hidden_power, hidden_power_status, trainer_status, chatter_move_name, get_trainer_name, inject_trainer_name, chatot_cry, chatter_status]).launch();
        })
        .expect("error: failed to start endpoint_api");
    println!("Endpoints up and running.")
}

#[get("/text_inject")]
fn text_inject() -> &'static str {
    let lock = CALLBACK.try_lock();
    if lock.is_err() {
        println!("Text inject skipped due to bizhawk lock being in use.");
        return "ok"
    }

    if let Ok(w_chatty_space) = BIZHAWK.read_u8_sym(&SYM["wChattySpace"]) {
        let message = (*TEXT_INJECT.lock()).clone();

        if SETTINGS.debug { println!("Injecting text: {}, space_given: {}", message, w_chatty_space); }

        BIZHAWK.write_slice_sym(&SYM["ChattyText"], &utf8_to_ingame(message, w_chatty_space as usize)).ok();
    } else {
        println!("w_chatty_space memory read failed, writing default message");
        BIZHAWK.write_slice_sym(&SYM["ChattyText"], &utf8_to_ingame("oh no!".to_string(), 0)).ok();
    }
    
    BIZHAWK.write_u8_sym(&SYM["wScriptActive"], 0x01).ok();
    *CYCLE.lock() = 128;
    "ok"
}

#[get("/chatter")]
fn chatter() -> &'static str {
    let lock = CALLBACK.try_lock();
    if lock.is_err() {
        println!("chatter skipped due to bizhawk lock being in use.");
        return "ok"
    }

    let chatter_info = &*CHATTER_EMOTE.lock();

    *CURRENT_EMOTE_NAME.lock() = chatter_info.emote_name.clone();

    if let Ok(h_battle_turn) = BIZHAWK.read_u8_sym(&SYM["hBattleTurn"]) {
        if SETTINGS.debug { println!("Player Chatter: {}\nEnemy Chatter: {}\n hBattleTurn: {}", 
                                     chatter_info.player_move_id, chatter_info.enemy_move_id, h_battle_turn); }
        BIZHAWK.write_u16_be_sym(&SYM["wChattyChatterMove"], if h_battle_turn == 0 {chatter_info.player_move_id} else {chatter_info.enemy_move_id}).ok();
    } else {
        println!("hBattleTurn memory read failed, writing default (splash)");
        BIZHAWK.write_u16_be_sym(&SYM["wChattyChatterMove"], 150).ok();
    }
    
    BIZHAWK.write_u8_sym(&SYM["wScriptActive"], 0x01).ok();
    *CYCLE.lock() = 0;
    "ok"

}

#[get("/chatter_move_name")]
fn chatter_move_name() -> &'static str {
    let lock = CALLBACK.try_lock();
    if lock.is_err() {
        println!("chatter_move_name skipped due to bizhawk lock being in use.");
        return "ok"
    }

    let mut emote_name = (*CURRENT_EMOTE_NAME.lock()).clone();

    utf8_truncate(&mut emote_name, 13);

    if SETTINGS.debug { println!("Chatter Move Name: {}", emote_name); }

    BIZHAWK.write_slice_sym(&SYM["wStringBuffer2"], &utf8_to_ingame(emote_name, 0)).ok();
    BIZHAWK.write_u8_sym(&SYM["wScriptActive"], 0x01).ok();
    "ok"
}

#[get("/hidden_power")]
fn hidden_power() -> &'static str {
    let lock = CALLBACK.try_lock();
    if lock.is_err() {
        println!("chatter_move_name skipped due to bizhawk lock being in use.");
        return "ok"
    }

    let HiddenPowerInfo {type_id, type_name, power} = &*HIDDEN_POWER.lock();
    let emote_id = CHATTER_EMOTE.lock().emote_id.clone();

    BIZHAWK.write_u8_sym(&SYM["wChattyHPType"], *type_id).ok();
    BIZHAWK.write_u8_sym(&SYM["wChattyHPPower"], *power).ok();

    if let Some(ip) = &SETTINGS.hp_hud_emote_endpoint {
        send_hud_data(format!("{}/{}", ip, emote_id).as_str());
    }

    if SETTINGS.debug { println!("HP Type: {}\nHP Power: {}", type_name, power); }

    BIZHAWK.write_u8_sym(&SYM["wScriptActive"], 0x01).ok();
    *CYCLE.lock() = 0;
    "ok"
}

#[get("/hidden_power_status")]
fn hidden_power_status() -> String {
    to_string(&*HIDDEN_POWER.lock()).unwrap()
}

#[get("/chatter_status")]
fn chatter_status() -> String {
    to_string(&*CHATTER_EMOTE.lock()).unwrap()
}

#[get("/trainer_status")]
fn trainer_status() -> String {
    #[derive(Serialize)]
    struct TrainerData {
        ids: TrainerInfo,
        name: String
    };

    let data = TrainerData {ids: *CURRENT_TRAINER_IDS.lock(), name: (*CURRENT_TRAINER_NAME.lock()).clone()};
    to_string(&data).unwrap()
}

#[get("/get_trainer_name")]
fn get_trainer_name() -> &'static str {
    let lock = CALLBACK.try_lock();
    if lock.is_err() {
        println!("get_trainer_name skipped due to bizhawk lock being in use.");
        return "ok"
    }

    if let (Ok(class), Ok(id)) = (BIZHAWK.read_u8_sym(&SYM["wChattyTrainerClass"]), BIZHAWK.read_u8_sym(&SYM["wChattyTrainerID"])) {

        let trainer = TrainerInfo { class, id };

        *CURRENT_TRAINER_IDS.lock() = trainer;

        *CURRENT_TRAINER_NAME.lock() = "Kappa".to_string();

        if trainer.class == 38 || trainer.class >= 41 {
            *CURRENT_TRAINER_NAME.lock() = "".to_string();
            if SETTINGS.debug { println!("Excluded trainer, Skipping..."); }
            return "ok";
        }
    } else {
        println!("Cannot get trainer name, read of wChattyTrainerClass or wChattyTrainerID Failed.");
    }
    
    BIZHAWK.write_u8_sym(&SYM["wScriptActive"], 0x01).ok();
    *CYCLE.lock() = 192;
    "ok"
}

#[get("/inject_trainer_name")]
fn inject_trainer_name() -> &'static str {
    let lock = CALLBACK.try_lock();
    if lock.is_err() {
        println!("inject_trainer_name skipped due to bizhawk lock being in use.");
        return "ok"
    }

    if *CURRENT_TRAINER_NAME.lock() == "" {
        if SETTINGS.debug { println!("Excluded trainer, Skipping..."); }
        return "ok";
    }

    if let Ok(current_name_slice) = BIZHAWK.read_slice_sym(&SYM["wStringBuffer1"], 0x18) {
        let mut current_name_slice = current_name_slice.split(|a| a == &0x50).next().unwrap().to_vec();
        let trainer = *CURRENT_TRAINER_IDS.lock();
        let mut index = TRAINER_INDEX.lock();

        let mut key = vec!(trainer.id);
        key.append(&mut current_name_slice);

        if let Some(name) = index.get(&key) {
            *CURRENT_TRAINER_NAME.lock() = name.clone();
            utf8_truncate(&mut *CURRENT_TRAINER_NAME.lock(), 16);
        } else {
            let next_name = (*NEXT_TRAINER_NAME.lock()).clone();

            *CURRENT_TRAINER_NAME.lock() = next_name.clone();
            utf8_truncate(&mut *CURRENT_TRAINER_NAME.lock(), 16);

            index.insert(key, next_name);
        }

        if SETTINGS.debug { println!("Trainer Name: {}", *CURRENT_TRAINER_NAME.lock()); }

        BIZHAWK.write_slice_sym(&SYM["wStringBuffer1"], &utf8_to_ingame((*CURRENT_TRAINER_NAME.lock()).clone(), 0)).ok();
    } else {
        println!("Cannot inject trainer name, read of wStringBuffer1 Failed.");
    }
    BIZHAWK.write_u8_sym(&SYM["wScriptActive"], 0x01).ok();
    "ok"
}

#[get("/chatot_cry")]
fn chatot_cry() -> &'static str {
    let lock = CALLBACK.try_lock();
    if lock.is_err() {
        println!("chatot_cry skipped due to bizhawk lock being in use.");
        return "ok"
    }

    let choice = rand::thread_rng().gen_range(0, 15);

    let mut voice = "en".to_string();

    voice.push('+');

    match choice {
        1 ..= 7 => {
            voice.push_str(format!("m{}", &choice.to_string()).as_str());
        },
        8 ..= 13 => {
            voice.push_str(format!("f{}", &(choice - 7).to_string()).as_str());
        },
        14 => {
            voice.push_str("croak");
        },
        15 => {
            voice.push_str("whisper");
        },
        _ => {}
    }

    thread::Builder::new()
        .name("espeak".to_string())
        .spawn(move || {
            let lock = CHATOT_LOCK.try_lock();
            if lock.is_err() {
                println!("chatot_cry skipped due to already playing cry");
                return;
            }
            Command::new("espeak")
                .arg("-a")
                .arg("150")
                .arg("-k")
                .arg("20")
                .arg("-s")
                .arg("175")
                .arg("-p")
                .arg("50")
                .arg("-v")
                .arg(&voice)
                .arg(format!("\"{}\"", *NEXT_MESSAGE.lock()))
                .output()
                .expect("failed to run espeak");
        })
        .expect("error: failed to start command line for espeak");

    BIZHAWK.write_u8_sym(&SYM["wScriptActive"], 0x01).ok();
    "ok"
}