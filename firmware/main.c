#include "ch.h"
#include "hal.h"

#include "display.h"
#include "ds3231.h"

static THD_WORKING_AREA(waDisplay, 0x100);

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

    displaydigits.digit_selector = 0;

    while(true)
    {
        ds3231_get();
        if(!palReadLine(LINE_SW_SET))
        {
            while(!palReadLine(LINE_SW_SET))
                chThdSleepMilliseconds(100);
            displaydigits.digit_selector =
                (displaydigits.digit_selector + 1) % 9;
        }

        if(!palReadLine(LINE_SW_INC))
        {
            while(!palReadLine(LINE_SW_INC))
                chThdSleepMilliseconds(100);
            switch(displaydigits.digit_selector)
            {
                case 0:
                    // No digit selected: zero the second counter
                    ds3231_time.st = 0;
                    ds3231_time.su = 0;
                    break;
                case 1:
                    ds3231_time.ht = (ds3231_time.ht + 1) % 3;
                    break;
                case 2:
                    ds3231_time.hu = (ds3231_time.hu + 1) % 10;
                    break;
                case 3:
                    ds3231_time.mt = (ds3231_time.mt + 1) % 7;
                    break;
                case 4:
                    ds3231_time.mu = (ds3231_time.mu + 1) % 10;
                    break;
                case 5:
                    ds3231_time.Dt = (ds3231_time.Dt + 1) % 4;
                    break;
                case 6:
                    ds3231_time.Du = (ds3231_time.Du + 1) % 10;
                    break;
                case 7:
                    ds3231_time.Mt = (ds3231_time.Mt + 1) % 2;
                    break;
                case 8:
                    ds3231_time.Mu = (ds3231_time.Mu + 1) % 10;
                    break;
            }
            ds3231_set();
        }
        displaydigits.ht = ds3231_time.ht;
        displaydigits.hu = ds3231_time.hu;
        displaydigits.mt = ds3231_time.mt;
        displaydigits.mu = ds3231_time.mu;
        displaydigits.Mt = ds3231_time.Mt;
        displaydigits.Mu = ds3231_time.Mu;
        displaydigits.Dt = ds3231_time.Dt;
        displaydigits.Du = ds3231_time.Du;
        chThdSleepMilliseconds(100);
    }
}
