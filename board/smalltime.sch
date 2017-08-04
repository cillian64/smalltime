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
LIBS:ds3231mz
LIBS:mcp1700
LIBS:pfet
LIBS:tept
LIBS:part
LIBS:switch
LIBS:ls0803gwk
LIBS:adp3338
LIBS:smalltime-cache
EELAYER 26 0
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
L STM32F0xxKxTx IC1
U 1 1 596FD91E
P 2500 3250
F 0 "IC1" H 2200 4350 50  0000 L CNN
F 1 "STM32F051K6T7" H 2200 2150 50  0000 L CNN
F 2 "agg:LQFP-32" H 2200 2050 50  0001 L CNN
F 3 "http://www.farnell.com/datasheets/2307889.pdf" H 2200 1950 50  0001 L CNN
F 4 "2432090" H 2200 1850 50  0001 L CNN "Farnell"
	1    2500 3250
	1    0    0    -1  
$EndComp
$Comp
L SWD_TC P2
U 1 1 596FD9DC
P 7500 6150
F 0 "P2" H 7200 6350 50  0000 L CNN
F 1 "SWD_TC" H 7200 5950 50  0000 L CNN
F 2 "agg:TC2030-NL" H 7200 5850 50  0001 L CNN
F 3 "" H 7100 6250 50  0001 C CNN
	1    7500 6150
	1    0    0    -1  
$EndComp
$Comp
L MICROUSB J1
U 1 1 596FDA5C
P 4400 7050
F 0 "J1" H 4250 7350 50  0000 L CNN
F 1 "MICROUSB" H 4250 6650 50  0000 L CNN
F 2 "agg:MICROUSB_MOLEX_47589-0001" H 4250 6550 50  0001 L CNN
F 3 "" H 4700 7250 50  0001 C CNN
F 4 "1568023" H 4250 6450 50  0001 L CNN "Farnell"
	1    4400 7050
	1    0    0    -1  
$EndComp
$Comp
L DS3231MZ IC2
U 1 1 597251B7
P 4950 6000
F 0 "IC2" H 4450 6400 50  0000 L CNN
F 1 "DS3231MZ" H 4450 5600 50  0000 L CNN
F 2 "agg:SOIC-8" H 4450 5500 50  0001 L CNN
F 3 "http://www.farnell.com/datasheets/2001796.pdf" H 4450 5400 50  0001 L CNN
F 4 "2515358" H 4450 5300 50  0001 L CNN "Farnell"
	1    4950 6000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 59725D48
P 4400 5200
F 0 "BT1" H 4500 5300 50  0000 L CNN
F 1 "CR1220/1225" H 4500 5200 50  0000 L CNN
F 2 "smalltime:KEYSTONE500" V 4400 5260 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1696460.pdf" V 4400 5260 50  0001 C CNN
F 4 "3029839" H 4400 5200 60  0001 C CNN "Farnell"
	1    4400 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59725E73
P 4400 5300
F 0 "#PWR01" H 4400 5050 50  0001 C CNN
F 1 "GND" H 4400 5150 50  0000 C CNN
F 2 "" H 4400 5300 50  0001 C CNN
F 3 "" H 4400 5300 50  0001 C CNN
	1    4400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5000 4250 5000
Wire Wire Line
	4250 5000 4250 5700
Wire Wire Line
	4250 5700 4350 5700
$Comp
L +3V3 #PWR02
U 1 1 59725FA1
P 3950 5600
F 0 "#PWR02" H 3950 5450 50  0001 C CNN
F 1 "+3V3" H 3950 5740 50  0000 C CNN
F 2 "" H 3950 5600 50  0001 C CNN
F 3 "" H 3950 5600 50  0001 C CNN
	1    3950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5600 3950 5750
Connection ~ 3950 5750
$Comp
L GND #PWR03
U 1 1 597260BD
P 3950 6050
F 0 "#PWR03" H 3950 5800 50  0001 C CNN
F 1 "GND" H 3950 5900 50  0000 C CNN
F 2 "" H 3950 6050 50  0001 C CNN
F 3 "" H 3950 6050 50  0001 C CNN
	1    3950 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 597260DF
P 4350 5900
F 0 "#PWR04" H 4350 5650 50  0001 C CNN
F 1 "GND" H 4350 5750 50  0000 C CNN
F 2 "" H 4350 5900 50  0001 C CNN
F 3 "" H 4350 5900 50  0001 C CNN
	1    4350 5900
	0    1    1    0   
$EndComp
Text Label 2750 6300 2    60   ~ 0
I2C_SDA
Text Label 2750 6400 2    60   ~ 0
I2C_SCL
NoConn ~ 5550 5700
NoConn ~ 5550 5900
NoConn ~ 5550 6000
$Comp
L C C1
U 1 1 59726684
P 1850 1150
F 0 "C1" H 1875 1250 50  0000 L CNN
F 1 "10n" H 1875 1050 50  0000 L CNN
F 2 "agg:0603" H 1888 1000 50  0001 C CNN
F 3 "" H 1850 1150 50  0001 C CNN
F 4 "1759102" H 1850 1150 60  0001 C CNN "Farnell"
	1    1850 1150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 597266BD
P 2050 1150
F 0 "C2" H 2075 1250 50  0000 L CNN
F 1 "1u" H 2075 1050 50  0000 L CNN
F 2 "agg:0603" H 2088 1000 50  0001 C CNN
F 3 "" H 2050 1150 50  0001 C CNN
F 4 "1759399" H 2050 1150 60  0001 C CNN "Farnell"
	1    2050 1150
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59726700
P 2350 1150
F 0 "C3" H 2375 1250 50  0000 L CNN
F 1 "4u7" H 2375 1050 50  0000 L CNN
F 2 "agg:0603" H 2388 1000 50  0001 C CNN
F 3 "" H 2350 1150 50  0001 C CNN
F 4 "2320811" H 2350 1150 60  0001 C CNN "Farnell"
	1    2350 1150
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5972673E
P 2550 1150
F 0 "C4" H 2575 1250 50  0000 L CNN
F 1 "100n" H 2575 1050 50  0000 L CNN
F 2 "agg:0603" H 2588 1000 50  0001 C CNN
F 3 "" H 2550 1150 50  0001 C CNN
F 4 "2627427" H 2550 1150 60  0001 C CNN "Farnell"
	1    2550 1150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR05
U 1 1 597267C8
P 1850 1000
F 0 "#PWR05" H 1850 850 50  0001 C CNN
F 1 "+3V3" H 1850 1140 50  0000 C CNN
F 2 "" H 1850 1000 50  0001 C CNN
F 3 "" H 1850 1000 50  0001 C CNN
	1    1850 1000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR06
U 1 1 597267FE
P 2050 1000
F 0 "#PWR06" H 2050 850 50  0001 C CNN
F 1 "+3V3" H 2050 1140 50  0000 C CNN
F 2 "" H 2050 1000 50  0001 C CNN
F 3 "" H 2050 1000 50  0001 C CNN
	1    2050 1000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR07
U 1 1 5972682D
P 2350 1000
F 0 "#PWR07" H 2350 850 50  0001 C CNN
F 1 "+3V3" H 2350 1140 50  0000 C CNN
F 2 "" H 2350 1000 50  0001 C CNN
F 3 "" H 2350 1000 50  0001 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR08
U 1 1 5972685C
P 2550 1000
F 0 "#PWR08" H 2550 850 50  0001 C CNN
F 1 "+3V3" H 2550 1140 50  0000 C CNN
F 2 "" H 2550 1000 50  0001 C CNN
F 3 "" H 2550 1000 50  0001 C CNN
	1    2550 1000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR09
U 1 1 5972688B
P 2750 1000
F 0 "#PWR09" H 2750 850 50  0001 C CNN
F 1 "+3V3" H 2750 1140 50  0000 C CNN
F 2 "" H 2750 1000 50  0001 C CNN
F 3 "" H 2750 1000 50  0001 C CNN
	1    2750 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 597268B0
P 1850 1300
F 0 "#PWR010" H 1850 1050 50  0001 C CNN
F 1 "GND" H 1850 1150 50  0000 C CNN
F 2 "" H 1850 1300 50  0001 C CNN
F 3 "" H 1850 1300 50  0001 C CNN
	1    1850 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 597268E6
P 2050 1300
F 0 "#PWR011" H 2050 1050 50  0001 C CNN
F 1 "GND" H 2050 1150 50  0000 C CNN
F 2 "" H 2050 1300 50  0001 C CNN
F 3 "" H 2050 1300 50  0001 C CNN
	1    2050 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 59726915
P 2350 1300
F 0 "#PWR012" H 2350 1050 50  0001 C CNN
F 1 "GND" H 2350 1150 50  0000 C CNN
F 2 "" H 2350 1300 50  0001 C CNN
F 3 "" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59726944
P 2550 1300
F 0 "#PWR013" H 2550 1050 50  0001 C CNN
F 1 "GND" H 2550 1150 50  0000 C CNN
F 2 "" H 2550 1300 50  0001 C CNN
F 3 "" H 2550 1300 50  0001 C CNN
	1    2550 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59726973
P 2750 1300
F 0 "#PWR014" H 2750 1050 50  0001 C CNN
F 1 "GND" H 2750 1150 50  0000 C CNN
F 2 "" H 2750 1300 50  0001 C CNN
F 3 "" H 2750 1300 50  0001 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
Text Notes 1850 800  0    60   ~ 0
VDDA
Text Notes 2450 800  0    60   ~ 0
VDD
$Comp
L +3V3 #PWR015
U 1 1 59726CA8
P 2050 2200
F 0 "#PWR015" H 2050 2050 50  0001 C CNN
F 1 "+3V3" H 2050 2340 50  0000 C CNN
F 2 "" H 2050 2200 50  0001 C CNN
F 3 "" H 2050 2200 50  0001 C CNN
	1    2050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2200 2050 2450
Wire Wire Line
	2050 2250 2100 2250
Wire Wire Line
	2050 2350 2100 2350
Connection ~ 2050 2250
Wire Wire Line
	2050 2450 2100 2450
Connection ~ 2050 2350
$Comp
L GND #PWR016
U 1 1 59726F3A
P 1800 2650
F 0 "#PWR016" H 1800 2400 50  0001 C CNN
F 1 "GND" H 1800 2500 50  0000 C CNN
F 2 "" H 1800 2650 50  0001 C CNN
F 3 "" H 1800 2650 50  0001 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2650 2100 2650
Wire Wire Line
	2100 2550 2050 2550
Wire Wire Line
	2050 2550 2050 2650
Connection ~ 2050 2650
Text Label 2100 2850 2    60   ~ 0
~RST
$Comp
L GND #PWR017
U 1 1 597274E4
P 2100 2950
F 0 "#PWR017" H 2100 2700 50  0001 C CNN
F 1 "GND" H 2100 2800 50  0000 C CNN
F 2 "" H 2100 2950 50  0001 C CNN
F 3 "" H 2100 2950 50  0001 C CNN
	1    2100 2950
	0    1    1    0   
$EndComp
Text Label 8000 5500 0    60   ~ 0
~RST
Text Label 7100 6150 2    60   ~ 0
~RST
Text Label 8000 5100 0    60   ~ 0
SWDIO
Text Label 8000 5200 0    60   ~ 0
SWCLK
Text Label 7900 6150 0    60   ~ 0
SWCLK
Text Label 7900 6050 0    60   ~ 0
SWDIO
Text Label 2900 3550 0    60   ~ 0
SWDIO
Text Label 2900 3650 0    60   ~ 0
SWCLK
Text Label 1850 4250 2    60   ~ 0
I2C_SDA
Text Label 1850 4150 2    60   ~ 0
I2C_SCL
NoConn ~ 8000 5300
NoConn ~ 8000 5400
$Comp
L GND #PWR018
U 1 1 59727F21
P 6950 5550
F 0 "#PWR018" H 6950 5300 50  0001 C CNN
F 1 "GND" H 6950 5400 50  0000 C CNN
F 2 "" H 6950 5550 50  0001 C CNN
F 3 "" H 6950 5550 50  0001 C CNN
	1    6950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5200 6950 5550
Wire Wire Line
	6950 5500 7000 5500
Wire Wire Line
	7000 5300 6950 5300
Connection ~ 6950 5500
Wire Wire Line
	7000 5200 6950 5200
Connection ~ 6950 5300
$Comp
L +3V3 #PWR019
U 1 1 59727FB5
P 6950 5050
F 0 "#PWR019" H 6950 4900 50  0001 C CNN
F 1 "+3V3" H 6950 5190 50  0000 C CNN
F 2 "" H 6950 5050 50  0001 C CNN
F 3 "" H 6950 5050 50  0001 C CNN
	1    6950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5100 7000 5100
Wire Wire Line
	6950 5050 6950 5100
$Comp
L +3V3 #PWR020
U 1 1 597280EE
P 7050 6000
F 0 "#PWR020" H 7050 5850 50  0001 C CNN
F 1 "+3V3" H 7050 6140 50  0000 C CNN
F 2 "" H 7050 6000 50  0001 C CNN
F 3 "" H 7050 6000 50  0001 C CNN
	1    7050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 6000 7050 6050
Wire Wire Line
	7050 6050 7100 6050
$Comp
L GND #PWR021
U 1 1 597281EA
P 7100 6250
F 0 "#PWR021" H 7100 6000 50  0001 C CNN
F 1 "GND" H 7100 6100 50  0000 C CNN
F 2 "" H 7100 6250 50  0001 C CNN
F 3 "" H 7100 6250 50  0001 C CNN
	1    7100 6250
	1    0    0    -1  
$EndComp
NoConn ~ 7900 6250
$Comp
L +5V #PWR022
U 1 1 597287D2
P 4750 6800
F 0 "#PWR022" H 4750 6650 50  0001 C CNN
F 1 "+5V" H 4750 6940 50  0000 C CNN
F 2 "" H 4750 6800 50  0001 C CNN
F 3 "" H 4750 6800 50  0001 C CNN
	1    4750 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6800 4750 6850
Wire Wire Line
	4700 6850 5400 6850
NoConn ~ 4700 7150
NoConn ~ 4700 7350
NoConn ~ 4700 6950
NoConn ~ 4700 7050
$Comp
L GND #PWR023
U 1 1 59728C95
P 5400 6950
F 0 "#PWR023" H 5400 6700 50  0001 C CNN
F 1 "GND" H 5400 6800 50  0000 C CNN
F 2 "" H 5400 6950 50  0001 C CNN
F 3 "" H 5400 6950 50  0001 C CNN
	1    5400 6950
	1    0    0    -1  
$EndComp
Connection ~ 4750 6850
Connection ~ 5100 6850
$Comp
L GND #PWR024
U 1 1 59729308
P 5100 7150
F 0 "#PWR024" H 5100 6900 50  0001 C CNN
F 1 "GND" H 5100 7000 50  0000 C CNN
F 2 "" H 5100 7150 50  0001 C CNN
F 3 "" H 5100 7150 50  0001 C CNN
	1    5100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6850 6450 6850
Connection ~ 6200 6850
$Comp
L GND #PWR025
U 1 1 597295B2
P 6200 7150
F 0 "#PWR025" H 6200 6900 50  0001 C CNN
F 1 "GND" H 6200 7000 50  0000 C CNN
F 2 "" H 6200 7150 50  0001 C CNN
F 3 "" H 6200 7150 50  0001 C CNN
	1    6200 7150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR026
U 1 1 5972974C
P 6450 6850
F 0 "#PWR026" H 6450 6700 50  0001 C CNN
F 1 "+3V3" H 6450 6990 50  0000 C CNN
F 2 "" H 6450 6850 50  0001 C CNN
F 3 "" H 6450 6850 50  0001 C CNN
	1    6450 6850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR027
U 1 1 597299D0
P 4950 7500
F 0 "#PWR027" H 4950 7250 50  0001 C CNN
F 1 "GND" H 4950 7350 50  0000 C CNN
F 2 "" H 4950 7500 50  0001 C CNN
F 3 "" H 4950 7500 50  0001 C CNN
	1    4950 7500
	1    0    0    -1  
$EndComp
Text Label 6350 650  2    60   ~ 0
SEG_A
Text Label 6350 750  2    60   ~ 0
SEG_B
Text Label 6350 850  2    60   ~ 0
SEG_C
Text Label 6350 950  2    60   ~ 0
SEG_D
Text Label 6350 1050 2    60   ~ 0
SEG_E
Text Label 6350 1150 2    60   ~ 0
SEG_F
Text Label 6350 1250 2    60   ~ 0
SEG_G
Text Label 6350 1350 2    60   ~ 0
SEG_DP
Text Label 1750 3750 2    60   ~ 0
SEG_A
Text Label 3600 3450 0    60   ~ 0
SEG_B
Text Label 1750 3450 2    60   ~ 0
SEG_C
Text Label 3250 2950 0    60   ~ 0
SEG_D
Text Label 3250 2850 0    60   ~ 0
SEG_E
Text Label 1750 3850 2    60   ~ 0
SEG_F
Text Label 1750 3950 2    60   ~ 0
SEG_G
Text Label 1750 3550 2    60   ~ 0
SEG_DP
Text Label 2900 3750 0    60   ~ 0
DIG1
Text Label 2900 2250 0    60   ~ 0
DIG2
Text Label 2100 3250 2    60   ~ 0
DIG3
Text Label 2100 3150 2    60   ~ 0
DIG4
Text Label 2900 2750 0    60   ~ 0
DIG5
Text Label 2900 3250 0    60   ~ 0
DIG6
Text Label 2900 2450 0    60   ~ 0
DIG7
Text Label 2900 2350 0    60   ~ 0
DIG8
$Comp
L TEPT Q1
U 1 1 59739A13
P 1150 5200
F 0 "Q1" H 1300 4975 60  0000 C CNN
F 1 "TEPT4400" H 1450 5450 60  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 1025 5600 60  0001 C CNN
F 3 "" H 1025 5600 60  0000 C CNN
F 4 "SC12389" H 1150 5200 60  0001 C CNN "Farnell"
	1    1150 5200
	1    0    0    -1  
$EndComp
Text Label 1200 4850 2    60   ~ 0
LIGHT_EN
$Comp
L R R3
U 1 1 5973A47D
P 1200 5800
F 0 "R3" V 1280 5800 50  0000 C CNN
F 1 "100k" V 1200 5800 50  0000 C CNN
F 2 "agg:0603" V 1130 5800 50  0001 C CNN
F 3 "" H 1200 5800 50  0001 C CNN
F 4 "2447226" H 1200 5800 60  0001 C CNN "Farnell"
	1    1200 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5973A502
P 1200 5950
F 0 "#PWR028" H 1200 5700 50  0001 C CNN
F 1 "GND" H 1200 5800 50  0000 C CNN
F 2 "" H 1200 5950 50  0001 C CNN
F 3 "" H 1200 5950 50  0001 C CNN
	1    1200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5550 1200 5650
Wire Wire Line
	1200 5600 1300 5600
Connection ~ 1200 5600
Text Label 1300 5600 0    60   ~ 0
LIGHT_SENSE
Text Label 2900 2550 0    60   ~ 0
LIGHT_EN
Text Label 2900 2650 0    60   ~ 0
LIGHT_SENSE
$Comp
L PART X1
U 1 1 5973F0DC
P 4250 4900
F 0 "X1" H 4300 5000 50  0000 L CNN
F 1 "BATTERY" H 4300 4900 50  0000 L CNN
F 2 "" H 4250 4900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/6205.pdf" H 4250 4900 50  0001 C CNN
F 4 "4199091" H 4250 4900 60  0001 C CNN "Farnell"
	1    4250 4900
	1    0    0    -1  
$EndComp
$Comp
L SWITCH_SPST SW1
U 1 1 5974012E
P 1000 7150
F 0 "SW1" H 1000 7300 50  0000 C CNN
F 1 "INC" H 1200 7300 50  0000 C CNN
F 2 "smalltime:SKHHLSA010" H 1000 7150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1582317.pdf" H 1000 7150 50  0001 C CNN
F 4 "2056829" H 1000 7150 60  0001 C CNN "Farnell"
	1    1000 7150
	1    0    0    -1  
$EndComp
$Comp
L SWITCH_SPST SW2
U 1 1 59740C4F
P 1000 6700
F 0 "SW2" H 1000 6850 50  0000 C CNN
F 1 "SET" H 1200 6850 50  0000 C CNN
F 2 "smalltime:SKHHLSA010" H 1000 6700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1582317.pdf" H 1000 6700 50  0001 C CNN
F 4 "2056829" H 1000 6700 60  0001 C CNN "Farnell"
	1    1000 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 59742178
P 900 7150
F 0 "#PWR029" H 900 6900 50  0001 C CNN
F 1 "GND" H 900 7000 50  0000 C CNN
F 2 "" H 900 7150 50  0001 C CNN
F 3 "" H 900 7150 50  0001 C CNN
	1    900  7150
	1    0    0    -1  
$EndComp
Text Label 1100 7150 0    60   ~ 0
SW_INC
$Comp
L GND #PWR030
U 1 1 597453E5
P 900 6700
F 0 "#PWR030" H 900 6450 50  0001 C CNN
F 1 "GND" H 900 6550 50  0000 C CNN
F 2 "" H 900 6700 50  0001 C CNN
F 3 "" H 900 6700 50  0001 C CNN
	1    900  6700
	1    0    0    -1  
$EndComp
Text Label 1100 6700 0    60   ~ 0
SW_SET
Text Label 3250 3050 0    60   ~ 0
SW_INC
Text Label 3250 3150 0    60   ~ 0
SW_SET
$Comp
L C C7
U 1 1 597688E7
P 5100 7000
F 0 "C7" H 5125 7100 50  0000 L CNN
F 1 "1u" H 5125 6900 50  0000 L CNN
F 2 "agg:0603" H 5138 6850 50  0001 C CNN
F 3 "" H 5100 7000 50  0001 C CNN
F 4 "1759399" H 5100 7000 60  0001 C CNN "Farnell"
	1    5100 7000
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5976949C
P 6200 7000
F 0 "C8" H 6225 7100 50  0000 L CNN
F 1 "1u" H 6225 6900 50  0000 L CNN
F 2 "agg:0603" H 6238 6850 50  0001 C CNN
F 3 "" H 6200 7000 50  0001 C CNN
F 4 "1759399" H 6200 7000 60  0001 C CNN "Farnell"
	1    6200 7000
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5976FFFC
P 2750 1150
F 0 "C5" H 2775 1250 50  0000 L CNN
F 1 "100n" H 2775 1050 50  0000 L CNN
F 2 "agg:0603" H 2788 1000 50  0001 C CNN
F 3 "" H 2750 1150 50  0001 C CNN
F 4 "2627427" H 2750 1150 60  0001 C CNN "Farnell"
	1    2750 1150
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 597700C6
P 3950 5900
F 0 "C6" H 3975 6000 50  0000 L CNN
F 1 "100n" H 3975 5800 50  0000 L CNN
F 2 "agg:0603" H 3988 5750 50  0001 C CNN
F 3 "" H 3950 5900 50  0001 C CNN
F 4 "2627427" H 3950 5900 60  0001 C CNN "Farnell"
	1    3950 5900
	1    0    0    -1  
$EndComp
$Comp
L SWD P1
U 1 1 596FD9A0
P 7500 5300
F 0 "P1" H 7100 5600 50  0000 L CNN
F 1 "SWD" H 7100 5000 50  0000 L CNN
F 2 "agg:FTSH-105-01-F-D-K" H 7100 4900 50  0001 L CNN
F 3 "" H 7850 5100 50  0001 C CNN
F 4 "FTSH-105-01-F-D-K" H 7100 4800 50  0001 L CNN "Toby"
	1    7500 5300
	1    0    0    -1  
$EndComp
$Comp
L LS0803GWK U1
U 1 1 5979132B
P 7000 1000
F 0 "U1" H 7000 550 60  0000 C CNN
F 1 "DIG1" H 7000 1450 60  0000 C CNN
F 2 "smalltime:LS0803GWK" H 5600 900 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2190206.pdf" H 5600 900 60  0001 C CNN
F 4 "2627651" H 7000 1000 60  0001 C CNN "Farnell"
	1    7000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1050 7850 1050
Wire Wire Line
	7750 950  7850 950 
Wire Wire Line
	7850 950  7850 1050
Connection ~ 7850 1050
$Comp
L GND #PWR031
U 1 1 59794EE7
P 7850 1450
F 0 "#PWR031" H 7850 1200 50  0001 C CNN
F 1 "GND" H 7850 1300 50  0000 C CNN
F 2 "" H 7850 1450 50  0001 C CNN
F 3 "" H 7850 1450 50  0001 C CNN
	1    7850 1450
	1    0    0    -1  
$EndComp
Text Label 8150 1250 0    60   ~ 0
DIG1
$Comp
L R R4
U 1 1 59799710
P 1950 3750
F 0 "R4" V 1900 3900 50  0000 C CNN
F 1 "160" V 1950 3750 50  0000 C CNN
F 2 "agg:0603" V 1880 3750 50  0001 C CNN
F 3 "" H 1950 3750 50  0001 C CNN
F 4 "2447260" H 1950 3750 60  0001 C CNN "Farnell"
	1    1950 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3750 1750 3750
Wire Wire Line
	3550 3450 3600 3450
Wire Wire Line
	1800 3450 1750 3450
Wire Wire Line
	3200 2950 3250 2950
Wire Wire Line
	3200 2850 3250 2850
Wire Wire Line
	1800 3850 1750 3850
Wire Wire Line
	1800 3950 1750 3950
Wire Wire Line
	1800 3550 1750 3550
Text Label 8900 650  2    60   ~ 0
SEG_A
Text Label 8900 750  2    60   ~ 0
SEG_B
Text Label 8900 850  2    60   ~ 0
SEG_C
Text Label 8900 950  2    60   ~ 0
SEG_D
Text Label 8900 1050 2    60   ~ 0
SEG_E
Text Label 8900 1150 2    60   ~ 0
SEG_F
Text Label 8900 1250 2    60   ~ 0
SEG_G
Text Label 8900 1350 2    60   ~ 0
SEG_DP
Wire Wire Line
	10300 1050 10400 1050
Wire Wire Line
	10300 950  10400 950 
Wire Wire Line
	10400 950  10400 1050
Connection ~ 10400 1050
$Comp
L GND #PWR032
U 1 1 5979C4E1
P 10400 1450
F 0 "#PWR032" H 10400 1200 50  0001 C CNN
F 1 "GND" H 10400 1300 50  0000 C CNN
F 2 "" H 10400 1450 50  0001 C CNN
F 3 "" H 10400 1450 50  0001 C CNN
	1    10400 1450
	1    0    0    -1  
$EndComp
Text Label 10700 1250 0    60   ~ 0
DIG5
Text Label 6350 1650 2    60   ~ 0
SEG_A
Text Label 6350 1750 2    60   ~ 0
SEG_B
Text Label 6350 1850 2    60   ~ 0
SEG_C
Text Label 6350 1950 2    60   ~ 0
SEG_D
Text Label 6350 2050 2    60   ~ 0
SEG_E
Text Label 6350 2150 2    60   ~ 0
SEG_F
Text Label 6350 2250 2    60   ~ 0
SEG_G
Text Label 6350 2350 2    60   ~ 0
SEG_DP
Wire Wire Line
	7750 2050 7850 2050
Wire Wire Line
	7750 1950 7850 1950
Wire Wire Line
	7850 1950 7850 2050
Connection ~ 7850 2050
$Comp
L GND #PWR033
U 1 1 5979C6FD
P 7850 2450
F 0 "#PWR033" H 7850 2200 50  0001 C CNN
F 1 "GND" H 7850 2300 50  0000 C CNN
F 2 "" H 7850 2450 50  0001 C CNN
F 3 "" H 7850 2450 50  0001 C CNN
	1    7850 2450
	1    0    0    -1  
$EndComp
Text Label 8150 2250 0    60   ~ 0
DIG2
Text Label 8900 1650 2    60   ~ 0
SEG_A
Text Label 8900 1750 2    60   ~ 0
SEG_B
Text Label 8900 1850 2    60   ~ 0
SEG_C
Text Label 8900 1950 2    60   ~ 0
SEG_D
Text Label 8900 2050 2    60   ~ 0
SEG_E
Text Label 8900 2150 2    60   ~ 0
SEG_F
Text Label 8900 2250 2    60   ~ 0
SEG_G
Text Label 8900 2350 2    60   ~ 0
SEG_DP
Wire Wire Line
	10300 2050 10400 2050
Wire Wire Line
	10300 1950 10400 1950
Wire Wire Line
	10400 1950 10400 2050
Connection ~ 10400 2050
$Comp
L GND #PWR034
U 1 1 5979C71D
P 10400 2450
F 0 "#PWR034" H 10400 2200 50  0001 C CNN
F 1 "GND" H 10400 2300 50  0000 C CNN
F 2 "" H 10400 2450 50  0001 C CNN
F 3 "" H 10400 2450 50  0001 C CNN
	1    10400 2450
	1    0    0    -1  
$EndComp
Text Label 10700 2250 0    60   ~ 0
DIG6
Text Label 6350 2650 2    60   ~ 0
SEG_A
Text Label 6350 2750 2    60   ~ 0
SEG_B
Text Label 6350 2850 2    60   ~ 0
SEG_C
Text Label 6350 2950 2    60   ~ 0
SEG_D
Text Label 6350 3050 2    60   ~ 0
SEG_E
Text Label 6350 3150 2    60   ~ 0
SEG_F
Text Label 6350 3250 2    60   ~ 0
SEG_G
Text Label 6350 3350 2    60   ~ 0
SEG_DP
Wire Wire Line
	7750 3050 7850 3050
Wire Wire Line
	7750 2950 7850 2950
Wire Wire Line
	7850 2950 7850 3050
Connection ~ 7850 3050
$Comp
L GND #PWR035
U 1 1 5979F277
P 7850 3450
F 0 "#PWR035" H 7850 3200 50  0001 C CNN
F 1 "GND" H 7850 3300 50  0000 C CNN
F 2 "" H 7850 3450 50  0001 C CNN
F 3 "" H 7850 3450 50  0001 C CNN
	1    7850 3450
	1    0    0    -1  
$EndComp
Text Label 8150 3250 0    60   ~ 0
DIG3
Text Label 8900 2650 2    60   ~ 0
SEG_A
Text Label 8900 2750 2    60   ~ 0
SEG_B
Text Label 8900 2850 2    60   ~ 0
SEG_C
Text Label 8900 2950 2    60   ~ 0
SEG_D
Text Label 8900 3050 2    60   ~ 0
SEG_E
Text Label 8900 3150 2    60   ~ 0
SEG_F
Text Label 8900 3250 2    60   ~ 0
SEG_G
Text Label 8900 3350 2    60   ~ 0
SEG_DP
Wire Wire Line
	10300 3050 10400 3050
Wire Wire Line
	10300 2950 10400 2950
Wire Wire Line
	10400 2950 10400 3050
Connection ~ 10400 3050
$Comp
L GND #PWR036
U 1 1 5979F297
P 10400 3450
F 0 "#PWR036" H 10400 3200 50  0001 C CNN
F 1 "GND" H 10400 3300 50  0000 C CNN
F 2 "" H 10400 3450 50  0001 C CNN
F 3 "" H 10400 3450 50  0001 C CNN
	1    10400 3450
	1    0    0    -1  
$EndComp
Text Label 10700 3250 0    60   ~ 0
DIG7
Text Label 6350 3650 2    60   ~ 0
SEG_A
Text Label 6350 3750 2    60   ~ 0
SEG_B
Text Label 6350 3850 2    60   ~ 0
SEG_C
Text Label 6350 3950 2    60   ~ 0
SEG_D
Text Label 6350 4050 2    60   ~ 0
SEG_E
Text Label 6350 4150 2    60   ~ 0
SEG_F
Text Label 6350 4250 2    60   ~ 0
SEG_G
Text Label 6350 4350 2    60   ~ 0
SEG_DP
Wire Wire Line
	7750 4050 7850 4050
Wire Wire Line
	7750 3950 7850 3950
Wire Wire Line
	7850 3950 7850 4050
Connection ~ 7850 4050
$Comp
L GND #PWR037
U 1 1 5979F2B7
P 7850 4450
F 0 "#PWR037" H 7850 4200 50  0001 C CNN
F 1 "GND" H 7850 4300 50  0000 C CNN
F 2 "" H 7850 4450 50  0001 C CNN
F 3 "" H 7850 4450 50  0001 C CNN
	1    7850 4450
	1    0    0    -1  
$EndComp
Text Label 8150 4250 0    60   ~ 0
DIG4
Text Label 8900 3650 2    60   ~ 0
SEG_A
Text Label 8900 3750 2    60   ~ 0
SEG_B
Text Label 8900 3850 2    60   ~ 0
SEG_C
Text Label 8900 3950 2    60   ~ 0
SEG_D
Text Label 8900 4050 2    60   ~ 0
SEG_E
Text Label 8900 4150 2    60   ~ 0
SEG_F
Text Label 8900 4250 2    60   ~ 0
SEG_G
Text Label 8900 4350 2    60   ~ 0
SEG_DP
Wire Wire Line
	10300 4050 10400 4050
Wire Wire Line
	10300 3950 10400 3950
Wire Wire Line
	10400 3950 10400 4050
Connection ~ 10400 4050
$Comp
L GND #PWR038
U 1 1 5979F2D7
P 10400 4450
F 0 "#PWR038" H 10400 4200 50  0001 C CNN
F 1 "GND" H 10400 4300 50  0000 C CNN
F 2 "" H 10400 4450 50  0001 C CNN
F 3 "" H 10400 4450 50  0001 C CNN
	1    10400 4450
	1    0    0    -1  
$EndComp
Text Label 10700 4250 0    60   ~ 0
DIG8
$Comp
L R R5
U 1 1 59794DAB
P 3400 3450
F 0 "R5" V 3350 3600 50  0000 C CNN
F 1 "160" V 3400 3450 50  0000 C CNN
F 2 "agg:0603" V 3330 3450 50  0001 C CNN
F 3 "" H 3400 3450 50  0001 C CNN
F 4 "2447260" H 3400 3450 60  0001 C CNN "Farnell"
	1    3400 3450
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 59794E57
P 1950 3450
F 0 "R6" V 1900 3600 50  0000 C CNN
F 1 "160" V 1950 3450 50  0000 C CNN
F 2 "agg:0603" V 1880 3450 50  0001 C CNN
F 3 "" H 1950 3450 50  0001 C CNN
F 4 "2447260" H 1950 3450 60  0001 C CNN "Farnell"
	1    1950 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 59794E5E
P 3050 2950
F 0 "R7" V 3000 3100 50  0000 C CNN
F 1 "160" V 3050 2950 50  0000 C CNN
F 2 "agg:0603" V 2980 2950 50  0001 C CNN
F 3 "" H 3050 2950 50  0001 C CNN
F 4 "2447260" H 3050 2950 60  0001 C CNN "Farnell"
	1    3050 2950
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 59794EFD
P 3050 2850
F 0 "R8" V 3000 3000 50  0000 C CNN
F 1 "160" V 3050 2850 50  0000 C CNN
F 2 "agg:0603" V 2980 2850 50  0001 C CNN
F 3 "" H 3050 2850 50  0001 C CNN
F 4 "2447260" H 3050 2850 60  0001 C CNN "Farnell"
	1    3050 2850
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 59794F04
P 1950 3850
F 0 "R9" V 1900 4000 50  0000 C CNN
F 1 "160" V 1950 3850 50  0000 C CNN
F 2 "agg:0603" V 1880 3850 50  0001 C CNN
F 3 "" H 1950 3850 50  0001 C CNN
F 4 "2447260" H 1950 3850 60  0001 C CNN "Farnell"
	1    1950 3850
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 59794F0B
P 1950 3950
F 0 "R10" V 1900 4100 50  0000 C CNN
F 1 "160" V 1950 3950 50  0000 C CNN
F 2 "agg:0603" V 1880 3950 50  0001 C CNN
F 3 "" H 1950 3950 50  0001 C CNN
F 4 "2447260" H 1950 3950 60  0001 C CNN "Farnell"
	1    1950 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 59794F12
P 1950 3550
F 0 "R11" V 1900 3700 50  0000 C CNN
F 1 "160" V 1950 3550 50  0000 C CNN
F 2 "agg:0603" V 1880 3550 50  0001 C CNN
F 3 "" H 1950 3550 50  0001 C CNN
F 4 "2447260" H 1950 3550 60  0001 C CNN "Farnell"
	1    1950 3550
	0    -1   -1   0   
$EndComp
$Comp
L ADP3338 IC3
U 1 1 59795BE3
P 5700 6850
F 0 "IC3" H 5500 6950 50  0000 L CNN
F 1 "ADP3338" H 5500 6650 50  0000 L CNN
F 2 "agg-unchecked:SOT223" H 5500 6550 50  0001 L CNN
F 3 "http://www.farnell.com/datasheets/2254554.pdf" H 5700 6850 50  0001 C CNN
F 4 "1651284" H 5500 6450 50  0001 L CNN "Farnell"
	1    5700 6850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5979E859
P 3700 6100
F 0 "R2" V 3650 6300 50  0000 C CNN
F 1 "1k" V 3700 6100 50  0000 C CNN
F 2 "agg:0603" V 3630 6100 50  0001 C CNN
F 3 "" H 3700 6100 50  0001 C CNN
F 4 "2447272" H 3700 6100 60  0001 C CNN "Farnell"
	1    3700 6100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 597A069D
P 3550 6100
F 0 "R1" V 3500 6300 50  0000 C CNN
F 1 "1k" V 3550 6100 50  0000 C CNN
F 2 "agg:0603" V 3480 6100 50  0001 C CNN
F 3 "" H 3550 6100 50  0001 C CNN
F 4 "2447272" H 3550 6100 60  0001 C CNN "Farnell"
	1    3550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5750 4300 5800
Wire Wire Line
	4300 5800 4350 5800
Wire Wire Line
	3950 5750 4300 5750
Wire Wire Line
	2750 6300 4150 6300
Wire Wire Line
	4150 6300 4150 6100
Wire Wire Line
	4150 6100 4350 6100
Wire Wire Line
	4350 6200 4250 6200
Wire Wire Line
	4250 6200 4250 6400
Wire Wire Line
	4250 6400 2750 6400
Wire Wire Line
	3550 6250 3550 6300
Connection ~ 3550 6300
Wire Wire Line
	3700 6250 3700 6400
Connection ~ 3700 6400
Wire Wire Line
	3550 5950 3550 5650
Wire Wire Line
	3550 5650 3950 5650
Connection ~ 3950 5650
Wire Wire Line
	3700 5950 3700 5650
Connection ~ 3700 5650
Wire Wire Line
	1850 4150 1900 4150
Wire Wire Line
	1900 4150 1900 4050
Wire Wire Line
	1900 4050 2100 4050
Wire Wire Line
	1850 4250 2000 4250
Wire Wire Line
	2000 4250 2000 4150
Wire Wire Line
	2000 4150 2100 4150
Wire Wire Line
	2900 3050 3250 3050
Wire Wire Line
	2900 3150 3250 3150
Wire Wire Line
	2900 3450 3250 3450
NoConn ~ 2900 3350
$Comp
L PWR_FLAG #FLG039
U 1 1 597EEBBF
P 4250 5100
F 0 "#FLG039" H 4250 5175 50  0001 C CNN
F 1 "PWR_FLAG" V 4250 5228 50  0000 L CNN
F 2 "" H 4250 5100 50  0001 C CNN
F 3 "" H 4250 5100 50  0001 C CNN
	1    4250 5100
	0    -1   -1   0   
$EndComp
Connection ~ 4250 5100
Wire Wire Line
	4700 7250 4800 7250
Wire Wire Line
	4800 7250 4800 7500
Wire Wire Line
	4800 7500 4950 7500
$Comp
L PWR_FLAG #FLG040
U 1 1 597F03A7
P 4800 7450
F 0 "#FLG040" H 4800 7525 50  0001 C CNN
F 1 "PWR_FLAG" V 4800 7578 50  0000 L CNN
F 2 "" H 4800 7450 50  0001 C CNN
F 3 "" H 4800 7450 50  0001 C CNN
	1    4800 7450
	0    1    1    0   
$EndComp
Connection ~ 4800 7450
$Comp
L LS0803GWK U2
U 1 1 597FF735
P 7000 2000
F 0 "U2" H 7000 1550 60  0000 C CNN
F 1 "DIG2" H 7000 2450 60  0000 C CNN
F 2 "smalltime:LS0803GWK" H 5600 1900 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2190206.pdf" H 5600 1900 60  0001 C CNN
F 4 "2627651" H 7000 2000 60  0001 C CNN "Farnell"
	1    7000 2000
	1    0    0    -1  
$EndComp
$Comp
L LS0803GWK U3
U 1 1 59800101
P 7000 3000
F 0 "U3" H 7000 2550 60  0000 C CNN
F 1 "DIG3" H 7000 3450 60  0000 C CNN
F 2 "smalltime:LS0803GWK" H 5600 2900 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2190206.pdf" H 5600 2900 60  0001 C CNN
F 4 "2627651" H 7000 3000 60  0001 C CNN "Farnell"
	1    7000 3000
	1    0    0    -1  
$EndComp
$Comp
L LS0803GWK U4
U 1 1 59800561
P 7000 4000
F 0 "U4" H 7000 3550 60  0000 C CNN
F 1 "DIG4" H 7000 4450 60  0000 C CNN
F 2 "smalltime:LS0803GWK" H 5600 3900 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2190206.pdf" H 5600 3900 60  0001 C CNN
F 4 "2627651" H 7000 4000 60  0001 C CNN "Farnell"
	1    7000 4000
	1    0    0    -1  
$EndComp
$Comp
L LS0803GWK U5
U 1 1 59800669
P 9550 1000
F 0 "U5" H 9550 550 60  0000 C CNN
F 1 "DIG5" H 9550 1450 60  0000 C CNN
F 2 "smalltime:LS0803GWK" H 8150 900 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2190206.pdf" H 8150 900 60  0001 C CNN
F 4 "2627651" H 9550 1000 60  0001 C CNN "Farnell"
	1    9550 1000
	1    0    0    -1  
$EndComp
$Comp
L LS0803GWK U6
U 1 1 59800A73
P 9550 2000
F 0 "U6" H 9550 1550 60  0000 C CNN
F 1 "DIG6" H 9550 2450 60  0000 C CNN
F 2 "smalltime:LS0803GWK" H 8150 1900 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2190206.pdf" H 8150 1900 60  0001 C CNN
F 4 "2627651" H 9550 2000 60  0001 C CNN "Farnell"
	1    9550 2000
	1    0    0    -1  
$EndComp
$Comp
L LS0803GWK U7
U 1 1 59800D93
P 9550 3000
F 0 "U7" H 9550 2550 60  0000 C CNN
F 1 "DIG7" H 9550 3450 60  0000 C CNN
F 2 "smalltime:LS0803GWK" H 8150 2900 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2190206.pdf" H 8150 2900 60  0001 C CNN
F 4 "2627651" H 9550 3000 60  0001 C CNN "Farnell"
	1    9550 3000
	1    0    0    -1  
$EndComp
$Comp
L LS0803GWK U8
U 1 1 5980106C
P 9550 4000
F 0 "U8" H 9550 3550 60  0000 C CNN
F 1 "DIG8" H 9550 4450 60  0000 C CNN
F 2 "smalltime:LS0803GWK" H 8150 3900 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2190206.pdf" H 8150 3900 60  0001 C CNN
F 4 "2627651" H 9550 4000 60  0001 C CNN "Farnell"
	1    9550 4000
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q2
U 1 1 5980258E
P 7950 1250
F 0 "Q2" H 7800 1100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 7450 1400 50  0000 L CNN
F 2 "agg:SOT-23" H 8150 1350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2097170.pdf" H 7950 1250 50  0001 C CNN
F 4 "1426253" H 7950 1250 60  0001 C CNN "Farnell"
	1    7950 1250
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q3
U 1 1 59804DDE
P 7950 2250
F 0 "Q3" H 7800 2100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 7450 2400 50  0000 L CNN
F 2 "agg:SOT-23" H 8150 2350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2097170.pdf" H 7950 2250 50  0001 C CNN
F 4 "1426253" H 7950 2250 60  0001 C CNN "Farnell"
	1    7950 2250
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q4
U 1 1 598054E2
P 7950 3250
F 0 "Q4" H 7800 3100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 7450 3400 50  0000 L CNN
F 2 "agg:SOT-23" H 8150 3350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2097170.pdf" H 7950 3250 50  0001 C CNN
F 4 "1426253" H 7950 3250 60  0001 C CNN "Farnell"
	1    7950 3250
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q5
U 1 1 59806185
P 7950 4250
F 0 "Q5" H 7800 4100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 7450 4400 50  0000 L CNN
F 2 "agg:SOT-23" H 8150 4350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2097170.pdf" H 7950 4250 50  0001 C CNN
F 4 "1426253" H 7950 4250 60  0001 C CNN "Farnell"
	1    7950 4250
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q6
U 1 1 59806BE6
P 10500 1250
F 0 "Q6" H 10350 1100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 10000 1400 50  0000 L CNN
F 2 "agg:SOT-23" H 10700 1350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2097170.pdf" H 10500 1250 50  0001 C CNN
F 4 "1426253" H 10500 1250 60  0001 C CNN "Farnell"
	1    10500 1250
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q7
U 1 1 598073FE
P 10500 2250
F 0 "Q7" H 10350 2100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 10000 2400 50  0000 L CNN
F 2 "agg:SOT-23" H 10700 2350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2097170.pdf" H 10500 2250 50  0001 C CNN
F 4 "1426253" H 10500 2250 60  0001 C CNN "Farnell"
	1    10500 2250
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q8
U 1 1 59807C34
P 10500 3250
F 0 "Q8" H 10350 3100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 10000 3400 50  0000 L CNN
F 2 "agg:SOT-23" H 10700 3350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2097170.pdf" H 10500 3250 50  0001 C CNN
F 4 "1426253" H 10500 3250 60  0001 C CNN "Farnell"
	1    10500 3250
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q9
U 1 1 598084ED
P 10500 4250
F 0 "Q9" H 10350 4100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 10000 4400 50  0000 L CNN
F 2 "agg:SOT-23" H 10700 4350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2097170.pdf" H 10500 4250 50  0001 C CNN
F 4 "1426253" H 10500 4250 60  0001 C CNN "Farnell"
	1    10500 4250
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP1
U 1 1 5980F23A
P 2850 6100
F 0 "TP1" H 2928 6240 50  0000 L CNN
F 1 "SDA" H 2928 6149 50  0000 L CNN
F 2 "smalltime:testpoint" H 2850 6100 50  0001 C CNN
F 3 "" H 2850 6100 50  0001 C CNN
	1    2850 6100
	1    0    0    -1  
$EndComp
$Comp
L TEST TP2
U 1 1 5980FCC3
P 3150 6100
F 0 "TP2" H 3228 6240 50  0000 L CNN
F 1 "SCL" H 3228 6149 50  0000 L CNN
F 2 "smalltime:testpoint" H 3150 6100 50  0001 C CNN
F 3 "" H 3150 6100 50  0001 C CNN
	1    3150 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6100 2850 6300
Connection ~ 2850 6300
Wire Wire Line
	3150 6100 3150 6400
Connection ~ 3150 6400
$Comp
L TEST TP3
U 1 1 59810BF4
P 2200 6100
F 0 "TP3" H 2278 6240 50  0000 L CNN
F 1 "GND" H 2278 6149 50  0000 L CNN
F 2 "smalltime:testpoint" H 2200 6100 50  0001 C CNN
F 3 "" H 2200 6100 50  0001 C CNN
	1    2200 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 598110F8
P 2200 6100
F 0 "#PWR041" H 2200 5850 50  0001 C CNN
F 1 "GND" H 2205 5927 50  0000 C CNN
F 2 "" H 2200 6100 50  0001 C CNN
F 3 "" H 2200 6100 50  0001 C CNN
	1    2200 6100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
