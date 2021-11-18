EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L incubator-rescue:ATmega328P-AU-MCU_Microchip_ATmega U2
U 1 1 610AABC9
P 6350 3350
F 0 "U2" H 5950 1775 50  0000 C CNN
F 1 "ATmega328P-AU" H 5925 1875 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 6350 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6350 3350 50  0001 C CNN
	1    6350 3350
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:C-Device C6
U 1 1 610AABD5
P 5200 1950
AR Path="/610AABD5" Ref="C6"  Part="1" 
AR Path="/61116939/610AABD5" Ref="C6"  Part="1" 
F 0 "C6" H 5315 1996 50  0000 L CNN
F 1 "100n" H 5315 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5238 1800 50  0001 C CNN
F 3 "~" H 5200 1950 50  0001 C CNN
	1    5200 1950
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:C-Device C5
U 1 1 610AABDB
P 4850 1950
AR Path="/610AABDB" Ref="C5"  Part="1" 
AR Path="/61116939/610AABDB" Ref="C5"  Part="1" 
F 0 "C5" H 4965 1996 50  0000 L CNN
F 1 "10u" H 4965 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4888 1800 50  0001 C CNN
F 3 "~" H 4850 1950 50  0001 C CNN
	1    4850 1950
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:VCC-power #PWR0116
U 1 1 610AABF0
P 4900 3100
F 0 "#PWR0116" H 4900 2950 50  0001 C CNN
F 1 "VCC" H 4915 3273 50  0000 C CNN
F 2 "" H 4900 3100 50  0001 C CNN
F 3 "" H 4900 3100 50  0001 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3100 4900 3225
Wire Wire Line
	4600 3600 4900 3600
Wire Wire Line
	4900 3600 4900 3525
Wire Wire Line
	4900 3675 4900 3600
Connection ~ 4900 3600
Wire Wire Line
	4900 4050 4900 3975
Text GLabel 4600 3600 0    50   Input ~ 0
~RESET
$Comp
L incubator-rescue:R-Device R5
U 1 1 610AAC20
P 4900 3375
AR Path="/610AAC20" Ref="R5"  Part="1" 
AR Path="/61116939/610AAC20" Ref="R5"  Part="1" 
F 0 "R5" H 4970 3421 50  0000 L CNN
F 1 "100k" H 4970 3330 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4830 3375 50  0001 C CNN
F 3 "~" H 4900 3375 50  0001 C CNN
	1    4900 3375
	1    0    0    -1  
$EndComp
Text HLabel 7050 3850 2    50   Input ~ 0
D0
Text HLabel 7050 3950 2    50   Input ~ 0
D1
Text HLabel 7050 4050 2    50   Input ~ 0
D2
Text HLabel 7050 4150 2    50   Input ~ 0
D3
Text HLabel 7050 4250 2    50   Input ~ 0
D4
Text HLabel 7050 4350 2    50   Input ~ 0
D5
Text HLabel 7050 4450 2    50   Input ~ 0
D6
Text HLabel 7050 4550 2    50   Input ~ 0
D7
$Comp
L incubator-rescue:GND-power #PWR0117
U 1 1 610AAC01
P 4900 4050
F 0 "#PWR0117" H 4900 3800 50  0001 C CNN
F 1 "GND" H 4905 3877 50  0000 C CNN
F 2 "" H 4900 4050 50  0001 C CNN
F 3 "" H 4900 4050 50  0001 C CNN
	1    4900 4050
	1    0    0    -1  
$EndComp
Text HLabel 4750 2250 0    50   Input ~ 0
GND
$Comp
L incubator-rescue:GND-power #PWR0118
U 1 1 610AAC08
P 6350 4950
F 0 "#PWR0118" H 6350 4700 50  0001 C CNN
F 1 "GND" H 6355 4777 50  0000 C CNN
F 2 "" H 6350 4950 50  0001 C CNN
F 3 "" H 6350 4950 50  0001 C CNN
	1    6350 4950
	1    0    0    -1  
$EndComp
Text HLabel 7050 3050 2    50   Input ~ 0
C0
Text HLabel 7050 3150 2    50   Input ~ 0
C1
Text HLabel 7050 3250 2    50   Input ~ 0
C2
Text HLabel 7050 3350 2    50   Input ~ 0
C3
Text HLabel 7050 3450 2    50   Input ~ 0
SDA
Text HLabel 7050 3550 2    50   Input ~ 0
SCL
Text HLabel 7050 3650 2    50   Input ~ 0
~RESET
Text GLabel 7050 3750 2    50   Input ~ 0
~RESET
Text HLabel 6550 1750 2    50   Input ~ 0
VIN
Text HLabel 7050 2450 2    50   Input ~ 0
MOSI
Text HLabel 7050 2550 2    50   Input ~ 0
MISO
Text HLabel 7050 2650 2    50   Input ~ 0
SCK
Text HLabel 7050 2750 2    50   Input ~ 0
B6
Text HLabel 7050 2850 2    50   Input ~ 0
B7
Wire Wire Line
	6350 4850 6350 4950
NoConn ~ 6950 2150
NoConn ~ 6950 2250
NoConn ~ 6950 2350
Wire Wire Line
	6950 2850 7050 2850
Wire Wire Line
	7050 2750 6950 2750
Wire Wire Line
	6950 2650 7050 2650
Wire Wire Line
	7050 2550 6950 2550
Wire Wire Line
	7050 2450 6950 2450
Wire Wire Line
	6950 3650 7000 3650
Wire Wire Line
	7050 3750 7000 3750
Wire Wire Line
	7000 3750 7000 3650
Connection ~ 7000 3650
Wire Wire Line
	7000 3650 7050 3650
Wire Wire Line
	7050 3550 6950 3550
Wire Wire Line
	6950 3450 7050 3450
Wire Wire Line
	7050 3350 6950 3350
Wire Wire Line
	6950 3050 7050 3050
Wire Wire Line
	7050 3150 6950 3150
Wire Wire Line
	6950 3250 7050 3250
$Comp
L incubator-rescue:VCC-power #PWR0119
U 1 1 610AABCF
P 6350 1650
F 0 "#PWR0119" H 6350 1500 50  0001 C CNN
F 1 "VCC" H 6365 1823 50  0000 C CNN
F 2 "" H 6350 1650 50  0001 C CNN
F 3 "" H 6350 1650 50  0001 C CNN
	1    6350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1650 6350 1750
Wire Wire Line
	6450 1850 6450 1750
Wire Wire Line
	6450 1750 6550 1750
Wire Wire Line
	6450 1750 6350 1750
Connection ~ 6450 1750
Connection ~ 6350 1750
Wire Wire Line
	6350 1750 6350 1850
$Comp
L incubator-rescue:GND-power #PWR0115
U 1 1 610AABE5
P 4850 2300
F 0 "#PWR0115" H 4850 2050 50  0001 C CNN
F 1 "GND" H 4855 2127 50  0000 C CNN
F 2 "" H 4850 2300 50  0001 C CNN
F 3 "" H 4850 2300 50  0001 C CNN
	1    4850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2300 4850 2250
Wire Wire Line
	4750 2250 4850 2250
Connection ~ 4850 2250
Wire Wire Line
	4850 2250 4850 2100
Wire Wire Line
	4850 2250 5200 2250
Wire Wire Line
	5200 2250 5200 2100
Wire Wire Line
	6350 1750 5200 1750
Wire Wire Line
	4850 1750 4850 1800
Wire Wire Line
	5200 1800 5200 1750
Connection ~ 5200 1750
Wire Wire Line
	5200 1750 4850 1750
NoConn ~ 5750 2150
NoConn ~ 5750 2350
NoConn ~ 5750 2450
$Comp
L incubator-rescue:SolderJumper_2_Open-Jumper JP1
U 1 1 610E209B
P 4900 3825
F 0 "JP1" V 4946 3737 50  0000 R CNN
F 1 "SolderJumper_2_Open" V 4855 3737 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4900 3825 50  0001 C CNN
F 3 "~" H 4900 3825 50  0001 C CNN
	1    4900 3825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3850 7050 3850
Wire Wire Line
	7050 3950 6950 3950
Wire Wire Line
	6950 4050 7050 4050
Wire Wire Line
	7050 4150 6950 4150
Wire Wire Line
	6950 4250 7050 4250
Wire Wire Line
	7050 4350 6950 4350
Wire Wire Line
	6950 4450 7050 4450
Wire Wire Line
	7050 4550 6950 4550
$EndSCHEMATC
