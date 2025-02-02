/*******************************************************************************
Program for Power Factor measurement
MCU: PIC16F73  X-Tal: 8MHz
Program Written By Engr. Mithun K. Das; Email: mithun060@gmail.com
*******************************************************************************/
unsigned char ch;
unsigned int adc_rd0;
unsigned int temp0=0,temp1=0;
unsigned max_point0 = 0;
unsigned int i,tlong0,tlong1;

// LCD module connections
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;
// End LCD module connections

char message1[] = "PK:000V";
char message2[] = "RMS:000V";

void Display_Freq(unsigned int freq2write){
  char *freq = " 00";
  freq[1] = (freq2write/10) + 48;    // Extract tens digit
  freq[2] =  (freq2write/1)%10 + 48;    // Extract ones digit
  Lcd_Out(1, 11, freq);      7
  Lcd_Out(1,14,"Hz");
}


void main(){
  TRISA = 0xFF; // set all pins of PORT A as input
  TRISC = 0x00; // set all pins as output
  PORTC = 0x00; // clear port C
  PORTB = 0x00; // clear port B
  ADCON1=0x00; // set all Analog
  OPTION_REG = 0b00101000; // set TOCKI as clock counter

  Lcd_Init();
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Cmd(_LCD_CURSOR_OFF);

  while(1){
    TMR0 = 0;
    Delay_ms(1000);
    Lcd_Out(1,1,"FREQUENCY:");
    Display_Freq(TMR0 / 2);
    TMR0 = 0;
  }
}