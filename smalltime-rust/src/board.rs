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
          dig1:   gpioa.pa15.into_push_pull_output(cs).downgrade(),
          dig2:   gpioa.pa0.into_push_pull_output(cs).downgrade(),
          dig3:   gpiof.pf1.into_push_pull_output(cs).downgrade(),
          dig4:   gpiof.pf0.into_push_pull_output(cs).downgrade(),
          dig5:   gpioa.pa5.into_push_pull_output(cs).downgrade(),
          dig6:   gpioa.pa10.into_push_pull_output(cs).downgrade(),
          dig7:   gpioa.pa2.into_push_pull_output(cs).downgrade(),
          dig8:   gpioa.pa1.into_push_pull_output(cs).downgrade(),
          seg_a:  gpiob.pb3.into_push_pull_output(cs).downgrade(),
          seg_b:  gpioa.pa12.into_push_pull_output(cs).downgrade(),
          seg_c:  gpiob.pb0.into_push_pull_output(cs).downgrade(),
          seg_d:  gpioa.pa7.into_push_pull_output(cs).downgrade(),
          seg_e:  gpioa.pa6.into_push_pull_output(cs).downgrade(),
          seg_f:  gpiob.pb4.into_push_pull_output(cs).downgrade(),
          seg_g:  gpiob.pb5.into_push_pull_output(cs).downgrade(),
          seg_dp: gpiob.pb1.into_push_pull_output(cs).downgrade(),
      }
  });

  (display_pins, delay)
}
