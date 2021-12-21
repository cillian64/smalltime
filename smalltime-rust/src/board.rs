use crate::display;
use crate::hal;
use hal::{prelude::*, stm32, i2c::I2c};
use embedded_hal::blocking::i2c;
use stm32f0xx_hal::i2c::Error;

pub fn board_setup() ->
    (display::DisplayPins,
     hal::delay::Delay,
     impl i2c::Write<Error = Error> + i2c::WriteRead<Error = Error>)
{
    let mut p = stm32::Peripherals::take().unwrap();
    let cp = cortex_m::Peripherals::take().unwrap();

    let mut rcc = p
        .RCC
        .configure()
        .sysclk(8.mhz()) // 8MHz straight from HSI
        .freeze(&mut p.FLASH);

    let delay = hal::delay::Delay::new(cp.SYST, &rcc);

    let gpioa = p.GPIOA.split(&mut rcc);
    let gpiob = p.GPIOB.split(&mut rcc);
    let gpiof = p.GPIOF.split(&mut rcc);

    let display_pins = cortex_m::interrupt::free(|cs| {
        display::DisplayPins {
            digits: [
                gpioa.pa1.into_push_pull_output(cs).downgrade(),  // dig 0
                gpioa.pa2.into_push_pull_output(cs).downgrade(),  // dig 1
                gpioa.pa10.into_push_pull_output(cs).downgrade(), // dig 2
                gpioa.pa5.into_push_pull_output(cs).downgrade(),  // dig 3
                gpiof.pf0.into_push_pull_output(cs).downgrade(),  // dig 4
                gpiof.pf1.into_push_pull_output(cs).downgrade(),  // dig 5
                gpioa.pa0.into_push_pull_output(cs).downgrade(),  // dig 6
                gpioa.pa15.into_push_pull_output(cs).downgrade(), // dig 7
            ],
            segments: [
                gpiob.pb0.into_push_pull_output(cs).downgrade(), // seg A
                gpiob.pb1.into_push_pull_output(cs).downgrade(), // seg B
                gpiob.pb3.into_push_pull_output(cs).downgrade(), // seg C
                gpiob.pb4.into_push_pull_output(cs).downgrade(), // seg D
                gpiob.pb5.into_push_pull_output(cs).downgrade(), // seg E
                gpioa.pa7.into_push_pull_output(cs).downgrade(), // seg F
                gpioa.pa6.into_push_pull_output(cs).downgrade(), // seg G
                gpioa.pa12.into_push_pull_output(cs).downgrade(), // seg DP
            ],
        }
    });

    // Configure I2C bus for DS3231
    let i2c = cortex_m::interrupt::free(|cs| {
        let scl = gpiob.pb6.into_alternate_af1(cs);
        let sda = gpiob.pb7.into_alternate_af1(cs);
        I2c::i2c1(p.I2C1, (scl, sda), 100.khz(), &mut rcc)
    });

    (display_pins, delay, i2c)
}
