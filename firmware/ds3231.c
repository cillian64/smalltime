#include "ch.h"
#include "hal.h"

#include "ds3231.h"

static const I2CConfig i2cconfig = {
    1<<31 | 1<<30 | 1<<29 | 1<<28, // TIMINGR
    0, // CR1
    0, // CR2
};

const uint8_t ds3231_address = 0b01101000;

Ds3231_time ds3231_time;

void ds3231_init(void)
{
    i2cStart(&I2CD1, &i2cconfig);

    // Setup control registers
    uint8_t CTRL1[2] = {0x0e, 0b00011100};
    uint8_t CTRL2[2] = {0x0f, 0b00000000};

    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, CTRL1, 2, NULL, 0,
                             TIME_INFINITE);
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, CTRL2, 2, NULL, 0,
                             TIME_INFINITE);

    // Check we are in 24-hour time mode
    uint8_t hours[2] = {0x09, 0x00};
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, hours, 1, NULL, 0,
                             TIME_INFINITE);
    i2cMasterReceiveTimeout(&I2CD1, ds3231_address, hours+1, 1,
                            TIME_INFINITE);
    hours[1] &= ~(1<<6);
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, hours, 2, NULL, 0,
                             TIME_INFINITE);

    i2cStop(&I2CD1);
}

void ds3231_get(void)
{
    uint8_t rx_buf, tx_buf;

    i2cStart(&I2CD1, &i2cconfig);

    // Seconds
    tx_buf = 0x00;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, &tx_buf, 1, NULL, 0,
                             TIME_INFINITE);
    i2cMasterReceiveTimeout(&I2CD1, ds3231_address, &rx_buf, 1,
                            TIME_INFINITE);
    ds3231_time.st = (rx_buf >> 4) & 0b00000111;
    ds3231_time.su = rx_buf & 0b00001111;

    // Minutes
    tx_buf = 0x01;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, &tx_buf, 1, NULL, 0,
                             TIME_INFINITE);
    i2cMasterReceiveTimeout(&I2CD1, ds3231_address, &rx_buf, 1,
                            TIME_INFINITE);
    ds3231_time.mt = (rx_buf >> 4) & 0b00000111;
    ds3231_time.mu = rx_buf & 0b00001111;

    // Hours
    tx_buf = 0x02;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, &tx_buf, 1, NULL, 0,
                             TIME_INFINITE);
    i2cMasterReceiveTimeout(&I2CD1, ds3231_address, &rx_buf, 1,
                            TIME_INFINITE);
    ds3231_time.ht = (rx_buf >> 4) & 0b00000111;
    ds3231_time.hu = rx_buf & 0b00001111;

    // Days
    tx_buf = 0x04;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, &tx_buf, 1, NULL, 0,
                             TIME_INFINITE);
    i2cMasterReceiveTimeout(&I2CD1, ds3231_address, &rx_buf, 1,
                            TIME_INFINITE);
    ds3231_time.Dt = (rx_buf >> 4) & 0b00000011;
    ds3231_time.Du = rx_buf & 0b00001111;

    // Months
    tx_buf = 0x05;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, &tx_buf, 1, NULL, 0,
                             TIME_INFINITE);
    i2cMasterReceiveTimeout(&I2CD1, ds3231_address, &rx_buf, 1,
                            TIME_INFINITE);
    ds3231_time.Mt = (rx_buf >> 4) & 0b00000001;
    ds3231_time.Mu = rx_buf & 0b00001111;
    ds3231_time.Yh = (rx_buf >> 7) & 0b00000001;

    // Years
    tx_buf = 0x06;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, &tx_buf, 1, NULL, 0,
                             TIME_INFINITE);
    i2cMasterReceiveTimeout(&I2CD1, ds3231_address, &rx_buf, 1,
                            TIME_INFINITE);
    ds3231_time.Yt = (rx_buf >> 4) & 0b00001111;
    ds3231_time.Yu = rx_buf & 0b00001111;

    i2cStop(&I2CD1);
}

void ds3231_set(void)
{
    uint8_t tx_buf[2];

    i2cStart(&I2CD1, &i2cconfig);

    // Seconds
    tx_buf[0] = 0x00;
    tx_buf[1] = (ds3231_time.st << 4) | ds3231_time.su;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, tx_buf, 2, NULL, 0,
                             TIME_INFINITE);

    // Minutes
    tx_buf[0] = 0x01;
    tx_buf[1] = (ds3231_time.mt << 4) | ds3231_time.mu;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, tx_buf, 2, NULL, 0,
                             TIME_INFINITE);

    // Hours
    tx_buf[0] = 0x02;
    tx_buf[1] = (ds3231_time.ht << 4) | ds3231_time.hu;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, tx_buf, 2, NULL, 0,
                             TIME_INFINITE);

    // Days
    tx_buf[0] = 0x04;
    tx_buf[1] = (ds3231_time.Dt << 4) | ds3231_time.Du;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, tx_buf, 2, NULL, 0,
                             TIME_INFINITE);

    // Months
    tx_buf[0] = 0x05;
    tx_buf[1] = (ds3231_time.Yh << 7) | (ds3231_time.Mt << 4) |
                ds3231_time.Mu;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, tx_buf, 2, NULL, 0,
                             TIME_INFINITE);

    // Years
    tx_buf[0] = 0x06;
    tx_buf[1] = (ds3231_time.Yt << 4) | ds3231_time.Yu;
    i2cMasterTransmitTimeout(&I2CD1, ds3231_address, tx_buf, 2, NULL, 0,
                             TIME_INFINITE);

    i2cStop(&I2CD1);
}

