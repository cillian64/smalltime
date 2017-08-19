#ifndef DS3231_H
#define DS3231_H

typedef struct {
    uint8_t ht, hu, mt, mu, st, su;
    uint8_t Mt, Mu, Dt, Du;
    uint8_t Yh, Yt, Yu;
} Ds3231_time;
extern Ds3231_time ds3231_time;

void ds3231_init(void);
void ds3231_get(void);
void ds3231_set(void);

#endif
