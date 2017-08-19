#include <stdint.h>
#include <stdbool.h>

#include "ch.h"
#include "hal.h"

#include "display.h"

void displayDigit(uint8_t digit, bool flip);

DisplayDigits displaydigits;

THD_FUNCTION(DisplayThread, arg)
{
    (void)arg;

    // Time to display each digit
    const uint32_t digdelay = 100;

    while(true)
    {
        displayDigit(displaydigits.ht, true);
        palSetLine(LINE_DIG8);
        chThdSleepMicroseconds(digdelay);
        palClearLine(LINE_DIG8);

        displayDigit(displaydigits.hu, true);
        palSetLine(LINE_DIG7);
        chThdSleepMicroseconds(digdelay);
        palClearLine(LINE_DIG7);

        displayDigit(displaydigits.mt, true);
        palSetLine(LINE_DIG6);
        chThdSleepMicroseconds(digdelay);
        palClearLine(LINE_DIG6);

        displayDigit(displaydigits.mu, true);
        palSetLine(LINE_DIG5);
        chThdSleepMicroseconds(digdelay);
        palClearLine(LINE_DIG5);

        displayDigit(displaydigits.Dt, false);
        palSetLine(LINE_DIG4);
        chThdSleepMicroseconds(digdelay);
        palClearLine(LINE_DIG4);

        displayDigit(displaydigits.Du, false);
        palSetLine(LINE_DIG3);
        chThdSleepMicroseconds(digdelay);
        palClearLine(LINE_DIG3);

        displayDigit(displaydigits.Mt, false);
        palSetLine(LINE_DIG2);
        chThdSleepMicroseconds(digdelay);
        palClearLine(LINE_DIG2);

        displayDigit(displaydigits.Mu, false);
        palSetLine(LINE_DIG1);
        chThdSleepMicroseconds(digdelay);
        palClearLine(LINE_DIG1);
    }
}

void displayDigit(uint8_t digit, bool flip)
{
    // Each byte in the font corresponds to the 8 segments in order
    // MSB: DP G F E D C B A (LSB)
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

    if(!flip)
    {
        palWriteLine(LINE_SEG_DP, (font[digit] >> 0) & 0x01);
        palWriteLine(LINE_SEG_G,  (font[digit] >> 3) & 0x01);
        palWriteLine(LINE_SEG_F,  (font[digit] >> 2) & 0x01);
        palWriteLine(LINE_SEG_E,  (font[digit] >> 6) & 0x01);
        palWriteLine(LINE_SEG_D,  (font[digit] >> 4) & 0x01);
        palWriteLine(LINE_SEG_C,  (font[digit] >> 5) & 0x01);
        palWriteLine(LINE_SEG_B,  (font[digit] >> 7) & 0x01);
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
        palWriteLine(LINE_SEG_B,  (font[digit] >> 7) & 0x01);
        palWriteLine(LINE_SEG_A,  (font[digit] >> 4) & 0x01);
    }
}
