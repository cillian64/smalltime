#include "ch.h"
#include "hal.h"

#include "display.h"
#include "input.h"
#include "ds3231.h"

static THD_WORKING_AREA(waDisplay, 0x100);
static THD_WORKING_AREA(waInput, 0x100);

// Upon hard fault, copy HARDFAULT_PSP to the sp register so gdb can give a
// stack trace.
void **HARDFAULT_PSP;
register void *stack_pointer asm("sp");
void HardFault_Handler(void) {
    asm("mrs %0, psp" : "=r"(HARDFAULT_PSP) : :);
    stack_pointer = HARDFAULT_PSP;
    while(1);
}

int main(void)
{
    halInit();
    chSysInit();

    ds3231_init();

    chThdCreateStatic(waDisplay, sizeof(waDisplay), NORMALPRIO, DisplayThread,
                      NULL);
//    chThdCreateStatic(waInput, sizeof(waInput), NORMALPRIO, InputThread, NULL);
    while(true)
    {
        ds3231_get();
        if(!palReadLine(LINE_SW_INC))
        {
            ds3231_time.mu += 1;
            ds3231_time.mu %= 10;
            ds3231_set();
        }
        displaydigits.ht = ds3231_time.ht;
        displaydigits.hu = ds3231_time.hu;
        displaydigits.mt = ds3231_time.mt;
        displaydigits.mu = ds3231_time.mu;
        chThdSleepMilliseconds(100);
    }
}
