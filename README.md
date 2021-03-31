# This amplifier is based on the Ampleon BCP2425M9X2S250-1 pallet
The circuit is substantially taken from Ampleon's application note AN10900 but also uses an MSP430G2553 & an I2C connected 1.3" OLED display. Unfortunately the current measurement device chosen is now end-of life... but remains the best for resolving 6.25mA and measuring up to 25A. It monitors voltage & current of each stage and sets the bias of each stage.
Attempts were made to use a 3-D printed shield covered in copper tape but ultimately this was changed to a 'proper' aluminium case which can nevertheless be made at home.
Output protection is provided by a 100W isolator from Bert Modderman (pe1rki.com)
A 30v, 10A supply is sufficient for Q0-100 access. A pre-amp like the Amsat kit will be required if used with the BATC Portsdown (of whichever flavour), but a cheap Chinese one will probably be adequate also. The circuit board can supply 12v for fans and or the pre-amp supply. If 12v is not required, it may be adjusted to 5v to lower the stress on the 3.3v regulator.

I used Kicad to draw/plot the circuit board and had them manufactured by JLCPCB. The program was written and tested on TI's Code Composer Studio but Energia may be used. 
The metal work was designed on FreeCAD and made from stock Al rod 10mmx20mm and 2mm thick Al sheet. The heatspreader was 10mmx100mmx72mm Cu. The Al heatsink was approximately 300mmx250mmx40mm

Able assistance & some hardware was provided by Vincent (M0LCR) and Mike (G4VSS)
