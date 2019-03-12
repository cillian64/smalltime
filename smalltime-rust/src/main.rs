#![no_std]
#![no_main]

extern crate panic_halt; // break on `rust_begin_unwind` to catch panics

use cortex_m_rt::entry;

#[allow(unused)]
use stm32f0xx_hal as hal;

#[allow(unused)]
use crate::hal::{prelude::*, stm32};

#[entry]
fn main() -> ! {
    let mut p = stm32::Peripherals::take().unwrap();
    let cp = cortex_m::Peripherals::take().unwrap();

  let mut clocks = p.RCC.configure()
                   .sysclk(8.mhz())  // 8MHz straight from HSI
                   .freeze(&mut p.FLASH);

  let gpioa = p.GPIOA.split(&mut clocks);

  cortex_m::interrupt::free(|cs| {
    let mut dig2 = gpioa.pa0.into_push_pull_output(cs);
    let mut seg_d = gpioa.pa7.into_push_pull_output(cs);

    dig2.set_high();

    let mut delay = hal::delay::Delay::new(cp.SYST, &clocks);
    loop {
      seg_d.toggle();
      delay.delay_ms(1_000_u32);
    }
  });

    loop { }
}
