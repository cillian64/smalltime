#ifndef LEDS_H
#define LEDS_H

#include <stdint.h>

// Display a value (0-9 inclusive) on the indicated digit (0-7 inclusive)
void leds_display_digit(uint8_t digit, uint8_t value, uint32_t time);

#endif
