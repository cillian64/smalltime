#include "ch.h"
#include "hal.h"

#include "input.h"

THD_FUNCTION(InputThread, arg)
{
    (void)arg;

    while(true)
    {
        chThdSleepMilliseconds(1000);
    }
}
