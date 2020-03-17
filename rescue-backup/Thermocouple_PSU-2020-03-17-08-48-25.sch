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
Sheet 2 5
Title "8-Channel Thermocouple Datalogger"
Date "2017-02-11"
Rev "1.1"
Comp "JP Enterprises"
Comment1 "Based on an original AD595 design"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM7805-RESCUE-ThermocoupleLogger U14
U 1 1 589C7DD7
P 5600 3400
F 0 "U14" H 5750 3204 50  0000 C CNN
F 1 "LM7805" H 5600 3600 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 5600 3400 50  0001 C CNN
F 3 "" H 5600 3400 50  0000 C CNN
	1    5600 3400
	1    0    0    -1  
$EndComp
$Comp
L NCP1117ST33T3G-RESCUE-ThermocoupleLogger U13
U 1 1 589C7DDE
P 5600 2350
F 0 "U13" H 5600 2600 50  0000 C CNN
F 1 "NCP1117ST33T3G" H 5600 2550 50  0000 C CNN
F 2 "" H 5600 2350 50  0001 C CNN
F 3 "" H 5600 2350 50  0000 C CNN
	1    5600 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 589C7DE5
P 5600 2600
F 0 "#PWR01" H 5600 2350 50  0001 C CNN
F 1 "GND" H 5600 2450 50  0000 C CNN
F 2 "" H 5600 2600 50  0000 C CNN
F 3 "" H 5600 2600 50  0000 C CNN
	1    5600 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 589C7DEB
P 5600 3850
F 0 "#PWR02" H 5600 3600 50  0001 C CNN
F 1 "GND" H 5600 3700 50  0000 C CNN
F 2 "" H 5600 3850 50  0000 C CNN
F 3 "" H 5600 3850 50  0000 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2300 5200 2300
Wire Wire Line
	6000 2300 6500 2300
Wire Wire Line
	6000 3350 6500 3350
Wire Wire Line
	5050 3350 5200 3350
Wire Wire Line
	6050 3650 6050 3850
Wire Wire Line
	6050 3350 6050 3450
Connection ~ 6050 3350
Wire Wire Line
	6300 3350 6300 3450
Wire Wire Line
	6300 3850 6300 3650
Connection ~ 6300 3350
Wire Wire Line
	5600 3650 5600 3850
Wire Wire Line
	5600 3850 6300 3850
Connection ~ 6050 3850
Text GLabel 5000 2300 0    60   Input ~ 0
9V0
Text GLabel 6500 2300 2    60   BiDi ~ 0
3V3
Text GLabel 6500 3350 2    60   BiDi ~ 0
5V0
Connection ~ 6400 3350
Text GLabel 5050 3350 0    60   Input ~ 0
9V0
$Comp
L GND #PWR03
U 1 1 589D9B90
P 9450 3100
F 0 "#PWR03" H 9450 2850 50  0001 C CNN
F 1 "GND" H 9450 2950 50  0000 C CNN
F 2 "" H 9450 3100 50  0000 C CNN
F 3 "" H 9450 3100 50  0000 C CNN
	1    9450 3100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 589D9BA2
P 9450 3000
F 0 "#FLG04" H 9450 3095 50  0001 C CNN
F 1 "PWR_FLAG" H 9450 3180 50  0000 C CNN
F 2 "" H 9450 3000 50  0000 C CNN
F 3 "" H 9450 3000 50  0000 C CNN
	1    9450 3000
	1    0    0    -1  
$EndComp
Text Notes 8850 2650 0    60   ~ 0
Power Flags\n
Wire Notes Line
	8800 3600 10100 3600
Wire Notes Line
	8800 2400 10100 2400
Wire Notes Line
	8800 3600 8800 2400
Wire Notes Line
	10100 2400 10100 3600
Wire Wire Line
	9450 3000 9450 3100
$Comp
L PWR_FLAG #FLG05
U 1 1 589E3727
P 9050 3000
F 0 "#FLG05" H 9050 3095 50  0001 C CNN
F 1 "PWR_FLAG" H 9050 3180 50  0000 C CNN
F 2 "" H 9050 3000 50  0000 C CNN
F 3 "" H 9050 3000 50  0000 C CNN
	1    9050 3000
	1    0    0    -1  
$EndComp
Text GLabel 9050 3000 3    60   BiDi ~ 0
9V0
$Comp
L C_Small C1
U 1 1 589F9200
P 6050 3550
F 0 "C1" H 6060 3620 50  0000 L CNN
F 1 "0.1uF" H 6060 3470 50  0000 L CNN
F 2 "" H 6050 3550 50  0001 C CNN
F 3 "" H 6050 3550 50  0000 C CNN
	1    6050 3550
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C2
U 1 1 589F923F
P 6300 3550
F 0 "C2" H 6310 3620 50  0000 L CNN
F 1 "CP_Small" H 6310 3470 50  0000 L CNN
F 2 "" H 6300 3550 50  0001 C CNN
F 3 "" H 6300 3550 50  0000 C CNN
	1    6300 3550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5915D301
P 6200 2450
F 0 "C?" H 6292 2496 50  0000 L CNN
F 1 "0.1u" H 6292 2405 50  0000 L CNN
F 2 "" H 6200 2450 50  0001 C CNN
F 3 "" H 6200 2450 50  0001 C CNN
	1    6200 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5915D5EA
P 6200 2600
F 0 "#PWR?" H 6200 2350 50  0001 C CNN
F 1 "GND" H 6200 2450 50  0000 C CNN
F 2 "" H 6200 2600 50  0001 C CNN
F 3 "" H 6200 2600 50  0001 C CNN
	1    6200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2350 6200 2300
Connection ~ 6200 2300
Wire Wire Line
	6200 2550 6200 2600
Text Notes 4850 5000 0    60   ~ 0
Need to add power connector (9vbattery / external PSU)
$EndSCHEMATC
