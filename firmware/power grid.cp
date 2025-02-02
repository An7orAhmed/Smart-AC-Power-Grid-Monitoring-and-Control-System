#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/21. Power Grid System/firmware/power grid.c"
#line 6 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/21. Power Grid System/firmware/power grid.c"
unsigned char ch;
unsigned int adc_rd0;
unsigned int temp0=0,temp1=0;
unsigned max_point0 = 0;
unsigned int i,tlong0,tlong1;


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


char message1[] = "PK:000V";
char message2[] = "RMS:000V";

void Display_Freq(unsigned int freq2write){
 char *freq = " 00";
 freq[1] = (freq2write/10) + 48;
 freq[2] = (freq2write/1)%10 + 48;
 Lcd_Out(1, 11, freq);
 Lcd_Out(1,14,"Hz");
}


void main(){
 TRISA = 0xFF;
 TRISC = 0x00;
 PORTC = 0x00;
 PORTB = 0x00;
 ADCON1=0x00;
 OPTION_REG = 0b00101000;

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
