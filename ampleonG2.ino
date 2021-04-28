#include <SPI.h>
#include <Wire.h>
#include <U8x8lib.h>
#include <OneWire.h>
#include "MspFlash.h"

#define flash SEGMENT_D
// Pins usage
int CS1 = P2_1;
int CS2 = P2_2;
int SCL = P1_6;
int SDA = P1_7;

int ThermistorPin = A0;
int VoltagePinA = A1;
int VoltagePinB = A2;
const int Button1 = P2_3;
const int Button2 = P2_4;
const int Button3 = 18; //P2_7 on MSP430G2553

const uint16_t degree[] = { 576, 563, 550, 537, 524, 511, 498, 485, 473, 460,
                            448, 435, 423, 412, 400, 388, 377, 366, 355, 344,
                            334, 324, 314, 304, 295, 285, 276, 259, 250, 242,
                            234, 227, 219, 212, 205, 198, 192, 185, 179, 173,
                            167, 161, 156, 151, 146, 141, 137, 132, 128, 124,
                            119, 116, 112, 108, 105, 101, 98, 95, 92, 89, 86,
                            83, 81, 78, 76, 73, 71, 69, 66, 65, 62, 60, 59, 57,
                            55 };
// 76 values 20 - 95C
//const uint16_t degree[] = { 511, 448, 388, 334, 285, 242, 205, 173, 146, 124,
//                            105, 89, 76, 65, 55 };
// 15 values
// 21 degrees = (511-448/5) + 511 ~ 498.4
// Variables
uint8_t x, neg;
uint8_t setMode = 0, zeroBias = 0, offsetRemoval = 0;
char SerBuf[8];
//unsigned char p[4];
//unsigned char q, r, s;
int8_t i;
uint16_t Vth, Vhi;
uint16_t I1 = 0x1000, I2 = 0x1000;
union
{
    struct
    {
        uint16_t I1_offset;
        uint16_t I2_offset;
    } Offset;
    unsigned char p[4];
} Fdata;

uint8_t volt, temp, C1Amps, C2Amps;
uint16_t values[8];
uint16_t Vg2, Vg1, status;
uint8_t hiByte, loByte;
uint16_t AverageI1, dataOut;
uint16_t Vx, AccV = 0x2810, AccT;
uint8_t R2;
uint16_t C1, Acc1 = 0x3000;
uint16_t C2, Acc2 = 0x3000;
uint16_t POWER;
uint32_t timeout;

void wrtEEP4728(void);

#define WIRE_INTERFACES_COUNT 2

U8X8_SH1106_128X64_NONAME_HW_I2C u8x8(/* reset=*/U8X8_PIN_NONE);
//U8X8_SSD1306_128X64_NONAME_HW_I2C u8x8(/* reset=*/U8X8_PIN_NONE);
//U8X8_SSD1305_128X64_ADAFRUIT_HW_I2C u8x8(/* reset=*/U8X8_PIN_NONE);
//U8X8_SSD1305_128X64_NONAME_HW_I2C u8x8(/* reset=*/ U8X8_PIN_NONE);
//U8X8_SSD1325_128X64_NONAME_HW_I2C([/* reset=*/ U8X8_PIN_NONE);

OneWire M1(P1_4);
OneWire M2(P1_3);

void setup()

{ // recover offsets...
    Flash.read(flash, &Fdata.p[0], 4);
// these might  be 0xffff if a new chip, check and 0?
    if (Fdata.Offset.I1_offset == 0xffff)
        Fdata.Offset.I1_offset = 0;
    if (Fdata.Offset.I2_offset == 0xffff)
        Fdata.Offset.I2_offset = 0;
    //    data.I1_offset = (p[0]<<8) | p[1];
//    data.I2_offset = (p[2]<<8) | p[3];
    x = 0;
    P1SEL = 0;
    P2SEL = 0; // all I/O lines
    P1OUT = 0x00;
    P1DIR = 0xFF; // all outputs
    P2OUT = 0x00;
    P2DIR = 0xFF; // all outputs

    pinMode(CS1, OUTPUT);
    pinMode(CS2, OUTPUT);
    pinMode(Button1, INPUT_PULLUP);
    pinMode(Button2, INPUT_PULLUP);
    pinMode(Button3, INPUT_PULLUP);
    pinMode(ThermistorPin, INPUT);

    digitalWrite(CS1, 1); //disable one current sensor
    digitalWrite(CS2, 1); //disable the other current sensor
    analogReference (INTERNAL2V5);

    Vx = txTwo16(0x8000);
    delayMicroseconds(30);
    Vx = txTwo16(0x8000);
    Vx |= 0x0f80;
    POWER = txTwo16(0x8001);
    delayMicroseconds(30);
    POWER = txTwo16(Vx);
    delayMicroseconds(30);

    Vx = txOne16(0x8000); //Temporary usage of 'Vx'
    delayMicroseconds(30);
    Vx = txOne16(0x8000);
    Vx |= 0x0f80;
    POWER = txOne16(0x8001); //Temporary usage of 'POWER'
    delayMicroseconds(30);
    POWER = txOne16(Vx);
    delayMicroseconds(30);

    pinMode(SCL, INPUT_PULLUP); // Attempt to recover from I2C crash...
    pinMode(SDA, INPUT_PULLUP);
    int8_t ClockCount = 20, counter;
    while ((digitalRead(SDA) == 0) && (ClockCount > 0))
    {
        pinMode(SCL, INPUT);
        pinMode(SCL, OUTPUT);
        delayMicroseconds(10);
        pinMode(SCL, INPUT);
        pinMode(SCL, OUTPUT);
        delayMicroseconds(10);
        int count = 20;
        while ((digitalRead(SCL) == 0) && (counter > 0))
        {
            counter--;
            delay(100);
        }
    }
    pinMode(SDA, INPUT);
    pinMode(SDA, OUTPUT);
    delayMicroseconds(10);
    pinMode(SDA, INPUT);
    pinMode(SDA, INPUT_PULLUP);
    delayMicroseconds(10);
    pinMode(SDA, INPUT);
    pinMode(SCL, INPUT);

    Wire = TwoWire(0);

    u8x8.begin();
    u8x8.setFont(u8x8_font_5x7_r);    // Normal 1:1 pixel scale
    u8x8.setContrast(8);
    u8x8.draw2x2String(0, 0, "WARC AMP");
    u8x8.draw2x2String(2, 3, "Q0-100");
    u8x8.draw2x2String(1, 6, "Monitor");
    u8x8.display();
    delay(2000);
    setMode = 0;

    u8x8.clear();
    u8x8.drawString(0, 0, "V              C");
    u8x8.draw2x2String(2, 2, "I1  I2");

    u8x8.drawString(0, 6, "    Input Watts");
    Wire.endTransmission(1);

    zeroBias = 1;  // Zero bias voltages on switch-on!
    Vg1 = 0;
    Vg2 = 0;

    wrtVol4728(); //just do a volatile write for now - write to EEPROM on timeout

//    read4728(); // recover V bias settings
//    Vg2 = values[1];
//    Vg1 = values[3];
//    reset4728();
    if ((digitalRead(Button1) == 0) ||(digitalRead(Button2) == 0))
    {
        read4728(); // bias about to be set, recover V bias settings
        Vg2 = values[1];
        Vg1 = values[3];
        if (Vg1 < 1500) Vg1 = 1500;
        if (Vg2 < 1500) Vg2 = 1500;
        reset4728();
    }
    if (digitalRead(Button1) == 0)
    {
        setMode = 1;
        u8x8.drawString(0, 6, "Vg1 Bias setting");
    }

    if (digitalRead(Button2) == 0)
    {
        setMode = 2;
        u8x8.drawString(0, 6, "Vg2 Bias setting");
    }

    while ((digitalRead(Button1) == 0) || (digitalRead(Button2) == 0))
        timeout = millis();
    //await release so as not to alter values
}

void loop()
{
    Vx = txTwo16(0x8000);
    delayMicroseconds(30);
    Vx = txTwo16(0x8000);
    Vx |= 0x0f80;
    POWER = txTwo16(0x8001);
    delayMicroseconds(30);
    POWER = txTwo16(Vx);
    delayMicroseconds(30);

    Vx = txOne16(0x8000); //Temporary usage of 'Vx'
    delayMicroseconds(30);
    Vx = txOne16(0x8000);
    Vx |= 0x0f80;
    POWER = txOne16(0x8001); //Temporary usage of 'POWER'
    delayMicroseconds(30);
    POWER = txOne16(Vx);
    delayMicroseconds(30);
// Obtain current values
    SPI.begin();
    SPI.end();
    SPI.begin();
    SPI.setBitOrder(MSBFIRST);
    SPI.setDataMode(SPI_MODE1);
    SPI.setClockDivider(SPI_CLOCK_DIV16);

    digitalWrite(CS1, 0);
    delayMicroseconds(2);
    status = SPI.transfer16(0xffff);
    delayMicroseconds(10);
    digitalWrite(CS1, 1);
    if (!(status & 0x8000))
    {
        I1 = status & 0x1fff;
// exponential average routine
        Acc1 += I1;
        I1 = Acc1 >> 2; // /4
        Acc1 = I1 << 2; // x4
        Acc1 -= I1;     // x3
    }

    digitalWrite(CS2, 0);
    delayMicroseconds(2);
    status = SPI.transfer16(0xffff);
    delayMicroseconds(10);
    digitalWrite(CS2, 1);
    SPI.end();
    if (!(status & 0x8000)) // If not a status byte
    {
        I2 = status & 0x1fff;
// exponential average routine
        Acc2 += I2;
        I2 = Acc2 >> 2; // /4
        Acc2 = I2 << 2; // x4
        Acc2 -= I2;     // x3
    }
//
    C1 = I1 + Fdata.Offset.I1_offset; //MUST sort out negative sign!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    x = 1;
    neg = ' ';
    if (C1 < 0x1000)
    {
        C1 = ~C1 + 1; //2's complement
        neg = '-';
    }
    C1 &= 0x0FFF;
// Make all values positive (doesn't matter about current direction)
    displayRight(C1);  // move into SerBuf...
    SerBuf[0] = neg;

    C2 = I2 + Fdata.Offset.I2_offset;
    neg = ' ';
    if (C2 < 0x1000)
    {
        C2 = ~C2 + 1; //2's complement
        neg = '-';
    }
    C2 &= 0x0FFF;

// Make all values positive (doesn't matter about current direction)
    u8x8.drawString(0, 4, SerBuf);
    displayRight(C2);
    SerBuf[0] = neg;
    u8x8.drawString(9, 4, SerBuf);

    Vhi = analogRead(VoltagePinA);
    if (Vhi < 100)
        Vhi = analogRead(VoltagePinB); // read other voltage input if this is zero...
// exponential average routine
    AccV = AccV + Vhi;
    Vhi = AccV >> 4;    // /8

    AccV = Vhi << 4;    // x8
    AccV -= Vhi;        // x7

    Vx = (Vhi * 55) >> 7; //calc: (2.5/1023) * (33+2)/2 * reading (ten times) ;
    itoa(Vx, SerBuf, 10); //Vx is in hundreths, 30v = 300. Factor: 0.42766

    SerBuf[3] = SerBuf[2];
    SerBuf[2] = '.';
    SerBuf[4] = '\0';
    u8x8.drawString(2, 0, SerBuf);

    Vth = analogRead(ThermistorPin);
    AccT = AccT + Vth;
    Vth = AccT >> 4;    // /16

    AccT = Vth << 4;    // x16
    AccT -= Vth;        // x15

// simple look-up for temperature - not enough resources
    R2 = 20; //for interpolation improvement (?)
    x = 0;
    while ((Vth < degree[x]) && (x < 76)) //15 otherwise
    {
        R2++;
        x++;
    }

    itoa(R2, SerBuf, 10);    // then write out temperature
    u8x8.drawString(12, 0, SerBuf);

    if (setMode == 0) // If NOT setting biases...
    {
// Calculation is (|c1|+|c2|) * 0.00625 * V/10 (V is 10 times value)
        POWER = ((uint32_t) (C1 + C2) * Vx) / 1600;
        rightJustify(POWER);
        u8x8.drawString(3, 7, SerBuf);
        u8x8.display();
        delay(50);
    }
    if (setMode > 0)
    {
        if (millis() - timeout > 10000) //10 second timeout
        {
            setMode = 0;
            wrtEEP4728(); // Save bias settings to EEPROM
            u8x8.drawString(0, 6, "    Input Watts ");
        }

        if ((digitalRead(Button1) == 0))
        {
            timeout = millis();
            if (setMode == 1)
            {
                Vg1++;
                if (Vg1 > 4095)
                    Vg1 = 4095; //no roll-over
            }
            else
            {
                Vg2++;
                if (Vg2 > 4095)
                    Vg2 = 4095; //no roll-over
            }
        }

        if (digitalRead(Button2) == 0)
        {
            timeout = millis();
            if (setMode == 1)
            {
                if (Vg1 == 0)
                    Vg1 = 1; //no roll-under
                Vg1--;
            }
            else
            {
                if (Vg2 == 0)
                    Vg2 = 1; //no roll-under
                Vg2--;

            }
        }
        wrtVol4728(); // output bias settings
        if (setMode == 1)
        {
            rightJustify(Vg1);
        }
        else
        {
            rightJustify(Vg2);
        }
        u8x8.drawString(3, 7, SerBuf);
        u8x8.display();
        delay(100); //
    }

    if (setMode == 0)
    {
        // Offset Removal ********************************
        // both buttons down to store offsets

        if ((digitalRead(Button1) == 0) && (digitalRead(Button2) == 0)
                && (offsetRemoval == 0) && (zeroBias == 1)) // store I offsets
        {
            Fdata.Offset.I1_offset = 0x1000 - I1; // say 0x0ffe -> 0xfffe or -2
            Fdata.Offset.I2_offset = 0x1000 - I2; // say 0x1003 -> 0x0003 or +3
            offsetRemoval = 1; // Now write to Flash
//        Fdata.p[0] = I1_offset >> 8;
//        Fdata.p[1] = I1_offset & 0xff;
//        Fdata.p[2] = I2_offset >> 8;
//        Fdata.p[3] = I2_offset & 0xff;
            Flash.erase(flash);
            Flash.write(flash, &Fdata.p[0], 4);
//        Flash.write(flash+1, &q, 1);
//        Flash.write(flash+2, &r, 1);
//        Flash.write(flash+3, &s, 1);
// No need to wait!        while ((digitalRead(Button1) == 0) || (digitalRead(Button2) == 0))
            ;// now wait here for release of both buttons
        }

        //********************PTT SECTION********************
        // If not setting bias voltages, zero the bias voltages until PTT is pulled low
        // If the first condition is invalid, the second may also be, so the entire section is skipped
        // To make PTT function, Button3 must be held down at least once after switch-on.
        if (digitalRead(Button3) == 0)
        {

            if (zeroBias == 1)
            {
                zeroBias = 0; // do general reset to restore eeprom values to outputs
                reset4728();
            }
        }
        else // restore values if we've been here...
        if (zeroBias == 0) // zero bias voltage
        {
            zeroBias = 1;
            Vg1 = 0;
            Vg2 = 0;

            wrtVol4728(); //just do a volatile write for now - write to EEPROM on timeout
        } // end of PTT section

    } // end of 'mode = 0' sections (PTT & bias removal)
//    Wire.endTransmission();
} //main Energia loop

// subroutines....
// write to MCP4728
void wrtEEP4728()
{ //mode determines whether to write to volatile or non-volatile memory
    Wire = TwoWire(0);
    Wire.beginTransmission(0x60);
    Wire.write(0x50); //multi-write command

    hiByte = Vg2 >> 8;
    hiByte &= 0x0f; //use internal reference and x2 (0x90)
    hiByte |= 0x90; // or Vcc and x 1 (0x00)
    loByte = Vg2 & 0x00ff; // This is VG1
    Wire.write(hiByte); //send value
    Wire.write(loByte); //send value
// prepare values (16-bit -> 2x8-bit)
    hiByte = Vg1 >> 8;
    hiByte &= 0x0f;
    hiByte |= 0x90; //write to channel B, C & D
    loByte = Vg1 & 0x00ff; // D is VG2
    Wire.write(hiByte); //send value
    Wire.write(loByte); //send value

    Wire.write(hiByte); //send value
    Wire.write(loByte); //send value

    Wire.write(hiByte); //send value
    Wire.write(loByte); //send value
    Wire.endTransmission(1);
}

void wrtVol4728(void)
{ //Writes values to device, but only into volatile memory
    Wire = TwoWire(0);
    Wire.beginTransmission(0x60);
    hiByte = Vg2 >> 8;
    hiByte &= 0x0f; //use internal reference and x2 (0x90)
    loByte = Vg2 & 0x00ff; // This is VG1
    Wire.write(hiByte); //send value
    Wire.write(loByte); //send value
    hiByte = Vg1 >> 8;
    hiByte &= 0x0f;
    loByte = Vg1 & 0x00ff; // D is VG2
    Wire.write(hiByte); //send value
    Wire.write(loByte); //send value
    Wire.write(hiByte); //send value
    Wire.write(loByte); //send value
    Wire.write(hiByte); //send value
    Wire.write(loByte); //send value
    Wire.endTransmission(1);
}

void reset4728()
{
    Wire = TwoWire(0);
    Wire.beginTransmission(0x00);
    Wire.write(0x06);
    Wire.endTransmission(1);
}

void read4728(void)
{
    Wire.beginTransmission(0x60);
    Wire.requestFrom(0x60, 24);
    while (Wire.available())
    {
        for (x = 0; x < 8; x++)
        {
            hiByte = Wire.read();  // discard - contains some device ID
            hiByte = Wire.read();  // Reads high part from the register
            loByte = Wire.read();  // Reads lsb from the register
            values[x] = word((hiByte & 0x0f), loByte); //combine & store
        }
    }
    Wire.endTransmission(1);
}

// The  following are for setting the bandwidth of the current sensors
// this value is ephemeral (without 20v and associated switching
uint16_t txOne16(uint16_t dataIn)
{
    dataOut = 0;
    for (i = 15; i >= 0; i--)
    {
        write1_bit((dataIn >> i) & 0x01);
        dataOut |= (read1_bit()) << i;
    }
    delayMicroseconds(50);
    return dataOut;
}

uint16_t txTwo16(uint16_t dataIn)
{
    {
        dataOut = 0;
        for (i = 15; i >= 0; i--)
        {
            write2_bit((dataIn >> i) & 0x01);
            dataOut |= (read2_bit()) << i;
        }
        delayMicroseconds(50);
        return dataOut;
    }
}

uint8_t read1_bit()
{
    return !(M1.read_bit());
}

void write1_bit(uint8_t value)
{
    M1.write_bit(!value);
}

uint8_t read2_bit()
{
    return !(M2.read_bit());
}

void write2_bit(uint8_t value)
{
    M2.write_bit(!value);
}

void displayRight(uint16_t d) //adjust reading and right justify current values
{
//    d = ((uint32_t)d * 100) >> 4; // multiply by 6.25
    d = d * 6.25;
    rightJustify(d);
    if (SerBuf[4] == ' ')
    {
        SerBuf[4] = '0';
        if (SerBuf[5] == ' ')
            SerBuf[5] = '0';
    }
    SerBuf[1] = SerBuf[2];
    SerBuf[2] = SerBuf[3];
    SerBuf[3] = '.';
    if (SerBuf[2] == ' ')
        SerBuf[2] = '0';
}

void rightJustify(uint16_t f)
{
    for (x = 1; x < 8; x++)
        SerBuf[x] = '\0'; //clear SerBuf[]
    itoa(f, SerBuf, 10);
    while (SerBuf[6] == '\0')
    {
        for (x = 6; x > 0; x--)
            SerBuf[x] = SerBuf[x - 1];
        SerBuf[0] = ' ';
    }
}

