#include "ch.h"
#include "hal.h"

#include "display.h"
#include "timekeeping.h"
#include "input.h"

static THD_WORKING_AREA(waDisplay, 0x100);
static THD_WORKING_AREA(waTimekeeping, 0x100);
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

    displaydigits.ht = 1;
    displaydigits.hu = 2;
    displaydigits.mt = 3;
    displaydigits.mu = 4;
    displaydigits.Dt = 5;
    displaydigits.Du = 6;
    displaydigits.Mt = 7;
    displaydigits.Mu = 8;

    chThdCreateStatic(waDisplay, sizeof(waDisplay), NORMALPRIO, DisplayThread,
                      NULL);
//    chThdCreateStatic(waTimekeeping, sizeof(waTimekeeping), NORMALPRIO,
//                      TimekeepingThread, NULL);
//    chThdCreateStatic(waInput, sizeof(waInput), NORMALPRIO, InputThread, NULL);
    while(true)
    {
        chThdSleepMilliseconds(1000);
    }
}
