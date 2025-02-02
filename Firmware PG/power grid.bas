;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20

Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
DelayMS 1000
Cls

OPTION_REG = %00101000
TRISA = $FF

Symbol test = PORTC.0
Symbol ac_inc = PORTC.1
Symbol ac_dec = PORTC.2
Symbol freq_inc = PORTC.3
Symbol freq_dec = PORTC.4
Symbol relay = PORTB.0
Output relay : Low relay
TRISC = $ff

Dim freq As Byte
Dim adc As Byte
Dim t_freq As Byte
Dim t_volt As Word
Dim adc_avg As Dword
Dim volt As Word
Dim x As Word
Dim test_flag As Bit
Clear

main:
  adc_avg = 0
  For x = 0 To 1000
    adc = ADIn 4
    adc_avg = adc_avg + adc 
  Next
  volt = (adc_avg / 1000) + 75
  If volt < 150 Then volt = 0
   
  Print At 1,1, "AC Freq: "
  Print At 2,1, "AC Volt: "
  
  TMR0 = 0
  DelayMS 1000
  freq = TMR0
  freq = freq / 2  
  
  If test = 0 Then
    test_flag = ~test_flag
    Cls
    If test_flag = 1 Then
      Print At 1,1, "TEST MODE ON"
    Else
      Print At 1,1, "TEST MODE OFF"
    EndIf
    DelayMS 2000
    Cls
  EndIf
  
  If test_flag = 1 Then
    If ac_inc = 0 Then Inc t_volt
    If ac_dec = 0 Then Dec t_volt
    If freq_inc = 0 Then Inc t_freq
    If freq_dec = 0 Then Dec t_freq
    If t_volt < 0 Then t_volt = 0
    If t_freq < 0 Then t_freq = 0
    Print At 1,10, Dec t_freq, "Hz  "
    Print At 2,10, Dec t_volt, "v  "
  Else  
    Print At 1,10, Dec freq, "Hz  "
    Print At 2,10, Dec volt, "v  "
    t_freq = freq
    t_volt = volt
  EndIf
  
  If t_volt >= 215 And t_volt <= 230 Then
    If t_freq >= 50 And t_freq <= 55 Then
      relay = 1
    Else
      relay = 0
    EndIf
  Else
    relay = 0
  EndIf
    
GoTo main                          
