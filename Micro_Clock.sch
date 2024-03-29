EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L ThermocoupleLogger-rescue:GND- #PWR?
U 1 1 589D8979
P 9000 5750
F 0 "#PWR?" H 9000 5500 50  0001 C CNN
F 1 "GND" H 9000 5600 50  0000 C CNN
F 2 "" H 9000 5750 50  0000 C CNN
F 3 "" H 9000 5750 50  0000 C CNN
	1    9000 5750
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:Crystal- Y1
U 1 1 589D897F
P 7850 5500
F 0 "Y1" H 7850 5650 50  0000 C CNN
F 1 "Crystal" H 7850 5350 50  0000 C CNN
F 2 "Crystals:Crystal_Round_Horizontal_3mm" H 7850 5500 50  0001 C CNN
F 3 "" H 7850 5500 50  0000 C CNN
	1    7850 5500
	0    -1   -1   0   
$EndComp
$Comp
L ThermocoupleLogger-rescue:Battery-RESCUE-ThermocoupleLogger- BT1
U 1 1 589D8986
P 10150 5600
F 0 "BT1" H 10250 5650 50  0000 L CNN
F 1 "Battery" H 10250 5550 50  0000 L CNN
F 2 "" V 10150 5640 50  0001 C CNN
F 3 "" V 10150 5640 50  0000 C CNN
	1    10150 5600
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:GND- #PWR?
U 1 1 589D898D
P 10150 5800
F 0 "#PWR?" H 10150 5550 50  0001 C CNN
F 1 "GND" H 10150 5650 50  0000 C CNN
F 2 "" H 10150 5800 50  0000 C CNN
F 3 "" H 10150 5800 50  0000 C CNN
	1    10150 5800
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:DS1307+- U3
U 1 1 589D8996
P 9000 5150
F 0 "U3" H 8550 5750 50  0000 C CNN
F 1 "DS1307+" H 9300 4600 50  0000 C CNN
F 2 "" H 9000 5150 50  0001 C CNN
F 3 "file:///Users/johnpateman/Dropbox/Components/Datasheets/DS1307.pdf" H 9000 5150 50  0001 C CNN
F 4 "-" H 9000 5150 60  0001 C CNN "Manuf"
F 5 "-" H 9000 5150 60  0001 C CNN "Part#"
F 6 "-" H 9000 5150 60  0001 C CNN "Vendor"
	1    9000 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 589D89B6
P 4600 5000
F 0 "R1" V 4680 5000 50  0000 C CNN
F 1 "10K" V 4600 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4530 5000 50  0001 C CNN
F 3 "" H 4600 5000 50  0000 C CNN
	1    4600 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 589D89CE
P 8200 4350
F 0 "R3" V 8280 4350 50  0000 C CNN
F 1 "4.7k" V 8200 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8130 4350 50  0001 C CNN
F 3 "" H 8200 4350 50  0000 C CNN
F 4 "-" H 8200 4350 60  0001 C CNN "Manuf"
F 5 "-" H 8200 4350 60  0001 C CNN "Part#"
F 6 "-" H 8200 4350 60  0001 C CNN "Vendor"
	1    8200 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 589D89D8
P 7950 4350
F 0 "R2" V 8030 4350 50  0000 C CNN
F 1 "4.7k" V 7950 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7880 4350 50  0001 C CNN
F 3 "" H 7950 4350 50  0000 C CNN
F 4 "-" H 7950 4350 60  0001 C CNN "Manuf"
F 5 "-" H 7950 4350 60  0001 C CNN "Part#"
F 6 "-" H 7950 4350 60  0001 C CNN "Vendor"
	1    7950 4350
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:CONN_01X04- P1
U 1 1 589D89DF
P 4250 1550
F 0 "P1" H 4250 1800 50  0000 C CNN
F 1 "CONN_01X04" V 4350 1550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 4250 1550 50  0001 C CNN
F 3 "" H 4250 1550 50  0000 C CNN
	1    4250 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 589D89EC
P 3550 1650
F 0 "#PWR?" H 3550 1400 50  0001 C CNN
F 1 "GND" H 3550 1500 50  0000 C CNN
F 2 "" H 3550 1650 50  0000 C CNN
F 3 "" H 3550 1650 50  0000 C CNN
	1    3550 1650
	1    0    0    -1  
$EndComp
Text Notes 3700 2000 0    50   ~ 0
Display connector
NoConn ~ 4000 3000
NoConn ~ 4000 3100
NoConn ~ 4000 4600
NoConn ~ 4000 4700
NoConn ~ 4000 4900
NoConn ~ 4000 5000
NoConn ~ 4000 5100
NoConn ~ 4000 5200
NoConn ~ 4000 5300
Text GLabel 1950 3000 0    60   Input ~ 0
5V0
Text GLabel 4600 5200 3    60   Input ~ 0
5V0
Text GLabel 10000 4000 2    60   Input ~ 0
5V0
Text GLabel 7050 1350 0    60   Input ~ 0
5V0
$Comp
L ThermocoupleLogger-rescue:GND- #PWR?
U 1 1 589D8A4C
P 7600 3400
F 0 "#PWR?" H 7600 3150 50  0001 C CNN
F 1 "GND" H 7600 3250 50  0000 C CNN
F 2 "" H 7600 3400 50  0000 C CNN
F 3 "" H 7600 3400 50  0000 C CNN
	1    7600 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 589DEFC8
P 1750 5600
F 0 "#PWR?" H 1750 5350 50  0001 C CNN
F 1 "GND" H 1750 5450 50  0000 C CNN
F 2 "" H 1750 5600 50  0000 C CNN
F 3 "" H 1750 5600 50  0000 C CNN
	1    1750 5600
	1    0    0    -1  
$EndComp
Text GLabel 4250 3800 2    60   Output ~ 0
SLCT0
Text GLabel 4250 3900 2    60   Output ~ 0
SLCT1
Text GLabel 4250 4000 2    60   Output ~ 0
SLCT2
Text GLabel 6600 2650 0    60   Input ~ 0
DB_MUX
Text GLabel 4300 3200 2    60   Output ~ 0
CS
Text GLabel 4250 3300 2    60   BiDi ~ 0
MOSI
Text GLabel 4250 3400 2    60   BiDi ~ 0
MISO
Text GLabel 4250 3500 2    60   BiDi ~ 0
SCK
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise P2
U 1 1 589E4CA3
P 2300 1500
F 0 "P2" H 2300 1700 50  0000 C CNN
F 1 "CONN_02X03" H 2300 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 2300 300 50  0001 C CNN
F 3 "" H 2300 300 50  0000 C CNN
	1    2300 1500
	1    0    0    -1  
$EndComp
Text GLabel 1950 1400 0    60   BiDi ~ 0
MISO
Text GLabel 1950 1500 0    60   BiDi ~ 0
SCK
Text GLabel 1950 1600 0    60   Input ~ 0
RESET
Text GLabel 2750 1400 2    60   Input ~ 0
5V0
Text GLabel 2750 1500 2    60   BiDi ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 589E4E90
P 2850 1600
F 0 "#PWR?" H 2850 1350 50  0001 C CNN
F 1 "GND" H 2850 1450 50  0000 C CNN
F 2 "" H 2850 1600 50  0000 C CNN
F 3 "" H 2850 1600 50  0000 C CNN
	1    2850 1600
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:SW_PUSH- SW2
U 1 1 589E5414
P 5200 4450
F 0 "SW2" H 5350 4560 50  0000 C CNN
F 1 "SW_PUSH" H 5200 4370 50  0000 C CNN
F 2 "" H 5200 4450 50  0001 C CNN
F 3 "" H 5200 4450 50  0000 C CNN
	1    5200 4450
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:GND- #PWR?
U 1 1 589E548A
P 5800 5600
F 0 "#PWR?" H 5800 5350 50  0001 C CNN
F 1 "GND" H 5800 5450 50  0000 C CNN
F 2 "" H 5800 5600 50  0000 C CNN
F 3 "" H 5800 5600 50  0000 C CNN
	1    5800 5600
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:MAX31855EASA- U4
U 1 1 589E58D9
P 7600 2850
F 0 "U4" H 7300 3200 50  0000 L CNN
F 1 "MAX31855KASA" H 7750 2450 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7600 2850 50  0001 C CIN
F 3 "" H 7600 2850 50  0000 C CNN
	1    7600 2850
	1    0    0    -1  
$EndComp
Text GLabel 8900 2400 3    60   BiDi ~ 0
SCK
Text GLabel 4250 4250 2    60   BiDi ~ 0
SDA
Text GLabel 4250 4350 2    60   BiDi ~ 0
SCL
Text GLabel 7750 5050 0    60   BiDi ~ 0
SDA
Text GLabel 7750 4850 0    60   BiDi ~ 0
SCL
Text GLabel 3950 1400 0    60   Input ~ 0
5V0
Text GLabel 4200 4450 3    60   Input ~ 0
RESET
Text GLabel 3950 1700 0    60   Input ~ 0
SCL
Text GLabel 3950 1600 0    60   Input ~ 0
SDA
Text GLabel 6600 3050 0    60   Input ~ 0
DA_MUX
Text GLabel 10750 2400 3    60   Input ~ 0
CS
Text GLabel 9800 2400 3    60   Output ~ 0
MISO
$Comp
L ThermocoupleLogger-rescue:Crystal- Y2
U 1 1 589E8900
P 5200 3650
F 0 "Y2" V 5200 3800 50  0000 C CNN
F 1 "Crystal" V 4950 3650 50  0000 C CNN
F 2 "Crystals:Crystal_Round_Horizontal_3mm" H 5200 3650 50  0001 C CNN
F 3 "" H 5200 3650 50  0000 C CNN
	1    5200 3650
	0    -1   -1   0   
$EndComp
$Comp
L JP_Microcontrollers:ATMEGA328 IC1
U 1 1 589D896A
P 3100 4100
F 0 "IC1" H 2350 5350 50  0000 L BNN
F 1 "ATMEGA328-P" H 3500 2700 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 3100 4100 50  0001 C CIN
F 3 "" H 3100 4100 50  0000 C CNN
	1    3100 4100
	1    0    0    -1  
$EndComp
Text GLabel 4250 3700 2    60   Output ~ 0
B_LIGHT
NoConn ~ 2100 3600
$Comp
L ThermocoupleLogger-rescue:2N7002-RESCUE-ThermocoupleLogger- Q4
U 1 1 589EE57F
P 9500 2150
AR Path="/589EE57F" Ref="Q4"  Part="1" 
AR Path="/589D87C6/589EE57F" Ref="Q4"  Part="1" 
F 0 "Q4" V 9450 2250 50  0000 L CNN
F 1 "2N7002" V 9750 2000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9700 2075 50  0001 L CIN
F 3 "" H 9500 2150 50  0000 L CNN
	1    9500 2150
	0    1    1    0   
$EndComp
$Comp
L ThermocoupleLogger-rescue:2N7002-RESCUE-ThermocoupleLogger- Q5
U 1 1 589EEB65
P 10400 2150
AR Path="/589EEB65" Ref="Q5"  Part="1" 
AR Path="/589D87C6/589EEB65" Ref="Q5"  Part="1" 
F 0 "Q5" V 10350 2250 50  0000 L CNN
F 1 "2N7002" V 10650 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10600 2075 50  0001 L CIN
F 3 "" H 10400 2150 50  0000 L CNN
	1    10400 2150
	0    1    1    0   
$EndComp
$Comp
L ThermocoupleLogger-rescue:2N7002-RESCUE-ThermocoupleLogger- Q3
U 1 1 589EEBB7
P 8600 2150
AR Path="/589EEBB7" Ref="Q3"  Part="1" 
AR Path="/589D87C6/589EEBB7" Ref="Q3"  Part="1" 
F 0 "Q3" V 8550 2250 50  0000 L CNN
F 1 "2N7002" V 8850 2000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8800 2075 50  0001 L CIN
F 3 "" H 8600 2150 50  0000 L CNN
	1    8600 2150
	0    1    1    0   
$EndComp
$Comp
L ThermocoupleLogger-rescue:R- R6
U 1 1 589EEC30
P 8250 2100
F 0 "R6" V 8330 2100 50  0000 C CNN
F 1 "10K" V 8250 2100 50  0000 C CNN
F 2 "" V 8180 2100 50  0001 C CNN
F 3 "" H 8250 2100 50  0000 C CNN
	1    8250 2100
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:R- R7
U 1 1 589EECFE
P 8900 2100
F 0 "R7" V 8980 2100 50  0000 C CNN
F 1 "10K" V 8900 2100 50  0000 C CNN
F 2 "" V 8830 2100 50  0001 C CNN
F 3 "" H 8900 2100 50  0000 C CNN
	1    8900 2100
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:R- R8
U 1 1 589EED58
P 9150 2100
F 0 "R8" V 9230 2100 50  0000 C CNN
F 1 "10K" V 9150 2100 50  0000 C CNN
F 2 "" V 9080 2100 50  0001 C CNN
F 3 "" H 9150 2100 50  0000 C CNN
	1    9150 2100
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:R- R9
U 1 1 589EEDAC
P 9800 2100
F 0 "R9" V 9880 2100 50  0000 C CNN
F 1 "10K" V 9800 2100 50  0000 C CNN
F 2 "" V 9730 2100 50  0001 C CNN
F 3 "" H 9800 2100 50  0000 C CNN
	1    9800 2100
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:R- R10
U 1 1 589EEE06
P 10050 2100
F 0 "R10" V 10130 2100 50  0000 C CNN
F 1 "10K" V 10050 2100 50  0000 C CNN
F 2 "" V 9980 2100 50  0001 C CNN
F 3 "" H 10050 2100 50  0000 C CNN
	1    10050 2100
	1    0    0    -1  
$EndComp
$Comp
L ThermocoupleLogger-rescue:R- R11
U 1 1 589EEE5D
P 10750 2100
F 0 "R11" V 10830 2100 50  0000 C CNN
F 1 "10K" V 10750 2100 50  0000 C CNN
F 2 "" V 10680 2100 50  0001 C CNN
F 3 "" H 10750 2100 50  0000 C CNN
	1    10750 2100
	1    0    0    -1  
$EndComp
Text GLabel 7050 1650 0    60   Input ~ 0
3V3
Wire Wire Line
	2100 5200 1750 5200
Wire Wire Line
	2100 5300 1750 5300
Wire Wire Line
	10150 5750 10150 5800
Wire Wire Line
	9600 5450 10150 5450
Wire Wire Line
	4000 3300 4250 3300
Wire Wire Line
	4000 3400 4250 3400
Wire Wire Line
	4000 3500 4250 3500
Wire Wire Line
	4000 3800 4250 3800
Wire Wire Line
	4000 3900 4250 3900
Wire Wire Line
	4000 4000 4250 4000
Wire Wire Line
	7950 4000 8200 4000
Wire Wire Line
	8200 4200 8200 4000
Connection ~ 8200 4000
Wire Wire Line
	3550 1500 4050 1500
Wire Wire Line
	4000 3200 4300 3200
Wire Wire Line
	1950 3000 2100 3000
Connection ~ 9000 4000
Wire Wire Line
	1750 5200 1750 5300
Connection ~ 1750 5300
Wire Wire Line
	3950 1700 4050 1700
Wire Wire Line
	3950 1600 4050 1600
Wire Wire Line
	4000 4450 4900 4450
Wire Wire Line
	4000 4250 4250 4250
Wire Wire Line
	4000 4350 4250 4350
Wire Wire Line
	3950 1400 4050 1400
Wire Wire Line
	1950 1400 2100 1400
Wire Wire Line
	1950 1500 2100 1500
Wire Wire Line
	1950 1600 2100 1600
Wire Wire Line
	2600 1400 2750 1400
Wire Wire Line
	2600 1500 2750 1500
Wire Wire Line
	2600 1600 2850 1600
Wire Wire Line
	4000 3600 4900 3600
Wire Wire Line
	10050 2950 8000 2950
Wire Wire Line
	7600 3250 7600 3400
Wire Wire Line
	2100 3000 2100 3300
Wire Wire Line
	8250 2250 8400 2250
Wire Wire Line
	8800 2250 8900 2250
Wire Wire Line
	9150 2250 9300 2250
Wire Wire Line
	9700 2250 9800 2250
Wire Wire Line
	10050 2250 10200 2250
Wire Wire Line
	10600 2250 10750 2250
Wire Wire Line
	7050 1350 8900 1350
Connection ~ 9800 1350
Wire Wire Line
	8250 2250 8250 2650
Wire Wire Line
	8900 2250 8900 2400
Wire Wire Line
	9150 2250 9150 2750
Wire Wire Line
	9800 2250 9800 2400
Wire Wire Line
	10050 2250 10050 2950
Wire Wire Line
	10750 2250 10750 2400
Wire Wire Line
	8250 1650 8250 1850
Wire Wire Line
	8250 1850 8550 1850
Wire Wire Line
	8550 1850 8550 1950
Connection ~ 8900 1350
Wire Wire Line
	8250 2650 8000 2650
Wire Wire Line
	9150 2750 8000 2750
Wire Wire Line
	7050 1650 7600 1650
Connection ~ 8250 1850
Wire Wire Line
	9150 1650 9150 1850
Connection ~ 8250 1650
Wire Wire Line
	10050 1650 10050 1850
Connection ~ 9150 1650
Wire Wire Line
	8900 1950 8900 1350
Wire Wire Line
	9800 1950 9800 1350
Wire Wire Line
	4250 3700 4000 3700
Wire Wire Line
	5500 4450 5800 4450
Wire Wire Line
	5800 4450 5800 4800
Wire Wire Line
	5500 4800 5800 4800
Connection ~ 5800 4800
$Comp
L ThermocoupleLogger-rescue:SW_PUSH- SW1
U 1 1 589D89BD
P 5200 4800
F 0 "SW1" H 5350 4910 50  0000 C CNN
F 1 "SW_PUSH" H 5200 4720 50  0000 C CNN
F 2 "" H 5200 4800 50  0001 C CNN
F 3 "" H 5200 4800 50  0000 C CNN
	1    5200 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4800 4600 4800
Wire Wire Line
	4600 5150 4600 5200
Wire Wire Line
	4600 4800 4600 4850
Connection ~ 4600 4800
Text Notes 2000 2000 0    60   ~ 0
Programming header
Wire Wire Line
	3550 1650 3550 1500
Wire Wire Line
	7600 2450 7600 1650
Connection ~ 7600 1650
Wire Wire Line
	9150 1850 9450 1850
Wire Wire Line
	9450 1850 9450 1950
Connection ~ 9150 1850
Wire Wire Line
	10050 1850 10350 1850
Connection ~ 10050 1850
Wire Wire Line
	10350 1850 10350 1950
Wire Wire Line
	10750 1350 10750 1950
$Comp
L Device:C_Small C?
U 1 1 5915E444
P 6900 2850
F 0 "C?" H 6992 2896 50  0000 L CNN
F 1 "10nF" H 6992 2805 50  0000 L CNN
F 2 "" H 6900 2850 50  0001 C CNN
F 3 "" H 6900 2850 50  0001 C CNN
	1    6900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5650 7850 5650
Wire Wire Line
	8400 5350 7850 5350
Wire Wire Line
	7750 4850 7950 4850
Wire Wire Line
	7750 5050 8200 5050
Wire Wire Line
	7950 4000 7950 4200
Wire Wire Line
	7950 4500 7950 4850
Connection ~ 7950 4850
Connection ~ 8200 5050
Wire Wire Line
	6600 3050 6900 3050
Wire Wire Line
	6600 2650 6900 2650
Wire Wire Line
	6900 2650 6900 2750
Connection ~ 6900 2650
Wire Wire Line
	6900 2950 6900 3050
Connection ~ 6900 3050
Text Notes 7050 6800 0    60   ~ 0
1. Facilitate connecton of encoder\n2. Consider serial port access (exposing PD0/PD1
$Comp
L ThermocoupleLogger-rescue:C_Small- C?
U 1 1 59161BEE
P 5600 3500
F 0 "C?" V 5371 3500 50  0000 C CNN
F 1 "C_Small" V 5462 3500 50  0000 C CNN
F 2 "" H 5600 3500 50  0001 C CNN
F 3 "" H 5600 3500 50  0001 C CNN
	1    5600 3500
	0    1    1    0   
$EndComp
$Comp
L ThermocoupleLogger-rescue:C_Small- C?
U 1 1 59161C96
P 5600 3800
F 0 "C?" V 5371 3800 50  0000 C CNN
F 1 "C_Small" V 5462 3800 50  0000 C CNN
F 2 "" H 5600 3800 50  0001 C CNN
F 3 "" H 5600 3800 50  0001 C CNN
	1    5600 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3500 5800 3500
Wire Wire Line
	5800 3500 5800 3800
Wire Wire Line
	5800 3800 5700 3800
Connection ~ 5800 3800
$Comp
L ThermocoupleLogger-rescue:GND- #PWR?
U 1 1 591620E8
P 5800 3950
F 0 "#PWR?" H 5800 3700 50  0001 C CNN
F 1 "GND" H 5805 3777 50  0000 C CNN
F 2 "" H 5800 3950 50  0001 C CNN
F 3 "" H 5800 3950 50  0001 C CNN
	1    5800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3700 4900 3800
Wire Wire Line
	4900 3600 4900 3500
Wire Wire Line
	8200 4000 9000 4000
Wire Wire Line
	9000 4000 10000 4000
Wire Wire Line
	1750 5300 1750 5600
Wire Wire Line
	9800 1350 10750 1350
Wire Wire Line
	8900 1350 9800 1350
Wire Wire Line
	8250 1850 8250 1950
Wire Wire Line
	8250 1650 9150 1650
Wire Wire Line
	9150 1650 10050 1650
Wire Wire Line
	5800 4800 5800 5600
Wire Wire Line
	4600 4800 4900 4800
Wire Wire Line
	7600 1650 8250 1650
Wire Wire Line
	9150 1850 9150 1950
Wire Wire Line
	10050 1850 10050 1950
Wire Wire Line
	7950 4850 8400 4850
Wire Wire Line
	8200 5050 8400 5050
Wire Wire Line
	6900 2650 7200 2650
Wire Wire Line
	6900 3050 7200 3050
Wire Wire Line
	5800 3800 5800 3950
Wire Wire Line
	4900 3500 5500 3500
Wire Wire Line
	4900 3800 5500 3800
Connection ~ 2100 3000
Wire Wire Line
	7200 2650 7200 2750
Wire Wire Line
	7200 2950 7200 3050
Wire Wire Line
	8200 4500 8200 5050
Wire Wire Line
	9000 4000 9000 4550
Wire Wire Line
	8400 5550 8400 5650
$EndSCHEMATC
