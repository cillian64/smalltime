#![no_std]
#![no_main]

extern crate panic_halt; // break on `rust_begin_unwind` to catch panics

use cortex_m_rt::entry;

mod display;
mod board;

use stm32f0xx_hal as hal;

use crate::hal::{prelude::*};

#[entry]
fn main() -> ! {
    let (display_pins, mut delay) = board::board_setup();

    let mut my_display = display::Display::new(display_pins);

    loop {
        my_display.display_num(42, 0);
        delay.delay_ms(1_000_u32);
    }
}
