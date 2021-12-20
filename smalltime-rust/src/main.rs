#![no_std]
#![no_main]

extern crate panic_halt; // break on `rust_begin_unwind` to catch panics

use cortex_m_rt::entry;

mod board;
mod display;
mod light;

use stm32f0xx_hal as hal;

use crate::hal::prelude::*;

#[entry]
fn main() -> ! {
    let (display_pins, mut delay) = board::board_setup();

    let mut my_display = display::Display::new(display_pins);

    loop {
        my_display.display_num(0, 0);
        delay.delay_ms(1_000_u32);
        my_display.display_num(1, 0);
        delay.delay_ms(1_000_u32);
    }
}
