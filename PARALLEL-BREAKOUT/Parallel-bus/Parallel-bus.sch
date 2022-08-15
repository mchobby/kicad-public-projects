EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Parallel Port to bus"
Date "2022-08-07"
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
P 1860 3130
F 0 "J2" H 1910 4247 50  0000 C CNN
F 1 "Conn_RASP" H 1910 4156 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 1860 3130 50  0001 C CNN
F 3 "~" H 1860 3130 50  0001 C CNN
	1    1860 3130
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 62B800DA
P 1570 2075
F 0 "#PWR05" H 1570 1925 50  0001 C CNN
F 1 "+3.3V" H 1585 2248 50  0000 C CNN
F 2 "" H 1570 2075 50  0001 C CNN
F 3 "" H 1570 2075 50  0001 C CNN
	1    1570 2075
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 62B80F13
P 2300 2080
F 0 "#PWR07" H 2300 1930 50  0001 C CNN
F 1 "+5V" H 2315 2253 50  0000 C CNN
F 2 "" H 2300 2080 50  0001 C CNN
F 3 "" H 2300 2080 50  0001 C CNN
	1    2300 2080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 62B83319
P 2485 3190
F 0 "#PWR08" H 2485 2940 50  0001 C CNN
F 1 "GND" H 2615 3110 50  0000 C CNN
F 2 "" H 2485 3190 50  0001 C CNN
F 3 "" H 2485 3190 50  0001 C CNN
	1    2485 3190
	1    0    0    -1  
$EndComp
Wire Wire Line
	2160 3630 2335 3630
Wire Wire Line
	2335 3630 2335 3830
Wire Wire Line
	2160 3830 2335 3830
Wire Wire Line
	2160 3130 2335 3130
Wire Wire Line
	2335 3130 2335 3630
Connection ~ 2335 3630
Wire Wire Line
	2160 2830 2335 2830
Wire Wire Line
	2335 2830 2335 3130
Connection ~ 2335 3130
Wire Wire Line
	2160 2430 2335 2430
Wire Wire Line
	2335 2430 2335 2830
Connection ~ 2335 2830
Wire Wire Line
	2160 2330 2300 2330
Wire Wire Line
	2300 2330 2300 2230
Wire Wire Line
	2160 2230 2300 2230
Connection ~ 2300 2230
Wire Wire Line
	2300 2230 2300 2080
Wire Wire Line
	1570 2230 1570 2075
$Comp
L power:GND #PWR03
U 1 1 62B91B06
P 1560 2555
F 0 "#PWR03" H 1560 2305 50  0001 C CNN
F 1 "GND" H 1485 2455 50  0000 C CNN
F 2 "" H 1560 2555 50  0001 C CNN
F 3 "" H 1560 2555 50  0001 C CNN
	1    1560 2555
	1    0    0    -1  
$EndComp
Text Label 1560 3730 0    50   ~ 0
c0
Text Label 1595 2330 0    50   ~ 0
d0
Text Label 1595 2430 0    50   ~ 0
d1
Text Label 1600 2530 0    50   ~ 0
d2
Text Label 1570 2730 0    50   ~ 0
d3
Text Label 1570 2830 0    50   ~ 0
d4
Text Label 1570 2930 0    50   ~ 0
d5
Text Label 1575 3130 0    50   ~ 0
d6
Text Label 1575 3230 0    50   ~ 0
d7
Text Label 2195 4030 0    50   ~ 0
s6
Text Label 2195 4130 0    50   ~ 0
s7
Text Label 2195 3930 0    50   ~ 0
s5
Text Label 2195 3730 0    50   ~ 0
s4
Text Label 1560 3830 0    50   ~ 0
c1
Text Label 2210 3530 0    50   ~ 0
s3
Text Label 1560 3930 0    50   ~ 0
c2
Text Label 1565 4030 0    50   ~ 0
c3
Entry Wire Line
	1420 2430 1520 2330
Entry Wire Line
	1420 2530 1520 2430
Entry Wire Line
	1420 2630 1520 2530
Entry Wire Line
	1420 2830 1520 2730
Entry Wire Line
	1420 2930 1520 2830
Entry Wire Line
	1420 3030 1520 2930
Entry Wire Line
	1420 3230 1520 3130
Entry Wire Line
	1420 3330 1520 3230
Wire Wire Line
	1660 2330 1520 2330
Wire Wire Line
	1660 2430 1520 2430
Wire Wire Line
	1520 2530 1660 2530
Wire Wire Line
	1660 2730 1520 2730
Wire Wire Line
	1520 2830 1660 2830
Wire Wire Line
	1660 2930 1520 2930
Wire Wire Line
	1660 3130 1520 3130
Wire Wire Line
	1660 3230 1520 3230
$Comp
L power:+3.3V #PWR02
U 1 1 62C3C192
P 1510 3085
F 0 "#PWR02" H 1510 2935 50  0001 C CNN
F 1 "+3.3V" H 1580 3195 50  0000 C CNN
F 2 "" H 1510 3085 50  0001 C CNN
F 3 "" H 1510 3085 50  0001 C CNN
	1    1510 3085
	1    0    0    -1  
$EndComp
Wire Wire Line
	1510 3085 1565 3085
Wire Wire Line
	1565 3085 1565 3030
Wire Wire Line
	1565 3030 1660 3030
$Comp
L power:GND #PWR06
U 1 1 62C43765
P 1630 4185
F 0 "#PWR06" H 1630 3935 50  0001 C CNN
F 1 "GND" H 1450 4120 50  0000 C CNN
F 2 "" H 1630 4185 50  0001 C CNN
F 3 "" H 1630 4185 50  0001 C CNN
	1    1630 4185
	1    0    0    -1  
$EndComp
Wire Wire Line
	1660 4130 1630 4130
Wire Wire Line
	1630 4130 1630 4185
Wire Wire Line
	1660 3830 1520 3830
Wire Wire Line
	1660 3930 1520 3930
Wire Wire Line
	1660 4030 1520 4030
$Comp
L power:GND #PWR04
U 1 1 62C796AF
P 1565 3370
F 0 "#PWR04" H 1565 3120 50  0001 C CNN
F 1 "GND" H 1565 3245 50  0000 C CNN
F 2 "" H 1565 3370 50  0001 C CNN
F 3 "" H 1565 3370 50  0001 C CNN
	1    1565 3370
	1    0    0    -1  
$EndComp
Wire Wire Line
	1660 3430 1660 3370
Wire Wire Line
	1660 3370 1565 3370
Wire Wire Line
	1660 2555 1560 2555
Wire Wire Line
	1660 2555 1660 2630
Wire Wire Line
	2485 3190 2485 3130
Wire Wire Line
	2485 3130 2335 3130
Wire Wire Line
	2160 4130 2465 4130
NoConn ~ 2160 2530
NoConn ~ 2160 2630
NoConn ~ 2160 2730
NoConn ~ 2160 2930
NoConn ~ 2160 3030
NoConn ~ 2160 3230
NoConn ~ 2160 3330
NoConn ~ 2160 3430
NoConn ~ 1660 3630
Text Notes 1650 1820 0    79   ~ 0
IDC 2x20
NoConn ~ 1660 3330
NoConn ~ 1660 3530
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 62C85707
P 2505 2080
F 0 "#FLG0101" H 2505 2155 50  0001 C CNN
F 1 "PWR_FLAG" H 2630 2250 50  0000 C CNN
F 2 "" H 2505 2080 50  0001 C CNN
F 3 "~" H 2505 2080 50  0001 C CNN
	1    2505 2080
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 62C869A1
P 1400 2070
F 0 "#FLG0102" H 1400 2145 50  0001 C CNN
F 1 "PWR_FLAG" H 1255 2245 50  0000 C CNN
F 2 "" H 1400 2070 50  0001 C CNN
F 3 "~" H 1400 2070 50  0001 C CNN
	1    1400 2070
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 62C8718B
P 2485 3055
F 0 "#FLG0103" H 2485 3130 50  0001 C CNN
F 1 "PWR_FLAG" H 2590 3210 50  0000 C CNN
F 2 "" H 2485 3055 50  0001 C CNN
F 3 "~" H 2485 3055 50  0001 C CNN
	1    2485 3055
	1    0    0    -1  
$EndComp
Wire Wire Line
	2485 3055 2485 3130
Connection ~ 2485 3130
Wire Wire Line
	1400 2070 1400 2230
Wire Wire Line
	1400 2230 1570 2230
Connection ~ 1570 2230
Wire Wire Line
	1570 2230 1660 2230
Wire Wire Line
	2505 2080 2505 2230
Wire Wire Line
	2505 2230 2300 2230
$Comp
L 4xxx:4028 U103
U 1 1 62F028A1
P 4070 6360
F 0 "U103" H 4225 6930 50  0000 C CNN
F 1 "4028" V 4055 6460 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 4070 6360 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4028bms.pdf" H 4070 6360 50  0001 C CNN
	1    4070 6360
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC273 U104
U 1 1 62F05152
P 4165 1925
F 0 "U104" H 4295 2590 50  0000 C CNN
F 1 "74HC273" V 4155 2005 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 4165 1925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 4165 1925 50  0001 C CNN
	1    4165 1925
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC273 U102
U 1 1 62F06B4D
P 2725 6660
F 0 "U102" H 2865 7350 50  0000 C CNN
F 1 "74HC273" V 2710 6710 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 2725 6660 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 2725 6660 50  0001 C CNN
	1    2725 6660
	1    0    0    -1  
$EndComp
Text GLabel 1520 4030 0    50   Output ~ 0
clock
Text Label 2065 6160 0    50   ~ 0
d0
Text Label 2070 6260 0    50   ~ 0
d1
Text Label 2070 6360 0    50   ~ 0
d2
Text Label 2070 6460 0    50   ~ 0
d3
Wire Wire Line
	2225 6460 2035 6460
Wire Wire Line
	2035 6360 2225 6360
Wire Wire Line
	2035 6260 2225 6260
Text Label 2065 6560 0    50   ~ 0
d4
Text Label 2070 6660 0    50   ~ 0
d5
Text Label 2070 6760 0    50   ~ 0
d6
Text Label 2070 6860 0    50   ~ 0
d7
Wire Wire Line
	2225 6860 2035 6860
Wire Wire Line
	2035 6760 2225 6760
Wire Wire Line
	2035 6660 2225 6660
Wire Wire Line
	3225 6160 3570 6160
Wire Wire Line
	3225 6260 3570 6260
Wire Wire Line
	3225 6360 3570 6360
Text Notes 2630 7015 0    50   ~ 0
8bits\nlatch
Text Notes 3895 6690 0    50   ~ 0
bcd-to\ndecimal
Text Notes 970  5670 0    79   ~ 16
Control-Bus
$Comp
L power:GND #PWR0105
U 1 1 62FAC28B
P 3570 6515
F 0 "#PWR0105" H 3570 6265 50  0001 C CNN
F 1 "GND" H 3655 6510 50  0000 C CNN
F 2 "" H 3570 6515 50  0001 C CNN
F 3 "" H 3570 6515 50  0001 C CNN
	1    3570 6515
	1    0    0    -1  
$EndComp
Wire Wire Line
	3570 6460 3570 6515
$Comp
L 4xxx:4081 U101
U 1 1 62FB82E3
P 1500 7060
F 0 "U101" H 1500 7385 50  0000 C CNN
F 1 "4081" H 1500 7294 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1500 7060 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 1500 7060 50  0001 C CNN
	1    1500 7060
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4081 U101
U 3 1 62FBAAB6
P 1995 4565
F 0 "U101" H 1990 4770 50  0000 C CNN
F 1 "4081" H 1980 4575 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1995 4565 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 1995 4565 50  0001 C CNN
	3    1995 4565
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4081 U101
U 4 1 62FBE30C
P 7755 2225
F 0 "U101" H 7715 2420 50  0000 C CNN
F 1 "4081" H 7745 2225 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7755 2225 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 7755 2225 50  0001 C CNN
	4    7755 2225
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4081 U101
U 5 1 62FBFC2E
P 10015 5650
F 0 "U101" H 10245 5696 50  0000 L CNN
F 1 "4081" H 10245 5605 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10015 5650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 10015 5650 50  0001 C CNN
	5    10015 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 7060 1800 7060
Text GLabel 1140 6960 0    50   Input ~ 0
clock
Wire Wire Line
	1200 6960 1140 6960
Text GLabel 1520 3730 0    59   Output ~ 0
ctrl-latch
Text GLabel 1140 7160 0    59   Input ~ 0
ctrl-latch
Wire Wire Line
	1200 7160 1140 7160
Text Notes 975  3675 0    59   ~ 0
control-bus
Text Notes 1500 1615 0    79   ~ 0
Parallel-GPIO
Text Notes 4055 2230 0    50   ~ 0
8bits\nlatch
Text Label 3505 1425 0    50   ~ 0
d0
Text Label 3510 1525 0    50   ~ 0
d1
Text Label 3510 1625 0    50   ~ 0
d2
Text Label 3510 1725 0    50   ~ 0
d3
Wire Wire Line
	3665 1725 3475 1725
Wire Wire Line
	3475 1625 3665 1625
Wire Wire Line
	3475 1525 3665 1525
Text Label 3505 1825 0    50   ~ 0
d4
Text Label 3510 1925 0    50   ~ 0
d5
Text Label 3510 2025 0    50   ~ 0
d6
Text Label 3510 2125 0    50   ~ 0
d7
Wire Wire Line
	3665 2125 3475 2125
Wire Wire Line
	3475 2025 3665 2025
Wire Wire Line
	3475 1925 3665 1925
Text Notes 4630 1155 0    79   ~ 0
Data-Bus\n  write
Text Notes 4900 4690 0    55   ~ 0
parallel\ninput by\nNibble
Text GLabel 1520 3830 0    55   Output ~ 0
data-latch
Text GLabel 1625 4465 0    55   Input ~ 0
data-latch
Text GLabel 1625 4665 0    55   Input ~ 0
clock
Wire Wire Line
	2960 2225 3015 2225
Wire Wire Line
	2965 2425 3015 2425
Wire Wire Line
	3615 2325 3665 2325
Text Notes 725  2960 1    55   ~ 0
Parallel Port data lines
$Comp
L 74xx:74HC245 U107
U 1 1 630DA0EC
P 5650 1925
F 0 "U107" H 5795 2595 50  0000 C CNN
F 1 "74HC245" V 5585 2120 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5650 1925 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 5650 1925 50  0001 C CNN
	1    5650 1925
	1    0    0    -1  
$EndComp
Text Notes 5410 2275 0    55   ~ 0
  3states\ntransceiver
$Comp
L power:+5V #PWR0110
U 1 1 630DEA4F
P 5100 2285
F 0 "#PWR0110" H 5100 2135 50  0001 C CNN
F 1 "+5V" H 5205 2365 50  0000 C CNN
F 2 "" H 5100 2285 50  0001 C CNN
F 3 "" H 5100 2285 50  0001 C CNN
	1    5100 2285
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2325 5100 2325
Wire Wire Line
	5100 2325 5100 2285
Text Notes 4845 2305 0    55   ~ 0
a->b
Wire Wire Line
	4665 1425 5150 1425
Wire Wire Line
	4665 2125 5150 2125
Wire Wire Line
	5150 2025 4665 2025
Wire Wire Line
	4665 1925 5150 1925
Wire Wire Line
	5150 1825 4665 1825
Wire Wire Line
	4665 1725 5150 1725
Wire Wire Line
	5150 1625 4665 1625
Wire Wire Line
	4665 1525 5150 1525
$Comp
L 74xx_mch:74HC04 U105
U 1 1 631CD973
P 4855 2510
F 0 "U105" H 5115 2420 50  0000 R CNN
F 1 "74HC04" H 5035 2645 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4855 2510 50  0001 C CNN
F 3 "" H 4855 2510 50  0001 C CNN
	1    4855 2510
	1    0    0    -1  
$EndComp
$Comp
L 74xx_mch:74HC04 U105
U 5 1 631D193E
P 7905 4885
F 0 "U105" H 7992 5170 50  0000 C CNN
F 1 "74HC04" H 7992 5079 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7905 4885 50  0001 C CNN
F 3 "" H 7905 4885 50  0001 C CNN
	5    7905 4885
	1    0    0    -1  
$EndComp
$Comp
L 74xx_mch:74HC04 U105
U 3 1 631D2432
P 2665 4945
F 0 "U105" H 2715 5060 50  0000 C CNN
F 1 "74HC04" H 2730 4870 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2665 4945 50  0001 C CNN
F 3 "" H 2665 4945 50  0001 C CNN
	3    2665 4945
	1    0    0    -1  
$EndComp
$Comp
L 74xx_mch:74HC04 U105
U 2 1 631D345A
P 3755 5110
F 0 "U105" H 3825 5230 50  0000 C CNN
F 1 "74HC04" H 3830 4995 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3755 5110 50  0001 C CNN
F 3 "" H 3755 5110 50  0001 C CNN
	2    3755 5110
	1    0    0    -1  
$EndComp
$Comp
L 74xx_mch:74HC04 U105
U 4 1 631D4270
P 7890 5390
F 0 "U105" H 7977 5675 50  0000 C CNN
F 1 "74HC04" H 7977 5584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7890 5390 50  0001 C CNN
F 3 "" H 7890 5390 50  0001 C CNN
	4    7890 5390
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC273 U110
U 1 1 6321FC96
P 8900 1825
F 0 "U110" H 9060 2485 50  0000 C CNN
F 1 "74HC273" V 8890 1905 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 8900 1825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 8900 1825 50  0001 C CNN
	1    8900 1825
	1    0    0    -1  
$EndComp
Text Notes 8790 2130 0    50   ~ 0
8bits\nlatch
Text Label 8240 1325 0    50   ~ 0
d0
Text Label 8245 1425 0    50   ~ 0
d1
Text Label 8245 1525 0    50   ~ 0
d2
Text Label 8245 1625 0    50   ~ 0
d3
Wire Wire Line
	8400 1625 8210 1625
Wire Wire Line
	8210 1525 8400 1525
Wire Wire Line
	8210 1425 8400 1425
Text Label 8240 1725 0    50   ~ 0
d4
Text Label 8245 1825 0    50   ~ 0
d5
Text Label 8245 1925 0    50   ~ 0
d6
Text Label 8245 2025 0    50   ~ 0
d7
Wire Wire Line
	8400 2025 8210 2025
Wire Wire Line
	8210 1925 8400 1925
Wire Wire Line
	8210 1825 8400 1825
$Comp
L 74xx:74HC273 U111
U 1 1 63236A23
P 8900 3650
F 0 "U111" H 9075 4310 50  0000 C CNN
F 1 "74HC273" V 8890 3730 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 8900 3650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 8900 3650 50  0001 C CNN
	1    8900 3650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4081 U109
U 1 1 63236DA3
P 8050 4050
F 0 "U109" H 8010 4240 50  0000 C CNN
F 1 "4081" H 8040 4050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8050 4050 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 8050 4050 50  0001 C CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
Text Notes 8790 3955 0    50   ~ 0
8bits\nlatch
Text Label 8240 3150 0    50   ~ 0
d0
Text Label 8245 3250 0    50   ~ 0
d1
Text Label 8245 3350 0    50   ~ 0
d2
Text Label 8245 3450 0    50   ~ 0
d3
Wire Wire Line
	8400 3450 8210 3450
Wire Wire Line
	8210 3350 8400 3350
Wire Wire Line
	8210 3250 8400 3250
Text Label 8240 3550 0    50   ~ 0
d4
Text Label 8245 3650 0    50   ~ 0
d5
Text Label 8245 3750 0    50   ~ 0
d6
Text Label 8245 3850 0    50   ~ 0
d7
Wire Wire Line
	8400 3850 8210 3850
Wire Wire Line
	8210 3750 8400 3750
Wire Wire Line
	8210 3650 8400 3650
$Comp
L 74xx:74HC245 U112
U 1 1 632A05C7
P 10220 1825
F 0 "U112" H 10380 2485 50  0000 C CNN
F 1 "74HC245" V 10155 2020 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 10220 1825 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 10220 1825 50  0001 C CNN
	1    10220 1825
	1    0    0    -1  
$EndComp
Text Notes 9980 2175 0    55   ~ 0
  3states\ntransceiver
$Comp
L 74xx:74HC245 U113
U 1 1 632BDA2C
P 10235 3650
F 0 "U113" H 10380 4310 50  0000 C CNN
F 1 "74HC245" V 10170 3845 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 10235 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 10235 3650 50  0001 C CNN
	1    10235 3650
	1    0    0    -1  
$EndComp
Text Notes 9995 3985 0    55   ~ 0
  3states\ntransceiver
Text Label 4593 6260 0    55   ~ 0
addr-h-set
Wire Wire Line
	7750 4150 7280 4150
Wire Wire Line
	8350 4050 8400 4050
Text GLabel 7455 2125 0    55   Input ~ 0
data-pulse
Text GLabel 7750 3950 0    55   Input ~ 0
data-pulse
Text Label 4593 6060 0    55   ~ 0
data-set
Text GLabel 2330 4565 2    55   Output ~ 0
data-pulse
Wire Wire Line
	2295 4565 2330 4565
Wire Wire Line
	1625 4465 1695 4465
Wire Wire Line
	1625 4665 1695 4665
Text GLabel 2960 2225 0    55   Input ~ 0
data-pulse
Wire Wire Line
	2965 2425 2965 2980
Wire Wire Line
	5150 2425 5150 2510
Wire Wire Line
	4735 2510 4605 2510
Wire Wire Line
	4605 2510 4605 2740
Wire Wire Line
	4605 2740 4890 2740
Text Label 3240 6760 0    55   ~ 0
addr-out
Wire Wire Line
	3225 6760 3445 6760
Wire Wire Line
	9720 2325 9605 2325
Wire Wire Line
	9400 3650 9735 3650
Wire Wire Line
	9400 3750 9735 3750
Wire Wire Line
	9400 3850 9735 3850
Wire Wire Line
	9400 3150 9735 3150
Wire Wire Line
	9400 3250 9735 3250
Wire Wire Line
	9400 3350 9735 3350
Wire Wire Line
	9400 3450 9735 3450
Wire Wire Line
	9400 3550 9735 3550
Wire Wire Line
	9735 4150 9730 4150
Wire Wire Line
	9605 2325 9605 4150
Wire Wire Line
	9730 4285 9730 4150
Connection ~ 9730 4150
Wire Wire Line
	9730 4150 9605 4150
$Comp
L power:+5V #PWR0127
U 1 1 6353909D
P 9655 2185
F 0 "#PWR0127" H 9655 2035 50  0001 C CNN
F 1 "+5V" H 9760 2265 50  0000 C CNN
F 2 "" H 9655 2185 50  0001 C CNN
F 3 "" H 9655 2185 50  0001 C CNN
	1    9655 2185
	1    0    0    -1  
$EndComp
Wire Wire Line
	9720 2225 9655 2225
Wire Wire Line
	9655 2225 9655 2185
$Comp
L power:+5V #PWR0128
U 1 1 63542276
P 9685 4005
F 0 "#PWR0128" H 9685 3855 50  0001 C CNN
F 1 "+5V" H 9790 4085 50  0000 C CNN
F 2 "" H 9685 4005 50  0001 C CNN
F 3 "" H 9685 4005 50  0001 C CNN
	1    9685 4005
	1    0    0    -1  
$EndComp
Wire Wire Line
	9735 4050 9685 4050
Wire Wire Line
	9685 4050 9685 4005
Wire Wire Line
	9400 1325 9720 1325
Wire Wire Line
	9720 1425 9400 1425
Wire Wire Line
	9400 1525 9720 1525
Wire Wire Line
	9720 1625 9400 1625
Wire Wire Line
	9400 1725 9720 1725
Wire Wire Line
	9720 1825 9400 1825
Wire Wire Line
	9400 1925 9720 1925
Wire Wire Line
	9720 2025 9400 2025
Wire Wire Line
	9315 4285 9255 4285
Wire Wire Line
	9255 4285 9255 4525
Wire Wire Line
	9255 4525 9550 4525
Text Label 9280 4525 0    55   ~ 0
addr-out
Text Notes 9305 1105 0    79   ~ 0
Addr-Bus\n  write
Wire Wire Line
	2965 2980 7020 2980
Entry Wire Line
	2560 3930 2460 4030
Wire Wire Line
	2160 4030 2460 4030
Entry Wire Line
	4350 4300 4450 4400
Wire Wire Line
	4620 4400 4450 4400
Entry Wire Line
	4350 4000 4450 4100
Entry Wire Line
	4350 3700 4450 3800
Entry Wire Line
	4350 3400 4450 3500
Wire Wire Line
	4620 3500 4450 3500
Wire Wire Line
	4620 4100 4450 4100
Wire Wire Line
	4620 3800 4450 3800
Text Notes 4250 3310 0    79   ~ 0
Data-Bus\n  read
$Comp
L power:GND #PWR0115
U 1 1 637080EF
P 6360 4700
F 0 "#PWR0115" H 6360 4450 50  0001 C CNN
F 1 "GND" H 6365 4550 50  0000 C CNN
F 2 "" H 6360 4700 50  0001 C CNN
F 3 "" H 6360 4700 50  0001 C CNN
	1    6360 4700
	1    0    0    -1  
$EndComp
Text Notes 5450 4995 0    55   ~ 0
low=low\n  nibble
Text GLabel 1520 3930 0    55   Output ~ 0
high-nibble
Text GLabel 5670 4800 2    55   Input ~ 0
high-nibble
Wire Bus Line
	4350 3385 2560 3385
Wire Wire Line
	5620 4800 5670 4800
Entry Wire Line
	2560 3830 2460 3930
Entry Wire Line
	2560 3630 2460 3730
Entry Wire Line
	2560 3430 2460 3530
Wire Wire Line
	2160 3530 2460 3530
Wire Wire Line
	2160 3730 2460 3730
Wire Wire Line
	2160 3930 2460 3930
Text Notes 6150 2525 0    79   ~ 16
  8 bits\ndata bus
Text Notes 10760 2850 0    79   ~ 16
16bits\n addr\n  bus
Text Label 4591 6160 0    55   ~ 0
addr-l-set
Text Notes 4450 7105 0    55   ~ 0
Only one bit can be \nset  at the time.
Text Notes 3055 7405 0    55   ~ 0
Multiple bits can be \nset at the time.
NoConn ~ 4570 6760
NoConn ~ 4570 6860
Text Label 4600 6360 0    55   ~ 0
set4
Text Label 4595 6460 0    55   ~ 0
set5
Text Label 4590 6560 0    55   ~ 0
set6
Text Label 4595 6660 0    55   ~ 0
set7
Text Notes 4455 7305 0    55   ~ 0
Great to set/push\ndata into latch.
Text Notes 3060 7605 0    55   ~ 0
Great to activates\nbus & peripherals.
Wire Wire Line
	4570 6360 4845 6360
Wire Wire Line
	4570 6460 4845 6460
Wire Wire Line
	4570 6560 4845 6560
Wire Wire Line
	4570 6660 4845 6660
$Comp
L power:GND #PWR0116
U 1 1 63B11C4A
P 7685 5470
F 0 "#PWR0116" H 7685 5220 50  0001 C CNN
F 1 "GND" H 7545 5410 50  0000 C CNN
F 2 "" H 7685 5470 50  0001 C CNN
F 3 "" H 7685 5470 50  0001 C CNN
	1    7685 5470
	1    0    0    -1  
$EndComp
Wire Wire Line
	7770 5390 7685 5390
NoConn ~ 8200 4885
NoConn ~ 8185 5390
$Comp
L power:GND #PWR0126
U 1 1 63BF6580
P 10015 6185
F 0 "#PWR0126" H 10015 5935 50  0001 C CNN
F 1 "GND" H 10020 6012 50  0000 C CNN
F 2 "" H 10015 6185 50  0001 C CNN
F 3 "" H 10015 6185 50  0001 C CNN
	1    10015 6185
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 63BF9098
P 10015 5100
F 0 "#PWR0125" H 10015 4950 50  0001 C CNN
F 1 "+5V" H 10015 5245 50  0000 C CNN
F 2 "" H 10015 5100 50  0001 C CNN
F 3 "" H 10015 5100 50  0001 C CNN
	1    10015 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10015 6150 10015 6160
$Comp
L power:GND #PWR0107
U 1 1 63C24A32
P 4070 7200
F 0 "#PWR0107" H 4070 6950 50  0001 C CNN
F 1 "GND" H 4075 7027 50  0000 C CNN
F 2 "" H 4070 7200 50  0001 C CNN
F 3 "" H 4070 7200 50  0001 C CNN
	1    4070 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 63C261E0
P 2725 7500
F 0 "#PWR0103" H 2725 7250 50  0001 C CNN
F 1 "GND" H 2730 7327 50  0000 C CNN
F 2 "" H 2725 7500 50  0001 C CNN
F 3 "" H 2725 7500 50  0001 C CNN
	1    2725 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 63C29073
P 2725 5810
F 0 "#PWR0102" H 2725 5660 50  0001 C CNN
F 1 "+5V" H 2740 5983 50  0000 C CNN
F 2 "" H 2725 5810 50  0001 C CNN
F 3 "" H 2725 5810 50  0001 C CNN
	1    2725 5810
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 63C2DEF1
P 5120 3155
F 0 "#PWR0111" H 5120 3005 50  0001 C CNN
F 1 "+5V" H 5245 3230 50  0000 C CNN
F 2 "" H 5120 3155 50  0001 C CNN
F 3 "" H 5120 3155 50  0001 C CNN
	1    5120 3155
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 63C35140
P 5120 5135
F 0 "#PWR0112" H 5120 4885 50  0001 C CNN
F 1 "GND" H 5125 4962 50  0000 C CNN
F 2 "" H 5120 5135 50  0001 C CNN
F 3 "" H 5120 5135 50  0001 C CNN
	1    5120 5135
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 63C3C8AF
P 5650 2765
F 0 "#PWR0114" H 5650 2515 50  0001 C CNN
F 1 "GND" H 5650 2625 50  0000 C CNN
F 2 "" H 5650 2765 50  0001 C CNN
F 3 "" H 5650 2765 50  0001 C CNN
	1    5650 2765
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 63C4031D
P 4165 2760
F 0 "#PWR0109" H 4165 2510 50  0001 C CNN
F 1 "GND" H 4165 2620 50  0000 C CNN
F 2 "" H 4165 2760 50  0001 C CNN
F 3 "" H 4165 2760 50  0001 C CNN
	1    4165 2760
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 63C44C75
P 5650 1090
F 0 "#PWR0113" H 5650 940 50  0001 C CNN
F 1 "+5V" H 5665 1263 50  0000 C CNN
F 2 "" H 5650 1090 50  0001 C CNN
F 3 "" H 5650 1090 50  0001 C CNN
	1    5650 1090
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 63C465FC
P 4165 1090
F 0 "#PWR0108" H 4165 940 50  0001 C CNN
F 1 "+5V" H 4180 1263 50  0000 C CNN
F 2 "" H 4165 1090 50  0001 C CNN
F 3 "" H 4165 1090 50  0001 C CNN
	1    4165 1090
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 63C48A4B
P 8900 990
F 0 "#PWR0121" H 8900 840 50  0001 C CNN
F 1 "+5V" H 8915 1163 50  0000 C CNN
F 2 "" H 8900 990 50  0001 C CNN
F 3 "" H 8900 990 50  0001 C CNN
	1    8900 990 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 63C48FBF
P 10220 990
F 0 "#PWR0129" H 10220 840 50  0001 C CNN
F 1 "+5V" H 10235 1163 50  0000 C CNN
F 2 "" H 10220 990 50  0001 C CNN
F 3 "" H 10220 990 50  0001 C CNN
	1    10220 990 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 63C4B61C
P 10300 2850
F 0 "#PWR0132" H 10300 2700 50  0001 C CNN
F 1 "+5V" H 10400 2940 50  0000 C CNN
F 2 "" H 10300 2850 50  0001 C CNN
F 3 "" H 10300 2850 50  0001 C CNN
	1    10300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 63C4DC29
P 8955 2850
F 0 "#PWR0124" H 8955 2700 50  0001 C CNN
F 1 "+5V" H 9055 2940 50  0000 C CNN
F 2 "" H 8955 2850 50  0001 C CNN
F 3 "" H 8955 2850 50  0001 C CNN
	1    8955 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 63C4F17D
P 8900 2660
F 0 "#PWR0122" H 8900 2410 50  0001 C CNN
F 1 "GND" H 8755 2585 50  0000 C CNN
F 2 "" H 8900 2660 50  0001 C CNN
F 3 "" H 8900 2660 50  0001 C CNN
	1    8900 2660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 63C50D22
P 10220 2660
F 0 "#PWR0130" H 10220 2410 50  0001 C CNN
F 1 "GND" H 10090 2570 50  0000 C CNN
F 2 "" H 10220 2660 50  0001 C CNN
F 3 "" H 10220 2660 50  0001 C CNN
	1    10220 2660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 63C5946E
P 8275 5000
F 0 "#PWR0118" H 8275 4750 50  0001 C CNN
F 1 "GND" H 8385 4900 50  0000 C CNN
F 2 "" H 8275 5000 50  0001 C CNN
F 3 "" H 8275 5000 50  0001 C CNN
	1    8275 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 63C5A12D
P 8275 4765
F 0 "#PWR0117" H 8275 4615 50  0001 C CNN
F 1 "+5V" H 8375 4850 50  0000 C CNN
F 2 "" H 8275 4765 50  0001 C CNN
F 3 "" H 8275 4765 50  0001 C CNN
	1    8275 4765
	1    0    0    -1  
$EndComp
Wire Wire Line
	7983 4949 7983 5000
Wire Wire Line
	7983 5000 8275 5000
Wire Wire Line
	7983 4825 7983 4766
Wire Wire Line
	7983 4766 8275 4766
Wire Wire Line
	8275 4766 8275 4765
$Comp
L power:GND #PWR0123
U 1 1 63C83025
P 8900 4490
F 0 "#PWR0123" H 8900 4240 50  0001 C CNN
F 1 "GND" H 8905 4317 50  0000 C CNN
F 2 "" H 8900 4490 50  0001 C CNN
F 3 "" H 8900 4490 50  0001 C CNN
	1    8900 4490
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 63C8472D
P 10235 4495
F 0 "#PWR0131" H 10235 4245 50  0001 C CNN
F 1 "GND" H 10240 4322 50  0000 C CNN
F 2 "" H 10235 4495 50  0001 C CNN
F 3 "" H 10235 4495 50  0001 C CNN
	1    10235 4495
	1    0    0    -1  
$EndComp
Wire Wire Line
	10235 4450 10235 4495
Wire Wire Line
	8900 4450 8900 4490
Wire Wire Line
	8900 2850 8955 2850
Wire Wire Line
	10235 2850 10300 2850
Wire Wire Line
	10220 2660 10220 2625
Wire Wire Line
	8900 2660 8900 2625
Wire Wire Line
	8900 1025 8900 990 
Wire Wire Line
	10220 1025 10220 990 
Wire Wire Line
	5120 5135 5120 5100
Wire Wire Line
	5120 3200 5120 3155
Wire Wire Line
	5650 2765 5650 2725
Wire Wire Line
	4165 2760 4165 2725
Wire Wire Line
	4165 1125 4165 1090
Wire Wire Line
	5650 1125 5650 1090
Wire Wire Line
	2725 5860 2725 5835
Wire Wire Line
	2725 7460 2725 7500
Wire Wire Line
	4070 7160 4070 7200
$Sheet
S 8140 5700 1355 595 
U 63DEC30C
F0 "Bus-Connector" 55
F1 "bus-connector.sch" 55
$EndSheet
Text GLabel 4845 6660 2    55   Output ~ 0
set7
Text GLabel 4845 6560 2    55   Output ~ 0
set6
Text GLabel 4845 6460 2    55   Output ~ 0
set5
Text GLabel 4845 6360 2    55   Output ~ 0
set4
Text GLabel 3250 6460 2    55   Output ~ 0
out3
Text GLabel 3250 6560 2    55   Output ~ 0
out4
Text GLabel 3250 6660 2    55   Output ~ 0
out5
Wire Wire Line
	3225 6460 3250 6460
Wire Wire Line
	3225 6560 3250 6560
Wire Wire Line
	3225 6660 3250 6660
Wire Wire Line
	1660 3730 1520 3730
Text Label 4535 3500 0    55   ~ 0
s3
Text Label 4535 3800 0    55   ~ 0
s4
Text Label 4520 4100 0    55   ~ 0
s5
Text Label 4520 4400 0    55   ~ 0
s6
Text GLabel 2465 4130 2    55   Input ~ 0
s7
Text GLabel 6180 1425 2    55   Output ~ 0
dat0
Text GLabel 6180 1525 2    55   Output ~ 0
dat1
Text GLabel 6180 1625 2    55   Output ~ 0
dat2
Text GLabel 6180 1725 2    55   Output ~ 0
dat3
Text GLabel 6180 1825 2    55   Output ~ 0
dat4
Text GLabel 6180 1925 2    55   Output ~ 0
dat5
Text GLabel 6180 2025 2    55   Output ~ 0
dat6
Text GLabel 6180 2125 2    55   Output ~ 0
dat7
Text GLabel 10750 1325 2    55   Output ~ 0
adr0
Text GLabel 10750 1425 2    55   Output ~ 0
adr1
Text GLabel 10750 1525 2    55   Output ~ 0
adr2
Text GLabel 10750 1625 2    55   Output ~ 0
adr3
Text GLabel 10750 1725 2    55   Output ~ 0
adr4
Text GLabel 10750 1825 2    55   Output ~ 0
adr5
Text GLabel 10750 1925 2    55   Output ~ 0
adr6
Text GLabel 10750 2025 2    55   Output ~ 0
adr7
Text GLabel 10765 3150 2    55   Output ~ 0
adr8
Text GLabel 10765 3250 2    55   Output ~ 0
adr9
Text GLabel 10765 3350 2    55   Output ~ 0
adr10
Text GLabel 10765 3450 2    55   Output ~ 0
adr11
Text GLabel 10765 3550 2    55   Output ~ 0
adr12
Text GLabel 10765 3650 2    55   Output ~ 0
adr13
Text GLabel 10765 3750 2    55   Output ~ 0
adr14
Text GLabel 10765 3850 2    55   Output ~ 0
adr15
Wire Wire Line
	10720 2025 10750 2025
Wire Wire Line
	10720 1925 10750 1925
Wire Wire Line
	10720 1825 10750 1825
Wire Wire Line
	10720 1725 10750 1725
Wire Wire Line
	10720 1625 10750 1625
Wire Wire Line
	10720 1525 10750 1525
Wire Wire Line
	10720 1425 10750 1425
Wire Wire Line
	10720 1325 10750 1325
Wire Wire Line
	10735 3150 10765 3150
Wire Wire Line
	10735 3250 10765 3250
Wire Wire Line
	10735 3350 10765 3350
Wire Wire Line
	10735 3450 10765 3450
Wire Wire Line
	10735 3550 10765 3550
Wire Wire Line
	10735 3650 10765 3650
Wire Wire Line
	10735 3750 10765 3750
Wire Wire Line
	10735 3850 10765 3850
Text GLabel 5650 3500 2    55   Input ~ 0
dat0
Text GLabel 5650 3800 2    55   Input ~ 0
dat1
Text GLabel 5650 4100 2    55   Input ~ 0
dat2
Text GLabel 5650 4400 2    55   Input ~ 0
dat3
Text GLabel 5650 3600 2    55   Input ~ 0
dat4
Text GLabel 5650 3900 2    55   Input ~ 0
dat5
Text GLabel 5650 4200 2    55   Input ~ 0
dat6
Text GLabel 5650 4500 2    55   Input ~ 0
dat7
Wire Wire Line
	5620 3500 5650 3500
Wire Wire Line
	5620 3600 5650 3600
Wire Wire Line
	5620 3800 5650 3800
Wire Wire Line
	5620 3900 5650 3900
Wire Wire Line
	5620 4100 5650 4100
Wire Wire Line
	5620 4200 5650 4200
Wire Wire Line
	5620 4400 5650 4400
Wire Wire Line
	5620 4500 5650 4500
Wire Wire Line
	6150 2125 6180 2125
Wire Wire Line
	6150 2025 6180 2025
Wire Wire Line
	6150 1925 6180 1925
Wire Wire Line
	6150 1825 6180 1825
Wire Wire Line
	6150 1725 6180 1725
Wire Wire Line
	6150 1625 6180 1625
Wire Wire Line
	6150 1425 6180 1425
Wire Wire Line
	6150 1525 6180 1525
NoConn ~ 4932 2450
NoConn ~ 4934 2574
$Comp
L 4xxx:4081 U109
U 5 1 648E578B
P 10730 5640
F 0 "U109" H 10960 5686 50  0000 L CNN
F 1 "4081" H 10960 5595 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10730 5640 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 10730 5640 50  0001 C CNN
	5    10730 5640
	1    0    0    -1  
$EndComp
Wire Wire Line
	10730 6140 10730 6160
Wire Wire Line
	10730 6160 10015 6160
Connection ~ 10015 6160
Wire Wire Line
	10015 6160 10015 6185
$Comp
L 4xxx:4081 U109
U 2 1 649567F4
P 2650 5210
F 0 "U109" H 2635 5000 50  0000 C CNN
F 1 "4081" H 2640 5225 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2650 5210 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 2650 5210 50  0001 C CNN
	2    2650 5210
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4081 U109
U 3 1 6495C282
P 3300 5110
F 0 "U109" H 3270 5310 50  0000 C CNN
F 1 "4081" H 3300 5110 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3300 5110 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 3300 5110 50  0001 C CNN
	3    3300 5110
	1    0    0    -1  
$EndComp
Wire Wire Line
	10015 5100 10015 5130
Wire Wire Line
	10730 5140 10730 5130
Wire Wire Line
	10730 5130 10015 5130
Connection ~ 10015 5130
Wire Wire Line
	10015 5130 10015 5150
$Comp
L 4xxx:4081 U109
U 4 1 649D6DE2
P 2010 5110
F 0 "U109" H 1980 5320 50  0000 C CNN
F 1 "4081" H 2000 5115 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2010 5110 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 2010 5110 50  0001 C CNN
	4    2010 5110
	1    0    0    -1  
$EndComp
NoConn ~ 4570 5960
Text Notes 4600 5990 0    50   ~ 0
None
$Comp
L power:+5V #PWR0133
U 1 1 630CF55B
P 9350 4070
F 0 "#PWR0133" H 9350 3920 50  0001 C CNN
F 1 "+5V" H 9450 4155 50  0000 C CNN
F 2 "" H 9350 4070 50  0001 C CNN
F 3 "" H 9350 4070 50  0001 C CNN
	1    9350 4070
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 630D05A8
P 9800 4430
F 0 "#PWR0134" H 9800 4180 50  0001 C CNN
F 1 "GND" H 9910 4330 50  0000 C CNN
F 2 "" H 9800 4430 50  0001 C CNN
F 3 "" H 9800 4430 50  0001 C CNN
	1    9800 4430
	1    0    0    -1  
$EndComp
Wire Wire Line
	9513 4225 9513 4070
Wire Wire Line
	9513 4070 9350 4070
$Comp
L 74xx_mch:74HC04 U105
U 6 1 631D0E69
P 9435 4285
F 0 "U105" H 9625 4185 50  0000 C CNN
F 1 "74HC04" H 9435 4415 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9435 4285 50  0001 C CNN
F 3 "" H 9435 4285 50  0001 C CNN
	6    9435 4285
	1    0    0    -1  
$EndComp
Wire Wire Line
	9513 4349 9513 4430
Wire Wire Line
	9513 4430 9800 4430
Text GLabel 3250 6860 2    50   Output ~ 0
data-out
Wire Wire Line
	3225 6860 3250 6860
Text GLabel 4890 2740 2    50   Input ~ 0
data-out
Text Notes 585  675  0    50   ~ 10
Possible Parallel-GPIO HIGH signals combinations
Text Notes 610  1080 0    50   ~ 0
ctrl-latch + /data-latch + clock = Send data to controler bus\ndata-latch + /ctrl-latch + clock = Send data toward data bus\nhigh-nibble + /ctrl-latch + /data-latch = Read data bus\nctrl-latch + data-latch + high-nibble + /clock = RESET !!!
Wire Notes Line style solid
	565  1140 3250 1140
Wire Notes Line style solid
	3250 1140 3250 690 
Wire Notes Line style solid
	3250 690  565  690 
Wire Notes Line style solid
	565  585  2595 585 
Wire Notes Line style solid
	2595 585  2595 690 
Wire Notes Line style solid
	565  585  565  1140
Text GLabel 1680 5010 0    59   Input ~ 0
ctrl-latch
Text GLabel 1675 5210 0    55   Input ~ 0
data-latch
Text GLabel 2320 5310 0    55   Input ~ 0
high-nibble
Text GLabel 2495 4945 0    50   Input ~ 0
clock
Wire Wire Line
	2970 5010 3000 5010
Wire Wire Line
	1680 5010 1710 5010
Wire Wire Line
	1675 5210 1710 5210
Wire Wire Line
	2310 5110 2350 5110
Wire Wire Line
	2320 5310 2350 5310
Text GLabel 4080 5110 2    50   Output ~ 0
nReset
Text GLabel 2175 7160 0    50   Input ~ 0
nReset
Wire Wire Line
	2175 7160 2225 7160
Text GLabel 3535 2550 0    50   Input ~ 0
nReset
$Comp
L 4xxx:4081 U101
U 2 1 62FB9BCC
P 3315 2325
F 0 "U101" H 3210 2540 50  0000 C CNN
F 1 "4081" H 3310 2330 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3315 2325 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 3315 2325 50  0001 C CNN
	2    3315 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3665 2425 3630 2425
Wire Wire Line
	3630 2425 3630 2550
Wire Wire Line
	3630 2550 3535 2550
Text GLabel 7995 2495 0    50   Input ~ 0
nReset
Wire Wire Line
	8400 2325 8320 2325
Text GLabel 8200 4295 0    50   Input ~ 0
nReset
Wire Wire Line
	8200 4295 8290 4295
Wire Wire Line
	8290 4295 8290 4150
Wire Wire Line
	8290 4150 8400 4150
Wire Wire Line
	8320 2325 8320 2495
Entry Wire Line
	3375 1625 3475 1725
Entry Wire Line
	3375 1725 3475 1825
Entry Wire Line
	3375 1825 3475 1925
Entry Wire Line
	3375 1925 3475 2025
Entry Wire Line
	3375 2025 3475 2125
Entry Wire Line
	3375 1525 3475 1625
Entry Wire Line
	3375 1425 3475 1525
Entry Wire Line
	3375 1325 3475 1425
Entry Wire Line
	8110 1525 8210 1625
Entry Wire Line
	8110 1625 8210 1725
Entry Wire Line
	8110 1725 8210 1825
Entry Wire Line
	8110 1825 8210 1925
Entry Wire Line
	8110 1925 8210 2025
Entry Wire Line
	8110 1425 8210 1525
Entry Wire Line
	8110 1325 8210 1425
Entry Wire Line
	8110 1225 8210 1325
Entry Wire Line
	8110 3350 8210 3450
Entry Wire Line
	8110 3450 8210 3550
Entry Wire Line
	8110 3550 8210 3650
Entry Wire Line
	8110 3650 8210 3750
Entry Wire Line
	8110 3750 8210 3850
Entry Wire Line
	8110 3250 8210 3350
Entry Wire Line
	8110 3150 8210 3250
Entry Wire Line
	8110 3050 8210 3150
Entry Wire Line
	1935 6360 2035 6460
Entry Wire Line
	1935 6460 2035 6560
Entry Wire Line
	1935 6560 2035 6660
Entry Wire Line
	1935 6660 2035 6760
Entry Wire Line
	1935 6760 2035 6860
Entry Wire Line
	1935 6260 2035 6360
Entry Wire Line
	1935 6160 2035 6260
Wire Wire Line
	7685 5390 7685 5470
Wire Wire Line
	7685 5390 7685 4885
Wire Wire Line
	7685 4885 7785 4885
Connection ~ 7685 5390
Wire Wire Line
	2725 5835 3670 5835
Wire Wire Line
	3670 5835 3670 5660
Wire Wire Line
	3670 5660 4070 5660
Connection ~ 2725 5835
Wire Wire Line
	2725 5835 2725 5810
Wire Wire Line
	4570 6060 7020 6060
Wire Wire Line
	7020 2980 7020 6060
Wire Wire Line
	4570 6160 7155 6160
Wire Wire Line
	7155 2325 7155 6160
Wire Wire Line
	7280 4150 7280 6260
Wire Wire Line
	4570 6260 7280 6260
Wire Wire Line
	2495 4945 2545 4945
Wire Wire Line
	2960 4945 2970 4945
Wire Wire Line
	2970 4945 2970 5010
Wire Wire Line
	2950 5210 3000 5210
Wire Wire Line
	3600 5110 3635 5110
Wire Wire Line
	4050 5110 4080 5110
Wire Bus Line
	1935 5865 760  5865
Wire Bus Line
	760  5865 760  3435
Wire Bus Line
	760  3435 1420 3435
Entry Wire Line
	1935 6060 2035 6160
Wire Wire Line
	2035 6160 2225 6160
Wire Wire Line
	2035 6560 2225 6560
Wire Bus Line
	3375 1265 760  1265
Wire Bus Line
	760  1265 760  3435
Connection ~ 760  3435
Wire Wire Line
	3475 1825 3665 1825
Wire Wire Line
	3475 1425 3665 1425
Wire Bus Line
	8110 690  3375 690 
Wire Bus Line
	3375 690  3375 1265
Connection ~ 3375 1265
Wire Wire Line
	8400 1325 8210 1325
Wire Wire Line
	8400 1725 8210 1725
Wire Wire Line
	8210 3150 8400 3150
Wire Wire Line
	8210 3550 8400 3550
Wire Wire Line
	7995 2495 8320 2495
Wire Wire Line
	8055 2225 8400 2225
Wire Wire Line
	7455 2325 7155 2325
Wire Notes Line width 16 style dash_dot
	6150 3290 6150 4630
Wire Notes Line width 16 style dash_dot
	6150 4630 5615 4630
Wire Notes Line width 16 style dash_dot
	5615 4630 5615 3055
Wire Notes Line width 16 style dash_dot
	5615 3055 6135 3055
Wire Wire Line
	5620 4700 6360 4700
Wire Notes Line width 16 style dash_dot
	6110 3055 6110 1275
Wire Notes Line width 16 style dash_dot
	6110 1275 6750 1275
Wire Notes Line width 16 style dash_dot
	6750 1275 6750 3290
Wire Notes Line width 16 style dash_dot
	10695 4010 11205 4010
Wire Notes Line width 16 style dash_dot
	11205 4010 11205 1210
Wire Notes Line width 16 style dash_dot
	11205 1210 10695 1210
Wire Notes Line width 16 style dash_dot
	6150 3290 6750 3290
Wire Notes Line width 16 style dash_dot
	10695 1205 10695 4010
Wire Notes Line
	5590 7730 565  7730
$Comp
L 74xx:74LS157 U106
U 1 1 62F0025E
P 5120 4100
F 0 "U106" H 4895 4875 50  0000 C CNN
F 1 "74LS157" V 5125 4150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5120 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5120 4100 50  0001 C CNN
	1    5120 4100
	-1   0    0    -1  
$EndComp
Wire Notes Line
	5590 5470 565  5470
Wire Notes Line
	5590 5470 5590 7730
Wire Notes Line
	565  5470 565  7730
Wire Bus Line
	2560 3385 2560 3930
Wire Bus Line
	4350 3385 4350 4340
Wire Bus Line
	1935 5865 1935 6760
Wire Bus Line
	3375 1265 3375 2025
Wire Bus Line
	1420 2375 1420 3435
Wire Bus Line
	8110 690  8110 3750
$EndSCHEMATC
