#include "ch.h"
#include "hal.h"

#include "leds.h"

// Lookup from digit number (0-7) to digit control line
static const uint32_t digits[8] = {
    LINE_DIG1,
    LINE_DIG2,
    LINE_DIG3,
    LINE_DIG4,
    LINE_DIG5,
    LINE_DIG6,
    LINE_DIG7,
    LINE_DIG8
};

// Lookup from segment (A-G then DP) to segment lines
static const uint32_t segments[8] = {
    LINE_SEG_A,
    LINE_SEG_B,
    LINE_SEG_C,
    LINE_SEG_D,
    LINE_SEG_E,
    LINE_SEG_F,
    LINE_SEG_G,
    LINE_SEG_DP
};

// Lookup from a single digit number to which segments to activate for that
// number, in a bitfield such that MSBit is DP and LSBit is Seg A
static const uint8_t font[10] = {
    0b00000000, // 0
    0b00000000, // 0
    0b00000000, // 0
    0b00000000, // 0
    0b00000000, // 0
    0b00000000, // 0
    0b00000000, // 0
    0b00000000, // 0
    0b00000000, // 0
    0b00000000  // 9
};

void leds_display_digit(uint8_t digit, uint8_t value, uint32_t time)
{
    uint8_t rendered = font[value];
    int i;
    for(i=0; i<8; i++)
    {
        if(rendered & 0b00000001)
            palSetLine(segments[i]);
        else
            palClearLine(segments[i]);
        rendered >>= 1;
    }

    palSetLine(digits[digit]);
    chThdSleepMilliseconds(time);
    palClearLine(digits[digit]);
}
