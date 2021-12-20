use crate::hal::gpio::{Output, Pin, PushPull};
#[allow(unused)]
use crate::hal::{prelude::*, stm32};

pub struct DisplayPins {
    pub digits: [Pin<Output<PushPull>>; 8],
    pub segments: [Pin<Output<PushPull>>; 8],
}

pub struct Display {
    display_pins: DisplayPins,
}

impl Display {
    pub fn new(display_pins: DisplayPins) -> Display {
        Display { display_pins }
    }

    pub fn display_num(&mut self, num: u8, dig: u8) {
        assert!(num < 10);
        assert!(dig < 8);
        self.dig_select(dig);
        let font: [[u8; 8]; 10] = [
            [0, 0, 0, 0, 0, 0, 0, 0],
            [1, 1, 1, 1, 1, 1, 1, 1],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
        ];
        self.display_dig(&font[num as usize]);
    }

    fn display_dig(&mut self, segments: &[u8; 8]) {
        for (i, seg) in segments.iter().enumerate() {
            if *seg > 0 {
                self.display_pins.segments[i].set_high().unwrap();
            } else {
                self.display_pins.segments[i].set_low().unwrap();
            }
        }
    }

    fn dig_select(&mut self, dig: u8) {
        for i in 0..8 {
            if i == dig {
                self.display_pins.digits[i as usize].set_high().unwrap();
            } else {
                self.display_pins.digits[i as usize].set_low().unwrap();
            }
        }
    }
}
