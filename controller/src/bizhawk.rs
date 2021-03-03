use std::collections::HashMap;
use std::fs::File;
use std::io::Read;
use std::sync::{Arc, Mutex};
use strum::AsStaticRef;
use std::time::Duration;

lazy_static::lazy_static! {
    pub static ref CALLBACK: Arc<Mutex<()>> = Arc::new(Mutex::new(()));
    pub static ref CONTROLLER_PATH: std::path::PathBuf = std::env::current_dir().unwrap();
}

//Memory regions
#[derive(AsStaticStr)]
#[derive(Debug)]
pub enum MemRegion {
    BIOS,
    CartRAM,
    CombinedWRAM,
    EWRAM,
    HRAM,
    IWRAM,
    OAM,
    PALRAM,
    ROM,
    SRAM,
    SystemBus,
    VRAM,
    WRAM
}

//GBC registers
#[derive(Debug)]
pub struct RegisterObject {
    pub PC: u16,
    pub SP: u16,
    pub A: u8,
    pub B: u8,
    pub C: u8,
    pub D: u8,
    pub E: u8,
    pub F: u8,
    pub H: u8,
    pub L: u8,
    pub DE: u16,
    pub HL: u16
}

pub struct Bizhawk {
    client: reqwest::Client,
    port: u16
}

impl Bizhawk {
    pub fn new(port: u16) -> Bizhawk {
        Bizhawk {
            client: reqwest::Client::builder().timeout(Duration::new(2, 0)).build().unwrap(),
            port
        }
    }

    pub fn send_command(&self, command: &str) -> Result<(), String> {
        if let Ok(mut result) = self.client.get(format!("http://localhost:{}/{}", self.port, command).as_str()).send() {
            let response = result.text().unwrap_or_default();
            if response != "ok" {
                println!("Error Sending command to bizhawk, Got response: {}", response);
                return Err(response)
            }
        } else {
            return Err("Failed to send command to bizhawk.".to_string())
        }
        Ok(())
    }
    pub fn send_command_sync(&self, command: &str) -> Result<(), String> {
        let _lock = CALLBACK.lock();
        if let Ok(mut result) = self.client.get(format!("http://localhost:{}/{}", self.port, command).as_str()).send() {
            let response = result.text().unwrap_or_default();
            if response != "ok" {
                println!("Error Sending command to bizhawk, Got response: {}", response);
                return Err(response)
            }
        } else {
            return Err("Failed to send command to bizhawk.".to_string())
        }
        Ok(())
    }

    pub fn send_command_callback(&self, command: &str, callback_name: &str) -> Result<(), String> {
        let _lock = CALLBACK.lock();
        if let Ok(mut result) = self.client.get(format!("http://localhost:{}/{}", self.port, command).as_str()).send() {
            let response = result.text().unwrap_or_default();
            if response != callback_name {
                println!("Error Sending callback request to bizhawk, Got response: {}", response);
                return Err(response)
            }
        } else {
            return Err("Error Sending callback request to bizhawk.".to_string())
        }
        Ok(())
    }

    pub fn send_command_and_get_response(&self, command: &str) -> Result<String, String> {
        if let Ok(mut result) = self.client.get(format!("http://localhost:{}/{}", self.port, command).as_str()).send() {
            let response = result.text().unwrap_or_default();
            if response.get(0..1) == Some("R") {
                println!("Error Sending command to bizhawk, Got response: {}", response);
                return Err(response)
            }
            Ok(response)
        } else {
            Err("Failed to send command to bizhawk".to_string())
        }
    }

    pub fn on_memory_write(&self, name: &str, address: usize, len: u8, url: &str) -> Result<(), String> {
        self.send_command_callback(format!("{}/OnMemoryWrite/{:X}/{:X}/{}", name, address, len, url).as_str(), name)
    }

    pub fn on_memory_write_if(&self, name: &str, address: usize, len: u8, check_addr: usize, check_val: usize, url: &str) -> Result<(), String> {
        self.send_command_callback(format!("{}/OnMemoryWriteIfValue/{:X}/{:X}/{:X}/{:X}/{}", name, address, len, check_addr, check_val, url).as_str(), name)
    }

    pub fn on_memory_read(&self, name: &str, address: usize, len: u8, url: &str) -> Result<(), String> {
        self.send_command_callback(format!("{}/OnMemoryRead/{:X}/{:X}/{}", name, address, len, url).as_str(), name)
    }

    pub fn on_memory_read_if(&self, name: &str, address: usize, len: u8, check_addr: usize, check_val: usize, url: &str) -> Result<(), String> {
        println!("{}/OnMemoryReadIfValue/{:X}/{:X}/{:X}/{:X}/{}", name, address, len, check_addr, check_val, url);
        self.send_command_callback(format!("{}/OnMemoryReadIfValue/{:X}/{:X}/{:X}/{:X}/{}", name, address, len, check_addr, check_val, url).as_str(), name)
    }

    pub fn on_memory_execute(&self, name: &str, address: usize, len: u8, url: &str) -> Result<(), String> {
        println!("{}/OnMemoryExecute/{:X}/{:X}/{}", name, address, len, url);
        self.send_command_callback(format!("{}/OnMemoryExecute/{:X}/{:X}/{}", name, address, len, url).as_str(), name)
    }

    pub fn on_memory_execute_if(&self, name: &str, address: usize, len: u8, check_addr: usize, check_val: usize, url: &str) -> Result<(), String> {
        println!("{}/OnMemoryExecuteIfValue/{:X}/{:X}/{:X}/{:X}/{}", name, address, len, check_addr, check_val, url);
        self.send_command_callback(format!("{}/OnMemoryExecuteIfValue/{:X}/{:X}/{:X}/{:X}/{}", name, address, len, check_addr, check_val, url).as_str(), name)
    }

    pub fn remove_callback(&self, name: &str) -> Result<(), String> {
        self.send_command_sync(format!("{}/RemoveMemoryCallback", name).as_str())
    }

    pub fn write_u8(&self, region: &MemRegion, address: usize, value: u8) -> Result<(), String> {
        self.send_command(format!("{}/WriteByte/{:X}/{:X}", region.as_static(), address, value).as_str())
    }

    pub fn write_u16(&self, region: &MemRegion, address: usize, value: u16) -> Result<(), String> {
        self.send_command(format!("{}/WriteU16LE/{:X}/{:X}", region.as_static(), address, value).as_str())
    }

    pub fn write_u32(&self, region: &MemRegion, address: usize, value: u32) -> Result<(), String> {
        self.send_command(format!("{}/WriteU32LE/{:X}/{:X}", region.as_static(), address, value).as_str())
    }

    pub fn write_u16_be(&self, region: &MemRegion, address: usize, value: u16) -> Result<(), String> {
        self.send_command(format!("{}/WriteU16BE/{:X}/{:X}", region.as_static(), address, value).as_str())
    }

    pub fn write_u32_be(&self, region: &MemRegion, address: usize, value: u32) -> Result<(), String> {
        self.send_command(format!("{}/WriteU32BE/{:X}/{:X}", region.as_static(), address, value).as_str())
    }

    pub fn write_slice(&self, region: &MemRegion, address: usize, data: &[u8]) -> Result<(), String> {
        let mut body = String::new();
        for i in data {
            body.push_str(&format!("{:02X}", i));
        }
        if let Ok(mut result) = self.client.get(format!("http://localhost:{}/{}/WriteByteRange/{:X}", self.port, region.as_static(), address).as_str()).body(body).send() {
            let response = result.text().unwrap_or_default();
            if response != "ok" {
                return Err(response)
            }
        }
        Ok(())
    }

    pub fn read_u8(&self, region: &MemRegion, address: usize) -> Result<u8, String> {
        match self.send_command_and_get_response(format!("{}/ReadByte/{:X}", region.as_static(), address).as_str()) {
            Ok(byte) => Ok(u8::from_str_radix(byte.as_str(), 16).unwrap()),
            Err(error) => Err(error)
        }
    }

    pub fn read_u16(&self, region: &MemRegion, address: usize) -> Result<u16, String> {
        match self.send_command_and_get_response(format!("{}/ReadU16LE/{:X}", region.as_static(), address).as_str()) {
            Ok(word) => Ok(u16::from_str_radix(word.as_str(), 16).unwrap()),
            Err(error) => Err(error)
        }
    }

    pub fn read_u32(&self, region: &MemRegion, address: usize) -> Result<u32, String> {
        match self.send_command_and_get_response(format!("{}/ReadU32LE/{:X}", region.as_static(), address).as_str()) {
            Ok(dword) => Ok(u32::from_str_radix(dword.as_str(), 16).unwrap()),
            Err(error) => Err(error)
        }
    }

    pub fn read_u16_be(&self, region: &MemRegion, address: usize) -> Result<u16, String> {
        match self.send_command_and_get_response(format!("{}/ReadU16BE/{:X}", region.as_static(), address).as_str()) {
            Ok(word) => Ok(u16::from_str_radix(word.as_str(), 16).unwrap()),
            Err(error) => Err(error)
        }
    }

    pub fn read_u32_be(&self, region: &MemRegion, address: usize) -> Result<u32, String> {
        match self.send_command_and_get_response(format!("{}/ReadU32BE/{:X}", region.as_static(), address).as_str()) {
            Ok(dword) => Ok(u32::from_str_radix(dword.as_str(), 16).unwrap()),
            Err(error) => Err(error)
        }
    }

    pub fn read_slice(&self, region: &MemRegion, address: usize, count: usize) -> Result<Box<[u8]>, String> {
        match self.send_command_and_get_response(format!("{}/ReadByteRange/{:X}/{:X}", region.as_static(), address, count).as_str()) {
            Ok(response) => {
                let mut bytes = Vec::new();
                for i in 0..count {
                    bytes.push(u8::from_str_radix(&response[i*2..i*2+2], 16).unwrap());
                }
                Ok(bytes.into_boxed_slice())
            },
            Err(error) => Err(error)
        }
    }

    pub fn read_slice_chained(&self, region: &MemRegion, sections: &[(usize, usize)]) -> Result<Box<[u8]>, String> {
        let mut string_to_send = format!("{}/ReadByteRange", region.as_static());
        let mut total_bytes = 0x00;
        for section in sections {
            string_to_send.push_str(format!("/{:X}/{:X}", section.0, section.1).as_str());
            total_bytes += section.1;
        }
        match self.send_command_and_get_response(string_to_send.as_str()) {
            Ok(response) => {
                let mut bytes = Vec::new();
                for i in 0..total_bytes {
                    bytes.push(u8::from_str_radix(&response[i*2..i*2+2], 16).unwrap());
                }
                Ok(bytes.into_boxed_slice())
            },
            Err(error) => Err(error)
        }
    }
    
    pub fn read_slice_custom(&self, message: String, count: usize) -> Result<Box<[u8]>, String> {
        match self.send_command_and_get_response(format!("ReadByteRange/{}", message).as_str()) {
            Ok(response) => {
                let mut bytes = Vec::new();
                for i in 0..count {
                    bytes.push(u8::from_str_radix(&response[i*2..i*2+2], 16).unwrap());
                }
                Ok(bytes.into_boxed_slice())
            },
            Err(error) => Err(error)
        }
    }

    pub fn write_u8_sym(&self, loc: &SymEntry, value: u8) -> Result<(), String> {
        self.write_u8(&loc.region, loc.addr, value)
    }

    pub fn write_u16_sym(&self, loc: &SymEntry, value: u16) -> Result<(), String> {
        self.write_u16(&loc.region, loc.addr, value)
    }

    pub fn write_u32_sym(&self, loc: &SymEntry, value: u32) -> Result<(), String> {
        self.write_u32(&loc.region, loc.addr, value)
    }

    pub fn write_u16_be_sym(&self, loc: &SymEntry, value: u16) -> Result<(), String> {
        self.write_u16_be(&loc.region, loc.addr, value)
    }

    pub fn write_u32_be_sym(&self, loc: &SymEntry, value: u32) -> Result<(), String> {
        self.write_u32_be(&loc.region, loc.addr, value)
    }

    pub fn write_slice_sym(&self, loc: &SymEntry, data: &[u8]) -> Result<(), String> {
        self.write_slice(&loc.region, loc.addr, data)
    }

    pub fn read_u8_sym(&self, loc: &SymEntry) -> Result<u8, String> {
        self.read_u8(&loc.region, loc.addr)
    }

    pub fn read_u16_sym(&self, loc: &SymEntry) -> Result<u16, String> {
        self.read_u16(&loc.region, loc.addr)
    }

    pub fn read_u32_sym(&self, loc: &SymEntry) -> Result<u32, String> {
        self.read_u32(&loc.region, loc.addr)
    }

    pub fn read_u16_be_sym(&self, loc: &SymEntry) -> Result<u16, String> {
        self.read_u16_be(&loc.region, loc.addr)
    }

    pub fn read_u32_be_sym(&self, loc: &SymEntry) -> Result<u32, String> {
        self.read_u32_be(&loc.region, loc.addr)
    }

    pub fn read_slice_sym(&self, loc: &SymEntry, count: usize) -> Result<Box<[u8]>, String> {
        self.read_slice(&loc.region, loc.addr, count)
    }


    pub fn read_slice_chained_sym(&self, sections: &[(&SymEntry, usize)]) -> Result<Box<[u8]>, String> {
        let mut string_to_send = format!("{}/ReadByteRange", sections[0].0.region.as_static());
        let mut total_bytes = 0x00;
        for section in sections {
            string_to_send.push_str(format!("/{:X}/{:X}", section.0.addr, section.1).as_str());
            total_bytes += section.1;
        }
        match self.send_command_and_get_response(string_to_send.as_str()) {
            Ok(response) => {
                let mut bytes = Vec::new();
                for i in 0..total_bytes {
                    bytes.push(u8::from_str_radix(&response[i*2..i*2+2], 16).unwrap());
                }
                Ok(bytes.into_boxed_slice())
            },
            Err(error) => Err(error)
        }
    }

    pub fn get_registers(&self) -> Result<RegisterObject, String> {
        match self.send_command_and_get_response("GetRegisters") {
            Ok(registers) => {
                let mut byte_vec = Vec::new();
                let mut word_vec = Vec::new();
                for (i, substring) in registers.split_whitespace().enumerate() {
                    if i % 2 == 1 {
                        if i == 1 || i == 3 {
                            word_vec.push(u16::from_str_radix(substring, 16).unwrap());
                        } else {
                            byte_vec.push(u8::from_str_radix(substring, 16).unwrap());
                        }
                    }
                };
                Ok(RegisterObject {
                    PC: word_vec[0],
                    SP: word_vec[1],
                    A:  byte_vec[0],
                    B:  byte_vec[1],
                    C:  byte_vec[2],
                    D:  byte_vec[3],
                    E:  byte_vec[4],
                    F:  byte_vec[5],
                    H:  byte_vec[6],
                    L:  byte_vec[7],
                    DE: (byte_vec[4] as u16) + ((byte_vec[3] as u16) << 8),
                    HL: (byte_vec[6] as u16) + ((byte_vec[7] as u16) << 8)
                })
            },
            Err(error) => Err(error)
        }
    }

    pub fn save_state(&self, name: &str) -> Result<(), String> {
        self.send_command_sync(format!("savestate/{}\\bizhawk\\States\\{}.State", &CONTROLLER_PATH.to_str().unwrap(), name).as_str())
    }
    
    pub fn save_state_custom(&self, name: &str) -> Result<(), String> {
        self.send_command_sync(format!("savestate/{}.State", name).as_str())
    }

    pub fn load_state(&self, name: &str) -> Result<(), String> {
        self.send_command_sync(format!("loadstate/{}\\bizhawk\\States\\{}.State", &CONTROLLER_PATH.to_str().unwrap(), name).as_str())
    }

    pub fn load_rom(&self, name: &str) -> Result<(), String> {
        self.send_command_sync(format!("loadrom/{}\\bizhawk\\roms\\{}", &CONTROLLER_PATH.to_str().unwrap(), name).as_str())
    }

    pub fn pause(&self) -> Result<(), String> {
        self.send_command_sync("pause")
    }

    pub fn play(&self) -> Result<(), String> {
        self.send_command_sync("play")
    }

    pub fn stop_drawing(&self) -> Result<(), String> {
        self.send_command_sync("stopdrawing")
    }

    pub fn start_drawing(&self) -> Result<(), String> {
        self.send_command_sync("startdrawing")
    }

    pub fn mute(&self) -> Result<(), String> {
        self.send_command_sync("mute")
    }

    pub fn unmute(&self) -> Result<(), String> {
        self.send_command_sync("unmute")
    }

    pub fn unthrottle(&self, frames: u32) -> Result<(), String> {
        if frames == 0 {
            self.send_command_sync("unthrottle")
        } else {
            self.send_command_sync(format!("unthrottle/{}", frames).as_str())
        }
    }

    pub fn throttle(&self) -> Result<(), String> {
        self.send_command_sync("throttle")
    }

    pub fn frameadvance(&self) -> Result<(), String> {
        self.send_command_sync("frameadvance")
    }

    pub fn framerewind(&self) -> Result<(), String> {
        self.send_command_sync("framerewind")
    }

    pub fn clear_screen(&self, color: u32) -> Result<(), String> {
        self.send_command_sync(format!("clearscreen/{:06X}", color).as_str())
    }

    pub fn framecount(&self) -> Result<usize, String> {
        let _lock = CALLBACK.lock();
        match self.send_command_and_get_response("framecount") {
            Ok(dword) => Ok(usize::from_str_radix(dword.as_str(), 10).unwrap()),
            Err(error) => Err(error)
        }
    }

    pub fn toggle_rewind(&self, enable: bool) -> Result<(), String> {
        self.send_command_sync(format!("togglerewind/{}", enable).as_str())
    }

    pub fn get_rom_name(&self) -> Result<String, String> {
        let _lock = CALLBACK.lock();
        if let Ok(mut result) = self.client.get(format!("http://localhost:{}/GetROMName", self.port).as_str()).send() {
            let response = result.text().unwrap_or_default();
            Ok(response)
        } else {
            Err("Failed to get rom name".to_string())
        }
    }
}

#[derive(Debug)]
pub struct SymEntry {
    pub region: MemRegion,
    pub addr: usize,
    pub bus_addr: usize,
    pub bank: usize
}

impl SymEntry {
    pub fn new(bank: usize, bus_addr: usize) -> SymEntry {
        let (region, bank_modulo) = match (bus_addr >> 8) as u8 {
            0x00 ..= 0x7F => (MemRegion::ROM, 0x4000),
            0x80 ..= 0x9F => (MemRegion::VRAM, 0x2000),
            0xA0 ..= 0xBF => (MemRegion::CartRAM, 0x2000),
            0xC0 ..= 0xDF => (MemRegion::WRAM, 0x1000),
            0xFF          => (MemRegion::HRAM, 0x0080),
            _ => (MemRegion::ROM, 0x0000) // should never have a sym for anything else
        };

        let addr = if bank_modulo != 0 { bus_addr % bank_modulo } else { 0 } + bank_modulo*bank;

        SymEntry {
            region,
            addr,
            bus_addr,
            bank
        }
    }
}

pub fn load_symfile_text(path: &'static str) -> Result<String, String> {
    if let Ok(mut symfile) = File::open(path) {
        let mut symfile_string = String::new();
        if symfile.read_to_string(&mut symfile_string).is_ok() {
            Ok(symfile_string)
        } else { Err("Symfile not valid UTF-8".to_string()) }
    } else { Err("Cannot open symfile!".to_string()) }
}

pub fn load_symfile(symfile0: &'static str) -> HashMap<&'static str, SymEntry> {
    let regex = regex::Regex::new(r"(?i)(?P<bank>[0-9A-F]+):(?P<addr>[0-9A-F]+) (?P<name>[^\s]+)").unwrap();
    regex.captures_iter(&symfile0)
        .map(|caps| {
            Some((caps.name("name")?.as_str(), SymEntry::new(usize::from_str_radix(caps.name("bank")?.as_str(), 16).unwrap(),
                                                             usize::from_str_radix(caps.name("addr")?.as_str(), 16).unwrap())))
        })
        .flatten()
        .collect()
}