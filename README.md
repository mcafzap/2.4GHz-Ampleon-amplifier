# This amplifier is based on the Ampleon BCP2425M9X2S250-1 pallet

The bias circuit is taken from Ampleon's application note AN10900. There is an MSP430G2553 processor and an I2C 1.3" OLED display and 2 digital current monitors using the TLI4970. Unfortunately this current measurement device is end-of life, but it remains the best for resolving 6.25mA and measuring up to 25A. The display monitors voltage & current of each stage, sets the bias of each stage and shows the total power used.

Output protection is provided by a 100W isolator from Bert Modderman (pe1rki.com)
A 30v, 10A supply should give about 150W maximum - more than adequate for Q0-100 access. This pallet has 30dB of gain but a pre-amp will likely be required - the Amsat kit or a cheap shielded Chinese type. The circuit board uses an LM2596 dc-dc module. This can supply 12v for fans and/or the pre-amp or any voltage may be set to suit these devices. A lower voltage will lower the stress on the 3.3v linear regulator.

I used Kicad to draw/plot the circuit board and had them manufactured by JLCPCB. The program was written and tested on TI's Code Composer Studio but Energia may be used. 
The metal work was designed on FreeCAD and can be made from stock Al bar (10mm x 20mm) and Al sheet (2mm). The heatspreader is 10mm x 100mm x 72mm Cu. This is mounted on an Al heatsink approximately 250mm x 200mm x 40mm; it does not seem to require any fans.

Remember this is high frequency so everything must be kept short or shielded and properly 50 ohm terminated.

Thanks go to Vincent(M0LCR), Mike(G4VSS) and Brian(G4EWB) for software/hardware advice but thanks are especially owed to Anthony Tognarelli of Waterfield Electronics Ltd. (waterfieldelectronics.com) for providing the pallets.
