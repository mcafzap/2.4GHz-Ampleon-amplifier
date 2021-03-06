EESchema Schematic File Version 4
LIBS:2.4GHzAmpAuto-cache
EELAYER 26 0
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
L Regulator_Linear:AZ1117-3.3 U2
U 1 1 5F8EB785
P 2750 6850
F 0 "U2" H 2750 7092 50  0000 C CNN
F 1 "AZ1117-3.3" H 2750 7001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 2750 7100 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 2750 6850 50  0001 C CNN
	1    2750 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F8EC7C2
P 2800 1250
F 0 "R2" H 2870 1296 50  0000 L CNN
F 1 "1K5" H 2870 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 1250 50  0001 C CNN
F 3 "~" H 2800 1250 50  0001 C CNN
	1    2800 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F8EC7C9
P 3750 1500
F 0 "R5" V 3850 1350 50  0000 C CNN
F 1 "K33" V 3850 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3680 1500 50  0001 C CNN
F 3 "~" H 3750 1500 50  0001 C CNN
	1    3750 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F8EC7D0
P 3750 1400
F 0 "R6" V 3543 1400 50  0000 C CNN
F 1 "K56" V 3634 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3680 1400 50  0001 C CNN
F 3 "~" H 3750 1400 50  0001 C CNN
	1    3750 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F8EC7DE
P 2800 2650
F 0 "R1" H 2870 2696 50  0000 L CNN
F 1 "2K7" H 2870 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 2650 50  0001 C CNN
F 3 "~" H 2800 2650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F8EC7E5
P 2800 1750
F 0 "R3" H 2870 1796 50  0000 L CNN
F 1 "1K0" H 2870 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 1750 50  0001 C CNN
F 3 "~" H 2800 1750 50  0001 C CNN
	1    2800 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F8EC8D7
P 2800 2150
F 0 "R4" H 2870 2196 50  0000 L CNN
F 1 "4K3" H 2870 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 2150 50  0001 C CNN
F 3 "~" H 2800 2150 50  0001 C CNN
	1    2800 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 1600 6550 700 
Text Label 7950 6000 0    50   ~ 0
GND
Text Label 7350 2500 0    50   ~ 0
GND
Text Label 6000 3100 0    50   ~ 0
+3v3
Wire Wire Line
	3050 6850 3150 6850
Wire Wire Line
	2750 7150 2750 7450
Connection ~ 2750 7450
Wire Wire Line
	2750 7450 3150 7450
Wire Wire Line
	1350 6100 2200 6100
Wire Wire Line
	2200 6100 2200 6850
Wire Wire Line
	2200 6850 2350 6850
Wire Wire Line
	1350 5500 2150 5500
Wire Wire Line
	2200 5500 2200 6100
Connection ~ 2200 6100
Wire Wire Line
	1350 5600 1550 5600
Wire Wire Line
	1550 5600 1550 6200
Wire Wire Line
	1350 6200 1550 6200
Connection ~ 1550 6200
Wire Wire Line
	1550 6200 2050 6200
Connection ~ 2050 7450
Wire Wire Line
	2050 7450 2350 7450
$Comp
L Device:C C7
U 1 1 5F95A5A9
P 2350 7200
F 0 "C7" H 2465 7246 50  0000 L CNN
F 1 "10u" H 2465 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2388 7050 50  0001 C CNN
F 3 "~" H 2350 7200 50  0001 C CNN
	1    2350 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F95A64F
P 3150 7150
F 0 "C8" H 3265 7196 50  0000 L CNN
F 1 "0u1" H 3265 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3188 7000 50  0001 C CNN
F 3 "~" H 3150 7150 50  0001 C CNN
	1    3150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 7000 3150 6850
Connection ~ 3150 6850
Wire Wire Line
	3150 6850 3500 6850
Wire Wire Line
	3150 7300 3150 7450
Connection ~ 3150 7450
Wire Wire Line
	2350 7350 2350 7450
Connection ~ 2350 7450
Wire Wire Line
	2350 7450 2750 7450
Wire Wire Line
	1900 7450 2050 7450
Wire Wire Line
	2350 7050 2350 6850
Connection ~ 2350 6850
Wire Wire Line
	2350 6850 2450 6850
Wire Wire Line
	8850 1700 9800 1700
$Comp
L Device:R R16
U 1 1 5F9201B1
P 5350 3700
F 0 "R16" V 5143 3700 50  0000 C CNN
F 1 "10K" V 5234 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 3700 50  0001 C CNN
F 3 "~" H 5350 3700 50  0001 C CNN
	1    5350 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4150 4600 3700
Wire Wire Line
	4600 3700 5200 3700
Text Label 5850 700  0    50   ~ 0
3v3
Text Label 3450 6850 0    50   ~ 0
3v3
Text Label 1900 5500 0    50   ~ 0
12v
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 5F9D0C7C
P 1150 5600
F 0 "J8" H 1044 5275 50  0000 C CNN
F 1 "Fan1" V 1300 5550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 5600 50  0001 C CNN
F 3 "~" H 1150 5600 50  0001 C CNN
	1    1150 5600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 5F9D0DA2
P 1150 6200
F 0 "J9" H 1044 5875 50  0000 C CNN
F 1 "Fan2" V 1300 6150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 6200 50  0001 C CNN
F 3 "~" H 1150 6200 50  0001 C CNN
	1    1150 6200
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:TLI4970D025T5XUMA1 IC1
U 1 1 5F9D7B21
P 9350 3000
F 0 "IC1" H 9900 3265 50  0000 C CNN
F 1 "TLI4970D025T5XUMA1" H 9900 3174 50  0000 C CNN
F 2 "SamacSys_Parts:PG-TISON-8-1" H 10300 3100 50  0001 L CNN
F 3 "https://www.infineon.com/dgdl/Infineon-TLI4970-D025T5-DataSheet-v01_02-EN.pdf?fileId=5546d4625607bd1301562c43d95e38a9" H 10300 3000 50  0001 L CNN
F 4 "Coreless Magnetic Current Sensor 25A" H 10300 2900 50  0001 L CNN "Description"
F 5 "" H 10300 2800 50  0001 L CNN "Height"
F 6 "726-TLI4970D025T5XU1" H 10300 2700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Infineon-Technologies/TLI4970D025T5XUMA1?qs=3jdCaFhktORGVJ461DZOKg%3D%3D" H 10300 2600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Infineon" H 10300 2500 50  0001 L CNN "Manufacturer_Name"
F 9 "TLI4970D025T5XUMA1" H 10300 2400 50  0001 L CNN "Manufacturer_Part_Number"
	1    9350 3000
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TLI4970D025T5XUMA1 IC2
U 1 1 5F9D7C4B
P 9350 4100
F 0 "IC2" H 9900 4365 50  0000 C CNN
F 1 "TLI4970D025T5XUMA1" H 9900 4274 50  0000 C CNN
F 2 "SamacSys_Parts:PG-TISON-8-1" H 10300 4200 50  0001 L CNN
F 3 "https://www.infineon.com/dgdl/Infineon-TLI4970-D025T5-DataSheet-v01_02-EN.pdf?fileId=5546d4625607bd1301562c43d95e38a9" H 10300 4100 50  0001 L CNN
F 4 "Coreless Magnetic Current Sensor 25A" H 10300 4000 50  0001 L CNN "Description"
F 5 "" H 10300 3900 50  0001 L CNN "Height"
F 6 "726-TLI4970D025T5XU1" H 10300 3800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Infineon-Technologies/TLI4970D025T5XUMA1?qs=3jdCaFhktORGVJ461DZOKg%3D%3D" H 10300 3700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Infineon" H 10300 3600 50  0001 L CNN "Manufacturer_Name"
F 9 "TLI4970D025T5XUMA1" H 10300 3500 50  0001 L CNN "Manufacturer_Part_Number"
	1    9350 4100
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4728 U6
U 1 1 5F9DD62E
P 5000 1500
F 0 "U6" H 5250 1800 50  0000 C CNN
F 1 "MCP4728" H 4750 1750 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 5000 900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22187E.pdf" H 5000 1750 50  0001 C CNN
	1    5000 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 1200 5000 700 
Wire Wire Line
	5000 700  6050 700 
Wire Wire Line
	4500 2800 4500 4200
Wire Wire Line
	4500 4200 4600 4300
Wire Wire Line
	5600 1400 6150 1400
Wire Wire Line
	6150 1400 6150 1700
Wire Wire Line
	6150 1700 8850 1700
Connection ~ 8850 1700
Wire Wire Line
	5600 1500 6050 1500
Wire Wire Line
	6050 1500 6050 1800
Wire Wire Line
	9350 3400 4400 3400
Wire Wire Line
	9300 5600 9300 4500
Wire Wire Line
	8700 4100 9350 4100
Wire Wire Line
	9350 4300 8850 4300
Wire Wire Line
	8850 4300 8850 3200
Wire Wire Line
	8850 3200 9350 3200
Wire Wire Line
	9350 3300 8950 3300
Wire Wire Line
	8950 3300 8950 4400
Wire Wire Line
	8950 4400 9350 4400
$Comp
L Connector:Conn_01x04_Male J10
U 1 1 5FA7553C
P 7250 900
F 0 "J10" V 7403 613 50  0000 R CNN
F 1 "program port" V 7150 1050 50  0000 R CNN
F 2 "Steve:1x04_P2.54mm_Pads" H 7250 900 50  0001 C CNN
F 3 "~" H 7250 900 50  0001 C CNN
	1    7250 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 1100 7350 2500
Wire Wire Line
	7050 1100 7050 1600
Connection ~ 7050 1600
Wire Wire Line
	7050 1600 6550 1600
Wire Wire Line
	7250 1100 7250 3300
Wire Wire Line
	7250 3300 4600 3300
Wire Wire Line
	4600 3300 4600 3700
Connection ~ 4600 3700
Wire Wire Line
	7150 1100 7150 3550
Wire Wire Line
	7150 3550 8100 3550
Wire Wire Line
	8100 3550 8100 3950
Wire Wire Line
	8100 3950 8000 4050
Wire Wire Line
	8200 2300 8200 3000
Wire Wire Line
	8200 4200 8000 4200
$Comp
L Device:R R7
U 1 1 5FD14B4A
P 8200 2150
F 0 "R7" H 8050 2250 50  0000 L CNN
F 1 "1K5" H 8000 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 2150 50  0001 C CNN
F 3 "~" H 8200 2150 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5FD1C4B4
P 10600 5150
F 0 "R8" H 10670 5196 50  0000 L CNN
F 1 "33K" H 10670 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10530 5150 50  0001 C CNN
F 3 "~" H 10600 5150 50  0001 C CNN
	1    10600 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5FD1C56E
P 10600 5600
F 0 "R9" H 10670 5646 50  0000 L CNN
F 1 "2K2" H 10670 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10530 5600 50  0001 C CNN
F 3 "~" H 10600 5600 50  0001 C CNN
	1    10600 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FD1C76A
P 10900 5600
F 0 "C1" H 11015 5646 50  0000 L CNN
F 1 "0u1" H 11015 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10938 5450 50  0001 C CNN
F 3 "~" H 10900 5600 50  0001 C CNN
	1    10900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 5750 10600 6000
Wire Wire Line
	8200 4300 8000 4300
$Comp
L Switch:SW_Push SW2
U 1 1 5FD4C703
P 3100 4750
F 0 "SW2" H 3100 4600 50  0000 C CNN
F 1 "SW_Push" H 3500 4750 50  0000 C CNN
F 2 "Button_Switch_THT:SW_MEC_5GTH9" H 3100 4950 50  0001 C CNN
F 3 "" H 3100 4950 50  0001 C CNN
	1    3100 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FD71236
P 3100 4550
F 0 "SW1" H 3100 4835 50  0000 C CNN
F 1 "SW_Push" H 3100 4744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_MEC_5GTH9" H 3100 4750 50  0001 C CNN
F 3 "" H 3100 4750 50  0001 C CNN
	1    3100 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 601CCD6A
P 1150 2100
F 0 "J1" H 1070 1375 50  0000 C CNN
F 1 "conections to module" V 1350 1950 50  0000 C CNN
F 2 "Steve:Harwin_M20-89010xx_1x10_P2.54mm_Horizontal" H 1150 2100 50  0001 C CNN
F 3 "~" H 1150 2100 50  0001 C CNN
	1    1150 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 1050 1350 1700
Wire Wire Line
	1450 1800 1350 1800
Wire Wire Line
	1350 2500 1850 2500
Wire Wire Line
	1600 2600 1600 3000
Connection ~ 8200 3000
Wire Wire Line
	1350 2600 1600 2600
Connection ~ 7350 2500
Connection ~ 8700 2500
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 60361FE5
P 9900 900
F 0 "J2" V 10053 613 50  0000 R CNN
F 1 "OLED" V 9800 900 50  0000 R CNN
F 2 "Steve:1x04_P2.54mm_Pads" H 9900 900 50  0001 C CNN
F 3 "~" H 9900 900 50  0001 C CNN
	1    9900 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 1600 10000 1100
Text Label 4800 3700 0    50   ~ 0
reset
Text Label 5850 1400 0    50   ~ 0
scl
Text Label 5900 1500 0    50   ~ 0
sda
Text Label 7450 3550 0    50   ~ 0
test
Text Label 1700 1050 0    50   ~ 0
T1
Text Label 1700 1500 0    50   ~ 0
VG1
Text Label 1600 1900 0    50   ~ 0
GND
Text Label 1650 2400 0    50   ~ 0
VG2
Text Label 1650 2500 0    50   ~ 0
T2
Text Label 1650 3000 0    50   ~ 0
T3
Wire Wire Line
	5800 2800 5800 1600
Wire Wire Line
	5800 1600 5600 1600
Wire Wire Line
	4500 2800 5800 2800
$Comp
L Device:R R11
U 1 1 5FBD24B3
P 6150 1050
F 0 "R11" H 6250 900 50  0000 L CNN
F 1 "4K7" H 6400 1000 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 1050 50  0001 C CNN
F 3 "~" H 6150 1050 50  0001 C CNN
	1    6150 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5FBD2559
P 6050 1050
F 0 "R10" H 5850 1200 50  0000 L CNN
F 1 "4K7" H 5850 1050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5980 1050 50  0001 C CNN
F 3 "~" H 6050 1050 50  0001 C CNN
	1    6050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 900  6050 700 
Connection ~ 6050 700 
Wire Wire Line
	6050 700  6150 700 
Wire Wire Line
	6150 900  6150 700 
Connection ~ 6150 700 
Wire Wire Line
	6150 700  6550 700 
Wire Wire Line
	6150 1200 6150 1400
Connection ~ 6150 1400
Wire Wire Line
	6050 1200 6050 1500
Connection ~ 6050 1500
$Comp
L Connector:Conn_01x01_Female GND_IN1
U 1 1 5FC01906
P 11000 2500
F 0 "GND_IN1" H 10850 2650 50  0000 L CNN
F 1 "wire" H 11027 2435 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2.5mm" H 11000 2500 50  0001 C CNN
F 3 "~" H 11000 2500 50  0001 C CNN
	1    11000 2500
	1    0    0    -1  
$EndComp
Text Label 9900 1250 3    50   ~ 0
GND
Text Label 9800 1200 1    50   ~ 0
scl
Text Label 9700 1200 1    50   ~ 0
sda
Text Label 10000 1200 1    50   ~ 0
3v3
Wire Wire Line
	6300 3100 6300 3700
Wire Wire Line
	5500 3700 6300 3700
Connection ~ 6300 3700
Wire Wire Line
	6300 3700 6300 3800
$Comp
L MCU_Texas_MSP430:MSP430G2553IPW20 U4
U 1 1 5F8EB350
P 6300 4600
F 0 "U4" H 5800 5300 50  0000 C CNN
F 1 "MSP430G2553IPW20" H 6800 5300 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 4850 4050 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/msp430g2553.pdf" H 6250 4600 50  0001 C CNN
	1    6300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5350 6300 6000
Connection ~ 6300 6000
Wire Wire Line
	6300 6000 6300 7450
Wire Wire Line
	6050 1800 8600 1800
Wire Wire Line
	8000 4600 8500 4600
Wire Wire Line
	8000 4900 8600 4900
Wire Wire Line
	8600 4900 8600 1800
Wire Wire Line
	8000 4700 8950 4700
Wire Wire Line
	8000 4500 8300 4500
$Comp
L Device:R R12
U 1 1 5FEEA571
P 8500 2150
F 0 "R12" H 8600 2200 50  0000 L CNN
F 1 "4K7" H 8750 2100 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 2150 50  0001 C CNN
F 3 "~" H 8500 2150 50  0001 C CNN
	1    8500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5FEEAA0B
P 8300 2150
F 0 "R13" H 8300 1950 50  0000 L CNN
F 1 "4K7" H 8450 1850 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 2150 50  0001 C CNN
F 3 "~" H 8300 2150 50  0001 C CNN
	1    8300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3000 8200 4200
Wire Wire Line
	8200 1600 8200 2000
Connection ~ 8200 1600
Wire Wire Line
	8200 1600 7050 1600
Text Label 9200 3100 0    50   ~ 0
3v3
Text Label 9300 4200 0    50   ~ 0
3v3
Wire Wire Line
	8200 1600 8300 1600
Wire Wire Line
	8300 2000 8300 1600
Wire Wire Line
	8300 2300 8300 4500
Wire Wire Line
	8500 3500 9350 3500
Connection ~ 8500 3500
Wire Wire Line
	8500 3500 8500 4600
Wire Wire Line
	9350 4600 8700 4600
Wire Wire Line
	8700 4600 8700 4500
Wire Wire Line
	8700 4500 8300 4500
Connection ~ 8300 4500
Connection ~ 8300 1600
Wire Wire Line
	8300 1600 8500 1600
Wire Wire Line
	4400 4500 4600 4500
Wire Wire Line
	4400 3400 4400 4500
Wire Wire Line
	4600 4400 4500 4400
Wire Wire Line
	4500 4400 4500 5600
Wire Wire Line
	4500 5600 9300 5600
$Comp
L Steve_Library:LM2596dcdc U1
U 1 1 60086747
P 1500 4700
F 0 "U1" H 1550 5065 50  0000 C CNN
F 1 "LM2596dcdc" H 1550 4974 50  0000 C CNN
F 2 "Steve:LM2596_dc-dc_module" H 1500 4700 50  0001 C CNN
F 3 "" H 1500 4700 50  0001 C CNN
	1    1500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4600 900  4600
Wire Wire Line
	1050 4800 900  4800
Wire Wire Line
	2050 4600 2150 4600
Wire Wire Line
	2150 4600 2150 5500
Connection ~ 2150 5500
Wire Wire Line
	2150 5500 2200 5500
Text Label 2250 4800 0    50   ~ 0
GND
Text Label 950  4600 0    50   ~ 0
Vdd
Text Label 950  4800 0    50   ~ 0
GND
Wire Wire Line
	2050 6200 2050 7450
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 60203742
P 11050 3000
F 0 "J3" H 11077 2976 50  0000 L CNN
F 1 "current A" H 10750 3150 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P7.62mm_Drill2.5mm" H 11050 3000 50  0001 C CNN
F 3 "~" H 11050 3000 50  0001 C CNN
	1    11050 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 60203802
P 11050 4100
F 0 "J4" H 11077 4076 50  0000 L CNN
F 1 "current B" H 10800 3950 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P7.62mm_Drill2.5mm" H 11050 4100 50  0001 C CNN
F 3 "~" H 11050 4100 50  0001 C CNN
	1    11050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3000 10850 3000
$Comp
L Device:D_ALT D2
U 1 1 60235A86
P 10700 3900
F 0 "D2" V 10654 3979 50  0000 L CNN
F 1 "D_ALT" V 10745 3979 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF_Handsoldering" H 10700 3900 50  0001 C CNN
F 3 "~" H 10700 3900 50  0001 C CNN
	1    10700 3900
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D1
U 1 1 60235B3D
P 10700 3400
F 0 "D1" V 10746 3321 50  0000 R CNN
F 1 "D_ALT" V 10655 3321 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF_Handsoldering" H 10700 3400 50  0001 C CNN
F 3 "~" H 10700 3400 50  0001 C CNN
	1    10700 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10700 3250 10700 3100
Connection ~ 10700 3100
Wire Wire Line
	10700 3100 10850 3100
Wire Wire Line
	10700 4050 10700 4100
Connection ~ 10700 4100
Wire Wire Line
	10700 4100 10850 4100
Text Label 10750 3650 0    50   ~ 0
Vdd
$Comp
L Device:R R14
U 1 1 6027CCB2
P 10500 5150
F 0 "R14" H 10300 5200 50  0000 L CNN
F 1 "33K" H 10300 5100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10430 5150 50  0001 C CNN
F 3 "~" H 10500 5150 50  0001 C CNN
	1    10500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6000 6400 6000
$Comp
L Device:R R15
U 1 1 602879BA
P 10500 5600
F 0 "R15" H 10300 5700 50  0000 L CNN
F 1 "2K2" H 10300 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10430 5600 50  0001 C CNN
F 3 "~" H 10500 5600 50  0001 C CNN
	1    10500 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60287A6A
P 10200 5600
F 0 "C2" H 9900 5600 50  0000 L CNN
F 1 "0u1" H 10000 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10238 5450 50  0001 C CNN
F 3 "~" H 10200 5600 50  0001 C CNN
	1    10200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 6000 10500 5750
Wire Wire Line
	10200 5750 10200 6000
Connection ~ 10200 6000
Wire Wire Line
	10200 6000 10500 6000
Wire Wire Line
	10200 5450 10500 5450
Wire Wire Line
	10600 5300 10600 5350
Wire Wire Line
	10700 3550 10700 3650
Wire Wire Line
	10900 3650 10700 3650
Connection ~ 10700 3650
Wire Wire Line
	10700 3650 10700 3750
Wire Wire Line
	3150 7450 3500 7450
Wire Wire Line
	8000 4400 8100 4400
Wire Wire Line
	10450 4200 10850 4200
$Comp
L Device:C C3
U 1 1 603169B7
P 3500 7150
F 0 "C3" H 3615 7196 50  0000 L CNN
F 1 "0u1" H 3615 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 7000 50  0001 C CNN
F 3 "~" H 3500 7150 50  0001 C CNN
	1    3500 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60316B24
P 3850 7150
F 0 "C4" H 3965 7196 50  0000 L CNN
F 1 "0u1" H 3965 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3888 7000 50  0001 C CNN
F 3 "~" H 3850 7150 50  0001 C CNN
	1    3850 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7000 3500 6850
Connection ~ 3500 6850
Wire Wire Line
	3500 6850 3850 6850
Wire Wire Line
	3850 6850 3850 7000
Connection ~ 3850 6850
Wire Wire Line
	3850 7300 3850 7450
Connection ~ 3850 7450
Wire Wire Line
	3850 7450 4300 7450
Wire Wire Line
	3500 7300 3500 7450
Connection ~ 3500 7450
Wire Wire Line
	3500 7450 3850 7450
Text Notes 9300 7650 2    79   ~ 0
17/12/2020
Text Notes 9400 7500 2    79   ~ 0
AmpleonG2
Text Notes 10800 7650 2    79   ~ 0
B
Text Notes 11200 7050 2    118  ~ 0
Q0-100 amplifier monitor. Uses Ampleon bias\ncct, 430G2553 c/w 1.3"OLED 12v for fans.\n
Wire Wire Line
	8700 2500 9300 2500
Wire Wire Line
	9800 1100 9800 1700
Wire Wire Line
	9900 1100 9900 2500
Wire Wire Line
	8600 1800 9700 1800
Wire Wire Line
	9700 1800 9700 1100
Connection ~ 8600 1800
Text Notes 8500 7300 0    50   ~ 0
D1 or D2 can be substituted with 1 shorting link _not_ both
$Comp
L Device:R R17
U 1 1 606FEBD7
P 2500 3900
F 0 "R17" V 2650 3800 50  0000 C CNN
F 1 "K33" V 2650 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2430 3900 50  0001 C CNN
F 3 "~" H 2500 3900 50  0001 C CNN
	1    2500 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 606FED01
P 4300 3650
F 0 "R18" V 4093 3650 50  0000 C CNN
F 1 "10K" V 4184 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 3650 50  0001 C CNN
F 3 "~" H 4300 3650 50  0001 C CNN
	1    4300 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 606FEECB
P 4300 5500
F 0 "C5" H 4415 5546 50  0000 L CNN
F 1 "0u1" H 4415 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4338 5350 50  0001 C CNN
F 3 "~" H 4300 5500 50  0001 C CNN
	1    4300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5650 4300 7450
Connection ~ 4300 7450
Wire Wire Line
	4300 7450 6300 7450
Connection ~ 4300 5000
Wire Wire Line
	4300 5000 4300 5350
Wire Wire Line
	4300 5000 4600 5000
Text Label 1350 2100 0    50   ~ 0
PTT
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60756638
P 6400 5900
F 0 "H1" H 6350 6100 50  0000 L CNN
F 1 "MountingHole_Pad" H 6400 5700 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 6400 5900 50  0001 C CNN
F 3 "~" H 6400 5900 50  0001 C CNN
	1    6400 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 607566CC
P 6800 5900
F 0 "H3" H 6750 6100 50  0000 L CNN
F 1 "MountingHole_Pad" H 6800 5500 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 6800 5900 50  0001 C CNN
F 3 "~" H 6800 5900 50  0001 C CNN
	1    6800 5900
	1    0    0    -1  
$EndComp
Connection ~ 6800 6000
Wire Wire Line
	6800 6000 7000 6000
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60756754
P 6600 5900
F 0 "H2" H 6550 6100 50  0000 L CNN
F 1 "MountingHole_Pad" H 6600 5600 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 6600 5900 50  0001 C CNN
F 3 "~" H 6600 5900 50  0001 C CNN
	1    6600 5900
	1    0    0    -1  
$EndComp
Connection ~ 6600 6000
Wire Wire Line
	6600 6000 6800 6000
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 607567DC
P 7000 5900
F 0 "H4" H 6950 6100 50  0000 L CNN
F 1 "MountingHole_Pad" H 7100 5860 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 7000 5900 50  0001 C CNN
F 3 "~" H 7000 5900 50  0001 C CNN
	1    7000 5900
	1    0    0    -1  
$EndComp
Connection ~ 7000 6000
Wire Wire Line
	7000 6000 10200 6000
Connection ~ 6400 6000
Wire Wire Line
	6400 6000 6600 6000
Wire Wire Line
	1350 1900 1600 1900
Wire Wire Line
	1350 2000 1600 2000
Wire Wire Line
	1600 2000 1600 1900
Connection ~ 1600 1900
Wire Wire Line
	1600 1900 2800 1900
Wire Wire Line
	4300 3500 4300 3100
Wire Wire Line
	4300 3100 6300 3100
Wire Wire Line
	4300 3800 4300 5000
Wire Wire Line
	2500 5000 2500 4050
Wire Wire Line
	2500 5000 4300 5000
Wire Wire Line
	2500 3750 2500 2100
Wire Wire Line
	1350 2100 2500 2100
Wire Wire Line
	2800 2500 2800 2400
Connection ~ 2800 1900
Wire Wire Line
	2800 1900 3300 1900
Wire Wire Line
	3900 1400 4400 1400
Wire Wire Line
	3900 1500 4400 1500
Wire Wire Line
	2800 2000 2800 1900
Wire Wire Line
	2800 2300 2800 2400
Connection ~ 2800 2400
Wire Wire Line
	2800 2400 3150 2400
Wire Wire Line
	3600 1400 3150 1400
Wire Wire Line
	3150 1400 3150 2400
Wire Wire Line
	3600 1500 2800 1500
Wire Wire Line
	2800 1500 2800 1600
Connection ~ 2800 1500
Wire Wire Line
	1450 1500 1450 1800
Wire Wire Line
	1850 2850 2800 2850
Wire Wire Line
	2800 2850 2800 2800
Wire Wire Line
	1850 2500 1850 2850
Wire Wire Line
	1450 1500 2800 1500
Wire Wire Line
	2800 1100 2800 1050
Wire Wire Line
	1350 1050 2800 1050
Wire Wire Line
	2800 1400 2800 1500
Wire Wire Line
	1350 2400 2800 2400
Wire Wire Line
	2900 4800 2900 4750
Wire Wire Line
	2050 4800 2900 4800
Wire Wire Line
	2900 4750 2900 4550
Connection ~ 2900 4750
Wire Wire Line
	3300 4600 3300 4550
Wire Wire Line
	3300 4700 3300 4750
Wire Wire Line
	3300 4600 4600 4600
Wire Wire Line
	3300 4700 4600 4700
Wire Wire Line
	1600 3000 8200 3000
Wire Wire Line
	5000 2500 5000 1900
Wire Wire Line
	5000 2500 7350 2500
Connection ~ 10500 6000
Wire Wire Line
	10450 3100 10500 3100
Wire Wire Line
	10500 6000 10600 6000
Wire Wire Line
	10450 4100 10600 4100
Wire Wire Line
	10500 5000 10500 3100
Connection ~ 10500 3100
Wire Wire Line
	10500 3100 10700 3100
Wire Wire Line
	10500 5300 10500 5450
Connection ~ 10500 5450
Wire Wire Line
	8100 4400 8100 5450
Wire Wire Line
	8100 5450 10200 5450
Connection ~ 10200 5450
Wire Wire Line
	10600 6000 10900 6000
Wire Wire Line
	10900 6000 10900 5750
Connection ~ 10600 6000
Wire Wire Line
	10900 5450 10600 5450
Connection ~ 10600 5450
Wire Wire Line
	10600 5000 10600 4100
Connection ~ 10600 4100
Wire Wire Line
	10600 4100 10700 4100
Wire Wire Line
	8200 4300 8200 5350
Wire Wire Line
	8200 5350 10600 5350
Connection ~ 10600 5350
Wire Wire Line
	10600 5350 10600 5450
Wire Wire Line
	6300 3100 9100 3100
Connection ~ 6300 3100
Wire Wire Line
	8850 1700 8850 3200
Connection ~ 8850 3200
Wire Wire Line
	9300 4500 9350 4500
Wire Wire Line
	8850 4300 8850 4800
Wire Wire Line
	8850 4800 8000 4800
Connection ~ 8850 4300
Wire Wire Line
	8500 2000 8500 1600
Connection ~ 8500 1600
Wire Wire Line
	8500 2300 8500 3500
Wire Wire Line
	8500 1600 10000 1600
Wire Wire Line
	8950 4400 8950 4700
Connection ~ 8950 4400
Wire Wire Line
	8700 2500 8700 4100
Wire Wire Line
	9350 3000 9300 3000
Wire Wire Line
	9300 3000 9300 2500
Connection ~ 9300 2500
Wire Wire Line
	9300 2500 9900 2500
Wire Wire Line
	9100 4200 9100 3100
Wire Wire Line
	9100 4200 9350 4200
Connection ~ 9100 3100
Wire Wire Line
	9100 3100 9350 3100
Wire Wire Line
	7350 2500 8700 2500
Wire Wire Line
	9900 2500 10800 2500
Connection ~ 9900 2500
Wire Wire Line
	3850 3100 4300 3100
Wire Wire Line
	3850 3100 3850 6850
Connection ~ 4300 3100
Wire Wire Line
	3300 1900 3300 2500
Wire Wire Line
	3300 2500 5000 2500
Connection ~ 5000 2500
$EndSCHEMATC
