EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L ACT4088:ACT4088 U1
U 1 1 5E004CC9
P 4300 4000
F 0 "U1" H 4300 4715 50  0000 C CNN
F 1 "ACT4088" H 4300 4624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4350 4000 50  0001 C CNN
F 3 "" H 4350 4000 50  0001 C CNN
	1    4300 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E004CCF
P 4775 3750
F 0 "C2" H 4890 3796 50  0000 L CNN
F 1 "22nF" H 4890 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4813 3600 50  0001 C CNN
F 3 "~" H 4775 3750 50  0001 C CNN
	1    4775 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E004CDB
P 5125 4350
F 0 "R4" V 5225 4400 50  0000 C CNN
F 1 "49.9k" V 5025 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5055 4350 50  0001 C CNN
F 3 "~" H 5125 4350 50  0001 C CNN
	1    5125 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E004CE1
P 4775 4600
F 0 "R3" H 4705 4554 50  0000 R CNN
F 1 "9.64k" H 4705 4645 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4705 4600 50  0001 C CNN
F 3 "~" H 4775 4600 50  0001 C CNN
	1    4775 4600
	-1   0    0    1   
$EndComp
Text HLabel 3600 3700 0    50   Input ~ 0
VIN
Wire Wire Line
	4775 4450 4775 4350
Connection ~ 4775 4350
Wire Wire Line
	4775 4350 4975 4350
Wire Wire Line
	5275 4350 5375 4350
Wire Wire Line
	5375 4350 5375 3950
Wire Wire Line
	4975 3950 4775 3950
Wire Wire Line
	4775 3900 4775 3950
Connection ~ 4775 3950
Wire Wire Line
	4775 3550 4775 3600
Text HLabel 6175 3950 2    50   Output ~ 0
5V
Text Notes 4925 4900 0    50   ~ 0
3.3v: 16.23k\n5v: 9.64k
$Comp
L Device:D D1
U 1 1 5E004D28
P 4775 4100
F 0 "D1" V 4729 4179 50  0000 L CNN
F 1 "MBR0520LT" V 4820 4179 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4775 4100 50  0001 C CNN
F 3 "~" H 4775 4100 50  0001 C CNN
	1    4775 4100
	0    1    1    0   
$EndComp
NoConn ~ 4000 4150
Text Notes 6700 3425 0    118  ~ 0
Power LEDS
$Comp
L Device:R R?
U 1 1 5E1D0FCF
P 8325 3625
AR Path="/5E0D7B92/5E1D0FCF" Ref="R?"  Part="1" 
AR Path="/5E0D7D04/5E1D0FCF" Ref="R?"  Part="1" 
AR Path="/5E1D0FCF" Ref="R?"  Part="1" 
AR Path="/5E0005EE/5E1D0FCF" Ref="R22"  Part="1" 
AR Path="/614262A1/5E1D0FCF" Ref="R9"  Part="1" 
F 0 "R9" V 8250 3625 50  0000 C CNN
F 1 "10k" V 8325 3625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8255 3625 50  0001 C CNN
F 3 "~" H 8325 3625 50  0001 C CNN
	1    8325 3625
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3625 7275 3625
Wire Wire Line
	8550 3625 8475 3625
$Comp
L Device:R R?
U 1 1 5E1D0FDF
P 8325 4225
AR Path="/5E0D7B92/5E1D0FDF" Ref="R?"  Part="1" 
AR Path="/5E0D7D04/5E1D0FDF" Ref="R?"  Part="1" 
AR Path="/5E1D0FDF" Ref="R?"  Part="1" 
AR Path="/5E0005EE/5E1D0FDF" Ref="R23"  Part="1" 
AR Path="/614262A1/5E1D0FDF" Ref="R10"  Part="1" 
F 0 "R10" V 8250 4225 50  0000 C CNN
F 1 "1k" V 8325 4225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8255 4225 50  0001 C CNN
F 3 "~" H 8325 4225 50  0001 C CNN
	1    8325 4225
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 4225 7275 4225
Wire Wire Line
	8550 4225 8475 4225
Text Notes 7700 4325 0    59   ~ 0
LDPW3\n
Wire Wire Line
	7575 4225 8175 4225
Text Notes 7675 3725 0    59   ~ 0
LDPW12\n
Wire Wire Line
	7575 3625 8175 3625
Wire Wire Line
	4775 4750 4775 5000
Text HLabel 4775 4250 0    51   Input ~ 0
GND
Text HLabel 6925 3900 0    50   Input ~ 0
GND
Wire Wire Line
	6950 3625 6950 3900
Wire Wire Line
	6950 3900 6925 3900
Wire Wire Line
	6950 3900 6950 4225
Connection ~ 6950 3900
Text HLabel 8550 3625 2    51   Input ~ 0
VIN
Text HLabel 8550 4225 2    51   Input ~ 0
5V
Text HLabel 5800 4500 3    51   Input ~ 0
GND
$Comp
L Device:LED D2
U 1 1 5E883301
P 7425 3625
F 0 "D2" H 7425 3550 50  0000 C CNN
F 1 "GREEN" H 7425 3725 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7425 3625 50  0001 C CNN
F 3 "~" H 7425 3625 50  0001 C CNN
	1    7425 3625
	1    0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E886D2D
P 7425 4225
F 0 "D3" H 7425 4150 50  0000 C CNN
F 1 "GREEN" H 7425 4325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7425 4225 50  0001 C CNN
F 3 "~" H 7425 4225 50  0001 C CNN
	1    7425 4225
	1    0    0    1   
$EndComp
Text Notes 7875 7050 0    315  ~ 0
3.3V LDO
$Comp
L Device:L L1
U 1 1 5E004CD5
P 5125 3950
F 0 "L1" V 5200 3950 50  0000 C CNN
F 1 "4.7µH" V 5075 3950 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-40xx_HandSoldering" H 5125 3950 50  0001 C CNN
F 3 "~" H 5125 3950 50  0001 C CNN
	1    5125 3950
	0    -1   -1   0   
$EndComp
NoConn ~ 2525 2150
Text HLabel 3600 5000 0    50   Input ~ 0
GND
Wire Wire Line
	4300 4550 4300 5000
Wire Wire Line
	4300 5000 4775 5000
$Comp
L Device:C C1
U 1 1 5E004D0F
P 3750 3900
F 0 "C1" H 3865 3946 50  0000 L CNN
F 1 "10µF" H 3865 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3788 3750 50  0001 C CNN
F 3 "~" H 3750 3900 50  0001 C CNN
	1    3750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5000 3750 5000
Connection ~ 4300 5000
Wire Wire Line
	3750 4050 3750 5000
Connection ~ 3750 5000
Wire Wire Line
	3750 5000 3600 5000
Wire Wire Line
	4000 3700 3750 3700
Wire Wire Line
	3750 3750 3750 3700
Connection ~ 3750 3700
Wire Wire Line
	3750 3700 3600 3700
Wire Wire Line
	4600 3550 4775 3550
Wire Wire Line
	4600 3950 4775 3950
Wire Wire Line
	4600 4350 4775 4350
Text Notes 3400 6000 0    50   ~ 0
The inductor’s DC resistance should be less than 100mΩ. \n(DC current rating for the inductor of at least 35% higher \nthan the maximum load current).\n \nThe  input  capacitor,  electrolytic,  or  ceramics  with  low  ESR\nshould  be  used.
Text Notes 3400 5450 0    50   ~ 0
V_IN = 4.5 to 28 V\nI_max = 1.5 A
$Comp
L Device:C C4
U 1 1 6146FF2C
P 6050 4150
F 0 "C4" H 6165 4196 50  0000 L CNN
F 1 "22µF" H 6165 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 4000 50  0001 C CNN
F 3 "~" H 6050 4150 50  0001 C CNN
	1    6050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4300 5600 4400
Wire Wire Line
	5600 4400 5800 4400
Wire Wire Line
	6050 4400 6050 4300
Wire Wire Line
	6050 4000 6050 3950
Wire Wire Line
	6050 3950 6175 3950
Wire Wire Line
	5800 4500 5800 4400
Connection ~ 5800 4400
Wire Wire Line
	5800 4400 6050 4400
$Comp
L Device:C C3
U 1 1 5E004CFD
P 5600 4150
F 0 "C3" H 5715 4196 50  0000 L CNN
F 1 "22µF" H 5715 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5638 4000 50  0001 C CNN
F 3 "~" H 5600 4150 50  0001 C CNN
	1    5600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4000 5600 3950
Wire Wire Line
	5600 3950 6050 3950
Connection ~ 6050 3950
Wire Wire Line
	5275 3950 5375 3950
Connection ~ 5600 3950
Connection ~ 5375 3950
Wire Wire Line
	5375 3950 5600 3950
$EndSCHEMATC
