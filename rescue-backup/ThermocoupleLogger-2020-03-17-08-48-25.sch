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
Sheet 1 5
Title "8-Channel Thermocouple Datalogger"
Date "2017-02-11"
Rev "1.1"
Comp "JP Enterprises"
Comment1 "Based on an original AD595 design"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Bus Line
	9600 3300 9600 3350
$Sheet
S 1450 3300 2300 550 
U 583C9FB7
F0 "Thermocouple_PSU" 60
F1 "Thermocouple_PSU.sch" 60
$EndSheet
Text Notes 7050 1850 0    60   ~ 0
1. Add ferrites and caps to TC connections\n2. Global power labels\n3. Software backlight control\n
$Sheet
S 1450 5150 2300 600 
U 589CE548
F0 "Thermocouple connectors" 60
F1 "Thermocouple_connectors.sch" 60
$EndSheet
$Sheet
S 1450 4200 2300 550 
U 589D5546
F0 "Display & SD Card" 60
F1 "Dispaly & SD_Card.sch" 60
$EndSheet
$Sheet
S 1450 2350 2300 550 
U 589D87C6
F0 "Micro_Clock" 60
F1 "Micro_Clock.sch" 60
$EndSheet
Text Notes 1400 1500 0    80   ~ 16
Thermocouple datalogger schematic
Text Notes 1450 2050 0    60   ~ 0
8-Channel K-Type thermocouple datalogger\nBased on Atmega328 with RTC\nLogging data to SD Card\n16x2 LCD display - interface with button and simple menu system
Text Notes 1500 2700 0    60   ~ 0
Atmega 328 Microprocessor\nDS1307 RTC\nMAX33855 Thermocouple amplifier
Text Notes 1500 3450 0    60   ~ 0
Board PSU and Stabilisation
Text Notes 1550 5450 0    60   ~ 0
Thermocouple connectors\nMultiplexer interface\n
Text Notes 1500 4400 0    60   ~ 0
16x2 LCD Display
Text Notes 7000 1400 0    60   ~ 12
Issues
$EndSCHEMATC
