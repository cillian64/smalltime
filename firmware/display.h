#ifndef DISPLAY_H
#define DISPLAY_H

THD_FUNCTION(DisplayThread, arg);

typedef struct {
    uint8_t ht, hu, mt, mu;
    uint8_t Dt, Du, Mt, Mu;
    uint8_t digit_selector;
} DisplayDigits;

extern DisplayDigits displaydigits;

#endif
