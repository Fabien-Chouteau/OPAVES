EESchema Schematic File Version 2
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
LIBS:OPAVES_components
LIBS:stm32
LIBS:battery_management
LIBS:logo
LIBS:motor_drivers
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:powerint
LIBS:Power_Management
LIBS:references
LIBS:silabs
LIBS:stm8
LIBS:switches
LIBS:transf
LIBS:video
LIBS:Worldsemi
LIBS:Xicor
LIBS:Zilog
LIBS:MK1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "O'PAVES Mk-I"
Date ""
Rev "B"
Comp "AdaCore"
Comment1 "Licensed under CERN OHL v.1.2 or later"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Bosch_BNO055_IMU U3
U 1 1 5886EE63
P 2300 2500
F 0 "U3" H 2350 2600 60  0000 C CNN
F 1 "Bosch_BNO055_IMU" H 3600 1750 60  0000 C CNN
F 2 "OPAVES_Footprints:LGA-28" H 2300 2500 60  0001 C CNN
F 3 "" H 2300 2500 60  0001 C CNN
	1    2300 2500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C15
U 1 1 5886EF60
P 3200 5550
F 0 "C15" H 3210 5620 50  0000 L CNN
F 1 "100nF" H 3210 5470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3200 5550 50  0001 C CNN
F 3 "" H 3200 5550 50  0000 C CNN
	1    3200 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5886F001
P 3200 5650
F 0 "#PWR029" H 3200 5400 50  0001 C CNN
F 1 "GND" H 3200 5500 50  0000 C CNN
F 2 "" H 3200 5650 50  0000 C CNN
F 3 "" H 3200 5650 50  0000 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5450 4150 5450
Connection ~ 3750 5450
Connection ~ 3950 5450
Wire Wire Line
	3850 5450 3850 5600
Connection ~ 3850 5450
$Comp
L GND #PWR030
U 1 1 5886F07C
P 3850 5600
F 0 "#PWR030" H 3850 5350 50  0001 C CNN
F 1 "GND" H 3850 5450 50  0000 C CNN
F 2 "" H 3850 5600 50  0000 C CNN
F 3 "" H 3850 5600 50  0000 C CNN
	1    3850 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3650 1850 3650
Wire Wire Line
	1850 3650 1850 3850
Wire Wire Line
	2100 3800 1850 3800
Connection ~ 1850 3800
$Comp
L GND #PWR031
U 1 1 5886F184
P 1850 3850
F 0 "#PWR031" H 1850 3600 50  0001 C CNN
F 1 "GND" H 1850 3700 50  0000 C CNN
F 2 "" H 1850 3850 50  0000 C CNN
F 3 "" H 1850 3850 50  0000 C CNN
	1    1850 3850
	1    0    0    -1  
$EndComp
NoConn ~ 2100 2750
NoConn ~ 2100 3350
NoConn ~ 5100 3350
NoConn ~ 5100 3500
NoConn ~ 5100 3650
NoConn ~ 5100 3800
NoConn ~ 5100 3950
NoConn ~ 5100 4100
NoConn ~ 5100 4250
NoConn ~ 5100 4400
NoConn ~ 5100 4550
Wire Wire Line
	3450 2300 3850 2300
$Comp
L C_Small C16
U 1 1 5886F317
P 3950 2300
F 0 "C16" H 3960 2370 50  0000 L CNN
F 1 "100nF" H 3960 2220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3950 2300 50  0001 C CNN
F 3 "" H 3950 2300 50  0000 C CNN
	1    3950 2300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR032
U 1 1 5886F3DB
P 4200 2300
F 0 "#PWR032" H 4200 2050 50  0001 C CNN
F 1 "GND" H 4200 2150 50  0000 C CNN
F 2 "" H 4200 2300 50  0000 C CNN
F 3 "" H 4200 2300 50  0000 C CNN
	1    4200 2300
	1    0    0    -1  
$EndComp
Connection ~ 3700 2300
Wire Wire Line
	4050 2300 4200 2300
$Comp
L Crystal Y2
U 1 1 5886F6E7
P 1700 5250
F 0 "Y2" H 1700 5400 50  0000 C CNN
F 1 "32kHz" H 1700 5100 50  0000 C CNN
F 2 "Crystals:Crystal_MC-306" H 1700 5250 50  0001 C CNN
F 3 "" H 1700 5250 50  0000 C CNN
	1    1700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4900 1550 4900
Wire Wire Line
	1550 4900 1550 5500
Wire Wire Line
	2100 5050 1850 5050
Wire Wire Line
	1850 5050 1850 5500
$Comp
L C_Small C13
U 1 1 5886F76D
P 1550 5600
F 0 "C13" H 1560 5670 50  0000 L CNN
F 1 "22pF" H 1560 5520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1550 5600 50  0001 C CNN
F 3 "" H 1550 5600 50  0000 C CNN
	1    1550 5600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C14
U 1 1 5886F80E
P 1850 5600
F 0 "C14" H 1860 5670 50  0000 L CNN
F 1 "22pF" H 1860 5520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1850 5600 50  0001 C CNN
F 3 "" H 1850 5600 50  0000 C CNN
	1    1850 5600
	1    0    0    -1  
$EndComp
Connection ~ 1550 5250
Connection ~ 1850 5250
Wire Wire Line
	1850 5700 1850 5800
Wire Wire Line
	1850 5800 1550 5800
Wire Wire Line
	1550 5800 1550 5700
Wire Wire Line
	1700 5800 1700 5900
Connection ~ 1700 5800
$Comp
L GND #PWR033
U 1 1 5886F8B7
P 1700 5900
F 0 "#PWR033" H 1700 5650 50  0001 C CNN
F 1 "GND" H 1700 5750 50  0000 C CNN
F 2 "" H 1700 5900 50  0000 C CNN
F 3 "" H 1700 5900 50  0000 C CNN
	1    1700 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5886FCA1
P 2100 4300
F 0 "#PWR034" H 2100 4050 50  0001 C CNN
F 1 "GND" H 2100 4150 50  0000 C CNN
F 2 "" H 2100 4300 50  0000 C CNN
F 3 "" H 2100 4300 50  0000 C CNN
	1    2100 4300
	0    1    1    0   
$EndComp
Text HLabel 3450 2300 1    60   Input ~ 0
IMU_VCC
Text HLabel 1350 2350 1    60   Input ~ 0
IMU_VCC
$Comp
L R R5
U 1 1 588701AF
P 1350 2600
F 0 "R5" V 1430 2600 50  0000 C CNN
F 1 "10k" V 1350 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1280 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0000 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2450 1350 2350
Wire Wire Line
	2100 3150 1350 3150
Wire Wire Line
	1350 3150 1350 2750
$Comp
L GND #PWR035
U 1 1 58870499
P 2100 4150
F 0 "#PWR035" H 2100 3900 50  0001 C CNN
F 1 "GND" H 2100 4000 50  0000 C CNN
F 2 "" H 2100 4150 50  0000 C CNN
F 3 "" H 2100 4150 50  0000 C CNN
	1    2100 4150
	0    1    1    0   
$EndComp
Text HLabel 2100 4450 0    60   Input ~ 0
IMU_SCL
Text HLabel 2100 4600 0    60   BiDi ~ 0
IMU_SDA
$Comp
L AdaFruit_BNO055_Breakout U4
U 1 1 588A7E5E
P 7250 2400
F 0 "U4" H 7250 2400 157 0000 C CNN
F 1 "AdaFruit_BNO055_Breakout" H 9200 1350 157 0000 C CNN
F 2 "OPAVES_Footprints:AdaFruit_BNO055_Breakout" H 7250 2400 157 0001 C CNN
F 3 "" H 7250 2400 157 0001 C CNN
	1    7250 2400
	1    0    0    -1  
$EndComp
NoConn ~ 7050 3700
NoConn ~ 7050 3900
NoConn ~ 7050 4150
NoConn ~ 9150 2200
Text HLabel 8800 2200 1    60   Input ~ 0
IMU_VCC
Text HLabel 7050 3250 0    60   Input ~ 0
IMU_SCL
Text HLabel 7050 3050 0    60   BiDi ~ 0
IMU_SDA
NoConn ~ 7050 3450
$Comp
L GND #PWR036
U 1 1 588A8ACC
P 9050 4500
F 0 "#PWR036" H 9050 4250 50  0001 C CNN
F 1 "GND" H 9050 4350 50  0000 C CNN
F 2 "" H 9050 4500 50  0000 C CNN
F 3 "" H 9050 4500 50  0000 C CNN
	1    9050 4500
	1    0    0    -1  
$EndComp
Wire Notes Line
	7000 6550 6400 6550
Wire Notes Line
	6400 6550 6400 500 
Text Notes 7850 1050 0    157  ~ 0
Breakout backup
Text Notes 7550 1550 0    59   ~ 0
If for some reason it's not possible to use the on-board \nIMU (bad circuit, too difficult to solder, etc) we will use \na breakout board from AdaFruit.
Text Notes 3100 1400 0    394  ~ 0
IMU
Text HLabel 1700 2350 1    60   Input ~ 0
IMU_NRST
Wire Wire Line
	2100 2950 1700 2950
Wire Wire Line
	1700 2950 1700 2350
Text HLabel 7050 2800 0    60   Input ~ 0
IMU_NRST
$EndSCHEMATC
