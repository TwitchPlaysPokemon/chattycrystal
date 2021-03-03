#![allow(clippy::cast_lossless, clippy::upper_case_acronyms, dead_code, non_snake_case)]
#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate strum_macros;

mod bizhawk;
mod endpoints;


use std::cmp::min;
use std::collections::HashMap;
use maplit::hashmap;
use crate::bizhawk::*;
use crate::endpoints::*;
use std::thread;
use std::time;
use std::fs::File;

use lazy_static::lazy_static;
use textwrap::wrap;
use chrono::Utc;
use parking_lot::Mutex;
use rand::Rng;
use serde_json::to_string;
use std::time::Duration;
use serde::{Deserialize, Serialize};

#[derive(Deserialize, Debug, Default)]
pub struct Settings {
    game: String,
    console: String,

    port: u16,
    bizhawk_port: u16,
    core_port: u16,

    poll_rate_ms: u64,

    enable_autosave: Option<bool>,
    autosave_frequency: u64,

    hp_base_power: f32,
    hp_chat_unit: f32,
    hp_power_per_unit: f32,
    chat_speed_endpoint: String,

    hp_badge_base: u32,
    hp_badge_cap: u32,
    hp_power_per_badge: u32,

    hp_hud_power_endpoint: Option<String>,
    hp_hud_emote_endpoint: Option<String>,

    markov_endpoint: String,
    recent_message_endpoint: String,
    top_emotes_endpoint: String,

    recent_inputter_endpoint: String,

    cry_volume: usize,
    espeak_voice: String,
    debug: bool
}

#[derive(Deserialize, Debug, Default)]
pub struct ChatterMoveList {
    player_moves: HashMap<String, ChatterMove>,
    enemy_moves: HashMap<String, ChatterMove>
}

#[derive(Deserialize, Debug, Default)]
pub struct ChatterMove {
    moveName: String,
    moveId: u16,
    badges: u32,
    hpTypeName: Option<String>,
    hpTypeId: Option<u8>,
    enemyMoveName: Option<String>,
    enemyMoveId: Option<u16>,
}

#[derive(Deserialize, Serialize, Debug, Default)]
pub struct ChatterState {
    emote_name: String,
    emote_id: String,
    player_move_id: u16,
    player_move_name: String,
    enemy_move_id: u16,
    enemy_move_name: String
}

#[derive(Deserialize, Debug, Default)]
pub struct TopEmote {
    emote: EmoteInfo,
    count: usize,
}

#[derive(Deserialize, Debug, Default)]
pub struct EmoteInfo {
    id: String,
    name: String,
}

pub struct CoreConnection {
    client: reqwest::Client,
    port: u16
}

impl CoreConnection {
    pub fn new(port: u16) -> CoreConnection {
        CoreConnection {
            client: reqwest::Client::builder().timeout(Duration::new(5, 0)).build().unwrap(),
            port
        }
    }

    pub fn send(&self, command: &str) -> Result<String, reqwest::Error> {
        self.client.get(command).send()?.text()
    }
}

lazy_static! {
    pub static ref CYCLE: Mutex<usize> = Mutex::new(0);
    pub static ref CHATTER_INDEX: HashMap<String, ChatterMove> = load_chatter();
    pub static ref CONTROLLER_PATH: std::path::PathBuf = std::env::current_dir().unwrap();
    pub static ref SETTINGS: Settings = load_config();
    pub static ref BIZHAWK: bizhawk::Bizhawk = Bizhawk::new(SETTINGS.bizhawk_port);
    pub static ref CORE: CoreConnection = CoreConnection::new(SETTINGS.core_port);
    pub static ref POLL_DELAY: time::Duration = time::Duration::from_millis(SETTINGS.poll_rate_ms / 256);
    pub static ref SYMFILE_PATH: String = format!("{}\\bizhawk\\roms\\{}.sym", &CONTROLLER_PATH.to_str().unwrap(), SETTINGS.game);
    pub static ref SYMFILE_STRING: String = load_symfile_text(&SYMFILE_PATH).unwrap();
    pub static ref SYM: HashMap<&'static str, SymEntry> = load_symfile(&SYMFILE_STRING);
    pub static ref GEN_2_TEXTMAP: HashMap<char, u8> = hashmap!(                                                                                                                                            ' ' => 0x7F,
        'A' => 0x80, 'B' => 0x81, 'C' => 0x82, 'D' => 0x83, 'E' => 0x84, 'F' => 0x85, 'G' => 0x86, 'H' => 0x87, 'I' => 0x88, 'J' => 0x89, 'K' => 0x8A, 'L' => 0x8B, 'M' => 0x8C, 'N' => 0x8D, 'O' => 0x8E, 'P' => 0x8F,
        'Q' => 0x90, 'R' => 0x91, 'S' => 0x92, 'T' => 0x93, 'U' => 0x94, 'V' => 0x95, 'W' => 0x96, 'X' => 0x97, 'Y' => 0x98, 'Z' => 0x99, '(' => 0x9A, ')' => 0x9B, ':' => 0x9C, ';' => 0x9D, '[' => 0x9E, ']' => 0x9F,
        'a' => 0xA0, 'b' => 0xA1, 'c' => 0xA2, 'd' => 0xA3, 'e' => 0xA4, 'f' => 0xA5, 'g' => 0xA6, 'h' => 0xA7, 'i' => 0xA8, 'j' => 0xA9, 'k' => 0xAA, 'l' => 0xAB, 'm' => 0xAC, 'n' => 0xAD, 'o' => 0xAE, 'p' => 0xAF,
        'q' => 0xB0, 'r' => 0xB1, 's' => 0xB2, 't' => 0xB3, 'u' => 0xB4, 'v' => 0xB5, 'w' => 0xB6, 'x' => 0xB7, 'y' => 0xB8, 'z' => 0xB9, '_' => 0xBA,


       '\'' => 0xE0,                           '-' => 0xE3,                           '?' => 0xE6, '!' => 0xE7, '.' => 0xE8, '&' => 0xE9, 'é' => 0xEA,                                                     '♂' => 0xEF,
        '$' => 0xF0, '*' => 0xF1,              '/' => 0xF3, ',' => 0xF4, '♀' => 0xF5, '0' => 0xF6, '1' => 0xF7, '2' => 0xF8, '3' => 0xF9, '4' => 0xFA, '5' => 0xFB, '6' => 0xFC, '7' => 0xFD, '8' => 0xFE, '9' => 0xFF);
}

fn load_config() -> Settings {
    if let Ok(mut json) = std::fs::read_to_string("config.json") {
        json = strip_jsonc_comments(&json, false);
        serde_json::from_str(&json).unwrap()
    } else {
        Default::default()
    }
}
fn load_chatter() -> HashMap<String, ChatterMove> {
    if let Ok(mut json) = std::fs::read_to_string("chatter_emotes.json") {
        json = strip_jsonc_comments(&json, false);
        serde_json::from_str(&json).unwrap()
    } else {
        Default::default()
    }
}

fn utf8_truncate(input: &mut String, maxsize: usize) {
    let mut utf8_maxsize = input.len();
    if utf8_maxsize >= maxsize {
        let mut char_iter = input.char_indices();
        while utf8_maxsize >= maxsize {
            utf8_maxsize = match char_iter.next_back() {
                Some((index, _)) => index,
                _ => 0,
            };
        }
        input.truncate(utf8_maxsize);
    }
}

pub fn make_backup() {
    println!("Creating Backup");
    let pathstr = &CONTROLLER_PATH.to_str().unwrap();
    let backup_name = format!("{} {}", "AutoSave", Utc::now().format("%Y-%m-%d-%H%M%S"));
    std::fs::create_dir(format!("{}\\Backups\\{}", pathstr, backup_name)).ok();
    BIZHAWK.save_state_custom(format!("{}\\Backups\\{}\\{}", pathstr, backup_name, BIZHAWK.get_rom_name().unwrap()).as_str()).unwrap();
    BIZHAWK.save_state(&SETTINGS.game).unwrap();
}

fn main() {
    start_endpoints();
    lazy_static::initialize(&CORE);

    let mut old_time = time::Instant::now();
    let mut old_save_time = time::Instant::now();

    loop {
        let new_time = time::Instant::now();
        let cycle = *CYCLE.lock();

        match cycle {
            1 => {
                if SETTINGS.debug { 
                    println!();
                }
                update_emote_related_data();
                let emote_data = &*CHATTER_EMOTE.lock();
                let hidden_power_type = &(*HIDDEN_POWER.lock()).type_name;
                if SETTINGS.debug { 
                    println!("Current Emote: {}\nPlayer Chatter Move: {}\nEnemy Chatter Move: {}\nHP Type: {}", 
                         emote_data.emote_name, emote_data.player_move_name, emote_data.enemy_move_name, hidden_power_type);
                }
            },
            65 => {
                update_chat_speed();
                if SETTINGS.debug { println!("HP Power: {}", (*HIDDEN_POWER.lock()).power); }
            },
            129 => {
                update_recent_message();
                update_markov();
                if SETTINGS.debug { println!("Current_markov: {}", *TEXT_INJECT.lock()); }
                if SETTINGS.debug { println!("Next Chatot Cry: {}", *NEXT_MESSAGE.lock()); }
            },
            193 => {
                update_next_trainer_name();
                if SETTINGS.debug { println!("Next Trainer name: {}", *NEXT_TRAINER_NAME.lock()); }
            },
            255 => {
                BIZHAWK.write_u8_sym(&SYM["wScriptActive"], 0x01).unwrap();
            }
            _ => {}
        }

        if time::Instant::now() - old_save_time > Duration::from_secs(SETTINGS.autosave_frequency) {
            if let Some(enable) = SETTINGS.enable_autosave {
                if enable {
                    make_backup();
                }
            }
            let mut f = File::create("trainer_name_map").unwrap();
            bincode::serialize_into(&mut f, &*TRAINER_INDEX.lock()).unwrap();
            old_save_time = time::Instant::now();
        }

        if old_time + *POLL_DELAY > new_time {
            thread::sleep(*POLL_DELAY - (new_time - old_time));
        }

        old_time = new_time;
        *CYCLE.lock() += 1;
        *CYCLE.lock() %= 256;
    }
}

fn utf8_to_ingame(mut string: String, mut current_pos: usize) -> Vec<u8> {
    let mut charvec: Vec<u8> = vec!();
    let mut firstline = current_pos < 18;

    match current_pos {
        18 => {
            current_pos = 0; 
            charvec.push(0x4F);
        }
        19..=38 => {
            current_pos -= 19;
        }
        _ => {}
    }

    if current_pos != 0 {
        let mut temp = String::new();
        for _ in 0..current_pos {
            temp.push(' ');
        }
        string.insert_str(0, &temp);
    }

    let mut vec = wrap(&string, 17);

    let mut string = String::new();

    for (i, s) in vec.drain(..).enumerate() {
        if i != 0 {
            string.push('\n');
            string.push_str(&s);
        } else {
            string.push_str(&s.trim_start());
        }
    }
    if SETTINGS.debug { println!("Post conversion String:\n{}" , string); }
    for (i, c) in string.chars().enumerate() {
        if i >= 0x200 { break }; // 0x200 character limit
        if c == '\n' || current_pos == 18 {
            if firstline {
                charvec.push(0x4F);
                firstline = false;
            } else {
                charvec.push(0x55);
            }
            current_pos = 0;
        }
        if c != '\n' {
            if let Some(byte) = GEN_2_TEXTMAP.get(&c) {
                charvec.push(*byte);
            } else {
                charvec.push(0x7F);
                break;
            } 
        }
        current_pos += 1;
    }
    charvec.push(0x50);
    charvec
}

fn update_emote_related_data() {
    let badge_count = BIZHAWK.read_u16_sym(&SYM["wBadges"]).unwrap().count_ones();
    let mut trending_emotes: Vec<TopEmote> = serde_json::from_str(&CORE.send(&SETTINGS.top_emotes_endpoint).unwrap_or_default()).unwrap_or_default();

    if SETTINGS.debug { 
        print!("Top emotes: ");
        for entry in &trending_emotes {
            print!("{} {}, ", entry.emote.name, entry.count);
        }
        println!();
    }

    trending_emotes.retain(|emote_data| {
        if let Some(emote_info) = CHATTER_INDEX.get(&emote_data.emote.name) {
            emote_info.badges <= badge_count
        } else {
            false
        }
    });

    if SETTINGS.debug { 
        print!("Eligible emotes: ");
        for entry in &trending_emotes {
            print!("{} {}, ", entry.emote.name, entry.count);
        }
        println!();
    }

    if !trending_emotes.is_empty() {
        let mut probabilities = Vec::new();
        let mut total_count = 0;
        for emote_data in trending_emotes {
            total_count += emote_data.count;
            probabilities.push((emote_data, total_count));
        }
        let choice = rand::thread_rng().gen_range(0, total_count);
        for entry in probabilities {
            if choice <= entry.1 {
                if let Some(chatter_data) = CHATTER_INDEX.get(&entry.0.emote.name) {
                    let player_move_id = chatter_data.moveId;
                    let enemy_move_id = if let Some(move_id) = chatter_data.enemyMoveId { move_id } else { player_move_id };
                    let enemy_move_name = if let Some(name) = &chatter_data.enemyMoveName { name } else { &chatter_data.moveName };
                    *CHATTER_EMOTE.lock() = ChatterState { emote_name: entry.0.emote.name.clone(), 
                                                           emote_id: entry.0.emote.id.clone(), 
                                                           player_move_id,
                                                           player_move_name: chatter_data.moveName.clone(),
                                                           enemy_move_id,
                                                           enemy_move_name: enemy_move_name.to_string() };
                    (*HIDDEN_POWER.lock()).type_id = chatter_data.hpTypeId.unwrap_or(0);
                    (*HIDDEN_POWER.lock()).type_name = chatter_data.hpTypeName.clone().unwrap_or_else(|| "Normal".to_string());
                    return
                }
            }
        }
    } else if let Some(chatter_data) = CHATTER_INDEX.get("default") {
        let player_move_id = chatter_data.moveId;
        let enemy_move_id = if let Some(move_id) = chatter_data.enemyMoveId { move_id } else { player_move_id };
        let enemy_move_name = if let Some(name) = &chatter_data.enemyMoveName { name } else { &chatter_data.moveName };
        *CHATTER_EMOTE.lock() = ChatterState {emote_name: "Nothing".to_string(),
                                              emote_id: "".to_string(), 
                                              player_move_id,
                                              player_move_name: chatter_data.moveName.clone(),
                                              enemy_move_id,
                                              enemy_move_name: enemy_move_name.to_string() };
        (*HIDDEN_POWER.lock()).type_id = chatter_data.hpTypeId.unwrap_or(0);
        (*HIDDEN_POWER.lock()).type_name = chatter_data.hpTypeName.clone().unwrap_or_else(|| "Normal".to_string());
    } else {
        *CHATTER_EMOTE.lock() = ChatterState {emote_name: "Nothing".to_string(), 
                                              emote_id: "".to_string(),
                                              player_move_id: 150,
                                              player_move_name: "Splash".to_string(),
                                              enemy_move_id: 150,
                                              enemy_move_name: "Splash".to_string() };
        (*HIDDEN_POWER.lock()).type_id = 0;
        (*HIDDEN_POWER.lock()).type_name = "Nothing".to_string();
    }
}

fn update_chat_speed() {
    let lines_per_sec: f32 = CORE.send(&SETTINGS.chat_speed_endpoint).unwrap_or_else(|_| "".to_string()).parse().unwrap_or(0.0);
    let badge_count = BIZHAWK.read_u16_sym(&SYM["wBadges"]).unwrap().count_ones();

    let hp_max_power = SETTINGS.hp_badge_base + (min(badge_count, SETTINGS.hp_badge_cap) * SETTINGS.hp_power_per_badge);
    (*HIDDEN_POWER.lock()).power = min((SETTINGS.hp_base_power + ((lines_per_sec / SETTINGS.hp_chat_unit) * SETTINGS.hp_power_per_unit)) as u32, hp_max_power) as u8;
    
    if let Some(ip) = &SETTINGS.hp_hud_power_endpoint {
        HUD.get(format!("{}/{}", ip, (*HIDDEN_POWER.lock()).power).as_str()).send().ok();
    }
}

fn update_markov() {
    *TEXT_INJECT.lock() = CORE.send(&SETTINGS.markov_endpoint).unwrap_or_else(|_| "oh no!".to_string());
}

fn update_recent_message() {
    *NEXT_MESSAGE.lock() = CORE.send(&SETTINGS.recent_message_endpoint).unwrap_or_else(|_| "oh no!".to_string());
    utf8_truncate(&mut *NEXT_MESSAGE.lock(), 150);
}

fn update_next_trainer_name() {
    let mut next_name = "Kappa";
    let list = CORE.send(&SETTINGS.recent_inputter_endpoint).unwrap_or_else(|_| "".to_string());

    for name in list.split_whitespace() {
        next_name = name;
        if !TRAINER_INDEX.lock().values().any(|x| x == next_name) {
            break;
        }
    }

    *NEXT_TRAINER_NAME.lock() = next_name.to_string();
}

/// Takes a string of jsonc content and returns a comment free version
/// which should parse fine as regular json.
/// Nested block comments are supported.
/// preserve_locations will replace most comments with spaces, so that JSON parsing
/// errors should point to the right location.
pub fn strip_jsonc_comments(jsonc_input: &str, preserve_locations: bool) -> String {
    let mut json_output = String::new();

    let mut block_comment_depth: u8 = 0;
    let mut is_in_string: bool = false; // Comments cannot be in strings

    for line in jsonc_input.split('\n') {
        let mut last_char: Option<char> = None;
        for cur_char in line.chars() {
            // Check whether we're in a string
            if block_comment_depth == 0 && last_char != Some('\\') && cur_char == '"' {
                is_in_string = !is_in_string;
            }

            // Check for line comment start
            if !is_in_string && last_char == Some('/') && cur_char == '/' {
                last_char = None;
                if preserve_locations {
                    json_output.push_str("  ");
                }
                break; // Stop outputting or parsing this line
            }
            // Check for block comment start
            if !is_in_string && last_char == Some('/') && cur_char == '*' {
                block_comment_depth += 1;
                last_char = None;
                if preserve_locations {
                    json_output.push_str("  ");
                }
            // Check for block comment end
            } else if !is_in_string && last_char == Some('*') && cur_char == '/' {
                if block_comment_depth > 0 {
                    block_comment_depth -= 1;
                }
                last_char = None;
                if preserve_locations {
                    json_output.push_str("  ");
                }
            // Output last char if not in any block comment
            } else {
                if block_comment_depth == 0 {
                    if let Some(last_char) = last_char {
                        json_output.push(last_char);
                    }
                } else if preserve_locations {
                    json_output.push(' ');
                }
                last_char = Some(cur_char);
            }
        }

        // Add last char and newline if not in any block comment
        if let Some(last_char) = last_char {
            if block_comment_depth == 0 {
                json_output.push(last_char);
            } else if preserve_locations {
                json_output.push(' ');
            }
        }

        // Remove trailing whitespace from line
        while json_output.ends_with(' ') {
            json_output.pop();
        }
        json_output.push('\n');
    }

    json_output
}