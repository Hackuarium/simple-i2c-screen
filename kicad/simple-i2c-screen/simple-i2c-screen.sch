EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Incubator"
Date "2021-07-26"
Rev "0.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L incubator-rescue:VCC-power #PWR0101
U 1 1 610EABF4
P 2200 925
F 0 "#PWR0101" H 2200 775 50  0001 C CNN
F 1 "VCC" H 2215 1098 50  0000 C CNN
F 2 "" H 2200 925 50  0001 C CNN
F 3 "" H 2200 925 50  0001 C CNN
	1    2200 925 
	-1   0    0    1   
$EndComp
$Comp
L incubator-rescue:PWR_FLAG-power #FLG0101
U 1 1 610EC89D
P 2200 775
F 0 "#FLG0101" H 2200 850 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 948 50  0000 C CNN
F 2 "" H 2200 775 50  0001 C CNN
F 3 "~" H 2200 775 50  0001 C CNN
	1    2200 775 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 775  2200 925 
$Comp
L incubator-rescue:MountingHole-Mechanical H1
U 1 1 610F54D5
P 3325 7175
F 0 "H1" H 3425 7221 50  0000 L CNN
F 1 "MountingHole" H 3425 7130 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3325 7175 50  0001 C CNN
F 3 "~" H 3325 7175 50  0001 C CNN
	1    3325 7175
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:MountingHole-Mechanical H3
U 1 1 610F73E9
P 4100 7175
F 0 "H3" H 4200 7221 50  0000 L CNN
F 1 "MountingHole" H 4200 7130 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4100 7175 50  0001 C CNN
F 3 "~" H 4100 7175 50  0001 C CNN
	1    4100 7175
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:MountingHole-Mechanical H2
U 1 1 610F770E
P 3325 7475
F 0 "H2" H 3425 7521 50  0000 L CNN
F 1 "MountingHole" H 3425 7430 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3325 7475 50  0001 C CNN
F 3 "~" H 3325 7475 50  0001 C CNN
	1    3325 7475
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:MountingHole-Mechanical H4
U 1 1 610F79C8
P 4100 7475
F 0 "H4" H 4200 7521 50  0000 L CNN
F 1 "MountingHole" H 4200 7430 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4100 7475 50  0001 C CNN
F 3 "~" H 4100 7475 50  0001 C CNN
	1    4100 7475
	1    0    0    -1  
$EndComp
Text GLabel 4975 3850 0    50   Input ~ 0
12V
$Comp
L incubator-rescue:GND-power #PWR0102
U 1 1 611DACB0
P 5075 4325
F 0 "#PWR0102" H 5075 4075 50  0001 C CNN
F 1 "GND" H 5080 4152 50  0000 C CNN
F 2 "" H 5075 4325 50  0001 C CNN
F 3 "" H 5075 4325 50  0001 C CNN
	1    5075 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3975 5075 3975
Wire Wire Line
	5075 3975 5075 4325
Text GLabel 4975 4100 0    50   Input ~ 0
SDA
Text GLabel 4975 4225 0    50   Input ~ 0
SCL
Wire Wire Line
	5150 4225 4975 4225
Wire Wire Line
	4975 4100 5150 4100
$Comp
L incubator-rescue:+12V-power #PWR0104
U 1 1 61121502
P 2700 925
F 0 "#PWR0104" H 2700 775 50  0001 C CNN
F 1 "+12V" H 2715 1098 50  0000 C CNN
F 2 "" H 2700 925 50  0001 C CNN
F 3 "" H 2700 925 50  0001 C CNN
	1    2700 925 
	-1   0    0    1   
$EndComp
$Comp
L incubator-rescue:PWR_FLAG-power #FLG0102
U 1 1 611229BC
P 2700 775
F 0 "#FLG0102" H 2700 850 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 948 50  0000 C CNN
F 2 "" H 2700 775 50  0001 C CNN
F 3 "~" H 2700 775 50  0001 C CNN
	1    2700 775 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 925  2700 775 
$Comp
L incubator-rescue:GND-power #PWR0109
U 1 1 61068D10
P 1500 2550
F 0 "#PWR0109" H 1500 2300 50  0001 C CNN
F 1 "GND" H 1505 2377 50  0000 C CNN
F 2 "" H 1500 2550 50  0001 C CNN
F 3 "" H 1500 2550 50  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
Text GLabel 900  2000 0    50   Input ~ 0
12V
Wire Wire Line
	1150 3725 1150 3675
Wire Wire Line
	1150 3675 1150 3625
Connection ~ 1150 3675
Wire Wire Line
	1425 3675 1150 3675
Wire Wire Line
	1425 3725 1425 3675
$Comp
L incubator-rescue:VCC-power #PWR0110
U 1 1 610EC2F5
P 1150 3625
F 0 "#PWR0110" H 1150 3475 50  0001 C CNN
F 1 "VCC" H 1165 3798 50  0000 C CNN
F 2 "" H 1150 3625 50  0001 C CNN
F 3 "" H 1150 3625 50  0001 C CNN
	1    1150 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4200 1050 4200
Wire Wire Line
	1150 4025 1150 4200
Wire Wire Line
	1050 4100 1425 4100
Wire Wire Line
	1425 4100 1425 4025
Connection ~ 1425 4100
Wire Wire Line
	1700 4100 1425 4100
Connection ~ 1150 4200
Wire Wire Line
	1700 4200 1150 4200
Wire Wire Line
	1625 4500 1625 4575
Wire Wire Line
	1700 4500 1625 4500
Connection ~ 1625 4500
Wire Wire Line
	1625 4300 1625 4500
Wire Wire Line
	1700 4300 1625 4300
NoConn ~ 1700 4400
$Comp
L incubator-rescue:GND-power #PWR0111
U 1 1 610DD35E
P 1625 4575
F 0 "#PWR0111" H 1625 4325 50  0001 C CNN
F 1 "GND" H 1630 4402 50  0000 C CNN
F 2 "" H 1625 4575 50  0001 C CNN
F 3 "" H 1625 4575 50  0001 C CNN
	1    1625 4575
	1    0    0    -1  
$EndComp
Text GLabel 1050 4200 0    50   Input ~ 0
SDA
Text GLabel 1050 4100 0    50   Input ~ 0
SCL
Wire Wire Line
	1650 4000 1650 3925
Wire Wire Line
	1700 4000 1650 4000
$Comp
L incubator-rescue:R-Device R1
U 1 1 610DC2A0
P 1150 3875
F 0 "R1" H 1220 3921 50  0000 L CNN
F 1 "10k" H 1220 3830 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1080 3875 50  0001 C CNN
F 3 "~" H 1150 3875 50  0001 C CNN
	1    1150 3875
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:R-Device R2
U 1 1 610DBA03
P 1425 3875
F 0 "R2" H 1495 3921 50  0000 L CNN
F 1 "10k" H 1495 3830 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1355 3875 50  0001 C CNN
F 3 "~" H 1425 3875 50  0001 C CNN
	1    1425 3875
	1    0    0    -1  
$EndComp
Text GLabel 1650 3925 1    50   Input ~ 0
12V
$Comp
L incubator-rescue:RJ12-Connector J4
U 1 1 610CF354
P 2100 4200
F 0 "J4" H 1770 4204 50  0000 R CNN
F 1 "RJ12" H 1770 4295 50  0000 R CNN
F 2 "incubator:E5566-Q0LK22-L" V 2100 4225 50  0001 C CNN
F 3 "~" V 2100 4225 50  0001 C CNN
	1    2100 4200
	-1   0    0    1   
$EndComp
$Comp
L incubator-rescue:+12V-power #PWR0112
U 1 1 61248C9C
P 1650 750
F 0 "#PWR0112" H 1650 600 50  0001 C CNN
F 1 "+12V" H 1665 923 50  0000 C CNN
F 2 "" H 1650 750 50  0001 C CNN
F 3 "" H 1650 750 50  0001 C CNN
	1    1650 750 
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:GND-power #PWR0113
U 1 1 6124A445
P 1650 1100
F 0 "#PWR0113" H 1650 850 50  0001 C CNN
F 1 "GND" H 1655 927 50  0000 C CNN
F 2 "" H 1650 1100 50  0001 C CNN
F 3 "" H 1650 1100 50  0001 C CNN
	1    1650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 825  1650 825 
Wire Wire Line
	1650 825  1650 750 
Wire Wire Line
	1575 1025 1650 1025
Wire Wire Line
	1650 1025 1650 1100
NoConn ~ 1275 1225
Wire Notes Line
	3000 475  3000 4850
Wire Notes Line
	475  4850 5925 4850
Wire Notes Line
	5925 6550 6975 6550
Wire Notes Line
	5925 475  5925 6550
Text Notes 2100 1600 0    150  ~ 0
Power\nSupply
Text Notes 2000 3675 0    150  ~ 0
I2C\n
Text Notes 3250 750  0    150  ~ 0
MICROCONTROLLER\n
Text Notes 6425 1000 0    150  ~ 0
LCD\n16X2
Text Notes 3600 7000 0    50   ~ 0
EXTERNAL HOLES
Text Notes 4675 6850 0    102  ~ 0
HOLES
Wire Wire Line
	5025 1675 4950 1675
Wire Wire Line
	4950 1575 5025 1575
Wire Wire Line
	5025 1475 4950 1475
Wire Wire Line
	4950 1375 5025 1375
Text GLabel 5025 1375 2    50   Input ~ 0
C0
Text GLabel 5025 1475 2    50   Input ~ 0
C1
Text GLabel 5025 1575 2    50   Input ~ 0
C2
Text GLabel 5025 1675 2    50   Input ~ 0
C3
Wire Wire Line
	5025 2825 4950 2825
Wire Wire Line
	5025 2725 4950 2725
Wire Wire Line
	4950 2625 5025 2625
Wire Wire Line
	5025 2525 4950 2525
Wire Wire Line
	4950 2425 5025 2425
Wire Wire Line
	5025 2325 4950 2325
Wire Wire Line
	4950 2225 5025 2225
Wire Wire Line
	4950 2125 5025 2125
Text GLabel 5025 2825 2    50   Input ~ 0
D7
Text GLabel 5025 2725 2    50   Input ~ 0
D6
Text GLabel 5025 2625 2    50   Input ~ 0
D5
Text GLabel 5025 2525 2    50   Input ~ 0
D4
Text GLabel 5025 2425 2    50   Input ~ 0
D3
Text GLabel 5025 2325 2    50   Input ~ 0
D2
Text GLabel 5025 2225 2    50   Input ~ 0
TX
Text GLabel 5025 2125 2    50   Input ~ 0
RX
Text GLabel 3900 1025 0    50   Input ~ 0
VIN
Wire Wire Line
	5025 1025 4950 1025
Wire Wire Line
	4950 1125 5025 1125
Wire Wire Line
	5025 1225 4950 1225
Wire Wire Line
	5025 1775 4950 1775
Wire Wire Line
	5025 1875 4950 1875
Text GLabel 5025 1875 2    50   Input ~ 0
SCL
Text GLabel 5025 1775 2    50   Input ~ 0
SDA
Text GLabel 5025 1225 2    50   Input ~ 0
SCK|MONITORING
Text GLabel 5025 1125 2    50   Input ~ 0
MISO
Text GLabel 5025 1025 2    50   Input ~ 0
MOSI
Wire Wire Line
	4950 1975 5025 1975
Text GLabel 5025 1975 2    50   Input ~ 0
~RESET
$Comp
L incubator-rescue:GND-power #PWR0105
U 1 1 6100E2AC
P 3875 3025
F 0 "#PWR0105" H 3875 2775 50  0001 C CNN
F 1 "GND" H 3880 2852 50  0000 C CNN
F 2 "" H 3875 3025 50  0001 C CNN
F 3 "" H 3875 3025 50  0001 C CNN
	1    3875 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1025 3975 1025
$Comp
L incubator-rescue:GND-power #PWR0114
U 1 1 611DEBA3
P 6300 2075
F 0 "#PWR0114" H 6300 1825 50  0001 C CNN
F 1 "GND" H 6305 1902 50  0000 C CNN
F 2 "" H 6300 2075 50  0001 C CNN
F 3 "" H 6300 2075 50  0001 C CNN
	1    6300 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 1625 6925 1625
Wire Wire Line
	6250 1650 6375 1650
Wire Wire Line
	6375 1750 6250 1750
Wire Wire Line
	6375 1325 6300 1325
Wire Wire Line
	6375 1425 6300 1425
Wire Wire Line
	6300 1425 6300 1325
Connection ~ 6300 1325
Wire Wire Line
	6300 1325 6250 1325
Wire Wire Line
	6375 1525 6300 1525
Wire Wire Line
	6300 1525 6300 1425
Connection ~ 6300 1425
Wire Wire Line
	6925 1325 7025 1325
Wire Wire Line
	7025 1425 6925 1425
Wire Wire Line
	6925 1525 7025 1525
Wire Wire Line
	6925 1775 7025 1775
Wire Wire Line
	7025 1875 6925 1875
Wire Wire Line
	6925 1975 7025 1975
Wire Wire Line
	6300 2075 6300 1975
Wire Wire Line
	6300 1975 6375 1975
Text Notes 3125 4250 0    150  ~ 0
TOP-BOTTOM\nCONNECTOR
Wire Notes Line
	475  3325 5925 3325
$Comp
L incubator-rescue:Barrel_Jack_MountingPin-incubator J1
U 1 1 61123504
P 1275 925
F 0 "J1" H 1332 1242 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 1100 1150 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1325 885 50  0001 C CNN
F 3 "~" H 1325 885 50  0001 C CNN
	1    1275 925 
	1    0    0    -1  
$EndComp
Text GLabel 2450 2000 2    50   Input ~ 0
VIN
Text GLabel 8150 3300 2    50   Input ~ 0
~RESET
Text GLabel 7250 3550 0    50   Input ~ 0
TX
$Comp
L incubator-rescue:GND-power #PWR0103
U 1 1 610EBE3F
P 7300 4050
F 0 "#PWR0103" H 7300 3800 50  0001 C CNN
F 1 "GND" H 7305 3877 50  0000 C CNN
F 2 "" H 7300 4050 50  0001 C CNN
F 3 "" H 7300 4050 50  0001 C CNN
	1    7300 4050
	1    0    0    -1  
$EndComp
Text GLabel 7250 3650 0    50   Input ~ 0
RX
$Comp
L incubator-rescue:MBR0520LT-Diode D4
U 1 1 61137931
P 2200 2000
F 0 "D4" H 2200 1783 50  0000 C CNN
F 1 "MBR0520LT" H 2200 1874 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2200 1825 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBR0520LT1-D.PDF" H 2200 2000 50  0001 C CNN
	1    2200 2000
	-1   0    0    1   
$EndComp
$Comp
L incubator-rescue:C-Device C?
U 1 1 61154027
P 7900 3300
AR Path="/61116939/61154027" Ref="C?"  Part="1" 
AR Path="/61154027" Ref="C7"  Part="1" 
F 0 "C7" H 8015 3346 50  0000 L CNN
F 1 "100n" H 8015 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7938 3150 50  0001 C CNN
F 3 "~" H 7900 3300 50  0001 C CNN
	1    7900 3300
	0    1    1    0   
$EndComp
Text GLabel 6700 3750 0    50   Input ~ 0
VIN
Text GLabel 1725 825  2    50   Input ~ 0
12V
Wire Wire Line
	1725 825  1650 825 
Connection ~ 1650 825 
Wire Wire Line
	4975 3850 5150 3850
$Comp
L incubator-rescue:MBR0520LT-Diode D5
U 1 1 61109529
P 6950 3750
F 0 "D5" H 6950 3533 50  0000 C CNN
F 1 "MBR0520LT" H 6800 3625 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6950 3575 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBR0520LT1-D.PDF" H 6950 3750 50  0001 C CNN
	1    6950 3750
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:Conn_01x01-Connector_Generic J3
U 1 1 6124B8B1
P 5350 3850
F 0 "J3" H 5430 3892 50  0000 L CNN
F 1 "Conn_01x01" H 5430 3801 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5350 3850 50  0001 C CNN
F 3 "~" H 5350 3850 50  0001 C CNN
	1    5350 3850
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:Conn_01x01-Connector_Generic J5
U 1 1 61251C91
P 5350 3975
F 0 "J5" H 5430 4017 50  0000 L CNN
F 1 "Conn_01x01" H 5430 3926 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5350 3975 50  0001 C CNN
F 3 "~" H 5350 3975 50  0001 C CNN
	1    5350 3975
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:Conn_01x01-Connector_Generic J6
U 1 1 61252053
P 5350 4100
F 0 "J6" H 5430 4142 50  0000 L CNN
F 1 "Conn_01x01" H 5430 4051 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5350 4100 50  0001 C CNN
F 3 "~" H 5350 4100 50  0001 C CNN
	1    5350 4100
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:Conn_01x01-Connector_Generic J7
U 1 1 61252475
P 5350 4225
F 0 "J7" H 5430 4267 50  0000 L CNN
F 1 "Conn_01x01" H 5430 4176 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5350 4225 50  0001 C CNN
F 3 "~" H 5350 4225 50  0001 C CNN
	1    5350 4225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2000 2350 2000
Text Notes 1050 5250 0    118  ~ 0
Power LEDS
$Comp
L Device:R R?
U 1 1 614D5797
P 1700 5500
AR Path="/5E0D7B92/614D5797" Ref="R?"  Part="1" 
AR Path="/5E0D7D04/614D5797" Ref="R?"  Part="1" 
AR Path="/614D5797" Ref="R3"  Part="1" 
AR Path="/5E0005EE/614D5797" Ref="R?"  Part="1" 
AR Path="/614262A1/614D5797" Ref="R?"  Part="1" 
F 0 "R3" V 1625 5500 50  0000 C CNN
F 1 "10k" V 1700 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1630 5500 50  0001 C CNN
F 3 "~" H 1700 5500 50  0001 C CNN
	1    1700 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 614D579F
P 1700 5800
AR Path="/5E0D7B92/614D579F" Ref="R?"  Part="1" 
AR Path="/5E0D7D04/614D579F" Ref="R?"  Part="1" 
AR Path="/614D579F" Ref="R4"  Part="1" 
AR Path="/5E0005EE/614D579F" Ref="R?"  Part="1" 
AR Path="/614262A1/614D579F" Ref="R?"  Part="1" 
F 0 "R4" V 1625 5800 50  0000 C CNN
F 1 "1k" V 1700 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1630 5800 50  0001 C CNN
F 3 "~" H 1700 5800 50  0001 C CNN
	1    1700 5800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 614D57B2
P 1250 5500
AR Path="/614262A1/614D57B2" Ref="D?"  Part="1" 
AR Path="/614D57B2" Ref="D1"  Part="1" 
F 0 "D1" H 1250 5425 50  0000 C CNN
F 1 "RED" H 1250 5600 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 5500 50  0001 C CNN
F 3 "~" H 1250 5500 50  0001 C CNN
	1    1250 5500
	1    0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 614D57B8
P 1250 5800
AR Path="/614262A1/614D57B8" Ref="D?"  Part="1" 
AR Path="/614D57B8" Ref="D2"  Part="1" 
F 0 "D2" H 1250 5725 50  0000 C CNN
F 1 "RED" H 1250 5900 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 5800 50  0001 C CNN
F 3 "~" H 1250 5800 50  0001 C CNN
	1    1250 5800
	1    0    0    1   
$EndComp
$Comp
L Regulator_Linear:LM78M05_TO252 U1
U 1 1 614D92CD
P 1500 2000
F 0 "U1" H 1500 2242 50  0000 C CNN
F 1 "LM78M05_TO252" H 1500 2151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1500 2225 50  0001 C CIN
F 3 "https://www.onsemi.com/pub/Collateral/MC78M00-D.PDF" H 1500 1950 50  0001 C CNN
	1    1500 2000
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:C-Device C?
U 1 1 614E5167
P 1050 2250
AR Path="/61116939/614E5167" Ref="C?"  Part="1" 
AR Path="/614E5167" Ref="C1"  Part="1" 
F 0 "C1" H 1165 2296 50  0000 L CNN
F 1 "0.33u" H 1165 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1088 2100 50  0001 C CNN
F 3 "~" H 1050 2250 50  0001 C CNN
	1    1050 2250
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:C-Device C?
U 1 1 614E9E1C
P 1900 2250
AR Path="/61116939/614E9E1C" Ref="C?"  Part="1" 
AR Path="/614E9E1C" Ref="C2"  Part="1" 
F 0 "C2" H 2015 2296 50  0000 L CNN
F 1 "100n" H 2015 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1938 2100 50  0001 C CNN
F 3 "~" H 1900 2250 50  0001 C CNN
	1    1900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2000 1900 2000
Wire Wire Line
	1900 2100 1900 2000
Connection ~ 1900 2000
Wire Wire Line
	1900 2000 2050 2000
Wire Wire Line
	1900 2400 1900 2450
Wire Wire Line
	1900 2450 1500 2450
Wire Wire Line
	1500 2450 1500 2300
Wire Wire Line
	1500 2550 1500 2450
Connection ~ 1500 2450
Wire Wire Line
	900  2000 1050 2000
Wire Wire Line
	1050 2100 1050 2000
Connection ~ 1050 2000
Wire Wire Line
	1050 2000 1200 2000
Wire Wire Line
	1050 2400 1050 2450
Wire Wire Line
	1050 2450 1500 2450
Text GLabel 1950 5800 2    50   Input ~ 0
VIN
Text GLabel 1950 5500 2    50   Input ~ 0
12V
$Comp
L incubator-rescue:GND-power #PWR01
U 1 1 6152CEF6
P 1000 5900
F 0 "#PWR01" H 1000 5650 50  0001 C CNN
F 1 "GND" H 1005 5727 50  0000 C CNN
F 2 "" H 1000 5900 50  0001 C CNN
F 3 "" H 1000 5900 50  0001 C CNN
	1    1000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5500 1850 5500
Wire Wire Line
	1550 5500 1400 5500
Wire Wire Line
	1100 5500 1000 5500
Wire Wire Line
	1000 5500 1000 5800
Wire Wire Line
	1100 5800 1000 5800
Connection ~ 1000 5800
Wire Wire Line
	1000 5800 1000 5900
Wire Wire Line
	1950 5800 1850 5800
Wire Wire Line
	1550 5800 1400 5800
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J8
U 1 1 61579775
P 7150 4850
F 0 "J8" H 7200 5167 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 7200 5076 50  0000 C CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" H 7150 4850 50  0001 C CNN
F 3 "~" H 7150 4850 50  0001 C CNN
	1    7150 4850
	1    0    0    -1  
$EndComp
$Comp
L incubator-rescue:MBR0520LT-Diode D3
U 1 1 6157CF7A
P 7950 4750
F 0 "D3" H 7950 4533 50  0000 C CNN
F 1 "MBR0520LT" H 7950 4624 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7950 4575 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBR0520LT1-D.PDF" H 7950 4750 50  0001 C CNN
	1    7950 4750
	-1   0    0    1   
$EndComp
Text GLabel 7600 4850 2    50   Input ~ 0
MOSI
$Comp
L incubator-rescue:GND-power #PWR02
U 1 1 6158A125
P 7600 5050
F 0 "#PWR02" H 7600 4800 50  0001 C CNN
F 1 "GND" H 7605 4877 50  0000 C CNN
F 2 "" H 7600 5050 50  0001 C CNN
F 3 "" H 7600 5050 50  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4950 7600 4950
Wire Wire Line
	7600 4950 7600 5050
Wire Wire Line
	7600 4850 7450 4850
Wire Wire Line
	7450 4750 7800 4750
Text GLabel 8250 4750 2    50   Input ~ 0
VIN
Wire Wire Line
	8100 4750 8250 4750
Text GLabel 6800 4750 0    50   Input ~ 0
MISO
Text GLabel 6800 4850 0    50   Input ~ 0
SCK|MONITORING
Text GLabel 6800 4950 0    50   Input ~ 0
~RESET
Wire Wire Line
	6800 4750 6950 4750
Wire Wire Line
	6950 4850 6800 4850
Wire Wire Line
	6800 4950 6950 4950
$Comp
L incubator-rescue:Conn_01x06-Connector_Generic J2
U 1 1 610D151B
P 7600 3650
F 0 "J2" H 7680 3642 50  0000 L CNN
F 1 "Conn_01x06" H 7425 3250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7600 3650 50  0001 C CNN
F 3 "~" H 7600 3650 50  0001 C CNN
	1    7600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3300 7250 3300
Wire Wire Line
	7250 3300 7250 3450
Wire Wire Line
	7250 3450 7400 3450
Wire Wire Line
	8050 3300 8150 3300
Wire Wire Line
	6700 3750 6800 3750
Wire Wire Line
	7100 3750 7400 3750
NoConn ~ 7400 3850
Wire Wire Line
	7400 3950 7300 3950
Wire Wire Line
	7300 3950 7300 4050
Wire Wire Line
	7250 3650 7400 3650
Wire Wire Line
	7400 3550 7250 3550
Text GLabel 6250 1750 0    50   Input ~ 0
C0
Text GLabel 6250 1650 0    50   Input ~ 0
C1
Text GLabel 6250 1325 0    50   Input ~ 0
C3
Text GLabel 7025 1625 2    50   Input ~ 0
D4
Text GLabel 7025 1525 2    50   Input ~ 0
D3
Text GLabel 7025 1425 2    50   Input ~ 0
D2
Text GLabel 7025 1325 2    50   Input ~ 0
C2
Text GLabel 7025 1975 2    50   Input ~ 0
D7
Text GLabel 7025 1875 2    50   Input ~ 0
D5
Text GLabel 7025 1775 2    50   Input ~ 0
D6
$Comp
L Device:R R?
U 1 1 6193BEE6
P 4250 5725
AR Path="/5E0D7B92/6193BEE6" Ref="R?"  Part="1" 
AR Path="/5E0D7D04/6193BEE6" Ref="R?"  Part="1" 
AR Path="/6193BEE6" Ref="R10"  Part="1" 
AR Path="/5E0005EE/6193BEE6" Ref="R?"  Part="1" 
AR Path="/614262A1/6193BEE6" Ref="R?"  Part="1" 
F 0 "R10" V 4175 5725 50  0000 C CNN
F 1 "1k" V 4250 5725 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4180 5725 50  0001 C CNN
F 3 "~" H 4250 5725 50  0001 C CNN
	1    4250 5725
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6193C98D
P 4650 5725
AR Path="/614262A1/6193C98D" Ref="D?"  Part="1" 
AR Path="/6193C98D" Ref="D7"  Part="1" 
F 0 "D7" H 4650 5650 50  0000 C CNN
F 1 "GREEN" H 4650 5825 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 5725 50  0001 C CNN
F 3 "~" H 4650 5725 50  0001 C CNN
	1    4650 5725
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6193CDAE
P 4250 5475
AR Path="/5E0D7B92/6193CDAE" Ref="R?"  Part="1" 
AR Path="/5E0D7D04/6193CDAE" Ref="R?"  Part="1" 
AR Path="/6193CDAE" Ref="R9"  Part="1" 
AR Path="/5E0005EE/6193CDAE" Ref="R?"  Part="1" 
AR Path="/614262A1/6193CDAE" Ref="R?"  Part="1" 
F 0 "R9" V 4175 5475 50  0000 C CNN
F 1 "1k" V 4250 5475 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4180 5475 50  0001 C CNN
F 3 "~" H 4250 5475 50  0001 C CNN
	1    4250 5475
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6193D088
P 4650 5475
AR Path="/614262A1/6193D088" Ref="D?"  Part="1" 
AR Path="/6193D088" Ref="D6"  Part="1" 
F 0 "D6" H 4650 5400 50  0000 C CNN
F 1 "GREEN" H 4650 5575 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 5475 50  0001 C CNN
F 3 "~" H 4650 5475 50  0001 C CNN
	1    4650 5475
	-1   0    0    -1  
$EndComp
Text GLabel 5025 2975 2    50   Input ~ 0
ERROR
Wire Wire Line
	4950 2975 5025 2975
Text GLabel 4000 5475 0    50   Input ~ 0
ERROR
Text GLabel 4000 5725 0    50   Input ~ 0
SCK|MONITORING
Wire Wire Line
	4100 5725 4000 5725
Wire Wire Line
	4400 5725 4500 5725
$Comp
L incubator-rescue:GND-power #PWR0106
U 1 1 6196DBDC
P 4925 5875
F 0 "#PWR0106" H 4925 5625 50  0001 C CNN
F 1 "GND" H 4930 5702 50  0000 C CNN
F 2 "" H 4925 5875 50  0001 C CNN
F 3 "" H 4925 5875 50  0001 C CNN
	1    4925 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5725 4925 5725
Connection ~ 4925 5725
Wire Wire Line
	4925 5725 4925 5875
Wire Wire Line
	4000 5475 4100 5475
Wire Wire Line
	4400 5475 4500 5475
Wire Wire Line
	4800 5475 4925 5475
Wire Wire Line
	4925 5475 4925 5725
$Sheet
S 3975 950  975  2125
U 61116939
F0 "ATMEGA328P" 50
F1 "atmega328p.sch" 50
F2 "D0" I R 4950 2125 50 
F3 "D1" I R 4950 2225 50 
F4 "D2" I R 4950 2325 50 
F5 "D3" I R 4950 2425 50 
F6 "D4" I R 4950 2525 50 
F7 "D5" I R 4950 2625 50 
F8 "D6" I R 4950 2725 50 
F9 "D7" I R 4950 2825 50 
F10 "GND" I L 3975 2825 50 
F11 "C0" I R 4950 1375 50 
F12 "C1" I R 4950 1475 50 
F13 "C2" I R 4950 1575 50 
F14 "C3" I R 4950 1675 50 
F15 "SDA" I R 4950 1775 50 
F16 "SCL" I R 4950 1875 50 
F17 "~RESET" I R 4950 1975 50 
F18 "VIN" I L 3975 1025 50 
F19 "MOSI" I R 4950 1025 50 
F20 "MISO" I R 4950 1125 50 
F21 "SCK" I R 4950 1225 50 
F22 "B6" I R 4950 2975 50 
$EndSheet
$Sheet
S 6375 1250 550  800 
U 611AEB1E
F0 "LCD 16x2 and Rotary Encoder" 50
F1 "lcd_16x2.sch" 50
F2 "D4" I R 6925 1325 50 
F3 "D5" I R 6925 1425 50 
F4 "D6" I R 6925 1525 50 
F5 "D7" I R 6925 1625 50 
F6 "GND" I L 6375 1975 50 
F7 "A" I R 6925 1775 50 
F8 "B" I R 6925 1875 50 
F9 "S1" I R 6925 1975 50 
F10 "E" I L 6375 1650 50 
F11 "RS" I L 6375 1750 50 
F12 "VDD" I L 6375 1325 50 
F13 "LED+" I L 6375 1425 50 
F14 "V0" I L 6375 1525 50 
$EndSheet
Wire Wire Line
	3875 2825 3975 2825
Wire Wire Line
	3875 2825 3875 3025
$EndSCHEMATC
