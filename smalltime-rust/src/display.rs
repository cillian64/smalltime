#[allow(unused)]
use crate::hal::gpio::{Pin, Output, PushPull};

pub struct DisplayPins {
    pub dig1:   Pin<Output<PushPull>>,
    pub dig2:   Pin<Output<PushPull>>,
    pub dig3:   Pin<Output<PushPull>>,
    pub dig4:   Pin<Output<PushPull>>,
    pub dig5:   Pin<Output<PushPull>>,
    pub dig6:   Pin<Output<PushPull>>,
    pub dig7:   Pin<Output<PushPull>>,
    pub dig8:   Pin<Output<PushPull>>,
    pub seg_a:  Pin<Output<PushPull>>,
    pub seg_b:  Pin<Output<PushPull>>,
    pub seg_c:  Pin<Output<PushPull>>,
    pub seg_d:  Pin<Output<PushPull>>,
    pub seg_e:  Pin<Output<PushPull>>,
    pub seg_f:  Pin<Output<PushPull>>,
    pub seg_g:  Pin<Output<PushPull>>,
    pub seg_dp: Pin<Output<PushPull>>,
}

