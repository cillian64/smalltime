# Building
* sudo apt install arm-none-eabi-gdb arm-none-eabi-gcc
* git submodule update --init --recursive
* make

# Layout
* `main.c`: Starts up other threads
* `timekeeping.c`: Thread which regularly communicates with the RTC chip and
  stores the time, handling daylight savings.
* `display.c`: Thread which handles strobing the 7-segment displays and
 displaying the time.
* `input.c`: Thread which handles inputs and time-setting from the two buttons
* `ds3231.c`: Driver for retrieving the time from the DS3231 RTC chip.
* `leds.c`: Driver for the 7-segment LED displays
