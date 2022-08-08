EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Parallel Port Cobbler"
Date "2022-06-27"
Rev "1"
Comp "MC Hobby SPRL"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 62B7B213
P 4235 2140
F 0 "J2" H 4285 3257 50  0000 C CNN
F 1 "Conn_RASP" H 4285 3166 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 4235 2140 50  0001 C CNN
F 3 "~" H 4235 2140 50  0001 C CNN
	1    4235 2140
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 62B800DA
P 3945 1085
F 0 "#PWR05" H 3945 935 50  0001 C CNN
F 1 "+3.3V" H 3960 1258 50  0000 C CNN
F 2 "" H 3945 1085 50  0001 C CNN
F 3 "" H 3945 1085 50  0001 C CNN
	1    3945 1085
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 62B80F13
P 4675 1090
F 0 "#PWR07" H 4675 940 50  0001 C CNN
F 1 "+5V" H 4690 1263 50  0000 C CNN
F 2 "" H 4675 1090 50  0001 C CNN
F 3 "" H 4675 1090 50  0001 C CNN
	1    4675 1090
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 62B83319
P 4860 2200
F 0 "#PWR08" H 4860 1950 50  0001 C CNN
F 1 "GND" H 4865 2027 50  0000 C CNN
F 2 "" H 4860 2200 50  0001 C CNN
F 3 "" H 4860 2200 50  0001 C CNN
	1    4860 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4535 2640 4710 2640
Wire Wire Line
	4710 2640 4710 2840
Wire Wire Line
	4535 2840 4710 2840
Wire Wire Line
	4535 2140 4710 2140
Wire Wire Line
	4710 2140 4710 2640
Connection ~ 4710 2640
Wire Wire Line
	4535 1840 4710 1840
Wire Wire Line
	4710 1840 4710 2140
Connection ~ 4710 2140
Wire Wire Line
	4535 1440 4710 1440
Wire Wire Line
	4710 1440 4710 1840
Connection ~ 4710 1840
Wire Wire Line
	4535 1340 4675 1340
Wire Wire Line
	4675 1340 4675 1240
Wire Wire Line
	4535 1240 4675 1240
Connection ~ 4675 1240
Wire Wire Line
	4675 1240 4675 1090
Wire Wire Line
	3945 1240 3945 1085
$Comp
L power:GND #PWR03
U 1 1 62B91B06
P 3935 1565
F 0 "#PWR03" H 3935 1315 50  0001 C CNN
F 1 "GND" H 3860 1465 50  0000 C CNN
F 2 "" H 3935 1565 50  0001 C CNN
F 3 "" H 3935 1565 50  0001 C CNN
	1    3935 1565
	1    0    0    -1  
$EndComp
Text Notes 1520 980  0    79   ~ 0
Cobbler
Wire Bus Line
	1760 4115 3795 4115
Text Label 2010 1295 0    50   ~ 0
c0
Text Label 1410 1395 0    50   ~ 0
d0
Text Label 1410 1495 0    50   ~ 0
d1
Text Label 1410 1595 0    50   ~ 0
d2
Text Label 1415 1695 0    50   ~ 0
d3
Text Label 1420 1795 0    50   ~ 0
d4
Text Label 1420 1895 0    50   ~ 0
d5
Text Label 1420 1995 0    50   ~ 0
d6
Text Label 1420 2095 0    50   ~ 0
d7
Text Label 2015 1995 0    50   ~ 0
s6
Text Label 2015 2095 0    50   ~ 0
s7
Text Label 2015 1895 0    50   ~ 0
s5
Text Label 2010 1795 0    50   ~ 0
s4
Text Label 2015 1395 0    50   ~ 0
c1
Text Label 2015 1695 0    50   ~ 0
s3
Text Label 2010 1495 0    50   ~ 0
c2
Text Label 2015 1595 0    50   ~ 0
c3
Text Label 3935 2740 0    50   ~ 0
c0
Text Label 3970 1340 0    50   ~ 0
d0
Text Label 3970 1440 0    50   ~ 0
d1
Text Label 3975 1540 0    50   ~ 0
d2
Text Label 3945 1740 0    50   ~ 0
d3
Text Label 3945 1840 0    50   ~ 0
d4
Text Label 3945 1940 0    50   ~ 0
d5
Text Label 3950 2140 0    50   ~ 0
d6
Text Label 3950 2240 0    50   ~ 0
d7
Text Label 4570 3040 0    50   ~ 0
s6
Text Label 4570 3140 0    50   ~ 0
s7
Text Label 4570 2940 0    50   ~ 0
s5
Text Label 4570 2740 0    50   ~ 0
s4
Text Label 3935 2840 0    50   ~ 0
c1
Text Label 4585 2540 0    50   ~ 0
s3
Text Label 3935 2940 0    50   ~ 0
c2
Text Label 3940 3040 0    50   ~ 0
c3
$Comp
L power:GND #PWR01
U 1 1 62BBB69F
P 1450 2195
F 0 "#PWR01" H 1450 1945 50  0001 C CNN
F 1 "GND" H 1450 2055 50  0000 C CNN
F 2 "" H 1450 2195 50  0001 C CNN
F 3 "" H 1450 2195 50  0001 C CNN
	1    1450 2195
	1    0    0    -1  
$EndComp
Entry Wire Line
	1760 1495 1660 1395
Entry Wire Line
	1760 1595 1660 1495
Entry Wire Line
	1760 1695 1660 1595
Entry Wire Line
	1760 1795 1660 1695
Entry Wire Line
	1760 1895 1660 1795
Entry Wire Line
	1760 1995 1660 1895
Entry Wire Line
	1760 2095 1660 1995
Entry Wire Line
	1760 2195 1660 2095
Wire Wire Line
	1380 1395 1660 1395
Wire Wire Line
	1380 1495 1660 1495
Wire Wire Line
	1380 1595 1660 1595
Wire Wire Line
	1380 1695 1660 1695
Wire Wire Line
	1380 1795 1660 1795
Wire Wire Line
	1380 1895 1660 1895
Wire Wire Line
	1380 1995 1660 1995
Wire Wire Line
	1380 2095 1660 2095
Entry Wire Line
	3795 1440 3895 1340
Entry Wire Line
	3795 1540 3895 1440
Entry Wire Line
	3795 1640 3895 1540
Entry Wire Line
	3795 1840 3895 1740
Entry Wire Line
	3795 1940 3895 1840
Entry Wire Line
	3795 2040 3895 1940
Entry Wire Line
	3795 2240 3895 2140
Entry Wire Line
	3795 2340 3895 2240
Wire Wire Line
	4035 1340 3895 1340
Wire Wire Line
	4035 1440 3895 1440
Wire Wire Line
	3895 1540 4035 1540
Wire Wire Line
	4035 1740 3895 1740
Wire Wire Line
	3895 1840 4035 1840
Wire Wire Line
	4035 1940 3895 1940
Wire Wire Line
	4035 2140 3895 2140
Wire Wire Line
	4035 2240 3895 2240
$Comp
L power:+3.3V #PWR02
U 1 1 62C3C192
P 3885 2095
F 0 "#PWR02" H 3885 1945 50  0001 C CNN
F 1 "+3.3V" H 3955 2205 50  0000 C CNN
F 2 "" H 3885 2095 50  0001 C CNN
F 3 "" H 3885 2095 50  0001 C CNN
	1    3885 2095
	1    0    0    -1  
$EndComp
Wire Wire Line
	3885 2095 3940 2095
Wire Wire Line
	3940 2095 3940 2040
Wire Wire Line
	3940 2040 4035 2040
$Comp
L power:GND #PWR06
U 1 1 62C43765
P 4005 3195
F 0 "#PWR06" H 4005 2945 50  0001 C CNN
F 1 "GND" H 4010 3022 50  0000 C CNN
F 2 "" H 4005 3195 50  0001 C CNN
F 3 "" H 4005 3195 50  0001 C CNN
	1    4005 3195
	1    0    0    -1  
$EndComp
Wire Wire Line
	4035 3140 4005 3140
Wire Wire Line
	4005 3140 4005 3195
Entry Wire Line
	3795 3140 3895 3040
Entry Wire Line
	3795 3040 3895 2940
Entry Wire Line
	3795 2940 3895 2840
Entry Wire Line
	3795 2840 3895 2740
Wire Wire Line
	4035 2740 3895 2740
Wire Wire Line
	4035 2840 3895 2840
Wire Wire Line
	4035 2940 3895 2940
Wire Wire Line
	4035 3040 3895 3040
$Comp
L power:GND #PWR04
U 1 1 62C796AF
P 3940 2380
F 0 "#PWR04" H 3940 2130 50  0001 C CNN
F 1 "GND" H 3940 2255 50  0000 C CNN
F 2 "" H 3940 2380 50  0001 C CNN
F 3 "" H 3940 2380 50  0001 C CNN
	1    3940 2380
	1    0    0    -1  
$EndComp
Wire Wire Line
	4035 2440 4035 2380
Wire Wire Line
	4035 2380 3940 2380
Wire Wire Line
	4035 1565 3935 1565
Wire Wire Line
	4035 1565 4035 1640
Wire Wire Line
	4860 2200 4860 2140
Wire Wire Line
	4860 2140 4710 2140
Wire Bus Line
	3795 4115 4940 4115
Connection ~ 3795 4115
Entry Wire Line
	4940 2640 4840 2540
Wire Wire Line
	4535 2540 4840 2540
Entry Wire Line
	4940 2840 4840 2740
Wire Wire Line
	4535 2740 4840 2740
Entry Wire Line
	4940 3040 4840 2940
Entry Wire Line
	4940 3140 4840 3040
Entry Wire Line
	4940 3240 4840 3140
Wire Wire Line
	4535 3140 4840 3140
Wire Wire Line
	4535 3040 4840 3040
Wire Wire Line
	4535 2940 4840 2940
NoConn ~ 4535 1540
NoConn ~ 4535 1640
NoConn ~ 4535 1740
NoConn ~ 4535 1940
NoConn ~ 4535 2040
NoConn ~ 4535 2240
NoConn ~ 4535 2340
NoConn ~ 4535 2440
NoConn ~ 4035 2640
Text Notes 4025 830  0    79   ~ 0
IDC 2x20
NoConn ~ 4035 2340
NoConn ~ 4035 2540
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 62B966F6
P 1180 1695
F 0 "J1" H 1185 2205 50  0000 C CNN
F 1 "Conn_Left" V 1300 1640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 1180 1695 50  0001 C CNN
F 3 "~" H 1180 1695 50  0001 C CNN
	1    1180 1695
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J3
U 1 1 62B97D27
P 2335 1695
F 0 "J3" H 2305 2230 50  0000 L CNN
F 1 "Conn_Right" V 2445 1455 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 2335 1695 50  0001 C CNN
F 3 "~" H 2335 1695 50  0001 C CNN
	1    2335 1695
	1    0    0    -1  
$EndComp
Entry Wire Line
	1760 1395 1860 1295
Entry Wire Line
	1760 1495 1860 1395
Entry Wire Line
	1760 1595 1860 1495
Entry Wire Line
	1760 1695 1860 1595
Entry Wire Line
	1760 1795 1860 1695
Entry Wire Line
	1760 1895 1860 1795
Entry Wire Line
	1760 1995 1860 1895
Entry Wire Line
	1760 2095 1860 1995
Entry Wire Line
	1760 2195 1860 2095
Wire Wire Line
	1860 1295 2135 1295
Wire Wire Line
	1860 1395 2135 1395
Wire Wire Line
	1860 1495 2135 1495
Wire Wire Line
	1860 1595 2135 1595
Wire Wire Line
	1860 1695 2135 1695
Wire Wire Line
	1860 1795 2135 1795
Wire Wire Line
	1860 1895 2135 1895
Wire Wire Line
	1860 1995 2135 1995
Wire Wire Line
	1860 2095 2135 2095
$Comp
L power:+5V #PWR09
U 1 1 62C48A70
P 1485 1290
F 0 "#PWR09" H 1485 1140 50  0001 C CNN
F 1 "+5V" H 1485 1435 50  0000 C CNN
F 2 "" H 1485 1290 50  0001 C CNN
F 3 "" H 1485 1290 50  0001 C CNN
	1    1485 1290
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 62C494F9
P 1980 2325
F 0 "#PWR010" H 1980 2175 50  0001 C CNN
F 1 "+3.3V" H 1965 2465 50  0000 C CNN
F 2 "" H 1980 2325 50  0001 C CNN
F 3 "" H 1980 2325 50  0001 C CNN
	1    1980 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1380 1295 1485 1295
Wire Wire Line
	1485 1295 1485 1290
Wire Wire Line
	1380 2195 1450 2195
Wire Wire Line
	1980 2325 2135 2325
Wire Wire Line
	2135 2325 2135 2195
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 62C85707
P 4880 1090
F 0 "#FLG0101" H 4880 1165 50  0001 C CNN
F 1 "PWR_FLAG" H 5005 1260 50  0000 C CNN
F 2 "" H 4880 1090 50  0001 C CNN
F 3 "~" H 4880 1090 50  0001 C CNN
	1    4880 1090
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 62C869A1
P 3775 1080
F 0 "#FLG0102" H 3775 1155 50  0001 C CNN
F 1 "PWR_FLAG" H 3630 1255 50  0000 C CNN
F 2 "" H 3775 1080 50  0001 C CNN
F 3 "~" H 3775 1080 50  0001 C CNN
	1    3775 1080
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 62C8718B
P 4860 2065
F 0 "#FLG0103" H 4860 2140 50  0001 C CNN
F 1 "PWR_FLAG" H 4965 2220 50  0000 C CNN
F 2 "" H 4860 2065 50  0001 C CNN
F 3 "~" H 4860 2065 50  0001 C CNN
	1    4860 2065
	1    0    0    -1  
$EndComp
Wire Wire Line
	4860 2065 4860 2140
Connection ~ 4860 2140
Wire Wire Line
	3775 1080 3775 1240
Wire Wire Line
	3775 1240 3945 1240
Connection ~ 3945 1240
Wire Wire Line
	3945 1240 4035 1240
Wire Wire Line
	4880 1090 4880 1240
Wire Wire Line
	4880 1240 4675 1240
Wire Bus Line
	4940 2535 4940 4115
Wire Bus Line
	1760 1305 1760 4115
Wire Bus Line
	3795 1385 3795 4115
$EndSCHEMATC