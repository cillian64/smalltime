#include "ch.h"
#include "hal.h"

#include "timekeeping.h"

THD_FUNCTION(TimekeepingThread, arg)
{
    (void)arg;

    while(true)
    {
        // TODO: Get the time from the DS3231
        // TODO: Handle daylight savings as appropriate
        // TODO: Update the time somewhere display can see it
        chThdSleepMilliseconds(1000);
    }
}
