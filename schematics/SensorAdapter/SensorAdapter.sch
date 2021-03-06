EESchema Schematic File Version 2
LIBS:SensorAdapter-rescue
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
LIBS:SensorAdapter-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pentapod"
Date "23. May 2016"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Jochen Alt"
Comment4 "Sensor Adapter Board"
$EndDescr
NoConn ~ 30200 -14200
NoConn ~ 30200 -14200
$Comp
L CP C7
U 1 1 577C4445
P 3350 5850
F 0 "C7" H 3375 5950 50  0000 L CNN
F 1 "47uF" H 3375 5750 50  0000 L CNN
F 2 "Discret:C1V8" H 3388 5700 50  0001 C CNN
F 3 "" H 3350 5850 50  0000 C CNN
	1    3350 5850
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 576C5164
P 2200 5900
F 0 "C1" H 2225 6000 50  0000 L CNN
F 1 "47uF" H 2225 5800 50  0000 L CNN
F 2 "Discret:C1V8" H 2238 5750 30  0001 C CNN
F 3 "" H 2200 5900 60  0000 C CNN
	1    2200 5900
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR01
U 1 1 576CFF3F
P 1950 6200
F 0 "#PWR01" H 1950 6000 50  0001 C CNN
F 1 "GNDPWR" H 1950 6070 50  0000 C CNN
F 2 "" H 1950 6150 60  0000 C CNN
F 3 "" H 1950 6150 60  0000 C CNN
	1    1950 6200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 576CF103
P 1600 5550
F 0 "#FLG02" H 1600 5645 50  0001 C CNN
F 1 "PWR_FLAG" H 1600 5730 50  0000 C CNN
F 2 "" H 1600 5550 60  0000 C CNN
F 3 "" H 1600 5550 60  0000 C CNN
	1    1600 5550
	1    0    0    -1  
$EndComp
Text Label 3350 5550 0    39   ~ 0
+5V
NoConn ~ 30200 -14200
NoConn ~ 30200 -14200
$Comp
L 7805 U1
U 1 1 576C4E44
P 2950 5600
F 0 "U1" H 3100 5404 60  0000 C CNN
F 1 "7805" H 2950 5800 60  0000 C CNN
F 2 "Power_Integrations:TO-220" H 2950 5600 60  0001 C CNN
F 3 "" H 2950 5600 60  0000 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 576D01C9
P 1950 6200
F 0 "#FLG03" H 1950 6295 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 6380 50  0000 C CNN
F 2 "" H 1950 6200 60  0000 C CNN
F 3 "" H 1950 6200 60  0000 C CNN
	1    1950 6200
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59295606
P 3700 5850
F 0 "C3" H 3725 5950 50  0000 L CNN
F 1 "100nF" H 3725 5750 50  0000 L CNN
F 2 "Discret:R1" H 3738 5700 30  0001 C CNN
F 3 "" H 3700 5850 60  0000 C CNN
	1    3700 5850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 59295693
P 1200 6050
F 0 "P1" H 1200 6300 50  0000 C CNN
F 1 "ServoIN" V 1300 6050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 1200 6050 50  0001 C CNN
F 3 "" H 1200 6050 50  0000 C CNN
	1    1200 6050
	-1   0    0    1   
$EndComp
Text Label 1400 5900 0    39   ~ 0
RX
Text Label 1350 6000 0    39   ~ 0
TX
Text Label 1400 6100 0    39   ~ 0
VDD
Text Label 1400 6200 0    39   ~ 0
GND
$Comp
L ATMEGA328-P IC1
U 1 1 59295829
P 5050 3550
F 0 "IC1" H 4300 4800 50  0000 L BNN
F 1 "ATMEGA328-P" H 5450 2150 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 5050 3550 50  0000 C CIN
F 3 "" H 5050 3550 50  0000 C CNN
	1    5050 3550
	1    0    0    -1  
$EndComp
$Comp
L R 1K1
U 1 1 59295D04
P 8400 3250
F 0 "1K1" V 8480 3250 50  0000 C CNN
F 1 "1K" V 8400 3250 50  0000 C CNN
F 2 "Discret:R4" V 8330 3250 50  0001 C CNN
F 3 "" H 8400 3250 50  0000 C CNN
	1    8400 3250
	1    0    0    -1  
$EndComp
NoConn ~ 4150 3050
$Comp
L LED-RESCUE-SensorAdapter D1
U 1 1 592960AC
P 7950 2150
F 0 "D1" H 7950 2250 50  0000 C CNN
F 1 "LED" H 7950 2050 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 7950 2150 50  0001 C CNN
F 3 "" H 7950 2150 50  0000 C CNN
	1    7950 2150
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 59296242
P 7950 2950
F 0 "R1" V 8030 2950 50  0000 C CNN
F 1 "1K" V 7950 2950 50  0000 C CNN
F 2 "Discret:R4" V 7880 2950 50  0001 C CNN
F 3 "" H 7950 2950 50  0000 C CNN
	1    7950 2950
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL_OSSCI X1
U 1 1 59294A20
P 6950 2150
F 0 "X1" H 7250 2350 60  0000 C CNN
F 1 "CRYSTAL_OSSCI" H 6950 2050 60  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 6950 2150 60  0001 C CNN
F 3 "" H 6950 2150 60  0000 C CNN
	1    6950 2150
	1    0    0    -1  
$EndComp
NoConn ~ 6050 4650
NoConn ~ 6050 4550
NoConn ~ 6050 4450
NoConn ~ 6050 4350
NoConn ~ 6050 4250
NoConn ~ 6050 3150
NoConn ~ 6050 3400
NoConn ~ 6050 3500
NoConn ~ 6050 2650
NoConn ~ 6050 2550
Text Label 6050 2750 0    39   ~ 0
MOSI
Text Label 6050 2850 0    39   ~ 0
MISO
Text Label 6050 2950 0    39   ~ 0
SCK
$Comp
L CONN_01X04 P2
U 1 1 5929710D
P 9250 3650
F 0 "P2" H 9250 3900 50  0000 C CNN
F 1 "VL6180X" V 9350 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 9250 3650 50  0001 C CNN
F 3 "" H 9250 3650 50  0000 C CNN
	1    9250 3650
	1    0    0    -1  
$EndComp
Text Label 6050 3800 0    39   ~ 0
SCL
Text Label 6050 3700 0    39   ~ 0
SDA
$Comp
L CONN_01X03 P3
U 1 1 59297DA8
P 6650 2850
F 0 "P3" H 6650 3050 50  0000 C CNN
F 1 "ISP" V 6750 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6650 2850 50  0001 C CNN
F 3 "" H 6650 2850 50  0000 C CNN
	1    6650 2850
	1    0    0    -1  
$EndComp
NoConn ~ 6050 3600
$Comp
L CONN_01X01 P4
U 1 1 5929DF91
P 8600 3900
F 0 "P4" H 8600 4000 50  0000 C CNN
F 1 "RST" V 8700 3900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8600 3900 50  0001 C CNN
F 3 "" H 8600 3900 50  0000 C CNN
	1    8600 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 5931E64C
P 8400 4350
F 0 "P5" H 8400 4500 50  0000 C CNN
F 1 "VDD-GND" V 8500 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8400 4350 50  0001 C CNN
F 3 "" H 8400 4350 50  0000 C CNN
	1    8400 4350
	1    0    0    -1  
$EndComp
NoConn ~ 6050 2450
NoConn ~ 6050 4750
$Comp
L C C2
U 1 1 576C5127
P 2550 5900
F 0 "C2" H 2575 6000 50  0000 L CNN
F 1 "100nF" H 2575 5800 50  0000 L CNN
F 2 "Discret:R1" H 2588 5750 30  0001 C CNN
F 3 "" H 2550 5900 60  0000 C CNN
	1    2550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6100 1600 5550
Connection ~ 2200 6200
Connection ~ 2550 6200
Connection ~ 2950 6200
Connection ~ 1950 6200
Connection ~ 1600 5550
Connection ~ 2200 5550
Wire Wire Line
	2950 6200 2950 5850
Wire Wire Line
	2550 6200 2550 6050
Wire Wire Line
	2200 6200 2200 6050
Wire Wire Line
	1600 5550 2200 5550
Wire Wire Line
	2200 5550 2550 5550
Wire Wire Line
	2200 5750 2200 5550
Connection ~ 3350 5550
Wire Wire Line
	3350 6200 3350 6000
Connection ~ 3350 6200
Wire Wire Line
	29500 -13950 23450 -13950
Wire Wire Line
	29500 -12950 29500 -13950
Wire Wire Line
	3350 5550 3350 5700
Wire Wire Line
	3700 5550 3350 5550
Wire Wire Line
	3700 1300 3700 5550
Wire Wire Line
	3700 5550 3700 5700
Wire Wire Line
	3700 6000 3700 6200
Connection ~ 3700 6200
Wire Wire Line
	4150 4650 4150 4750
Wire Wire Line
	4150 4750 4150 6200
Connection ~ 3700 5550
Wire Wire Line
	3700 1300 3950 1300
Wire Wire Line
	3950 1300 4150 1300
Wire Wire Line
	4150 1300 6950 1300
Wire Wire Line
	6950 1300 7950 1300
Wire Wire Line
	7950 1300 8200 1300
Wire Wire Line
	8200 1300 8400 1300
Wire Wire Line
	8400 1300 8700 1300
Wire Wire Line
	8700 1300 9850 1300
Wire Wire Line
	7950 1300 8200 1300
Wire Wire Line
	8200 1300 8400 1300
Wire Wire Line
	6050 3900 8400 3900
Wire Wire Line
	4150 2450 4150 1300
Connection ~ 4150 1300
Wire Wire Line
	4150 2750 3950 2750
Wire Wire Line
	3950 2750 3950 1300
Connection ~ 3950 1300
Wire Wire Line
	7950 1300 7950 1950
Connection ~ 7950 1300
Wire Wire Line
	6050 4050 6600 4050
Wire Wire Line
	6600 4050 6600 5150
Wire Wire Line
	6600 5150 1400 5150
Wire Wire Line
	1400 5150 1400 5900
Wire Wire Line
	1400 6000 1500 6000
Wire Wire Line
	1500 6000 1500 5250
Wire Wire Line
	1500 5250 6750 5250
Wire Wire Line
	6750 5250 6750 4150
Wire Wire Line
	6750 4150 6050 4150
Wire Wire Line
	8400 3900 8400 3400
Wire Wire Line
	8400 1300 8400 3100
Connection ~ 8400 1300
Wire Wire Line
	6950 1550 6950 1300
Connection ~ 6950 1300
Wire Wire Line
	6950 6200 6950 3600
Wire Wire Line
	6950 3600 6950 2650
Connection ~ 4150 6200
Wire Wire Line
	7550 2150 7550 3050
Wire Wire Line
	7550 3050 6050 3050
Wire Wire Line
	6050 2850 6450 2850
Wire Wire Line
	6050 2950 6450 2950
Wire Wire Line
	8850 6200 8850 3500
Connection ~ 6950 6200
Wire Wire Line
	6050 3800 9050 3800
Wire Wire Line
	6050 3700 9050 3700
Wire Wire Line
	6050 2750 6450 2750
Wire Wire Line
	7950 2350 7950 2800
Wire Wire Line
	6050 3300 7950 3300
Wire Wire Line
	7950 3300 7950 3100
Connection ~ 4150 4750
Wire Wire Line
	8850 3500 9050 3500
Wire Wire Line
	8200 4400 8200 6200
Connection ~ 8200 6200
Wire Wire Line
	8200 4300 8200 1300
Connection ~ 8200 1300
Connection ~ 6950 3600
Wire Wire Line
	9050 3600 8700 3600
Wire Wire Line
	8700 3600 8700 1300
Connection ~ 8700 1300
Wire Wire Line
	2550 5550 2550 5750
Wire Wire Line
	1600 6100 1400 6100
Connection ~ 1400 6200
Wire Wire Line
	1400 6200 1950 6200
Wire Wire Line
	1950 6200 2200 6200
Wire Wire Line
	2200 6200 2550 6200
Wire Wire Line
	2550 6200 2950 6200
Wire Wire Line
	2950 6200 3350 6200
Wire Wire Line
	3350 6200 3700 6200
Wire Wire Line
	3700 6200 4150 6200
Wire Wire Line
	4150 6200 6950 6200
Wire Wire Line
	6950 6200 8200 6200
Wire Wire Line
	8200 6200 8850 6200
$EndSCHEMATC
