EESchema Schematic File Version 2
LIBS:ThermocoupleLogger-rescue
LIBS:jp_components
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microchip
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:nxp
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:Power_Management
LIBS:power
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:ThermocoupleLogger-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "8-Channel Thermocouple Datalogger"
Date "2017-02-11"
Rev "1.1"
Comp "JP Enterprises"
Comment1 "Based on an original AD595 design"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 6750 3450
NoConn ~ 6750 4250
NoConn ~ 8550 3650
NoConn ~ 8550 3750
NoConn ~ 8550 3950
NoConn ~ 8550 4050
$Comp
L I2C_20x4_DISPLAY U2
U 1 1 589D6D78
P 3600 3750
F 0 "U2" H 2650 4200 39  0000 C CNN
F 1 "I2C_20x4_DISPLAY" H 4400 3250 39  0000 C CNN
F 2 "" H 3600 3750 50  0001 C CNN
F 3 "" H 3600 3750 50  0001 C CNN
	1    3600 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 589D6D7F
P 2900 4300
F 0 "#PWR07" H 2900 4050 50  0001 C CNN
F 1 "GND" H 2900 4150 50  0000 C CNN
F 2 "" H 2900 4300 50  0000 C CNN
F 3 "" H 2900 4300 50  0000 C CNN
	1    2900 4300
	1    0    0    -1  
$EndComp
Text GLabel 3550 5100 2    60   Input ~ 0
5V0
Text GLabel 3550 4600 2    60   BiDi ~ 0
SCL
Text GLabel 3550 4750 2    60   BiDi ~ 0
SDA
Text GLabel 6750 3850 0    60   Input ~ 0
3V3
Text GLabel 3150 2300 2    60   Input ~ 0
B_LIGHT
$Comp
L GND #PWR08
U 1 1 589E9EFA
P 2200 1700
F 0 "#PWR08" H 2200 1450 50  0001 C CNN
F 1 "GND" H 2200 1550 50  0000 C CNN
F 2 "" H 2200 1700 50  0000 C CNN
F 3 "" H 2200 1700 50  0000 C CNN
	1    2200 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 5100 2750 4300
Wire Wire Line
	3050 4300 3050 4750
Wire Wire Line
	3050 4750 3550 4750
Wire Wire Line
	3200 4300 3200 4600
Wire Wire Line
	3200 4600 3550 4600
Wire Wire Line
	2200 5100 3550 5100
$Comp
L R_Small R4
U 1 1 589EBC96
P 2800 2300
F 0 "R4" V 2900 2300 50  0000 C CNN
F 1 "R" V 2800 2300 50  0000 C CNN
F 2 "" V 2730 2300 50  0001 C CNN
F 3 "" H 2800 2300 50  0000 C CNN
	1    2800 2300
	0    1    1    0   
$EndComp
Connection ~ 2750 5100
$Comp
L BD139 Q1
U 1 1 589EBCEC
P 2300 2300
F 0 "Q1" H 2500 2375 50  0000 L CNN
F 1 "BD139" H 2500 2300 50  0000 L CNN
F 2 "TO-126" H 2500 2225 50  0001 L CIN
F 3 "" H 2300 2300 50  0000 L CNN
	1    2300 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 1700 2200 2100
Wire Wire Line
	2200 2500 2200 3400
Wire Wire Line
	2200 3400 2350 3400
Wire Wire Line
	2500 2300 2700 2300
Wire Wire Line
	2900 2300 3150 2300
Wire Wire Line
	2350 3500 2200 3500
Wire Wire Line
	2200 3500 2200 5100
$Comp
L SD_Card CON1
U 1 1 589D55E8
P 7650 3850
F 0 "CON1" H 7000 4400 50  0000 C CNN
F 1 "SD_Card" H 8250 3300 50  0000 C CNN
F 2 "Connect:SD_Card_Receptacle" H 7850 4200 50  0000 C CNN
F 3 "" H 7650 3850 50  0000 C CNN
	1    7650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4050 6300 4050
Wire Wire Line
	6300 3750 6300 5350
$Comp
L GND #PWR09
U 1 1 589F89B1
P 6300 5350
F 0 "#PWR09" H 6300 5100 50  0001 C CNN
F 1 "GND" H 6300 5200 50  0000 C CNN
F 2 "" H 6300 5350 50  0000 C CNN
F 3 "" H 6300 5350 50  0000 C CNN
	1    6300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3550 6750 3550
Wire Wire Line
	5700 3550 5700 4450
$Comp
L R_Small R13
U 1 1 589F89F8
P 5700 4550
F 0 "R13" H 5730 4570 50  0000 L CNN
F 1 "R_Small" H 5730 4510 50  0000 L CNN
F 2 "" H 5700 4550 50  0001 C CNN
F 3 "" H 5700 4550 50  0000 C CNN
	1    5700 4550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 589F8A46
P 5450 3550
F 0 "R5" H 5480 3570 50  0000 L CNN
F 1 "R_Small" H 5480 3510 50  0000 L CNN
F 2 "" H 5450 3550 50  0001 C CNN
F 3 "" H 5450 3550 50  0000 C CNN
	1    5450 3550
	0    1    1    0   
$EndComp
Connection ~ 5700 3550
Wire Wire Line
	5350 3550 5250 3550
Wire Wire Line
	5700 5050 6300 5050
Connection ~ 6300 5050
Wire Wire Line
	5700 4650 5700 5050
Text Notes 6100 3000 0    60   ~ 0
Need to check connections\n3.3V logic at SD card but Atmega at 5v - need to sort out voltage here\nOptions\n1. Sort out MOS/MISO etc at chip via 2n7002s\n2. add in zener and 220Ω at SD card\nSPI interface check daisychain an cs pin\n
Wire Wire Line
	5550 3950 6750 3950
$Comp
L R_Small R12
U 1 1 589F8D71
P 5450 3950
F 0 "R12" H 5480 3970 50  0000 L CNN
F 1 "R_Small" H 5480 3910 50  0000 L CNN
F 2 "" H 5450 3950 50  0001 C CNN
F 3 "" H 5450 3950 50  0000 C CNN
	1    5450 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3950 5250 3950
Wire Wire Line
	5950 3950 5950 4450
Connection ~ 5950 3950
$Comp
L R_Small R14
U 1 1 589F8E34
P 5950 4550
F 0 "R14" H 5980 4570 50  0000 L CNN
F 1 "R_Small" H 5980 4510 50  0000 L CNN
F 2 "" H 5950 4550 50  0001 C CNN
F 3 "" H 5950 4550 50  0000 C CNN
	1    5950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4650 5950 5050
Connection ~ 5950 5050
Text GLabel 5250 3950 0    60   Input ~ 0
SCK
Text GLabel 5250 4150 0    60   Input ~ 0
MISO
Wire Wire Line
	5250 4150 6750 4150
Wire Wire Line
	6750 3750 6300 3750
Connection ~ 6300 4050
Text GLabel 5250 3550 0    60   Input ~ 0
CS
Wire Wire Line
	5250 3650 6750 3650
Text GLabel 5250 3650 0    60   Input ~ 0
MOSI
$EndSCHEMATC
