#include "ch.h"
#include "hal.h"

#include "display.h"

THD_FUNCTION(DisplayThread, arg)
{
    (void)arg;

    while(true)
    {
        chThdSleepMilliseconds(1000);
        // Basically display each digit in turn from internal state.
        // Stretch goal: when we're inputting, make the currently selected
        // digit flash by only displaying it half the time.
    }
}
