use crate::hal;
use hal::{prelude::*, stm32};
use crate::display;

pub fn board_setup() -> (display::DisplayPins, hal::delay::Delay) {
    let mut p = stm32::Peripherals::take().unwrap();
    let cp = cortex_m::Peripherals::take().unwrap();

  let mut rcc = p.RCC.configure()
                   .sysclk(8.mhz())  // 8MHz straight from HSI
                   .freeze(&mut p.FLASH);

  let delay = hal::delay::Delay::new(cp.SYST, &rcc);

  let gpioa = p.GPIOA.split(&mut rcc);
  let gpiob = p.GPIOB.split(&mut rcc);
  let gpiof = p.GPIOF.split(&mut rcc);

  let display_pins = cortex_m::interrupt::free(|cs| {
      display::DisplayPins {
          digits: [
              gpioa.pa15.into_push_pull_output(cs).downgrade(),  // dig 1
              gpioa.pa0.into_push_pull_output(cs).downgrade(),   // dig 2
              gpiof.pf1.into_push_pull_output(cs).downgrade(),   // dig 3
              gpiof.pf0.into_push_pull_output(cs).downgrade(),   // dig 4
              gpioa.pa5.into_push_pull_output(cs).downgrade(),   // dig 5
              gpioa.pa10.into_push_pull_output(cs).downgrade(),  // dig 6
              gpioa.pa2.into_push_pull_output(cs).downgrade(),   // dig 7
              gpioa.pa1.into_push_pull_output(cs).downgrade(),   // dig 8
          ],
          segments: [
              gpiob.pb3.into_push_pull_output(cs).downgrade(),   // seg a
              gpioa.pa12.into_push_pull_output(cs).downgrade(),  // seg b
              gpiob.pb0.into_push_pull_output(cs).downgrade(),   // seg c
              gpioa.pa7.into_push_pull_output(cs).downgrade(),   // seg d
              gpioa.pa6.into_push_pull_output(cs).downgrade(),   // seg e
              gpiob.pb4.into_push_pull_output(cs).downgrade(),   // seg f
              gpiob.pb5.into_push_pull_output(cs).downgrade(),   // seg g
              gpiob.pb1.into_push_pull_output(cs).downgrade(),   // seg dp
          ],
      }
  });

  (display_pins, delay)
}
