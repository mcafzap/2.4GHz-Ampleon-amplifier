# This amplifier is based on the Ampleon BCP2425M9X2S250-1 pallet
The circuit is substantially taken from Ampleon's application note AN10900. It uses an MSP430G2553 and an I2C 1.3" OLED display. Unfortunately the current measurement device chosen is now end-of life... but remains the best for resolving 6.25mA and measuring up to 25A. It monitors voltage & current of each stage and sets the bias of each stage.
Output protection is provided by a 100W isolator from Bert Modderman (pe1rki.com)
A 30v, 10A supply is sufficient for Q0-100 access. This pallet has 30dB of gain but a pre-amp will likely be required - the Amsat kit or a cheap shielded Chinese type. The circuit board uses an LM2596 dc-dc module. This can supply 12v for fans and/or the pre-amp or any voltage may be set to suit these devices. A lower voltage will the stress on the 3.3v linear regulator.

I used Kicad to draw/plot the circuit board and had them manufactured by JLCPCB. The program was written and tested on TI's Code Composer Studio but Energia may be used. 
The metal work was designed on FreeCAD and made from stock Al rod 10mmx20mm and 2mm thick Al sheet. The heatspreader was 10mmx100mmx72mm Cu. The Al heatsink was approximately 250mmx200mmx40mm and does not seem to require any fans.

Able assistance & some hardware was provided by Vincent (M0LCR) and Mike (G4VSS)
