#![no_std]
#![no_main]

extern crate panic_halt; // break on `rust_begin_unwind` to catch panics

use cortex_m_rt::entry;

mod board;
mod display;
mod light;

use stm32f0xx_hal as hal;
use crate::hal::prelude::*;
use ds323x::{Ds323x, Rtcc};

// Take an Hours struct which may or may not be in 24-hour time and convert it
// into 24 hour time.
fn hours_to_24(hours: ds323x::Hours) -> u8 {
    match hours {
        ds323x::Hours::AM(x) => x,
        ds323x::Hours::PM(x) => x + 12,
        ds323x::Hours::H24(x) => x,
    }
}

#[entry]
fn main() -> ! {
    let (display_pins, mut delay, i2c) = board::board_setup();

    let mut disp = display::Display::new(display_pins);

    let mut rtc = Ds323x::new_ds3231(i2c);

    loop { // Loop roughly every 1 second
        let hours = rtc.get_hours().unwrap();
        let minutes = rtc.get_minutes().unwrap();
        let seconds = rtc.get_seconds().unwrap();

        for _ in 0..166 {
            disp.display_num(hours_to_24(hours) / 10, 0);
            delay.delay_ms(1u32);
            disp.display_num(hours_to_24(hours) % 10, 1);
            delay.delay_ms(1u32);
            disp.display_num(minutes / 10, 2);
            delay.delay_ms(1u32);
            disp.display_num(minutes % 10, 3);
            delay.delay_ms(1u32);

            disp.display_num(seconds / 10, 6);
            delay.delay_ms(1u32);
            disp.display_num(seconds % 10, 7);
            delay.delay_ms(1u32);
        }
    }
}
