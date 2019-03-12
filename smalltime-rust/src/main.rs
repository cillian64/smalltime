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
  let (mut display_pins, mut delay) = board::board_setup();

  display_pins.dig1.set_high();

  loop {
    display_pins.seg_d.toggle();
    delay.delay_ms(1_000_u32);
  }
}
