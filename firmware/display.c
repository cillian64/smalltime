#include <stdint.h>
#include <stdbool.h>

#include "ch.h"
#include "hal.h"

#include "display.h"
#include "ds3231.h"

void displayDigit(uint8_t digit, bool flip, bool dp);

uint8_t digit_selector;

THD_FUNCTION(DisplayThread, arg)
{
    (void)arg;

    // Time to display each digit
    const uint32_t digdelay = 100;

    while(true)
    {
        if(digit_selector < 9)
        {
            displayDigit(ds3231_time.ht, true, digit_selector == 1);
            palSetLine(LINE_DIG8);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG8);

            displayDigit(ds3231_time.hu, true, digit_selector == 2);
            palSetLine(LINE_DIG7);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG7);

            displayDigit(ds3231_time.mt, true, digit_selector == 3);
            palSetLine(LINE_DIG6);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG6);

            displayDigit(ds3231_time.mu, true, digit_selector == 4);
            palSetLine(LINE_DIG5);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG5);

            displayDigit(ds3231_time.Dt, false, digit_selector == 5);
            palSetLine(LINE_DIG4);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG4);

            displayDigit(ds3231_time.Du, false, digit_selector == 6);
            palSetLine(LINE_DIG3);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG3);

            displayDigit(ds3231_time.Mt, false, digit_selector == 7);
            palSetLine(LINE_DIG2);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG2);

            displayDigit(ds3231_time.Mu, false, digit_selector == 8);
            palSetLine(LINE_DIG1);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG1);
        }
        else // digit_selector >= 9:
        {
            // We skip two digits in this mode.  This delay means the
            // remaining digits don't appear brighter.
            chThdSleepMicroseconds(2 * digdelay);

            displayDigit(ds3231_time.st, true, digit_selector == 9);
            palSetLine(LINE_DIG6);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG6);

            displayDigit(ds3231_time.su, true, digit_selector == 9);
            palSetLine(LINE_DIG5);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG5);

            displayDigit(2, false, false);
            palSetLine(LINE_DIG4);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG4);

            displayDigit(0, false, false);
            palSetLine(LINE_DIG3);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG3);

            displayDigit(ds3231_time.Yt, false, digit_selector == 10);
            palSetLine(LINE_DIG2);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG2);

            displayDigit(ds3231_time.Yu, false, digit_selector == 11);
            palSetLine(LINE_DIG1);
            chThdSleepMicroseconds(digdelay);
            palClearLine(LINE_DIG1);

            // So year display has same brightness:
            chThdSleepMicroseconds(4*digdelay);
        }
    }
}

void displayDigit(uint8_t digit, bool flip, bool dp)
{
    // Each byte in the font corresponds to the 7 segments in order
    // MSB: X G F E D C B A (LSB)
    // 0b00000001 is seg B
    // 0b00000010 is DP
    // 0b00000100 is F
    // 0b00001000 is E
    // 0b00010000 is G
    // 0b00100000 is C
    // 0b01000000 is D
    // 0b10000000 is A
    uint8_t font[10] = {
        0b00111111,
        0b00000011,
        0b01101101,
        0b01100111,
        0b01010011,
        0b01110110,
        0b01111110,
        0b00100011,
        0b01111111,
        0b01110111
    };

    if(digit > 9)
        chSysHalt("Invalid digit");

    // For some reason these segments are all in the wrong order
    // Probably because the 7seg had such a useless datasheet.
    if(!flip)
    {
        palWriteLine(LINE_SEG_DP, (font[digit] >> 0) & 0x01);
        palWriteLine(LINE_SEG_G,  (font[digit] >> 3) & 0x01);
        palWriteLine(LINE_SEG_F,  (font[digit] >> 2) & 0x01);
        palWriteLine(LINE_SEG_E,  (font[digit] >> 6) & 0x01);
        palWriteLine(LINE_SEG_D,  (font[digit] >> 4) & 0x01);
        palWriteLine(LINE_SEG_C,  (font[digit] >> 5) & 0x01);
        palWriteLine(LINE_SEG_A,  (font[digit] >> 1) & 0x01);
    }
    else
    {
        palWriteLine(LINE_SEG_DP, (font[digit] >> 3) & 0x01);
        palWriteLine(LINE_SEG_G,  (font[digit] >> 0) & 0x01);
        palWriteLine(LINE_SEG_F,  (font[digit] >> 5) & 0x01);
        palWriteLine(LINE_SEG_E,  (font[digit] >> 6) & 0x01);
        palWriteLine(LINE_SEG_D,  (font[digit] >> 1) & 0x01);
        palWriteLine(LINE_SEG_C,  (font[digit] >> 2) & 0x01);
        palWriteLine(LINE_SEG_A,  (font[digit] >> 4) & 0x01);
    }
    palWriteLine(LINE_SEG_B, dp);  // Yes this is definitely the DP.
}
