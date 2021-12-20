use crate::hal::gpio::{Output, Pin, PushPull};
#[allow(unused)]
use crate::hal::{prelude::*, stm32};
use embedded_hal::digital::v2::{PinState, PinState::High, PinState::Low};

pub struct DisplayPins {
    pub digits: [Pin<Output<PushPull>>; 8],
    pub segments: [Pin<Output<PushPull>>; 8],
}

pub struct Display {
    display_pins: DisplayPins,
}

/// A mapping from a digit (0-9) to the 7-seg LED segments.
/// Each digit is an array of segment states.
#[rustfmt::skip]
const FONT: [[PinState; 7]; 10] = [
    //               Segment
    // A    B     C     D     E     F     G
    [High, High, High, High, High, High, Low],   // 0
    [Low,  High, High, Low,  Low,  Low,  Low],   // 1
    [High, High, Low,  High, High, Low,  High],  // 2
    [High, High, High, High, Low,  Low,  High],  // 3
    [Low,  High, High, Low,  Low,  High, High],  // 4  Digit
    [High, Low,  High, High, Low,  High, High],  // 5
    [High, Low,  High, High, High, High, High],  // 6
    [High, High, High, Low,  Low,  Low,  Low],   // 7
    [High, High, High, High, High, High, High],  // 8
    [High, High, High, High, Low,  High, High],  // 9
];

impl Display {
    pub fn new(display_pins: DisplayPins) -> Display {
        Display { display_pins }
    }

    pub fn display_num(&mut self, num: u8, dig: u8) {
        assert!(num < 10);
        assert!(dig < 8);
        self.dig_select(dig);

        self.display_dig(&FONT[num as usize]);
    }

    fn display_dig(&mut self, segments: &[PinState; 7]) {
        for (i, seg) in segments.iter().enumerate() {
            self.display_pins.segments[i].set_state(*seg).unwrap();
        }
    }

    fn dig_select(&mut self, dig: u8) {
        for i in 0..8 {
            self.display_pins.digits[i as usize]
                .set_state(PinState::from(i == dig))
                .unwrap();
        }
    }
}
