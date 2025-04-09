EESchema Schematic File Version 4
EELAYER 30 0
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
L micropython:PYBOARD_P56 U1
U 1 1 6015FBDC
P 2650 2740
F 0 "U1" H 2660 4440 50  0000 C CNN
F 1 "PYBOARD_P56" H 2670 4350 50  0000 C CNN
F 2 "MicroPython:Pyboard_L42mm_W35mm_P2.54mm" H 1950 3840 50  0001 C CNN
F 3 "" H 1950 3840 50  0001 C CNN
	1    2650 2740
	1    0    0    -1  
$EndComp
Text Notes 5550 730  0    50   ~ 0
Arduino Board Layout
$Comp
L Device:D_Schottky D1
U 1 1 60164B93
P 1760 5740
F 0 "D1" V 1806 5660 50  0000 R CNN
F 1 "D_Schottky" V 1715 5660 50  0000 R CNN
F 2 "Diode_THT:D_5W_P12.70mm_Horizontal" H 1760 5740 50  0001 C CNN
F 3 "~" H 1760 5740 50  0001 C CNN
	1    1760 5740
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 1390 3150 1260
$Comp
L power:+VDC #PWR09
U 1 1 601792F3
P 5870 1360
F 0 "#PWR09" H 5870 1260 50  0001 C CNN
F 1 "+VDC" H 5840 1620 50  0000 C CNN
F 2 "" H 5870 1360 50  0001 C CNN
F 3 "" H 5870 1360 50  0001 C CNN
	1    5870 1360
	1    0    0    -1  
$EndComp
Wire Wire Line
	5870 1440 5870 1360
Text Notes 1060 5040 0    50   ~ 0
Voltage / Power management
$Comp
L power:+VDC #PWR01
U 1 1 60183B48
P 1760 5480
F 0 "#PWR01" H 1760 5380 50  0001 C CNN
F 1 "+VDC" H 1760 5755 50  0000 C CNN
F 2 "" H 1760 5480 50  0001 C CNN
F 3 "" H 1760 5480 50  0001 C CNN
	1    1760 5480
	1    0    0    -1  
$EndComp
Text Notes 1130 5570 0    50   ~ 0
+VDC comes\nfrom Zumo\nbattery pack \n(~6V)
$Comp
L power:VS #PWR02
U 1 1 6018EBEF
P 1760 6040
F 0 "#PWR02" H 1560 5890 50  0001 C CNN
F 1 "VS" H 1775 6213 50  0000 C CNN
F 2 "" H 1760 6040 50  0001 C CNN
F 3 "" H 1760 6040 50  0001 C CNN
	1    1760 6040
	-1   0    0    1   
$EndComp
$Comp
L power:VS #PWR03
U 1 1 601916E6
P 2100 1270
F 0 "#PWR03" H 1900 1120 50  0001 C CNN
F 1 "VS" H 2115 1443 50  0000 C CNN
F 2 "" H 2100 1270 50  0001 C CNN
F 3 "" H 2100 1270 50  0001 C CNN
	1    2100 1270
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 601965AB
P 3150 1260
F 0 "#PWR06" H 3150 1110 50  0001 C CNN
F 1 "+3.3V" H 3165 1433 50  0000 C CNN
F 2 "" H 3150 1260 50  0001 C CNN
F 3 "" H 3150 1260 50  0001 C CNN
	1    3150 1260
	1    0    0    -1  
$EndComp
Text Notes 1140 6270 0    50   ~ 0
VS does\npower-up\nthe Pyboard
Wire Wire Line
	1760 5890 1760 5950
Wire Wire Line
	1760 5480 1760 5540
$Comp
L power:+3.3V #PWR013
U 1 1 6019D7D8
P 6070 1260
F 0 "#PWR013" H 6070 1110 50  0001 C CNN
F 1 "+3.3V" H 6070 1420 50  0000 C CNN
F 2 "" H 6070 1260 50  0001 C CNN
F 3 "" H 6070 1260 50  0001 C CNN
	1    6070 1260
	1    0    0    -1  
$EndComp
Text Notes 5990 1030 0    50   ~ 0
3.3V is produced\nby the Pyboard
Text Notes 2500 5420 0    50   ~ 0
Optional 5V \n regulator
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 6019FFD6
P 2730 5610
F 0 "J1" V 2760 5400 50  0000 L CNN
F 1 "Pololu S7V7F5" V 2640 5340 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2730 5610 50  0001 C CNN
F 3 "~" H 2730 5610 50  0001 C CNN
	1    2730 5610
	0    -1   1    0   
$EndComp
Text Notes 2500 5810 0    50   ~ 0
vin
Text Notes 2850 5810 0    50   ~ 0
vout
Wire Wire Line
	2630 5810 2630 5950
Wire Wire Line
	2630 5950 2170 5950
Connection ~ 1760 5950
Wire Wire Line
	1760 5950 1760 6040
Wire Wire Line
	2830 5810 2830 5950
Wire Wire Line
	2830 5950 3250 5950
Wire Wire Line
	3250 5950 3250 5850
$Comp
L power:+5V #PWR07
U 1 1 601A317C
P 3250 5850
F 0 "#PWR07" H 3250 5700 50  0001 C CNN
F 1 "+5V" H 3265 6023 50  0000 C CNN
F 2 "" H 3250 5850 50  0001 C CNN
F 3 "" H 3250 5850 50  0001 C CNN
	1    3250 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 601A4DFA
P 2730 6040
F 0 "#PWR05" H 2730 5790 50  0001 C CNN
F 1 "GND" H 2730 5890 50  0000 C CNN
F 2 "" H 2730 6040 50  0001 C CNN
F 3 "" H 2730 6040 50  0001 C CNN
	1    2730 6040
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 601A73F0
P 6980 1250
F 0 "#PWR015" H 6980 1100 50  0001 C CNN
F 1 "+5V" H 6995 1423 50  0000 C CNN
F 2 "" H 6980 1250 50  0001 C CNN
F 3 "" H 6980 1250 50  0001 C CNN
	1    6980 1250
	1    0    0    -1  
$EndComp
Text Notes 7110 1290 0    50   ~ 0
Optional 5V\nproduced by\nS7V7F5
Wire Wire Line
	6170 1440 6170 1380
Wire Wire Line
	6170 1380 6980 1380
Wire Wire Line
	6980 1380 6980 1250
$Comp
L power:GND #PWR04
U 1 1 601ACABD
P 2150 4180
F 0 "#PWR04" H 2150 3930 50  0001 C CNN
F 1 "GND" H 2155 4007 50  0000 C CNN
F 2 "" H 2150 4180 50  0001 C CNN
F 3 "" H 2150 4180 50  0001 C CNN
	1    2150 4180
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 601AFD5F
P 5870 3620
F 0 "#PWR010" H 5870 3370 50  0001 C CNN
F 1 "GND" H 5875 3447 50  0000 C CNN
F 2 "" H 5870 3620 50  0001 C CNN
F 3 "" H 5870 3620 50  0001 C CNN
	1    5870 3620
	1    0    0    -1  
$EndComp
Wire Wire Line
	5870 3620 5870 3540
Wire Wire Line
	2150 4180 2150 4170
$Comp
L power:PWR_FLAG #FLG02
U 1 1 601B6433
P 2170 6040
F 0 "#FLG02" H 2170 6115 50  0001 C CNN
F 1 "PWR_FLAG" H 2170 6213 50  0000 C CNN
F 2 "" H 2170 6040 50  0001 C CNN
F 3 "~" H 2170 6040 50  0001 C CNN
	1    2170 6040
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 601B782C
P 3250 6030
F 0 "#FLG03" H 3250 6105 50  0001 C CNN
F 1 "PWR_FLAG" H 3210 6170 50  0000 C CNN
F 2 "" H 3250 6030 50  0001 C CNN
F 3 "~" H 3250 6030 50  0001 C CNN
	1    3250 6030
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 601B82BB
P 2090 5380
F 0 "#FLG01" H 2090 5455 50  0001 C CNN
F 1 "PWR_FLAG" H 2090 5553 50  0000 C CNN
F 2 "" H 2090 5380 50  0001 C CNN
F 3 "~" H 2090 5380 50  0001 C CNN
	1    2090 5380
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 601BB7B0
P 6390 1270
F 0 "#FLG04" H 6390 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 6390 1443 50  0000 C CNN
F 2 "" H 6390 1270 50  0001 C CNN
F 3 "~" H 6390 1270 50  0001 C CNN
	1    6390 1270
	1    0    0    -1  
$EndComp
Wire Notes Line
	5960 870  5960 1340
Wire Notes Line
	5960 1340 6650 1340
Wire Notes Line
	6650 1340 6650 870 
Wire Notes Line
	6650 870  5960 870 
Wire Wire Line
	2170 6040 2170 5950
Connection ~ 2170 5950
Wire Wire Line
	2170 5950 1760 5950
Wire Wire Line
	2090 5380 2090 5540
Wire Wire Line
	2090 5540 1760 5540
Connection ~ 1760 5540
Wire Wire Line
	1760 5540 1760 5590
Wire Wire Line
	3250 6030 3250 5950
Connection ~ 3250 5950
Wire Notes Line
	1060 5070 1060 6350
Wire Notes Line
	1060 6350 3510 6350
Wire Notes Line
	3510 6350 3510 5070
Wire Notes Line
	1060 5070 3510 5070
$Comp
L power:GND #PWR08
U 1 1 601C7DD8
P 3760 4290
F 0 "#PWR08" H 3760 4040 50  0001 C CNN
F 1 "GND" H 3765 4117 50  0000 C CNN
F 2 "" H 3760 4290 50  0001 C CNN
F 3 "" H 3760 4290 50  0001 C CNN
	1    3760 4290
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 601C89C1
P 3560 4210
F 0 "SW1" H 3560 4495 50  0000 C CNN
F 1 "Reset" H 3560 4404 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3560 4410 50  0001 C CNN
F 3 "~" H 3560 4410 50  0001 C CNN
	1    3560 4210
	1    0    0    -1  
$EndComp
Wire Wire Line
	3760 4210 3760 4290
Wire Wire Line
	3250 4090 3250 4210
Wire Wire Line
	3250 4210 3360 4210
Entry Bus Bus
	3910 4630 4010 4730
Entry Bus Bus
	5100 4730 5000 4630
Text Label 3270 4210 0    50   ~ 0
rst
Text Label 6520 1840 0    50   ~ 0
rst
Entry Wire Line
	7230 1940 7130 1840
Wire Wire Line
	6470 1840 7130 1840
$Comp
L power:+3.3V #PWR014
U 1 1 601DDF90
P 6580 2040
F 0 "#PWR014" H 6580 1890 50  0001 C CNN
F 1 "+3.3V" H 6580 2180 50  0000 C CNN
F 2 "" H 6580 2040 50  0001 C CNN
F 3 "" H 6580 2040 50  0001 C CNN
	1    6580 2040
	1    0    0    -1  
$EndComp
NoConn ~ 6470 2240
Text Label 6510 2840 0    50   ~ 0
sda
Text Label 6510 2940 0    50   ~ 0
scl
Entry Wire Line
	7230 2940 7130 2840
Wire Wire Line
	6470 2840 7130 2840
Entry Wire Line
	7230 3040 7130 2940
Wire Wire Line
	6470 2940 7130 2940
Text Label 1700 2540 0    50   ~ 0
scl
Text Label 1700 2640 0    50   ~ 0
sda
Entry Wire Line
	1360 2640 1460 2540
Entry Wire Line
	1360 2740 1460 2640
Wire Wire Line
	1850 2640 1460 2640
Wire Wire Line
	1850 2540 1460 2540
Text Label 1720 3240 0    50   ~ 0
A0
Text Label 1720 3340 0    50   ~ 0
A1
Text Label 1720 3440 0    50   ~ 0
A2
Text Label 1720 3540 0    50   ~ 0
A3
Entry Wire Line
	1360 3340 1460 3240
Wire Wire Line
	1850 3240 1460 3240
Entry Wire Line
	1360 3440 1460 3340
Entry Wire Line
	1360 3540 1460 3440
Entry Wire Line
	1360 3640 1460 3540
Wire Wire Line
	1850 3540 1460 3540
Wire Wire Line
	1850 3440 1460 3440
Wire Wire Line
	1850 3340 1460 3340
Text Label 1700 2240 0    50   ~ 0
sck
Text Label 1650 2340 0    50   ~ 0
miso
Text Label 1650 2440 0    50   ~ 0
mosi
Text Label 3530 2440 0    50   ~ 0
nss
Text Label 5270 2840 0    50   ~ 0
nss
Text Label 5270 2940 0    50   ~ 0
mosi
Text Label 5270 3040 0    50   ~ 0
miso
Text Label 5270 3140 0    50   ~ 0
sck
Entry Wire Line
	5000 2940 5100 2840
Entry Wire Line
	5000 3040 5100 2940
Entry Wire Line
	5000 3140 5100 3040
Entry Wire Line
	5000 3240 5100 3140
Wire Wire Line
	5470 3140 5100 3140
Wire Wire Line
	5470 3040 5100 3040
Wire Wire Line
	5470 2940 5100 2940
Wire Wire Line
	5470 2840 5100 2840
Entry Wire Line
	1360 2340 1460 2240
Entry Wire Line
	1360 2440 1460 2340
Entry Wire Line
	1360 2540 1460 2440
Wire Wire Line
	1850 2440 1460 2440
Wire Wire Line
	1850 2340 1460 2340
Wire Wire Line
	1850 2240 1460 2240
Entry Wire Line
	3910 2540 3810 2440
Wire Wire Line
	3500 2440 3810 2440
Text Label 1750 1740 0    50   ~ 0
tx
Text Label 1750 1840 0    50   ~ 0
rx
Text Label 5360 1840 0    50   ~ 0
rx
Text Label 5360 1940 0    50   ~ 0
tx
Entry Wire Line
	5000 1940 5100 1840
Entry Wire Line
	5000 2040 5100 1940
Wire Wire Line
	5470 1840 5100 1840
Wire Wire Line
	5470 1940 5100 1940
Entry Wire Line
	1360 1940 1460 1840
Entry Wire Line
	1360 1840 1460 1740
Wire Wire Line
	1850 1740 1460 1740
Wire Wire Line
	1850 1840 1460 1840
Text Label 6510 3140 0    50   ~ 0
sda
Text Label 6510 3240 0    50   ~ 0
scl
Entry Wire Line
	7230 3240 7130 3140
Entry Wire Line
	7230 3340 7130 3240
Wire Wire Line
	6470 3140 7130 3140
Wire Wire Line
	6470 3240 7130 3240
Text Label 5340 2040 0    50   ~ 0
D2
Text Label 3530 2340 0    50   ~ 0
D2
Entry Wire Line
	5000 2140 5100 2040
Entry Wire Line
	3910 2440 3810 2340
Wire Wire Line
	3500 2340 3810 2340
Wire Wire Line
	5470 2040 5100 2040
Text Label 5200 2140 0    50   ~ 0
servo1
Text Label 5200 2240 0    50   ~ 0
servo2
Text Label 5200 2340 0    50   ~ 0
servo3
Entry Wire Line
	5000 2240 5100 2140
Entry Wire Line
	5000 2340 5100 2240
Entry Wire Line
	5000 2440 5100 2340
Entry Wire Line
	5000 2540 5100 2440
Text Label 5200 2440 0    50   ~ 0
servo4
Wire Wire Line
	5470 2440 5100 2440
Wire Wire Line
	5470 2340 5100 2340
Wire Wire Line
	5470 2240 5100 2240
Wire Wire Line
	5470 2140 5100 2140
Text Label 3530 1740 0    50   ~ 0
servo1
Text Label 3530 1840 0    50   ~ 0
servo2
Text Label 3530 1940 0    50   ~ 0
servo3
Text Label 3530 2040 0    50   ~ 0
servo4
Entry Wire Line
	3910 1840 3810 1740
Entry Wire Line
	3910 1940 3810 1840
Entry Wire Line
	3910 2040 3810 1940
Entry Wire Line
	3910 2140 3810 2040
Wire Wire Line
	3500 2040 3810 2040
Wire Wire Line
	3500 1940 3810 1940
Wire Wire Line
	3500 1840 3810 1840
Wire Wire Line
	3500 1740 3810 1740
$Comp
L uext:UEXT J2
U 1 1 602471C1
P 5940 5510
F 0 "J2" H 6160 5910 50  0000 C CNN
F 1 "UEXT" H 5720 5900 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 5640 5860 50  0001 C CNN
F 3 "" H 5640 5860 50  0001 C CNN
	1    5940 5510
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 6024A120
P 5940 4960
F 0 "#PWR011" H 5940 4810 50  0001 C CNN
F 1 "+3.3V" H 5940 5100 50  0000 C CNN
F 2 "" H 5940 4960 50  0001 C CNN
F 3 "" H 5940 4960 50  0001 C CNN
	1    5940 4960
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6024A686
P 5940 6050
F 0 "#PWR012" H 5940 5800 50  0001 C CNN
F 1 "GND" H 5945 5877 50  0000 C CNN
F 2 "" H 5940 6050 50  0001 C CNN
F 3 "" H 5940 6050 50  0001 C CNN
	1    5940 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5940 6050 5940 5960
Wire Wire Line
	5940 5060 5940 4960
Entry Bus Bus
	6560 4730 6660 4830
Entry Bus Bus
	5170 4730 5270 4830
Text Label 6360 5360 0    50   ~ 0
miso
Text Label 6360 5460 0    50   ~ 0
mosi
Text Label 6360 5560 0    50   ~ 0
sck
Text Label 6360 5660 0    50   ~ 0
nss
Text Label 5390 5560 0    50   ~ 0
scl
Text Label 5390 5660 0    50   ~ 0
sda
Entry Wire Line
	6660 5260 6560 5360
Entry Wire Line
	6660 5360 6560 5460
Entry Wire Line
	6660 5460 6560 5560
Entry Wire Line
	6660 5560 6560 5660
Entry Wire Line
	5270 5460 5370 5560
Entry Wire Line
	5270 5560 5370 5660
Wire Wire Line
	5540 5560 5370 5560
Wire Wire Line
	5540 5660 5370 5660
Wire Wire Line
	6340 5360 6560 5360
Wire Wire Line
	6340 5460 6560 5460
Wire Wire Line
	6340 5560 6560 5560
Wire Wire Line
	6340 5660 6560 5660
Text Notes 5330 5870 0    50   ~ 10
I2C(2)
Text Notes 6640 3070 0    50   ~ 10
I2C(2)
Text Notes 5170 3260 0    50   ~ 10
SPI(2)
Text Notes 5150 1760 0    50   ~ 10
UART(6)
Text Notes 6330 5790 0    50   ~ 10
SPI(2)
Text Notes 5300 5250 0    50   ~ 10
UART(1)
Text Label 3520 2540 0    50   ~ 0
uext_tx
Text Label 3520 2640 0    50   ~ 0
uext_rx
Text Label 6520 2440 0    50   ~ 0
A0
Text Label 6510 2540 0    50   ~ 0
A1
Text Label 6510 2640 0    50   ~ 0
A2
Text Label 6510 2740 0    50   ~ 0
A3
Entry Wire Line
	7230 2840 7130 2740
Entry Wire Line
	7230 2740 7130 2640
Entry Wire Line
	7230 2640 7130 2540
Entry Wire Line
	7230 2540 7130 2440
Wire Wire Line
	6470 2440 7130 2440
Wire Wire Line
	6470 2540 7130 2540
Wire Wire Line
	6470 2640 7130 2640
Wire Wire Line
	6470 2740 7130 2740
Entry Wire Line
	3910 2640 3810 2540
Entry Wire Line
	3910 2740 3810 2640
Wire Wire Line
	3500 2640 3810 2640
Wire Wire Line
	3500 2540 3810 2540
Text Label 5430 5360 0    50   ~ 0
uext_tx
Text Label 5430 5460 0    50   ~ 0
uext_rx
Entry Wire Line
	5270 5360 5370 5460
Entry Wire Line
	5270 5260 5370 5360
Wire Wire Line
	5540 5460 5370 5460
Wire Wire Line
	5540 5360 5370 5360
NoConn ~ 3500 3540
NoConn ~ 3500 3440
NoConn ~ 3500 3340
NoConn ~ 3500 3240
NoConn ~ 3500 3140
NoConn ~ 3500 3040
Text Label 5360 2540 0    50   ~ 0
D7
Text Label 1740 2140 0    50   ~ 0
D7
Text Label 5190 2640 0    50   ~ 0
uext_tx
Text Label 5180 2740 0    50   ~ 0
uext_rx
Entry Wire Line
	5000 2840 5100 2740
Entry Wire Line
	5000 2740 5100 2640
Entry Wire Line
	5000 2640 5100 2540
Wire Wire Line
	5470 2540 5100 2540
Wire Wire Line
	5470 2640 5100 2640
Wire Wire Line
	5470 2740 5100 2740
$Comp
L Connector:Conn_01x16_Female J8
U 1 1 602C59D6
P 9690 2570
F 0 "J8" H 9610 1660 50  0000 L CNN
F 1 "replicat-PYB-Right" V 9930 2200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 9690 2570 50  0001 C CNN
F 3 "~" H 9690 2570 50  0001 C CNN
	1    9690 2570
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J4
U 1 1 602CBBA6
P 8620 2570
F 0 "J4" H 8520 1690 50  0000 L CNN
F 1 "replicat-PYB-Left" V 8890 2220 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 8620 2570 50  0001 C CNN
F 3 "~" H 8620 2570 50  0001 C CNN
	1    8620 2570
	-1   0    0    -1  
$EndComp
Connection ~ 7230 4730
$Comp
L Connector:Conn_01x10_Female J9
U 1 1 602DB5DA
P 9690 4160
F 0 "J9" H 9630 3560 50  0000 L CNN
F 1 "replicat-PYB-bottom" V 9920 3730 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 9690 4160 50  0001 C CNN
F 3 "~" H 9690 4160 50  0001 C CNN
	1    9690 4160
	1    0    0    -1  
$EndComp
Text Notes 8890 1330 0    50   ~ 0
Pyboard PinOut\nReplication\nfor prototyping
Text Notes 5400 4980 0    50   ~ 0
UEXT\nConnector
Wire Notes Line
	8280 1040 8280 4950
Wire Notes Line
	8280 4950 9990 4950
Wire Notes Line
	9990 4950 9990 1040
Wire Notes Line
	8280 1040 9990 1040
Text Label 9390 1870 0    50   ~ 0
tx
Text Label 9390 1970 0    50   ~ 0
rx
Text Label 9390 2070 0    50   ~ 0
y3
Text Label 9390 2170 0    50   ~ 0
y4
Text Label 9390 2270 0    50   ~ 0
D7
Entry Wire Line
	9160 1970 9260 1870
Wire Wire Line
	9490 1870 9260 1870
Wire Wire Line
	9490 1970 9260 1970
Wire Wire Line
	9490 2070 9260 2070
Wire Wire Line
	9490 2170 9260 2170
Wire Wire Line
	9490 2270 9260 2270
Entry Wire Line
	9160 2070 9260 1970
Entry Wire Line
	9160 2170 9260 2070
Entry Wire Line
	9160 2270 9260 2170
Entry Wire Line
	9160 2370 9260 2270
Entry Wire Line
	9160 2470 9260 2370
Entry Wire Line
	9160 2570 9260 2470
Entry Wire Line
	9160 2670 9260 2570
Entry Wire Line
	9160 2770 9260 2670
Entry Wire Line
	9160 2870 9260 2770
Entry Wire Line
	9160 2970 9260 2870
Entry Wire Line
	9160 3070 9260 2970
Entry Wire Line
	9160 3170 9260 3070
Entry Wire Line
	9160 3270 9060 3170
Entry Wire Line
	9160 3370 9060 3270
Entry Wire Line
	9160 3470 9060 3370
Wire Wire Line
	9490 2370 9260 2370
Wire Wire Line
	9490 2470 9260 2470
Wire Wire Line
	9490 2570 9260 2570
Wire Wire Line
	9490 2870 9260 2870
Wire Wire Line
	9490 2970 9260 2970
Wire Wire Line
	9260 3070 9490 3070
Wire Wire Line
	9260 2770 9490 2770
Wire Wire Line
	9490 2670 9260 2670
Entry Wire Line
	9160 3170 9060 3070
Entry Wire Line
	9160 3070 9060 2970
Entry Wire Line
	9160 2970 9060 2870
Entry Wire Line
	9160 2870 9060 2770
Entry Wire Line
	9160 2770 9060 2670
Entry Wire Line
	9160 2670 9060 2570
Entry Wire Line
	9160 2570 9060 2470
Entry Wire Line
	9160 2470 9060 2370
Entry Wire Line
	9160 2370 9060 2270
Entry Wire Line
	9160 2270 9060 2170
Wire Wire Line
	8820 2170 9060 2170
Wire Wire Line
	8820 2270 9060 2270
Wire Wire Line
	8820 2370 9060 2370
Wire Wire Line
	8820 2470 9060 2470
Wire Wire Line
	8820 2570 9060 2570
Wire Wire Line
	8820 2670 9060 2670
Wire Wire Line
	8820 2770 9060 2770
Wire Wire Line
	8820 2870 9060 2870
Wire Wire Line
	8820 2970 9060 2970
Wire Wire Line
	8820 3070 9060 3070
Entry Wire Line
	9160 4560 9260 4660
Entry Wire Line
	9160 4460 9260 4560
Entry Wire Line
	9160 4360 9260 4460
Entry Wire Line
	9160 4260 9260 4360
Entry Wire Line
	9160 4160 9260 4260
Entry Wire Line
	9160 4060 9260 4160
Wire Wire Line
	9490 4160 9260 4160
Wire Wire Line
	9490 4260 9260 4260
Wire Wire Line
	9490 4360 9260 4360
Wire Wire Line
	9260 4460 9490 4460
Wire Wire Line
	9490 4560 9260 4560
Wire Wire Line
	9490 4660 9480 4660
Entry Wire Line
	1360 2040 1460 1940
Entry Wire Line
	1360 2140 1460 2040
Entry Wire Line
	1360 2240 1460 2140
Wire Wire Line
	1850 1940 1460 1940
Wire Wire Line
	1850 2040 1460 2040
Wire Wire Line
	1460 2140 1850 2140
Text Label 1750 1940 0    50   ~ 0
y3
Text Label 1750 2040 0    50   ~ 0
y4
Text Label 9370 2370 0    50   ~ 0
sck
Text Label 9330 2470 0    50   ~ 0
miso
Text Label 9320 2570 0    50   ~ 0
mosi
Text Label 8880 2570 0    50   ~ 0
scl
Text Label 8870 2470 0    50   ~ 0
sda
Text Label 8870 2370 0    50   ~ 0
y11
Text Label 8860 2270 0    50   ~ 0
y12
Text Label 8870 2170 0    50   ~ 0
rst
Text Notes 9720 1890 0    50   ~ 0
y1
Text Notes 9720 2600 0    50   ~ 0
y8
Text Notes 9720 1990 0    50   ~ 0
y2
Text Notes 9720 2490 0    50   ~ 0
y7
Text Notes 8500 2600 0    50   ~ 0
y9
Text Notes 8460 2500 0    50   ~ 0
y10
Text Notes 8450 2300 0    50   ~ 0
y12
Text Notes 8510 3400 0    50   ~ 0
x1
Text Notes 8500 3300 0    50   ~ 0
x2
Text Notes 8500 2800 0    50   ~ 0
x7
Text Notes 8500 2700 0    50   ~ 0
x8
Text Notes 9700 2700 0    50   ~ 0
x9
Text Notes 9700 2800 0    50   ~ 0
x10
Text Notes 9700 3000 0    50   ~ 0
x12
Wire Notes Line
	8460 2620 9850 2620
$Comp
L power:+3.3V #PWR023
U 1 1 604AA9F7
P 8970 1730
F 0 "#PWR023" H 8970 1580 50  0001 C CNN
F 1 "+3.3V" H 8970 1940 50  0000 C CNN
F 2 "" H 8970 1730 50  0001 C CNN
F 3 "" H 8970 1730 50  0001 C CNN
	1    8970 1730
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 604AB7C3
P 9210 1610
F 0 "#PWR026" H 9210 1360 50  0001 C CNN
F 1 "GND" H 9215 1437 50  0000 C CNN
F 2 "" H 9210 1610 50  0001 C CNN
F 3 "" H 9210 1610 50  0001 C CNN
	1    9210 1610
	1    0    0    -1  
$EndComp
Wire Wire Line
	8820 2070 9090 2070
Wire Wire Line
	9090 2070 9090 1610
Wire Wire Line
	9090 1610 9210 1610
Wire Wire Line
	8820 1970 8970 1970
Wire Wire Line
	8970 1970 8970 1730
Wire Wire Line
	8820 1870 8820 1740
Text Label 8840 2670 0    50   ~ 0
nss
Text Label 8840 2770 0    50   ~ 0
D2
Text Label 8840 3370 0    50   ~ 0
servo1
Text Label 8840 3270 0    50   ~ 0
servo2
Text Label 8840 3170 0    50   ~ 0
servo3
Text Label 8840 3070 0    50   ~ 0
servo4
Text Label 8840 2970 0    50   ~ 0
x5
Text Label 8840 2870 0    50   ~ 0
x6
Text Label 3540 2140 0    50   ~ 0
x5
Text Label 3540 2240 0    50   ~ 0
x6
Text Label 3550 2740 0    50   ~ 0
x11
Text Label 3550 2840 0    50   ~ 0
x12
Text Label 9350 2870 0    50   ~ 0
x11
Text Label 9350 2970 0    50   ~ 0
x12
Text Label 9270 2670 0    50   ~ 0
uext_tx
Text Label 9270 2770 0    50   ~ 0
uext_rx
Entry Wire Line
	3910 2340 3810 2240
Entry Wire Line
	3910 2240 3810 2140
Wire Wire Line
	3500 2240 3810 2240
Wire Wire Line
	3500 2140 3810 2140
Entry Wire Line
	3910 2840 3810 2740
Entry Wire Line
	3910 2940 3810 2840
Wire Wire Line
	3500 2840 3810 2840
Wire Wire Line
	3500 2740 3810 2740
Text Label 1680 2740 0    50   ~ 0
y11
Text Label 1680 2840 0    50   ~ 0
y12
Entry Wire Line
	1360 2840 1460 2740
Entry Wire Line
	1360 2940 1460 2840
Wire Wire Line
	1850 2740 1460 2740
Wire Wire Line
	1460 2840 1850 2840
Text Label 9370 3070 0    50   ~ 0
rst
$Comp
L power:+3.3V #PWR019
U 1 1 60540404
P 9840 3300
F 0 "#PWR019" H 9840 3150 50  0001 C CNN
F 1 "+3.3V" H 9855 3473 50  0000 C CNN
F 2 "" H 9840 3300 50  0001 C CNN
F 3 "" H 9840 3300 50  0001 C CNN
	1    9840 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6054291C
P 9280 3170
F 0 "#PWR024" H 9280 2920 50  0001 C CNN
F 1 "GND" H 9285 2997 50  0000 C CNN
F 2 "" H 9280 3170 50  0001 C CNN
F 3 "" H 9280 3170 50  0001 C CNN
	1    9280 3170
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6056DB34
P 9260 3580
F 0 "#PWR027" H 9260 3330 50  0001 C CNN
F 1 "GND" H 9265 3407 50  0000 C CNN
F 2 "" H 9260 3580 50  0001 C CNN
F 3 "" H 9260 3580 50  0001 C CNN
	1    9260 3580
	1    0    0    -1  
$EndComp
Wire Wire Line
	9490 3760 9480 3760
Wire Wire Line
	9480 3760 9480 3690
Wire Wire Line
	9260 3580 9370 3580
Wire Wire Line
	9370 3580 9370 3860
Wire Wire Line
	9370 3860 9490 3860
Text Notes 9710 3990 0    50   ~ 0
x24
Text Notes 9710 4390 0    50   ~ 0
x20
Text Notes 9710 4190 0    50   ~ 0
x22
Text Label 9390 4160 0    50   ~ 0
A3
Text Label 9380 4260 0    50   ~ 0
A2
Text Label 9380 4360 0    50   ~ 0
A1
Text Label 9380 4460 0    50   ~ 0
A0
Text Notes 9710 4290 0    50   ~ 0
x21
Text Notes 9710 4490 0    50   ~ 0
x19
Text Label 1620 3640 0    50   ~ 0
A3V3
Text Label 1610 3740 0    50   ~ 0
AGND
Entry Wire Line
	1360 3740 1460 3640
Entry Wire Line
	1360 3840 1460 3740
Wire Wire Line
	1850 3740 1460 3740
Wire Wire Line
	1850 3640 1460 3640
Text Label 9290 3960 0    50   ~ 0
AGND
Text Label 9290 4060 0    50   ~ 0
A3V3
Entry Wire Line
	9160 3960 9260 4060
Entry Wire Line
	9160 3860 9260 3960
Wire Wire Line
	9490 3960 9260 3960
Wire Wire Line
	9490 4060 9260 4060
Text Notes 9710 4090 0    50   ~ 0
x23
Text Notes 9710 4590 0    50   ~ 0
x18
Text Notes 9710 4690 0    50   ~ 0
x17
Text Label 1690 3040 0    50   ~ 0
x17
Text Label 1690 3140 0    50   ~ 0
x18
Entry Wire Line
	1360 3140 1460 3040
Entry Wire Line
	1360 3240 1460 3140
Wire Wire Line
	1850 3140 1460 3140
Wire Wire Line
	1850 3040 1460 3040
Text Label 9340 4660 0    50   ~ 0
x17
Text Label 9330 4560 0    50   ~ 0
x18
$Comp
L Switch:SW_Push SW2
U 1 1 6060EAC2
P 9220 4850
F 0 "SW2" H 9220 4800 50  0000 C CNN
F 1 "USR" H 9310 4970 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9220 5050 50  0001 C CNN
F 3 "~" H 9220 5050 50  0001 C CNN
	1    9220 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 606112CB
P 8910 4850
F 0 "#PWR022" H 8910 4600 50  0001 C CNN
F 1 "GND" H 8780 4800 50  0000 C CNN
F 2 "" H 8910 4850 50  0001 C CNN
F 3 "" H 8910 4850 50  0001 C CNN
	1    8910 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9020 4850 8910 4850
Wire Wire Line
	9420 4850 9480 4850
Wire Wire Line
	9480 4850 9480 4660
Connection ~ 9480 4660
Wire Wire Line
	9480 4660 9260 4660
$Comp
L power:VS #PWR020
U 1 1 60629671
P 8820 1740
F 0 "#PWR020" H 8620 1590 50  0001 C CNN
F 1 "VS" H 8720 1790 50  0000 C CNN
F 2 "" H 8820 1740 50  0001 C CNN
F 3 "" H 8820 1740 50  0001 C CNN
	1    8820 1740
	1    0    0    -1  
$EndComp
$Comp
L power:VS #PWR030
U 1 1 6062EB56
P 9480 3690
F 0 "#PWR030" H 9280 3540 50  0001 C CNN
F 1 "VS" H 9495 3863 50  0000 C CNN
F 2 "" H 9480 3690 50  0001 C CNN
F 3 "" H 9480 3690 50  0001 C CNN
	1    9480 3690
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 606335E2
P 8390 5790
F 0 "J3" H 8420 5620 50  0000 C CNN
F 1 "servo1" H 8498 5980 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8390 5790 50  0001 C CNN
F 3 "~" H 8390 5790 50  0001 C CNN
	1    8390 5790
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 6063614E
P 8760 5790
F 0 "J5" H 8780 5620 50  0000 C CNN
F 1 "servo2" H 8868 5980 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8760 5790 50  0001 C CNN
F 3 "~" H 8760 5790 50  0001 C CNN
	1    8760 5790
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 60636B97
P 9140 5790
F 0 "J6" H 9160 5630 50  0000 C CNN
F 1 "servo3" H 9248 5980 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9140 5790 50  0001 C CNN
F 3 "~" H 9140 5790 50  0001 C CNN
	1    9140 5790
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 606375F1
P 9500 5790
F 0 "J7" H 9520 5630 50  0000 C CNN
F 1 "servo4" H 9608 5980 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9500 5790 50  0001 C CNN
F 3 "~" H 9500 5790 50  0001 C CNN
	1    9500 5790
	1    0    0    -1  
$EndComp
Text Notes 8820 5120 0    50   ~ 0
Servo Connectors
$Comp
L power:+VDC #PWR018
U 1 1 60652491
P 8690 5460
F 0 "#PWR018" H 8690 5360 50  0001 C CNN
F 1 "+VDC" H 8680 5730 50  0000 C CNN
F 2 "" H 8690 5460 50  0001 C CNN
F 3 "" H 8690 5460 50  0001 C CNN
	1    8690 5460
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR025
U 1 1 60661959
P 9080 5460
F 0 "#PWR025" H 9080 5360 50  0001 C CNN
F 1 "+VDC" H 9070 5730 50  0000 C CNN
F 2 "" H 9080 5460 50  0001 C CNN
F 3 "" H 9080 5460 50  0001 C CNN
	1    9080 5460
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR029
U 1 1 606620F4
P 9450 5460
F 0 "#PWR029" H 9450 5360 50  0001 C CNN
F 1 "+VDC" H 9450 5730 50  0000 C CNN
F 2 "" H 9450 5460 50  0001 C CNN
F 3 "" H 9450 5460 50  0001 C CNN
	1    9450 5460
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR032
U 1 1 60662527
P 9820 5460
F 0 "#PWR032" H 9820 5360 50  0001 C CNN
F 1 "+VDC" H 9820 5730 50  0000 C CNN
F 2 "" H 9820 5460 50  0001 C CNN
F 3 "" H 9820 5460 50  0001 C CNN
	1    9820 5460
	1    0    0    -1  
$EndComp
Wire Wire Line
	8690 5460 8690 5790
Wire Wire Line
	8690 5790 8590 5790
Wire Wire Line
	9080 5460 9080 5790
Wire Wire Line
	9080 5790 8960 5790
Wire Wire Line
	9450 5460 9450 5790
Wire Wire Line
	9450 5790 9340 5790
Wire Wire Line
	9820 5460 9820 5790
Wire Wire Line
	9820 5790 9700 5790
$Comp
L power:GND #PWR016
U 1 1 6069C194
P 8460 5320
F 0 "#PWR016" H 8460 5070 50  0001 C CNN
F 1 "GND" H 8460 5380 50  0000 C CNN
F 2 "" H 8460 5320 50  0001 C CNN
F 3 "" H 8460 5320 50  0001 C CNN
	1    8460 5320
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 606A0011
P 8880 5320
F 0 "#PWR021" H 8880 5070 50  0001 C CNN
F 1 "GND" H 8880 5380 50  0000 C CNN
F 2 "" H 8880 5320 50  0001 C CNN
F 3 "" H 8880 5320 50  0001 C CNN
	1    8880 5320
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 606A2CEF
P 9270 5320
F 0 "#PWR028" H 9270 5070 50  0001 C CNN
F 1 "GND" H 9270 5380 50  0000 C CNN
F 2 "" H 9270 5320 50  0001 C CNN
F 3 "" H 9270 5320 50  0001 C CNN
	1    9270 5320
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 606A3882
P 9630 5320
F 0 "#PWR031" H 9630 5070 50  0001 C CNN
F 1 "GND" H 9630 5380 50  0000 C CNN
F 2 "" H 9630 5320 50  0001 C CNN
F 3 "" H 9630 5320 50  0001 C CNN
	1    9630 5320
	1    0    0    -1  
$EndComp
Text Notes 8660 6340 0    50   ~ 0
Servo power is provided\nby the Zumo batteries
Wire Wire Line
	8460 5320 8570 5320
Wire Wire Line
	8570 5320 8570 5500
Wire Wire Line
	8570 5500 8660 5500
Wire Wire Line
	8660 5500 8660 5690
Wire Wire Line
	8660 5690 8590 5690
Wire Wire Line
	8880 5320 8970 5320
Wire Wire Line
	8970 5320 8970 5490
Wire Wire Line
	8970 5490 9050 5490
Wire Wire Line
	9050 5490 9050 5690
Wire Wire Line
	9050 5690 8960 5690
Wire Wire Line
	9270 5320 9340 5320
Wire Wire Line
	9340 5320 9340 5490
Wire Wire Line
	9340 5490 9420 5490
Wire Wire Line
	9420 5490 9420 5690
Wire Wire Line
	9420 5690 9340 5690
Wire Wire Line
	9710 5490 9790 5490
Wire Wire Line
	9790 5490 9790 5690
Wire Wire Line
	9790 5690 9700 5690
Entry Bus Bus
	7800 4730 7900 4830
Wire Notes Line
	8280 4990 8280 6420
Wire Notes Line
	8280 6420 9990 6420
Wire Notes Line
	8280 4990 9990 4990
Wire Notes Line
	9990 4990 9990 6420
Entry Wire Line
	8580 6160 8680 6060
Entry Wire Line
	8960 6160 9060 6060
Entry Wire Line
	9330 6160 9430 6060
Entry Wire Line
	9700 6160 9800 6060
Wire Wire Line
	8590 5890 8680 5890
Wire Wire Line
	8960 5890 9060 5890
Wire Wire Line
	9340 5890 9430 5890
Wire Wire Line
	9700 5890 9800 5890
Text Label 8620 5890 3    50   ~ 0
servo1
Text Label 8980 5890 3    50   ~ 0
servo2
Text Label 9370 5890 3    50   ~ 0
servo3
Text Label 9740 5890 3    50   ~ 0
servo4
Wire Bus Line
	7900 4830 7900 6160
Wire Wire Line
	8680 5890 8680 6060
Wire Wire Line
	9060 5890 9060 6060
Wire Wire Line
	9430 5890 9430 6060
Wire Wire Line
	9800 5890 9800 6060
Wire Wire Line
	9630 5320 9710 5320
Wire Wire Line
	9710 5320 9710 5490
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607BC5BC
P 2930 6150
F 0 "#FLG0101" H 2930 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 2840 6300 50  0000 C CNN
F 2 "" H 2930 6150 50  0001 C CNN
F 3 "~" H 2930 6150 50  0001 C CNN
	1    2930 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2730 5810 2730 6040
Wire Wire Line
	2730 6040 2930 6040
Connection ~ 2730 6040
Wire Wire Line
	2930 6040 2930 6150
Wire Wire Line
	6070 1260 6070 1310
Wire Wire Line
	6390 1270 6390 1310
Wire Wire Line
	6390 1310 6070 1310
Connection ~ 6070 1310
Wire Wire Line
	6070 1310 6070 1440
Wire Wire Line
	6470 2040 6580 2040
$Comp
L arduino:Arduino_R3_Shield A1
U 1 1 60834697
P 5970 2440
F 0 "A1" H 6340 3390 50  0000 C CNN
F 1 "Arduino_R3_Shield" H 5370 3420 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5970 2440 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5970 2440 50  0001 C CNN
	1    5970 2440
	1    0    0    -1  
$EndComp
Wire Wire Line
	5970 3540 6070 3540
Wire Wire Line
	5970 3540 5870 3540
Connection ~ 5970 3540
Connection ~ 5870 3540
Wire Wire Line
	9490 3370 9420 3370
Wire Wire Line
	9420 3370 9420 3760
Wire Wire Line
	9420 3760 9480 3760
Connection ~ 9480 3760
Wire Wire Line
	9490 3270 9420 3270
Wire Wire Line
	9420 3270 9420 3300
Wire Wire Line
	9420 3300 9840 3300
Wire Wire Line
	9490 3170 9280 3170
Wire Wire Line
	8820 3170 9060 3170
Wire Wire Line
	8820 3270 9060 3270
Wire Wire Line
	8820 3370 9060 3370
Wire Wire Line
	2650 4090 2650 4170
Wire Wire Line
	2650 4170 2150 4170
NoConn ~ 2150 4090
NoConn ~ 2250 4090
NoConn ~ 2350 4090
NoConn ~ 2450 4090
NoConn ~ 2550 4090
NoConn ~ 3150 4090
Wire Wire Line
	2600 1390 2600 1270
Wire Wire Line
	2600 1270 2100 1270
NoConn ~ 2500 1390
NoConn ~ 2400 1390
NoConn ~ 2300 1390
NoConn ~ 2200 1390
NoConn ~ 2100 1390
NoConn ~ 3050 1390
Wire Wire Line
	2750 4090 2750 4170
Wire Wire Line
	2750 4170 2650 4170
Connection ~ 2650 4170
Wire Wire Line
	2700 1390 2700 1270
Wire Wire Line
	2700 1270 2600 1270
Wire Bus Line
	7230 4730 9160 4730
Wire Bus Line
	7900 6160 9700 6160
Wire Bus Line
	6660 4830 6660 5670
Wire Bus Line
	1360 4730 7230 4730
Wire Bus Line
	5270 4830 5270 5670
Wire Bus Line
	7230 1840 7230 4730
Wire Bus Line
	3910 1750 3910 4630
Wire Bus Line
	5000 1810 5000 4630
Wire Bus Line
	1360 1720 1360 4730
Wire Bus Line
	9160 1890 9160 4730
Connection ~ 2600 1270
$EndSCHEMATC
