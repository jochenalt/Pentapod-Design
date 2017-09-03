EESchema Schematic File Version 2
LIBS:CortexBoard-rescue
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
Title "Pentapod Cortex"
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
L SW_PUSH SW2
U 1 1 50E56802
P 8200 3100
F 0 "SW2" H 8350 3210 50  0000 C CNN
F 1 "reset" H 8200 3020 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 8200 3100 60  0001 C CNN
F 3 "" H 8200 3100 60  0001 C CNN
	1    8200 3100
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 50E7F8BE
P 2350 4000
F 0 "C16" H 2400 4100 50  0000 L CNN
F 1 "100nF" H 2400 3900 50  0000 L CNN
F 2 "Discret:C1V8" H 2350 4000 60  0001 C CNN
F 3 "" H 2350 4000 60  0001 C CNN
	1    2350 4000
	1    0    0    -1  
$EndComp
NoConn ~ 30200 -14200
NoConn ~ 30200 -14200
Text Label 8150 6150 0    39   ~ 0
GND
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
NoConn ~ 5900 2150
$Comp
L CONN_01X01 P6
U 1 1 59358754
P 7650 3300
F 0 "P6" H 7650 3400 50  0000 C CNN
F 1 "Teensy RST(49)" V 7750 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7650 3300 50  0001 C CNN
F 3 "" H 7650 3300 50  0000 C CNN
	1    7650 3300
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 P4
U 1 1 59358E5D
P 10000 5800
F 0 "P4" H 10000 6050 50  0000 C CNN
F 1 "LEG 5" V 10100 5800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 10000 5800 50  0001 C CNN
F 3 "" H 10000 5800 50  0000 C CNN
	1    10000 5800
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X04 P5
U 1 1 5935A38C
P 7550 5800
F 0 "P5" H 7550 6050 50  0000 C CNN
F 1 "Leg 3" V 7650 5800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7550 5800 50  0001 C CNN
F 3 "" H 7550 5800 50  0000 C CNN
	1    7550 5800
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X04 P7
U 1 1 5935A730
P 8150 5800
F 0 "P7" H 8150 6050 50  0000 C CNN
F 1 "Leg 2" V 8250 5800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 8150 5800 50  0001 C CNN
F 3 "" H 8150 5800 50  0000 C CNN
	1    8150 5800
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X04 P8
U 1 1 5935A77E
P 8750 5800
F 0 "P8" H 8750 6050 50  0000 C CNN
F 1 "Leg 4" V 8850 5800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 8750 5800 50  0001 C CNN
F 3 "" H 8750 5800 50  0000 C CNN
	1    8750 5800
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X04 P9
U 1 1 5935A7CB
P 9350 5800
F 0 "P9" H 9350 6050 50  0000 C CNN
F 1 "Leg 1" V 9450 5800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9350 5800 50  0001 C CNN
F 3 "" H 9350 5800 50  0000 C CNN
	1    9350 5800
	0    -1   1    0   
$EndComp
Text Label 7600 5600 0    39   ~ 0
TX2
Text Label 7700 5600 0    39   ~ 0
RX2
Text Label 8200 5600 0    39   ~ 0
TX3
Text Label 8300 5600 0    39   ~ 0
RX3
Text Label 8800 5600 0    39   ~ 0
TX4
Text Label 8900 5600 0    39   ~ 0
RX4
Text Label 9400 5600 0    39   ~ 0
TX5
Text Label 9500 5600 0    39   ~ 0
RX5
NoConn ~ 4100 2150
NoConn ~ 4300 2150
NoConn ~ 5300 2150
NoConn ~ 6000 2150
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
NoConn ~ 5700 4600
NoConn ~ 5900 4600
NoConn ~ 6000 4600
Text Label 10050 5600 0    39   ~ 0
TX6
Text Label 10150 5600 0    39   ~ 0
RX6
$Comp
L CONN_01X03 J1
U 1 1 593BC203
P 5150 5800
F 0 "J1" H 5150 6000 50  0000 C CNN
F 1 "Cortex Serial CLI" V 5250 5800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5150 5800 50  0001 C CNN
F 3 "" H 5150 5800 50  0001 C CNN
	1    5150 5800
	1    0    0    1   
$EndComp
NoConn ~ 4500 4600
Text Label 4950 5700 0    39   ~ 0
TX
Text Label 4950 5800 0    39   ~ 0
RX
NoConn ~ 4600 4600
NoConn ~ 4300 4600
NoConn ~ 4400 4600
NoConn ~ 4000 2150
$Comp
L CONN_01X02 J2
U 1 1 593E3DCB
P 10100 5150
F 0 "J2" H 10100 5300 50  0000 C CNN
F 1 "UART6 Connector" V 10200 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10100 5150 50  0001 C CNN
F 3 "" H 10100 5150 50  0001 C CNN
	1    10100 5150
	0    -1   -1   0   
$EndComp
NoConn ~ 4200 4600
$Comp
L CP C1
U 1 1 593EB317
P 2700 4000
F 0 "C1" H 2725 4100 50  0000 L CNN
F 1 "100uF" H 2725 3900 50  0000 L CNN
F 2 "Discret:C1.5V8V" H 2738 3850 50  0001 C CNN
F 3 "" H 2700 4000 50  0001 C CNN
	1    2700 4000
	-1   0    0    1   
$EndComp
Text Label 3150 5050 0    39   ~ 0
SCL
Text Label 3150 5150 0    39   ~ 0
SDA
Text Label 3150 5250 0    39   ~ 0
5V+
Text Label 3150 5350 0    39   ~ 0
GND
$Comp
L CONN_01X05 P2
U 1 1 59872479
P 2950 5150
F 0 "P2" H 2950 5450 50  0000 C CNN
F 1 "BNO055" V 3050 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 2950 5150 50  0001 C CNN
F 3 "" H 2950 5150 50  0001 C CNN
	1    2950 5150
	-1   0    0    1   
$EndComp
NoConn ~ 5500 2150
Connection ~ 2350 850 
Wire Wire Line
	2350 850  2350 3850
Connection ~ 2350 6150
Wire Wire Line
	29500 -13950 23450 -13950
Wire Wire Line
	29500 -12950 29500 -13950
Connection ~ 3900 6150
Wire Wire Line
	3900 4600 3900 6150
Wire Wire Line
	8500 3100 10350 3100
Wire Wire Line
	10350 6150 10350 3100
Connection ~ 10350 6150
Wire Wire Line
	750  550  1800 550 
Wire Wire Line
	1800 550  6650 550 
Wire Wire Line
	6650 550  9300 550 
Wire Wire Line
	9300 550  10050 550 
Wire Wire Line
	7500 5500 8100 5500
Wire Wire Line
	8100 5500 8700 5500
Wire Wire Line
	8700 5500 9300 5500
Wire Wire Line
	9300 5500 9950 5500
Wire Wire Line
	7400 5600 7250 5600
Wire Wire Line
	7250 5600 7250 6150
Connection ~ 7250 6150
Wire Wire Line
	7850 5600 8000 5600
Wire Wire Line
	7850 5600 7850 6150
Connection ~ 7850 6150
Wire Wire Line
	8600 5600 8450 5600
Wire Wire Line
	8450 5600 8450 6150
Connection ~ 8450 6150
Wire Wire Line
	9200 5600 9050 5600
Wire Wire Line
	9050 5600 9050 6150
Connection ~ 9050 6150
Wire Wire Line
	7500 5500 7500 5600
Wire Wire Line
	8100 5500 8100 5600
Wire Wire Line
	8700 5500 8700 5600
Connection ~ 8100 5500
Connection ~ 8700 5500
Wire Wire Line
	4900 4600 4900 5200
Wire Wire Line
	7700 5100 7700 5600
Wire Wire Line
	6100 4600 6100 4800
Wire Wire Line
	6200 4600 6200 4700
Wire Wire Line
	6200 4700 8900 4700
Wire Wire Line
	6100 2050 9400 2050
Wire Wire Line
	9400 2050 9400 5600
Wire Wire Line
	9500 5600 9500 1950
Wire Wire Line
	3900 850  3900 2150
Connection ~ 3900 850 
Wire Wire Line
	5000 4600 5000 5100
Wire Wire Line
	5000 5100 7700 5100
Wire Wire Line
	8200 5000 8200 5600
Wire Wire Line
	4700 4600 4700 5000
Wire Wire Line
	8300 4900 8300 5600
Wire Wire Line
	2900 2150 2900 6150
Connection ~ 2900 6150
Wire Wire Line
	2900 1550 2900 1700
Wire Wire Line
	2900 1700 2900 1850
Wire Wire Line
	2900 1700 4200 1700
Wire Wire Line
	4200 1700 4200 2150
Connection ~ 2900 1700
Wire Wire Line
	4000 4600 4000 5800
Wire Wire Line
	4800 4600 4800 4900
Wire Wire Line
	4800 4900 8300 4900
Wire Wire Line
	4700 5000 8200 5000
Wire Wire Line
	7600 5600 7600 5200
Wire Wire Line
	7600 5200 4900 5200
Wire Wire Line
	8800 4800 8800 5600
Wire Wire Line
	8900 4700 8900 5600
Wire Wire Line
	6100 4800 8800 4800
Wire Wire Line
	6100 2050 6100 2150
Wire Wire Line
	6200 2150 6200 1950
Wire Wire Line
	6200 1950 9500 1950
Connection ~ 9300 5500
Wire Wire Line
	9950 5500 9950 5600
Wire Wire Line
	9850 5600 9750 5600
Wire Wire Line
	9750 5600 9750 6150
Connection ~ 9750 6150
Wire Wire Line
	10050 3400 6450 3400
Wire Wire Line
	6450 3500 10150 3500
Wire Wire Line
	4950 5900 4950 6150
Connection ~ 4950 6150
Wire Wire Line
	4000 5800 4950 5800
Wire Wire Line
	4100 4600 4100 5700
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
	10050 3400 10050 5350
Wire Wire Line
	10050 5350 10050 5600
Wire Wire Line
	10150 3500 10150 5350
Wire Wire Line
	10150 5350 10150 5600
Connection ~ 10050 5350
Connection ~ 10150 5350
Wire Wire Line
	2700 850  2700 3850
Wire Wire Line
	2700 4150 2700 6150
Connection ~ 2700 6150
Wire Wire Line
	3150 5350 3150 6150
Connection ~ 3150 6150
Wire Wire Line
	9300 550  9300 5500
Wire Wire Line
	9300 5500 9300 5600
Connection ~ 9300 550 
Wire Wire Line
	700  6150 900  6150
Wire Wire Line
	900  6150 1800 6150
Wire Wire Line
	1800 6150 2350 6150
Wire Wire Line
	2350 6150 2700 6150
Wire Wire Line
	2700 6150 2900 6150
Wire Wire Line
	2900 6150 3150 6150
Wire Wire Line
	3150 6150 3900 6150
Wire Wire Line
	3900 6150 4950 6150
Wire Wire Line
	4950 6150 5650 6150
Wire Wire Line
	5650 6150 6450 6150
Wire Wire Line
	6450 6150 7250 6150
Wire Wire Line
	7250 6150 7850 6150
Wire Wire Line
	7850 6150 8450 6150
Wire Wire Line
	8450 6150 9050 6150
Wire Wire Line
	9050 6150 9750 6150
Wire Wire Line
	9750 6150 10350 6150
Connection ~ 6650 550 
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
Text Label 3150 4950 0    39   ~ 0
RST
Wire Wire Line
	3150 5250 3450 5250
Wire Wire Line
	3450 850  3450 5250
Connection ~ 3450 850 
Wire Wire Line
	800  850  2350 850 
Wire Wire Line
	2350 850  2700 850 
Wire Wire Line
	2700 850  3450 850 
Wire Wire Line
	3450 850  3800 850 
Wire Wire Line
	3800 850  3900 850 
Wire Wire Line
	3900 850  10050 850 
Connection ~ 2700 850 
NoConn ~ 5400 2150
NoConn ~ 5100 2150
Wire Wire Line
	4100 5700 4950 5700
$Comp
L CONN_01X04 J5
U 1 1 598E3901
P 5850 5450
F 0 "J5" H 5850 5700 50  0000 C CNN
F 1 "LevelShifter_in" V 5950 5450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 5850 5450 50  0001 C CNN
F 3 "" H 5850 5450 50  0001 C CNN
	1    5850 5450
	1    0    0    1   
$EndComp
Wire Wire Line
	5650 5600 5650 6150
Connection ~ 5650 6150
Text Label 5650 5600 0    39   ~ 0
GND
Wire Wire Line
	3700 2050 5800 2050
Wire Wire Line
	3700 2050 3700 5400
Wire Wire Line
	3700 5400 5650 5400
Wire Wire Line
	3600 1950 5700 1950
Wire Wire Line
	3600 1950 3600 5500
Wire Wire Line
	3600 5500 5650 5500
Wire Wire Line
	5650 5300 3800 5300
Wire Wire Line
	3800 5300 3800 850 
Connection ~ 3800 850 
Text Label 5650 5500 0    39   ~ 0
SDA0
Text Label 5650 5400 0    39   ~ 0
SCL0
Text Label 5650 5300 0    39   ~ 0
5+
$Comp
L CONN_01X04 J7
U 1 1 598E56BD
P 6650 5450
F 0 "J7" H 6650 5700 50  0000 C CNN
F 1 "Cortex I2C CLI" V 6750 5450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6650 5450 50  0001 C CNN
F 3 "" H 6650 5450 50  0001 C CNN
	1    6650 5450
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 J6
U 1 1 598E5953
P 6250 5450
F 0 "J6" H 6250 5700 50  0000 C CNN
F 1 "LevelShifter-Out" V 6350 5450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6250 5450 50  0001 C CNN
F 3 "" H 6250 5450 50  0001 C CNN
	1    6250 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 5300 6850 5300
Wire Wire Line
	6450 5400 6850 5400
Wire Wire Line
	6450 5500 6850 5500
Wire Wire Line
	6450 5600 6850 5600
Wire Wire Line
	6450 5600 6450 6150
Connection ~ 6450 6150
Text Label 6850 5300 0    39   ~ 0
3.3V_ODroid
Text Label 6850 5400 0    39   ~ 0
SCL-ODroid
Text Label 6850 5500 0    39   ~ 0
SDA-ODroid
Text Label 6850 5600 0    39   ~ 0
GND
Wire Wire Line
	5800 2050 5800 2150
Wire Wire Line
	5700 1950 5700 2150
NoConn ~ 6450 3250
Wire Wire Line
	7900 3100 7650 3100
NoConn ~ 4600 2150
NoConn ~ 4700 2150
Wire Wire Line
	2350 4150 2350 6150
$Comp
L CONN_01X05 J3
U 1 1 59AAF739
P 1300 5600
F 0 "J3" H 1300 5900 50  0000 C CNN
F 1 "CONN_01X05" V 1400 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1300 5600 50  0001 C CNN
F 3 "" H 1300 5600 50  0001 C CNN
	1    1300 5600
	1    0    0    -1  
$EndComp
Text Label 1100 5400 0    39   ~ 0
+14V
Text Label 1100 5500 0    39   ~ 0
+10V
Text Label 1100 5600 0    39   ~ 0
+5V
Text Label 1100 5700 0    39   ~ 0
Relay
Text Label 1100 5800 0    39   ~ 0
GND
NoConn ~ 5800 4600
Wire Wire Line
	500  1550 500  4800
Wire Wire Line
	500  4800 500  5700
Wire Wire Line
	500  5700 1100 5700
Connection ~ 900  6150
Wire Wire Line
	1100 5500 750  5500
Wire Wire Line
	750  5500 750  550 
Wire Wire Line
	800  850  800  5600
Wire Wire Line
	800  5600 1100 5600
Wire Wire Line
	2900 1250 2900 1100
Wire Wire Line
	2900 1100 650  1100
Wire Wire Line
	650  1100 650  5400
Wire Wire Line
	650  5400 1100 5400
$Comp
L R R3
U 1 1 59AB6668
P 1800 2900
F 0 "R3" V 1880 2900 50  0000 C CNN
F 1 "3.3K" V 1800 2900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 2900 50  0001 C CNN
F 3 "" H 1800 2900 50  0001 C CNN
	1    1800 2900
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 59AB6719
P 1800 2250
F 0 "D1" H 1800 2350 50  0000 C CNN
F 1 "LED" H 1800 2150 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 1800 2250 50  0001 C CNN
F 3 "" H 1800 2250 50  0001 C CNN
	1    1800 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2100 1800 550 
Connection ~ 1800 550 
Wire Wire Line
	1800 2400 1800 2750
Wire Wire Line
	1800 3050 1800 6150
Connection ~ 1800 6150
Connection ~ 500  4800
NoConn ~ 5600 2150
Wire Wire Line
	5500 4800 5500 4600
Connection ~ 5500 4800
Wire Wire Line
	500  4800 5500 4800
Wire Wire Line
	5500 4800 5600 4800
NoConn ~ 5600 4600
Text Notes 1850 2400 0    39   ~ 0
4mA\n
Text Notes 4000 1650 0    39   ~ 0
Voltage divider to be \nbelow 1.2V at 14V \n(max ADC reference voltage)
Text Notes 6650 3200 0    39   ~ 0
Connect PIN 49 via wire to P6, \nsince PIN 49 is not broken out
Wire Wire Line
	1100 5800 900  5800
Wire Wire Line
	900  5800 900  6150
$EndSCHEMATC
