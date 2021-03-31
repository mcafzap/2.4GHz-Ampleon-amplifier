# 2.4GHz-Ampleon-amplifier
The circuit is substantially taken from Ampleon's application note but uses an MSP430G2553 & an I2C connected display. Unfortunately the current measurement device chosen is now end-of life... but remains the best for resolving 6.25mA and measuring up to 25A. It monitors voltage & current of each stage and sets the bias of each stage.
Attempts were made to use a 3-D printed shield covered in copper tape but ultimately this was changed to a 'proper' aluminium case which can be nevertheless be made at home.
Output protection is provided by a 100W isolator from Bert Modderman (pe1rki.com)
A 30v, 10A supply is required.
Some parts and advice were provided by Vincent (M0LCR) and Mike (G4VSS)
I used Kicad to draw/plot the circuit board and had them manufactured by JLCPCB. The program was written and tested on TIs Code Composer Studio but Energia may be used. 
The metal work was designed on FreeCAD and made from stock Al rod 10mmx20mm and 2mm thick Al sheet. The heatspreader was 10mmx100mmx72mm Cu. The Al heatsink was approximately 300mmx250mmx40mm
