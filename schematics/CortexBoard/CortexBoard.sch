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
LIBS:CortexBoard
LIBS:CortexBoard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pentapod Cortex Board"
Date "23. May 2016"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Jochen Alt"
Comment4 ""
$EndDescr
NoConn ~ 30200 -14200
NoConn ~ 30200 -14200
Text Label 8150 6150 0    39   ~ 0
GND
$Comp
L GNDPWR #PWR01
U 1 1 576CFF3F
P 1900 7550
F 0 "#PWR01" H 1900 7350 50  0001 C CNN
F 1 "GNDPWR" H 1900 7420 50  0000 C CNN
F 2 "" H 1900 7500 60  0000 C CNN
F 3 "" H 1900 7500 60  0000 C CNN
	1    1900 7550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 576CF103
P 2200 6400
F 0 "#FLG02" H 2200 6495 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 6580 50  0000 C CNN
F 2 "" H 2200 6400 60  0000 C CNN
F 3 "" H 2200 6400 60  0000 C CNN
	1    2200 6400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 50E56802
P 7000 3100
F 0 "SW2" H 7150 3210 50  0000 C CNN
F 1 "reset" H 7000 3020 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 7000 3100 60  0001 C CNN
F 3 "" H 7000 3100 60  0001 C CNN
	1    7000 3100
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 50E7F8BE
P 2350 3650
F 0 "C16" H 2400 3750 50  0000 L CNN
F 1 "100nF" H 2400 3550 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 2350 3650 60  0001 C CNN
F 3 "" H 2350 3650 60  0001 C CNN
	1    2350 3650
	1    0    0    -1  
$EndComp
NoConn ~ 30200 -14200
NoConn ~ 30200 -14200
Text Label 8150 6150 0    39   ~ 0
GND
Text Label 2050 7550 0    39   ~ 0
Power-GND
$Comp
L PWR_FLAG #FLG03
U 1 1 576D01C9
P 1900 7550
F 0 "#FLG03" H 1900 7645 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 7730 50  0000 C CNN
F 2 "" H 1900 7550 60  0000 C CNN
F 3 "" H 1900 7550 60  0000 C CNN
	1    1900 7550
	1    0    0    -1  
$EndComp
NoConn ~ 4400 2150
NoConn ~ 4500 2150
NoConn ~ 5200 2150
$Comp
L Teensy_3.5 U4
U 1 1 585C33BC
P 5150 3050
F 0 "U4" H 4975 3150 60  0000 C CNN
F 1 "Teensy_3.5" H 5075 2875 60  0000 C CNN
F 2 "Cortex:Teensy_3.5" H 5475 2975 60  0001 C CNN
F 3 "" H 5475 2975 60  0000 C CNN
	1    5150 3050
	1    0    0    -1  
$EndComp
NoConn ~ 5400 4600
NoConn ~ 5300 4600
Text Label 2450 7250 0    39   ~ 0
+5V
$Comp
L CONN_01X01 P6
U 1 1 59358754
P 6650 3300
F 0 "P6" H 6650 3400 50  0000 C CNN
F 1 "Teensy RST(49)" V 6750 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6650 3300 50  0001 C CNN
F 3 "" H 6650 3300 50  0000 C CNN
	1    6650 3300
	0    1    1    0   
$EndComp
$Comp
L Relay_1xON REL1
U 1 1 59358F52
P 3700 7100
F 0 "REL1" H 3700 7200 50  0000 C CNN
F 1 "HF49FD" H 3700 7000 50  0000 C CNN
F 2 "Cortex:Relay_HF49FD" H 3700 7100 50  0001 C CNN
F 3 "" H 3700 7100 50  0000 C CNN
	1    3700 7100
	-1   0    0    1   
$EndComp
Text Label 6900 5800 0    39   ~ 0
TX2
Text Label 7000 5800 0    39   ~ 0
RX2
Text Label 7750 5800 0    39   ~ 0
TX3
Text Label 7850 5800 0    39   ~ 0
RX3
Text Label 8650 5800 0    39   ~ 0
TX4
Text Label 8750 5800 0    39   ~ 0
RX4
Text Label 9550 5800 0    39   ~ 0
TX1
Text Label 9650 5800 0    39   ~ 0
RX1
$Comp
L R R5
U 1 1 5935DF4C
P 5900 7100
F 0 "R5" V 5980 7100 50  0000 C CNN
F 1 "1K" V 5900 7100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 7100 50  0001 C CNN
F 3 "" H 5900 7100 50  0000 C CNN
	1    5900 7100
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 5935E078
P 4300 6550
F 0 "D2" H 4300 6650 50  0000 C CNN
F 1 "D_Schottky" H 4300 6450 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4300 6550 50  0001 C CNN
F 3 "" H 4300 6550 50  0000 C CNN
	1    4300 6550
	0    1    1    0   
$EndComp
NoConn ~ 4100 2150
$Comp
L R R2
U 1 1 59363610
P 2900 2000
F 0 "R2" V 2980 2000 50  0000 C CNN
F 1 "10K" V 2900 2000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2830 2000 50  0001 C CNN
F 3 "" H 2900 2000 50  0000 C CNN
	1    2900 2000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59363689
P 2900 1400
F 0 "R1" V 2980 1400 50  0000 C CNN
F 1 "150K" V 2900 1400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2830 1400 50  0001 C CNN
F 3 "" H 2900 1400 50  0000 C CNN
	1    2900 1400
	1    0    0    -1  
$EndComp
NoConn ~ 5100 4600
NoConn ~ 5200 4600
NoConn ~ 5500 4600
NoConn ~ 5600 4600
NoConn ~ 5700 4600
NoConn ~ 5900 4600
NoConn ~ 6000 4600
Text Label 10450 5800 0    39   ~ 0
TX6
Text Label 10550 5800 0    39   ~ 0
RX6
NoConn ~ 4500 4600
$Comp
L Q_NPN_CBE Q1
U 1 1 593C8FBB
P 6400 7350
F 0 "Q1" H 6600 7400 50  0000 L CNN
F 1 "BC337(o.ä.)" H 6600 7300 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 6600 7450 50  0001 C CNN
F 3 "" H 6400 7350 50  0001 C CNN
	1    6400 7350
	1    0    0    -1  
$EndComp
NoConn ~ 4600 4600
NoConn ~ 4300 4600
NoConn ~ 4400 4600
NoConn ~ 4000 2150
$Comp
L CONN_01X02 J2
U 1 1 593E3DCB
P 10900 5050
F 0 "J2" H 10900 5200 50  0000 C CNN
F 1 "UART6 Connector" V 11000 5050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10900 5050 50  0001 C CNN
F 3 "" H 10900 5050 50  0001 C CNN
	1    10900 5050
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 J3
U 1 1 593E54C8
P 1300 6450
F 0 "J3" H 1300 6600 50  0000 C CNN
F 1 "Odroid Power" V 1400 6450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1300 6450 50  0001 C CNN
F 3 "" H 1300 6450 50  0001 C CNN
	1    1300 6450
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 593E6FFB
P 1850 6750
F 0 "R4" V 1930 6750 50  0000 C CNN
F 1 "3.3K" V 1850 6750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1780 6750 50  0001 C CNN
F 3 "" H 1850 6750 50  0001 C CNN
	1    1850 6750
	0    -1   -1   0   
$EndComp
Text Label 900  6750 0    39   ~ 0
LEDKathode
NoConn ~ 4200 4600
$Comp
L CP C1
U 1 1 593EB317
P 2700 4000
F 0 "C1" H 2725 4100 50  0000 L CNN
F 1 "2200uF" H 2725 3900 50  0000 L CNN
F 2 "Capacitors_THT:CP_Axial_L25.0mm_D10.0mm_P30.00mm_Horizontal" H 2738 3850 50  0001 C CNN
F 3 "" H 2700 4000 50  0001 C CNN
	1    2700 4000
	1    0    0    -1  
$EndComp
Text Label 3150 5050 0    39   ~ 0
SCL
Text Label 3150 5150 0    39   ~ 0
SDA
Text Label 3150 5350 0    39   ~ 0
VIn+5V
Text Label 3150 5250 0    39   ~ 0
GND
Text Label 3150 4950 0    39   ~ 0
RST
NoConn ~ 5400 2150
NoConn ~ 5100 2150
Text Label 4750 5800 0    39   ~ 0
GND
Text Label 4750 5700 0    39   ~ 0
SDA0
Text Label 4750 5600 0    39   ~ 0
SCL0
Text Label 4750 5500 0    39   ~ 0
VIn+5V
Text Label 6350 5800 0    39   ~ 0
3.3V_ODroid
Text Label 6350 5700 0    39   ~ 0
SCL-ODroid
Text Label 6350 5600 0    39   ~ 0
SDA-ODroid
Text Label 6350 5500 0    39   ~ 0
GND
NoConn ~ 6450 3250
NoConn ~ 4600 2150
NoConn ~ 4700 2150
Text Notes 4200 1700 0    60   ~ 0
Veränderter PIN!!!
NoConn ~ 5800 4600
$Comp
L XL4015 P10
U 1 1 59A1847C
P 4850 7350
F 0 "P10" H 5050 7575 50  0000 C CNN
F 1 "XL4015" H 5150 7350 50  0000 C CNN
F 2 "Cortex:XL4015" H 4850 7350 50  0001 C CNN
F 3 "" H 4850 7350 50  0000 C CNN
	1    4850 7350
	1    0    0    -1  
$EndComp
NoConn ~ 2450 6850
Connection ~ 2350 850 
Wire Wire Line
	2350 850  2350 3500
Connection ~ 2350 6150
Wire Wire Line
	29500 -13950 23450 -13950
Wire Wire Line
	29500 -12950 29500 -13950
Connection ~ 3900 6150
Wire Wire Line
	3900 6150 3900 4600
Wire Wire Line
	7300 3100 11050 3100
Wire Wire Line
	11050 3100 11050 6150
Connection ~ 11050 6150
Wire Wire Line
	900  650  10550 650 
Connection ~ 9250 6150
Wire Wire Line
	4900 4600 4900 5200
Wire Wire Line
	6100 4600 6100 4800
Wire Wire Line
	6200 4600 6200 4700
Wire Wire Line
	3900 850  3900 2150
Connection ~ 3900 850 
Wire Wire Line
	5000 4600 5000 5100
Wire Wire Line
	4700 4600 4700 5000
Wire Wire Line
	6500 6800 6500 7150
Wire Wire Line
	2900 6150 2900 2150
Connection ~ 2900 6150
Wire Wire Line
	2900 1550 2900 1850
Connection ~ 2900 1700
Wire Wire Line
	4800 4600 4800 4900
Wire Wire Line
	6100 2050 6100 2150
Wire Wire Line
	6450 3500 10950 3500
Connection ~ 4300 6800
Wire Wire Line
	4000 6800 6500 6800
Wire Wire Line
	4900 1300 4900 2150
Wire Wire Line
	4800 2150 4800 1400
Wire Wire Line
	4800 1400 3350 1400
Wire Wire Line
	3350 1400 3350 5150
Wire Wire Line
	3350 5150 3150 5150
Wire Wire Line
	2350 6150 2350 3800
Wire Wire Line
	2700 6150 2700 4150
Connection ~ 2700 6150
Wire Wire Line
	9450 650  9450 5800
Connection ~ 9450 650 
Wire Wire Line
	11050 6150 950  6150
Wire Wire Line
	3150 5050 3250 5050
Wire Wire Line
	3250 5050 3250 1300
Wire Wire Line
	3250 1300 4900 1300
Wire Wire Line
	5000 2150 5000 1200
Wire Wire Line
	5000 1200 3150 1200
Wire Wire Line
	3150 1200 3150 4950
Wire Wire Line
	3450 850  3450 5350
Connection ~ 3450 850 
Wire Wire Line
	5600 2150 5600 1650
Wire Wire Line
	4750 5800 4750 6150
Connection ~ 4750 6150
Wire Wire Line
	3700 2050 5800 2050
Wire Wire Line
	3700 2050 3700 5600
Wire Wire Line
	3600 1950 5700 1950
Wire Wire Line
	3600 1950 3600 5700
Wire Wire Line
	3800 850  3800 5500
Connection ~ 3800 850 
Wire Wire Line
	5800 2050 5800 2150
Wire Wire Line
	5700 1950 5700 2150
Wire Wire Line
	6700 3100 6650 3100
Wire Wire Line
	850  550  10950 550 
Wire Wire Line
	950  850  3900 850 
Wire Wire Line
	9250 5700 9250 6150
Wire Wire Line
	10250 5700 10250 5800
Wire Wire Line
	6600 5700 10700 5700
Wire Wire Line
	9350 5700 9350 5800
Connection ~ 9350 5700
Connection ~ 10250 5700
Wire Wire Line
	9750 5800 9750 5700
Connection ~ 9750 5700
Wire Wire Line
	8450 5800 8450 5700
Connection ~ 9250 5700
Wire Wire Line
	8850 5800 8850 5700
Connection ~ 8850 5700
Wire Wire Line
	8650 4800 8650 5800
Wire Wire Line
	6100 4800 8650 4800
Wire Wire Line
	8750 4700 8750 5800
Wire Wire Line
	6200 4700 8750 4700
Wire Wire Line
	9850 5800 9850 550 
Connection ~ 9850 550 
Wire Wire Line
	8550 5800 8550 650 
Connection ~ 8550 650 
Wire Wire Line
	10350 5800 10350 650 
Connection ~ 10350 650 
Wire Wire Line
	10750 5800 10750 550 
Connection ~ 10750 550 
Wire Wire Line
	6450 3400 10850 3400
Wire Wire Line
	10550 5450 10550 5800
Wire Wire Line
	10450 5500 10450 5800
Wire Wire Line
	10850 3400 10850 5800
Wire Wire Line
	10050 5200 10050 5800
Wire Wire Line
	9950 5350 9950 5800
Wire Wire Line
	8650 5300 9050 5300
Wire Wire Line
	9050 5300 9050 5800
Connection ~ 8650 5300
Wire Wire Line
	8750 5200 9150 5200
Wire Wire Line
	9150 5200 9150 5800
Connection ~ 8750 5200
Wire Wire Line
	8950 5800 8950 550 
Connection ~ 8950 550 
Wire Wire Line
	3600 5700 4750 5700
Wire Wire Line
	3700 5600 4750 5600
Wire Wire Line
	7550 5700 7550 5800
Connection ~ 8450 5700
Wire Wire Line
	7950 5800 7950 5700
Connection ~ 7950 5700
Connection ~ 7550 5700
Wire Wire Line
	7100 5800 7100 5700
Connection ~ 7100 5700
Connection ~ 6700 5700
Wire Wire Line
	7000 5100 7000 5800
Wire Wire Line
	5000 5100 7000 5100
Wire Wire Line
	6800 5800 6800 650 
Connection ~ 6800 650 
Wire Wire Line
	7200 5800 7200 550 
Connection ~ 7200 550 
Wire Wire Line
	7300 5300 7300 5800
Wire Wire Line
	7400 5200 7400 5800
Wire Wire Line
	7750 5000 7750 5800
Wire Wire Line
	7850 4900 7850 5800
Wire Wire Line
	4700 5000 7750 5000
Wire Wire Line
	4800 4900 7850 4900
Wire Wire Line
	7650 5800 7650 650 
Connection ~ 7650 650 
Wire Wire Line
	8050 5800 8050 550 
Connection ~ 8050 550 
Wire Wire Line
	7300 5300 6900 5300
Connection ~ 6900 5300
Connection ~ 7000 5200
Wire Wire Line
	7750 5300 8150 5300
Wire Wire Line
	8150 5300 8150 5800
Connection ~ 7750 5300
Wire Wire Line
	7850 5200 8250 5200
Wire Wire Line
	8250 5200 8250 5800
Connection ~ 7850 5200
Wire Wire Line
	10450 5500 10850 5500
Connection ~ 10850 5500
Wire Wire Line
	10950 5450 10550 5450
Wire Wire Line
	10950 3500 10950 5800
Connection ~ 10950 5450
Connection ~ 6600 6150
Wire Wire Line
	3800 5500 4750 5500
Wire Wire Line
	10050 5200 9650 5200
Connection ~ 9650 5200
Wire Wire Line
	9550 5350 9950 5350
Connection ~ 9550 5350
Wire Wire Line
	1200 7550 6750 7550
Wire Wire Line
	4650 7550 4650 7200
Wire Wire Line
	5600 7550 5600 7200
Connection ~ 4650 7550
Wire Wire Line
	2350 6700 2350 6950
Connection ~ 2350 7550
Wire Wire Line
	6050 7550 6050 6700
Connection ~ 6050 7550
Wire Wire Line
	6050 6600 5900 6600
Wire Wire Line
	5900 6600 5900 6950
$Comp
L CONN_01X05 J9
U 1 1 59A26229
P 6250 6500
F 0 "J9" H 6250 6800 50  0000 C CNN
F 1 "Cortex-Power-Out" V 6350 6500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 6250 6500 50  0001 C CNN
F 3 "" H 6250 6500 50  0001 C CNN
	1    6250 6500
	1    0    0    -1  
$EndComp
Text Label 6050 6400 0    39   ~ 0
Vout+10V
Text Label 6050 6300 0    39   ~ 0
Vout+14V
Connection ~ 2200 6400
$Comp
L CONN_01X05 J8
U 1 1 59A271FE
P 1300 5750
F 0 "J8" H 1300 6050 50  0000 C CNN
F 1 "Cortex-Power-In" V 1400 5750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1300 5750 50  0001 C CNN
F 3 "" H 1300 5750 50  0001 C CNN
	1    1300 5750
	1    0    0    -1  
$EndComp
Text Label 1300 6150 0    39   ~ 0
GND
Wire Wire Line
	5600 1650 1050 1650
Wire Wire Line
	1050 1650 1050 5850
Wire Wire Line
	1050 5850 1100 5850
Text Label 1100 5850 0    39   ~ 0
Relay-Out
Text Label 1100 5750 0    39   ~ 0
VIn+5V
Text Label 1100 5650 0    39   ~ 0
VIn+10V
Text Label 1100 5550 0    39   ~ 0
VIn+14V
Wire Wire Line
	1100 5550 850  5550
Wire Wire Line
	850  5550 850  550 
Wire Wire Line
	900  650  900  5650
Wire Wire Line
	900  5650 1100 5650
Wire Wire Line
	1100 5750 950  5750
Wire Wire Line
	950  5750 950  850 
Text Notes 6050 6600 0    39   ~ 0
Relay-In\n
Text Notes 5300 2150 1    39   ~ 0
GND\n
Text Label 5300 2150 1    39   ~ 0
GND
Connection ~ 6500 7550
Text Label 6050 6500 0    39   ~ 0
Vout+5V
Wire Wire Line
	4000 6400 4000 6700
Connection ~ 4300 6400
Connection ~ 4000 6400
Connection ~ 5600 7550
$Comp
L CONN_01X05 P1
U 1 1 59A2AEF8
P 1600 7350
F 0 "P1" H 1600 7650 50  0000 C CNN
F 1 "Battery" V 1700 7350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1600 7350 50  0001 C CNN
F 3 "" H 1600 7350 50  0001 C CNN
	1    1600 7350
	-1   0    0    1   
$EndComp
Connection ~ 1800 7550
Wire Wire Line
	1200 7450 1800 7450
Wire Wire Line
	1800 7350 1200 7350
Wire Wire Line
	1200 7250 1800 7250
Wire Wire Line
	2200 7250 2600 7250
Wire Wire Line
	2200 6400 2200 7250
Wire Wire Line
	900  6750 1700 6750
Wire Wire Line
	2000 6750 2100 6750
Wire Wire Line
	2100 6500 2100 7550
Connection ~ 2100 7550
Wire Wire Line
	3200 7100 3200 6700
Wire Wire Line
	3200 6700 2350 6700
Wire Wire Line
	5900 7250 5900 7350
Wire Wire Line
	5900 7350 6200 7350
Wire Wire Line
	4200 7100 4650 7100
Wire Wire Line
	4650 7100 4650 6300
Wire Wire Line
	4650 6300 6050 6300
Wire Wire Line
	1500 6500 2100 6500
Connection ~ 2100 6750
Wire Wire Line
	10850 5500 10850 5250
Connection ~ 10850 5250
Wire Wire Line
	10950 5250 10950 5450
Connection ~ 10950 5250
Text Label 1200 7550 0    39   ~ 0
Batt-
Text Label 1200 7450 0    39   ~ 0
Batt1
Text Label 1200 7350 0    39   ~ 0
Batt2
Text Label 1200 7250 0    39   ~ 0
Batt3
Text Label 1200 7150 0    39   ~ 0
Batt+
Text Label 900  6950 0    39   ~ 0
SW1/SW2
Wire Wire Line
	1500 6400 4500 6400
Text Label 5350 650  0    39   ~ 0
+10V
Text Label 5350 550  0    39   ~ 0
+14V
Wire Wire Line
	1100 5950 950  5950
Wire Wire Line
	950  5950 950  6150
$Comp
L I2C_LevelShifter U1
U 1 1 59A7DC3F
P 5750 5550
F 0 "U1" H 4950 5800 50  0000 C CNN
F 1 "I2C_LevelShifter" H 5350 5150 50  0000 C CNN
F 2 "Cortex:I2C_LevelShifter" H 5750 5550 50  0001 C CIN
F 3 "" H 4950 5900 50  0001 C CNN
	1    5750 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 5800 10650 5700
Connection ~ 10650 5700
Wire Wire Line
	2900 1250 2900 550 
Connection ~ 2900 550 
Wire Wire Line
	6600 5700 6600 6150
Wire Wire Line
	6700 5700 6700 5800
$Comp
L CONN_01X05 J4
U 1 1 59A9B653
P 1000 7350
F 0 "J4" H 1000 7650 50  0000 C CNN
F 1 "Bodysocket" V 1100 7350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1000 7350 50  0001 C CNN
F 3 "" H 1000 7350 50  0001 C CNN
	1    1000 7350
	-1   0    0    1   
$EndComp
Text Label 900  6850 0    39   ~ 0
SW1/VIN/LEDAnode
$Comp
L R R3
U 1 1 59BD443A
P 2500 1400
F 0 "R3" V 2580 1400 50  0000 C CNN
F 1 "150K" V 2500 1400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 1400 50  0001 C CNN
F 3 "" H 2500 1400 50  0001 C CNN
	1    2500 1400
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59BD448D
P 2500 2000
F 0 "R6" V 2580 2000 50  0000 C CNN
F 1 "10K" V 2500 2000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 2000 50  0001 C CNN
F 3 "" H 2500 2000 50  0001 C CNN
	1    2500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 650  2500 1250
Connection ~ 2500 650 
Wire Wire Line
	2500 1550 2500 1850
Wire Wire Line
	2500 2150 2500 6150
Connection ~ 2500 6150
Connection ~ 2500 1750
NoConn ~ 5500 2100
NoConn ~ 5500 2150
Wire Wire Line
	4200 1750 4200 2150
Wire Wire Line
	4300 1700 4300 2150
NoConn ~ 5900 2150
NoConn ~ 6000 2150
Wire Wire Line
	2700 3850 2700 650 
Connection ~ 2700 650 
$Comp
L CP C2
U 1 1 59BDA7CA
P 2000 4000
F 0 "C2" H 2025 4100 50  0000 L CNN
F 1 "220uF" H 2025 3900 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P5.00mm" H 2038 3850 50  0001 C CNN
F 3 "" H 2000 4000 50  0001 C CNN
	1    2000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4150 2000 6150
Connection ~ 2000 6150
Wire Wire Line
	2000 3850 2000 850 
Connection ~ 2000 850 
Text Label 900  7050 0    39   ~ 0
SW2/Batt
Wire Wire Line
	900  7050 1800 7050
Wire Wire Line
	1200 6950 1200 7150
Wire Wire Line
	1800 7050 1800 7150
Wire Wire Line
	4300 6700 4300 6800
Wire Wire Line
	4500 6400 4500 6500
Wire Wire Line
	4500 6500 6050 6500
Wire Wire Line
	900  6950 1200 6950
Wire Wire Line
	5600 7100 5600 6400
Wire Wire Line
	5600 6400 6050 6400
Wire Wire Line
	2350 7050 2350 7550
Wire Wire Line
	2350 7150 2450 7150
Wire Wire Line
	2350 7050 2450 7050
Connection ~ 2350 7150
Connection ~ 2350 6850
$Comp
L D24VD5F P3
U 1 1 593C62E9
P 2650 7100
F 0 "P3" H 2850 7325 50  0000 C CNN
F 1 "D24V50F5" H 2825 6850 50  0000 C CNN
F 2 "Cortex:Pololu_D24V50F5" H 2650 7100 50  0001 C CNN
F 3 "" H 2650 7100 50  0000 C CNN
	1    2650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6850 900  6850
$Comp
L CONN_01X04 J5
U 1 1 59BFB02E
P 700 6900
F 0 "J5" H 700 7150 50  0000 C CNN
F 1 "LED/Switch" V 800 6900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 700 6900 50  0001 C CNN
F 3 "" H 700 6900 50  0001 C CNN
	1    700  6900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 6950 2450 6950
Wire Wire Line
	3450 5350 3150 5350
Wire Wire Line
	3150 5250 3350 5250
Wire Wire Line
	3350 5250 3350 6150
Connection ~ 3350 6150
$Comp
L CONN_01X06 J7
U 1 1 59C7C865
P 6550 5550
F 0 "J7" H 6550 5900 50  0000 C CNN
F 1 "CORTEX CLI" V 6650 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 6550 5550 50  0001 C CNN
F 3 "" H 6550 5550 50  0001 C CNN
	1    6550 5550
	1    0    0    -1  
$EndComp
Text Label 6350 5400 0    39   ~ 0
RX5
Wire Wire Line
	9650 4750 4100 4750
Wire Wire Line
	4100 4750 4100 4600
Wire Wire Line
	4000 4600 4000 4850
Wire Wire Line
	4000 4850 9550 4850
Wire Wire Line
	9550 4850 9550 5800
Wire Wire Line
	9650 4750 9650 5800
Wire Wire Line
	2900 1700 4300 1700
Wire Wire Line
	4200 1750 2500 1750
Wire Wire Line
	6300 5400 6350 5400
Wire Wire Line
	6300 2050 6300 5400
Wire Wire Line
	6300 2050 6100 2050
Wire Wire Line
	6200 2150 6350 2150
Wire Wire Line
	6350 2150 6350 5300
Text Label 6350 5300 0    39   ~ 0
TX5
$Comp
L CONN_01X04 J6
U 1 1 59C8919D
P 7250 6000
F 0 "J6" H 7250 6250 50  0000 C CNN
F 1 "LEG1-HI" V 7350 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7250 6000 50  0001 C CNN
F 3 "" H 7250 6000 50  0001 C CNN
	1    7250 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J1
U 1 1 59C8923E
P 6850 6000
F 0 "J1" H 6850 6250 50  0000 C CNN
F 1 "LEG1-LO" V 6950 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6850 6000 50  0001 C CNN
F 3 "" H 6850 6000 50  0001 C CNN
	1    6850 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J12
U 1 1 59C8940B
P 8100 6000
F 0 "J12" H 8100 6250 50  0000 C CNN
F 1 "LEG2-HI" V 8200 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 8100 6000 50  0001 C CNN
F 3 "" H 8100 6000 50  0001 C CNN
	1    8100 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J10
U 1 1 59C89411
P 7700 6000
F 0 "J10" H 7700 6250 50  0000 C CNN
F 1 "LEG2-LO" V 7800 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7700 6000 50  0001 C CNN
F 3 "" H 7700 6000 50  0001 C CNN
	1    7700 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J14
U 1 1 59C898DB
P 9000 6000
F 0 "J14" H 9000 6250 50  0000 C CNN
F 1 "LEG3-HI" V 9100 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9000 6000 50  0001 C CNN
F 3 "" H 9000 6000 50  0001 C CNN
	1    9000 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J13
U 1 1 59C898E1
P 8600 6000
F 0 "J13" H 8600 6250 50  0000 C CNN
F 1 "LEG3-LO" V 8700 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 8600 6000 50  0001 C CNN
F 3 "" H 8600 6000 50  0001 C CNN
	1    8600 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J16
U 1 1 59C898E7
P 9900 6000
F 0 "J16" H 9900 6250 50  0000 C CNN
F 1 "LEG4-HI" V 10000 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9900 6000 50  0001 C CNN
F 3 "" H 9900 6000 50  0001 C CNN
	1    9900 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J15
U 1 1 59C898ED
P 9500 6000
F 0 "J15" H 9500 6250 50  0000 C CNN
F 1 "LEG4-LO" V 9600 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9500 6000 50  0001 C CNN
F 3 "" H 9500 6000 50  0001 C CNN
	1    9500 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J18
U 1 1 59C8996F
P 10800 6000
F 0 "J18" H 10800 6250 50  0000 C CNN
F 1 "LEG5-HI" V 10900 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 10800 6000 50  0001 C CNN
F 3 "" H 10800 6000 50  0001 C CNN
	1    10800 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J17
U 1 1 59C89975
P 10400 6000
F 0 "J17" H 10400 6250 50  0000 C CNN
F 1 "LEG5-LO" V 10500 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 10400 6000 50  0001 C CNN
F 3 "" H 10400 6000 50  0001 C CNN
	1    10400 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X05 P2
U 1 1 59CFB62A
P 2950 5150
F 0 "P2" H 2950 5450 50  0000 C CNN
F 1 "BNO055" V 3050 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 2950 5150 50  0001 C CNN
F 3 "" H 2950 5150 50  0001 C CNN
	1    2950 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 5200 6900 5800
Wire Wire Line
	7400 5200 7000 5200
Wire Wire Line
	4900 5200 6900 5200
Wire Wire Line
	5950 5800 6300 5800
Wire Wire Line
	6300 5800 6300 5500
Wire Wire Line
	6300 5500 6350 5500
Wire Wire Line
	5950 5700 6200 5700
Wire Wire Line
	6200 5700 6200 5600
Wire Wire Line
	6200 5600 6350 5600
Wire Wire Line
	5950 5600 6150 5600
Wire Wire Line
	6150 5600 6150 5750
Wire Wire Line
	6150 5750 6250 5750
Wire Wire Line
	6250 5750 6250 5700
Wire Wire Line
	6250 5700 6350 5700
Wire Wire Line
	5950 5500 6100 5500
Wire Wire Line
	6100 5500 6100 5850
Wire Wire Line
	6100 5850 6350 5850
Wire Wire Line
	6350 5850 6350 5800
$EndSCHEMATC
