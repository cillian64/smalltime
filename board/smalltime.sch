EESchema Schematic File Version 2
LIBS:swd_tc
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32f0xxkxtx
LIBS:swd
LIBS:microusb
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F0xxKxTx IC?
U 1 1 596FD91E
P 3300 3500
F 0 "IC?" H 3000 4600 50  0000 L CNN
F 1 "STM32F030K6T6" H 3000 2400 50  0000 L CNN
F 2 "agg:LQFP-32" H 3000 2300 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/DM00088500.pdf" H 3000 2200 50  0001 L CNN
F 4 "2432085" H 3000 2100 50  0001 L CNN "Farnell"
	1    3300 3500
	1    0    0    -1  
$EndComp
$Comp
L SWD P?
U 1 1 596FD9A0
P 3250 5350
F 0 "P?" H 2850 5650 50  0000 L CNN
F 1 "SWD" H 2850 5050 50  0000 L CNN
F 2 "agg:FTSH-105-01-F-D-K" H 2850 4950 50  0001 L CNN
F 3 "" H 3600 5150 50  0001 C CNN
F 4 "FTSH-105-01-F-D-K" H 2850 4850 50  0001 L CNN "Toby"
	1    3250 5350
	1    0    0    -1  
$EndComp
$Comp
L SWD_TC P?
U 1 1 596FD9DC
P 3250 6100
F 0 "P?" H 2950 6300 50  0000 L CNN
F 1 "SWD_TC" H 2950 5900 50  0000 L CNN
F 2 "agg:TC2030-NL" H 2950 5800 50  0001 L CNN
F 3 "" H 2850 6200 50  0001 C CNN
	1    3250 6100
	1    0    0    -1  
$EndComp
$Comp
L MICROUSB J?
U 1 1 596FDA5C
P 3200 6850
F 0 "J?" H 3050 7150 50  0000 L CNN
F 1 "MICROUSB" H 3050 6450 50  0000 L CNN
F 2 "agg:MICROUSB_MOLEX_47589-0001" H 3050 6350 50  0001 L CNN
F 3 "" H 3500 7050 50  0001 C CNN
F 4 "1568023" H 3050 6250 50  0001 L CNN "Farnell"
	1    3200 6850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
