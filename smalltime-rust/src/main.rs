#![no_std]
#![no_main]

extern crate panic_halt; // break on `rust_begin_unwind` to catch panics

use cortex_m::asm;
use cortex_m_rt::entry;

#[entry]
fn main() -> ! {
    // To not have main optimize to abort in release mode, remove when you add
    // code
    asm::nop();

    loop {
        // your code goes here
    }
}
