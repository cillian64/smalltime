

use stm32f0xx_hal::{timers::*, pac::TIM14};

/// A simple non-blocking alarm clock using an stm32 timer.  This is based on
/// the stm32f0xx_hal Delay.  This code sets up the timer to run at 1MHz with
/// maximum reload value.  The non-blocking alarm clocks are implemented using
/// state internal to this struct rather than altering the timer reload value,
/// so you can create as many SystAlarms as you like based on the single
/// hardware timer.  The downside is you can't get an interrupt when the delay
/// finishes, you have to poll.
#[derive(Clone)]
pub struct NonBlockingDelayFactory {
    tim14: Timer<TIM14>,
}

const SYSTICK_RANGE: u32 = 0x0100_0000;

impl NonBlockingDelayFactory {
    /// Create a new NonBlockingDelayFactory which can be used to
    /// make an arbitrary number of new NonBlockingDelays.  TIM14 must be
    /// setup to run at 1kHz.
    pub fn new(tim14: Timer<TIM14>) -> Self {
        Self { tim14 }
    }

    /// Create a new delay which finishes after the specified number of
    /// milliseconds.  Note that we use a u16 to limit the delay to 65 seconds
    /// because this simple implementation cannot handle delays longer than 89 seconds.
    pub fn delay_ms(&self, ms: u16) -> NonBlockingDelay {
        self.delay_us((ms as u32) * 1000)
    }

    /// Create a new delay which finishes after the specified number of microseconds.
    pub fn delay_us(&self, us: u32) -> NonBlockingDelay {
        // // Delay length, in SYSTICK ticks
        // let delay_ticks: u32 = us * 1000 * self.scale;
        // assert!(delay_ticks < SYSTICK_RANGE);

        // // Work out SYSTICK value at which we are finished
        // let start_tick: u32 = SYST::get_current();
        // let finish_tick = start_tick + delay_ticks;

        // // SYSTICK might roll over during this delay:
        // let rollover_required = finish_tick >= SYSTICK_RANGE;
        // let finish_tick = if rollover_required {
        //     finish_tick - SYSTICK_RANGE
        // } else {
        //     finish_tick
        // };

        // NonBlockingDelay {
        //     start_tick,
        //     finish_tick,
        //     rollover_required,
        // }
        todo!("...")
    }
}

/// A single use non-blocking delay instance.  Poll this to work out whether
/// your delay is finished yet, or use block() to convert to a blocking delay.
/// Warning: If you don't poll this at least every 40 seconds or so then you
/// might get incorrect results, as we might miss a SYSTICK rollover.
pub struct NonBlockingDelay {
    /// What was the value of SYSTICK when this counter started
    start_tick: u32,

    /// What will the value of the SYSTICK counter be when this delay is finished
    finish_tick: u32,

    /// Is a rollover required before this delay will finish
    rollover_required: bool,
}

impl NonBlockingDelay {
    /// Has this delay finished or not.  Intended to be polled.  Needs mutable
    /// access to the NonBlockingDelay in order to track SYSTICK rollovers.
    pub fn delay_finished(&mut self) -> bool {
        // let current_tick = SYST::get_current();

        // // If we're waiting for a rollover, check if it has happened
        // if self.rollover_required && current_tick < self.start_tick {
        //     // The rollover has now happened
        //     self.rollover_required = false;
        // }

        // // If we're no longer waiting for a rollover, we can check if we're done
        // !self.rollover_required && current_tick >= self.finish_tick
        todo!("...")
    }

    /// Block until the delay has finished.  Effectively turns a non-blocking
    /// delay into a blocking delay.  Consumes the NonBlockingDelay, because
    /// there is no sensible use for a NonBlockingDelay which is guaranteed to
    /// have already finished.
    pub fn block(mut self) {
        while !self.delay_finished() { }
    }
}

