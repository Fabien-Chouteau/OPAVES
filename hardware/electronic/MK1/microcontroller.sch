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
$Descr A3 16535 11693
encoding utf-8
Sheet 3 7
Title "O'PAVES Mk-I"
Date ""
Rev "A"
Comp "AdaCore"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F405VGTx U2
U 1 1 5885E983
P 8400 5300
F 0 "U2" H 4100 8125 50  0000 L BNN
F 1 "STM32F405VGTx" H 12700 8125 50  0000 R BNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 12700 8075 50  0000 R TNN
F 3 "" H 8400 5300 50  0000 C CNN
	1    8400 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 58860055
P 8400 8300
F 0 "#PWR11" H 8400 8050 50  0001 C CNN
F 1 "GND" H 8400 8150 50  0000 C CNN
F 2 "" H 8400 8300 50  0000 C CNN
F 3 "" H 8400 8300 50  0000 C CNN
	1    8400 8300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5886017C
P 7850 1550
F 0 "C5" H 7860 1620 50  0000 L CNN
F 1 "100nF" H 7860 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7850 1550 50  0001 C CNN
F 3 "" H 7850 1550 50  0000 C CNN
	1    7850 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 588604D6
P 8150 1550
F 0 "C6" H 8160 1620 50  0000 L CNN
F 1 "100nF" H 8160 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8150 1550 50  0001 C CNN
F 3 "" H 8150 1550 50  0000 C CNN
	1    8150 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 588604F7
P 8450 1550
F 0 "C7" H 8460 1620 50  0000 L CNN
F 1 "100nF" H 8460 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8450 1550 50  0001 C CNN
F 3 "" H 8450 1550 50  0000 C CNN
	1    8450 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 58860529
P 8750 1550
F 0 "C8" H 8760 1620 50  0000 L CNN
F 1 "100nF" H 8760 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8750 1550 50  0001 C CNN
F 3 "" H 8750 1550 50  0000 C CNN
	1    8750 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 58860550
P 9050 1550
F 0 "C9" H 9060 1620 50  0000 L CNN
F 1 "100nF" H 9060 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9050 1550 50  0001 C CNN
F 3 "" H 9050 1550 50  0000 C CNN
	1    9050 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C10
U 1 1 5886058A
P 9350 1550
F 0 "C10" H 9360 1620 50  0000 L CNN
F 1 "100nF" H 9360 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9350 1550 50  0001 C CNN
F 3 "" H 9350 1550 50  0000 C CNN
	1    9350 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 58860738
P 9800 1550
F 0 "C11" H 9810 1620 50  0000 L CNN
F 1 "10nF" H 9810 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9800 1550 50  0001 C CNN
F 3 "" H 9800 1550 50  0000 C CNN
	1    9800 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 5886076E
P 10100 1550
F 0 "C12" H 10110 1620 50  0000 L CNN
F 1 "1uF" H 10110 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10100 1550 50  0001 C CNN
F 3 "" H 10100 1550 50  0000 C CNN
	1    10100 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 58860A74
P 8950 1850
F 0 "#PWR12" H 8950 1600 50  0001 C CNN
F 1 "GND" H 8950 1700 50  0000 C CNN
F 2 "" H 8950 1850 50  0000 C CNN
F 3 "" H 8950 1850 50  0000 C CNN
	1    8950 1850
	1    0    0    -1  
$EndComp
Text Notes 10050 1250 0    60   ~ 0
VDDA
Text Notes 8600 1250 0    60   ~ 0
VDDs
Text Notes 8750 950  0    60   ~ 0
Decoupling
$Comp
L C_Small C3
U 1 1 58861217
P 3500 3400
F 0 "C3" H 3510 3470 50  0000 L CNN
F 1 "2.2uF" V 3450 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3500 3400 50  0001 C CNN
F 3 "" H 3500 3400 50  0000 C CNN
	1    3500 3400
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 58861365
P 3500 3600
F 0 "C4" H 3510 3670 50  0000 L CNN
F 1 "2,2uF" V 3450 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3500 3600 50  0001 C CNN
F 3 "" H 3500 3600 50  0000 C CNN
	1    3500 3600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR8
U 1 1 588614A2
P 3100 3700
F 0 "#PWR8" H 3100 3450 50  0001 C CNN
F 1 "GND" H 3100 3550 50  0000 C CNN
F 2 "" H 3100 3700 50  0000 C CNN
F 3 "" H 3100 3700 50  0000 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 588623D7
P 2750 4450
F 0 "Y1" H 2750 4600 50  0000 C CNN
F 1 "Crystal" H 2750 4300 50  0000 C CNN
F 2 "Crystals:Crystal_HC50-U_Vertical" H 2750 4450 50  0001 C CNN
F 3 "" H 2750 4450 50  0000 C CNN
	1    2750 4450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 58862598
P 2900 4750
F 0 "C2" H 2910 4820 50  0000 L CNN
F 1 "20pF" H 2650 4700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2900 4750 50  0001 C CNN
F 3 "" H 2900 4750 50  0000 C CNN
	1    2900 4750
	-1   0    0    1   
$EndComp
$Comp
L C_Small C1
U 1 1 58862701
P 2600 4750
F 0 "C1" H 2610 4820 50  0000 L CNN
F 1 "20pF" H 2650 4700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2600 4750 50  0001 C CNN
F 3 "" H 2600 4750 50  0000 C CNN
	1    2600 4750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR6
U 1 1 58862898
P 2750 4900
F 0 "#PWR6" H 2750 4650 50  0001 C CNN
F 1 "GND" H 2750 4750 50  0000 C CNN
F 2 "" H 2750 4900 50  0000 C CNN
F 3 "" H 2750 4900 50  0000 C CNN
	1    2750 4900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 588633EB
P 2700 2500
F 0 "R1" V 2780 2500 50  0000 C CNN
F 1 "10k" V 2700 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2630 2500 50  0001 C CNN
F 3 "" H 2700 2500 50  0000 C CNN
	1    2700 2500
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58863517
P 2700 3300
F 0 "R2" V 2780 3300 50  0000 C CNN
F 1 "10k" V 2700 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2630 3300 50  0001 C CNN
F 3 "" H 2700 3300 50  0000 C CNN
	1    2700 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 588635DD
P 2700 3450
F 0 "#PWR5" H 2700 3200 50  0001 C CNN
F 1 "GND" H 2700 3300 50  0000 C CNN
F 2 "" H 2700 3450 50  0000 C CNN
F 3 "" H 2700 3450 50  0000 C CNN
	1    2700 3450
	1    0    0    -1  
$EndComp
Text GLabel 2700 3000 0    60   Input ~ 0
BOOT0
$Comp
L INDUCTOR L1
U 1 1 588646BA
P 10800 1350
F 0 "L1" V 10750 1350 50  0000 C CNN
F 1 "INDUCTOR" V 10900 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 10800 1350 50  0001 C CNN
F 3 "" H 10800 1350 50  0000 C CNN
	1    10800 1350
	0    1    1    0   
$EndComp
Text GLabel 12900 3600 2    60   Input ~ 0
ARDU_D15_SCL
Text GLabel 12900 7100 2    60   Input ~ 0
ARDU_D14_SDA
Text GLabel 12900 3300 2    60   Input ~ 0
ARDU_D13_SCK
Text GLabel 12900 3400 2    60   Input ~ 0
ARDU_D12_MISO
Text GLabel 12900 3500 2    60   Input ~ 0
ARDU_D11_MOSI
Text GLabel 13950 4800 2    60   Input ~ 0
ARDU_D10
Text GLabel 14250 6450 2    60   Input ~ 0
ARDU_D9
Text GLabel 12900 3700 2    60   Input ~ 0
ARDU_D8
Text GLabel 13950 4650 2    60   Input ~ 0
ARDU_D7
Text GLabel 12900 5700 2    60   Input ~ 0
ARDU_D6
Text GLabel 12900 4900 2    60   Input ~ 0
ARDU_D5
Text GLabel 12900 5000 2    60   Input ~ 0
ARDU_D4
Text GLabel 13950 4500 2    60   Input ~ 0
ARDU_D3
Text GLabel 12900 4600 2    60   Input ~ 0
ARDU_D2
Text GLabel 12900 6800 2    60   Input ~ 0
ARDU_D1_TXD
Text GLabel 12900 6900 2    60   Input ~ 0
ARDU_D0_RXD
Text GLabel 12900 2800 2    60   Input ~ 0
ARDU_A0
Text GLabel 12900 2900 2    60   Input ~ 0
ARDU_A1
Text GLabel 12900 3200 2    60   Input ~ 0
ARDU_A2
Text GLabel 12900 4500 2    60   Input ~ 0
ARDU_A3
Text GLabel 12900 6300 2    60   Input ~ 0
ARDU_A4
Text GLabel 12900 6200 2    60   Input ~ 0
ARDU_A5
Text HLabel 7600 1350 0    60   Input ~ 0
MCU_VCC
Text HLabel 11300 1350 2    60   Input ~ 0
MCU_VCC
Text HLabel 7950 2300 0    60   Input ~ 0
MCU_VCC
Text HLabel 2700 2350 1    60   Input ~ 0
MCU_VCC
Text Label 9800 1350 1    60   ~ 0
VCCA
Text Label 8700 2300 0    60   ~ 0
VCCA
Text Label 3900 3300 2    60   ~ 0
VCCA
Text HLabel 3600 3200 0    60   Input ~ 0
VBAT_SENSE
$Comp
L USB_OTG P5
U 1 1 588C214D
P 2950 10000
F 0 "P5" V 2650 9900 50  0000 C CNN
F 1 "USB_OTG" H 2950 10200 50  0000 C CNN
F 2 "Connect:USB_Micro-B" V 2900 9900 50  0001 C CNN
F 3 "" V 2900 9900 50  0000 C CNN
	1    2950 10000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR7
U 1 1 588C279B
P 3050 10450
F 0 "#PWR7" H 3050 10200 50  0001 C CNN
F 1 "GND" H 3050 10300 50  0000 C CNN
F 2 "" H 3050 10450 50  0000 C CNN
F 3 "" H 3050 10450 50  0000 C CNN
	1    3050 10450
	1    0    0    -1  
$EndComp
Text HLabel 2650 9800 1    60   Input ~ 0
VUSB
Text Label 2200 9900 0    60   ~ 0
USB_DM
Text Label 2200 10000 0    60   ~ 0
USB_DP
Text Label 2200 10100 0    60   ~ 0
USB_ID
Text Label 13050 3800 0    60   ~ 0
USB_ID
Text Label 13050 3900 0    60   ~ 0
USB_DM
Text Label 13050 4000 0    60   ~ 0
USB_DP
Text Notes 1600 9200 0    118  ~ 0
Micro USB
Text Label 13050 4100 0    60   ~ 0
SWDIO
Text Label 13050 4200 0    60   ~ 0
SWCLK
$Comp
L CONN_02X10 P6
U 1 1 588C6516
P 4900 10300
F 0 "P6" H 4900 10850 50  0000 C CNN
F 1 "FTSH-110-01-L-DV-K[-TR]" H 5200 9750 50  0000 C CNN
F 2 "OPAVES_Footprints:FTSH-110-XX-XX-DV-XX" H 4900 9100 50  0001 C CNN
F 3 "" H 4900 9100 50  0000 C CNN
	1    4900 10300
	1    0    0    -1  
$EndComp
Text HLabel 4650 9850 0    60   Input ~ 0
MCU_VCC
Wire Wire Line
	8200 8200 8600 8200
Connection ~ 8500 8200
Connection ~ 8400 8200
Connection ~ 8300 8200
Wire Wire Line
	8400 8200 8400 8300
Wire Wire Line
	10100 1350 10100 1450
Wire Wire Line
	7850 1350 7850 1450
Wire Wire Line
	8150 1350 8150 1450
Connection ~ 8150 1350
Wire Wire Line
	8450 1350 8450 1450
Connection ~ 8450 1350
Wire Wire Line
	8750 1350 8750 1450
Connection ~ 8750 1350
Wire Wire Line
	9050 1350 9050 1450
Connection ~ 9050 1350
Wire Wire Line
	9350 1350 9350 1450
Connection ~ 9350 1350
Wire Wire Line
	9800 1450 9800 1350
Connection ~ 9800 1350
Wire Wire Line
	7850 1650 7850 1750
Wire Wire Line
	7850 1750 10100 1750
Wire Wire Line
	10100 1750 10100 1650
Wire Wire Line
	9800 1650 9800 1750
Connection ~ 9800 1750
Wire Wire Line
	9350 1650 9350 1750
Connection ~ 9350 1750
Wire Wire Line
	9050 1650 9050 1750
Connection ~ 9050 1750
Wire Wire Line
	8750 1650 8750 1750
Connection ~ 8750 1750
Wire Wire Line
	8450 1650 8450 1750
Connection ~ 8450 1750
Wire Wire Line
	8150 1650 8150 1750
Connection ~ 8150 1750
Connection ~ 7850 1350
Wire Wire Line
	8950 1750 8950 1850
Connection ~ 8950 1750
Connection ~ 8600 2300
Connection ~ 8500 2300
Connection ~ 8400 2300
Connection ~ 8300 2300
Connection ~ 8200 2300
Connection ~ 8100 2300
Wire Wire Line
	3900 3400 3600 3400
Wire Wire Line
	3900 3500 3750 3500
Wire Wire Line
	3750 3500 3750 3600
Wire Wire Line
	3750 3600 3600 3600
Wire Wire Line
	3400 3400 3100 3400
Wire Wire Line
	3100 3400 3100 3700
Wire Wire Line
	3400 3600 3100 3600
Connection ~ 3100 3600
Wire Wire Line
	2600 4200 2600 4650
Wire Wire Line
	2900 4300 2900 4650
Connection ~ 2600 4450
Wire Wire Line
	2600 4850 2900 4850
Wire Wire Line
	2750 4850 2750 4900
Connection ~ 2750 4850
Wire Wire Line
	2600 4200 3900 4200
Wire Wire Line
	3900 4300 2900 4300
Connection ~ 2900 4450
Wire Wire Line
	3900 3000 2700 3000
Wire Wire Line
	2700 3000 2700 3150
Wire Wire Line
	3900 2800 2700 2800
Wire Wire Line
	2700 2800 2700 2650
Wire Wire Line
	7600 1350 9350 1350
Wire Wire Line
	9800 1350 10500 1350
Connection ~ 10100 1350
Wire Wire Line
	11100 1350 11300 1350
Wire Wire Line
	7950 2300 8600 2300
Wire Wire Line
	3900 3200 3600 3200
Wire Notes Line
	550  8950 11800 8950
Wire Notes Line
	3650 8950 3650 11200
Wire Wire Line
	2650 9900 2200 9900
Wire Wire Line
	2650 10000 2200 10000
Wire Wire Line
	2650 10100 2200 10100
Wire Wire Line
	12900 3900 13050 3900
Wire Wire Line
	12900 4000 13050 4000
Wire Wire Line
	12900 3800 13050 3800
Wire Wire Line
	12900 4100 13050 4100
Wire Wire Line
	12900 4200 13050 4200
Wire Wire Line
	3050 10450 3050 10400
Wire Wire Line
	3050 10400 2650 10400
Wire Wire Line
	2650 10400 2650 10200
Wire Wire Line
	4650 9950 4550 9950
Wire Wire Line
	4550 9950 4550 10900
Wire Wire Line
	4650 10050 4550 10050
Connection ~ 4550 10050
Wire Wire Line
	4650 10250 4550 10250
Connection ~ 4550 10250
Wire Wire Line
	4650 10350 4550 10350
Connection ~ 4550 10350
Wire Wire Line
	4650 10450 4550 10450
Connection ~ 4550 10450
Wire Wire Line
	4650 10550 4550 10550
Connection ~ 4550 10550
Wire Wire Line
	4650 10650 4550 10650
Connection ~ 4550 10650
Wire Wire Line
	4650 10750 4550 10750
Connection ~ 4550 10750
Connection ~ 4550 10850
NoConn ~ 4650 10150
$Comp
L GND #PWR9
U 1 1 588C6DA9
P 4550 10900
F 0 "#PWR9" H 4550 10650 50  0001 C CNN
F 1 "GND" H 4550 10750 50  0000 C CNN
F 2 "" H 4550 10900 50  0000 C CNN
F 3 "" H 4550 10900 50  0000 C CNN
	1    4550 10900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 9850 5250 9850
Wire Wire Line
	5150 9950 5250 9950
Wire Wire Line
	5150 10050 5250 10050
Wire Wire Line
	5150 10150 5250 10150
Wire Wire Line
	5150 10250 5250 10250
Wire Wire Line
	5150 10350 5250 10350
Wire Wire Line
	5150 10450 5250 10450
Wire Wire Line
	5150 10550 5250 10550
Wire Wire Line
	5150 10650 5250 10650
Wire Wire Line
	5150 10750 5250 10750
Text Label 5250 9850 0    49   ~ 0
SWDIO
Text Label 5250 9950 0    49   ~ 0
SWCLK
Text Label 5250 10050 0    49   ~ 0
SWO
Text Label 5250 10150 0    49   ~ 0
TDI
Text Label 5250 10250 0    49   ~ 0
NRST
Text Label 3750 2800 2    49   ~ 0
NRST
Text Label 5250 10350 0    49   ~ 0
TRACE_CK
Text Label 5250 10450 0    49   ~ 0
TRACE_D0
Text Label 5250 10550 0    49   ~ 0
TRACE_D1
Text Label 5250 10650 0    49   ~ 0
TRACE_D2
Text Label 5250 10750 0    49   ~ 0
TRACE_D3
Wire Wire Line
	12900 4800 13050 4800
Text Label 13050 4800 0    49   ~ 0
SWO
Wire Wire Line
	12900 4300 13050 4300
Text Label 13050 4300 0    49   ~ 0
TDI
Wire Wire Line
	3900 4700 3400 4700
Wire Wire Line
	3900 4800 3400 4800
Wire Wire Line
	3900 4900 3400 4900
Wire Wire Line
	3900 5000 3400 5000
Wire Wire Line
	3900 5100 3400 5100
Text Label 3400 4700 0    49   ~ 0
TRACE_CK
Text Label 3400 4800 0    49   ~ 0
TRACE_D0
Text Label 3400 4900 0    49   ~ 0
TRACE_D1
Text Label 3400 5000 0    49   ~ 0
TRACE_D2
Text Label 3400 5100 0    49   ~ 0
TRACE_D3
Text Notes 4450 9550 0    79   ~ 0
Trace connector
Text Notes 6000 9550 0    79   ~ 0
ST-LINK Connector
$Comp
L CONN_01X06 P7
U 1 1 588CC7CD
P 6550 10100
F 0 "P7" H 6550 10450 50  0000 C CNN
F 1 "CONN_01X06" V 6650 10100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 6550 10100 50  0001 C CNN
F 3 "" H 6550 10100 50  0000 C CNN
	1    6550 10100
	-1   0    0    1   
$EndComp
Text HLabel 6750 10350 2    60   Input ~ 0
MCU_VCC
Wire Wire Line
	6750 10250 6850 10250
Wire Wire Line
	6750 10150 7600 10150
Wire Wire Line
	6750 10050 6850 10050
Wire Wire Line
	6750 9950 6850 9950
Wire Wire Line
	6750 9850 6850 9850
Text Label 6850 10250 0    60   ~ 0
SWCLK
Text Label 6850 10050 0    60   ~ 0
SWDIO
Text Label 6850 9950 0    60   ~ 0
NRST
Text Label 6850 9850 0    60   ~ 0
SWO
Wire Wire Line
	7600 10150 7600 10300
$Comp
L GND #PWR10
U 1 1 588CD2A5
P 7600 10300
F 0 "#PWR10" H 7600 10050 50  0001 C CNN
F 1 "GND" H 7600 10150 50  0000 C CNN
F 2 "" H 7600 10300 50  0000 C CNN
F 3 "" H 7600 10300 50  0000 C CNN
	1    7600 10300
	1    0    0    -1  
$EndComp
Wire Notes Line
	7950 8950 7950 11200
Text Notes 5550 9200 0    118  ~ 0
Debug
Text HLabel 3350 2800 1    60   Input ~ 0
MCU_NRST
Text HLabel 3900 7000 0    60   Input ~ 0
Radio_UART_RX
Text HLabel 3900 7100 0    60   Input ~ 0
Radio_UART_TX
Text HLabel 12900 5900 2    60   Input ~ 0
Radio_UART_CTS
Text HLabel 12900 5800 2    60   Input ~ 0
Radio_UART_RTS
Text HLabel 12900 5200 2    60   Input ~ 0
IMU_SDA
Text HLabel 12900 5100 2    60   Input ~ 0
IMU_SCL
Text HLabel 12900 5500 2    60   Input ~ 0
Distance_SCL
Text HLabel 12900 5600 2    60   Input ~ 0
Distance_SDA
$Comp
L R R9
U 1 1 58918050
P 9100 10300
F 0 "R9" V 9180 10300 50  0000 C CNN
F 1 "10k" V 9100 10300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9030 10300 50  0001 C CNN
F 3 "" H 9100 10300 50  0000 C CNN
	1    9100 10300
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 58918382
P 9400 10300
F 0 "R10" V 9480 10300 50  0000 C CNN
F 1 "10k" V 9400 10300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9330 10300 50  0001 C CNN
F 3 "" H 9400 10300 50  0000 C CNN
	1    9400 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 10150 9400 10150
Wire Wire Line
	9250 10150 9250 9950
Connection ~ 9250 10150
Text HLabel 9250 9950 1    60   Input ~ 0
MCU_VCC
Text HLabel 9100 10450 3    60   Input ~ 0
IMU_SCL
Text HLabel 9400 10450 3    60   Input ~ 0
IMU_SDA
Wire Notes Line
	11800 8950 11800 9950
Text Notes 9450 9250 0    118  ~ 0
Pull-UPs
$Comp
L R R11
U 1 1 5891BCC4
P 10350 10300
F 0 "R11" V 10430 10300 50  0000 C CNN
F 1 "10k" V 10350 10300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10280 10300 50  0001 C CNN
F 3 "" H 10350 10300 50  0000 C CNN
	1    10350 10300
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5891BCCA
P 10650 10300
F 0 "R12" V 10730 10300 50  0000 C CNN
F 1 "10k" V 10650 10300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10580 10300 50  0001 C CNN
F 3 "" H 10650 10300 50  0000 C CNN
	1    10650 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 10150 10650 10150
Wire Wire Line
	10500 10150 10500 9950
Connection ~ 10500 10150
Text HLabel 10500 9950 1    60   Input ~ 0
MCU_VCC
Text HLabel 10350 10450 3    60   Input ~ 0
Distance_SCL
Text HLabel 10650 10450 3    60   Input ~ 0
Distance_SDA
$EndSCHEMATC
