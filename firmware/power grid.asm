
_Display_Freq:

;power grid.c,31 :: 		void Display_Freq(unsigned int freq2write){
;power grid.c,32 :: 		char *freq = " 00";
	MOVLW      ?lstr1_power_32grid+0
	MOVWF      Display_Freq_freq_L0+0
;power grid.c,33 :: 		freq[1] = (freq2write/10) + 48;    // Extract tens digit
	INCF       Display_Freq_freq_L0+0, 0
	MOVWF      FLOC__Display_Freq+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_Display_Freq_freq2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Freq_freq2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Freq+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;power grid.c,34 :: 		freq[2] =  (freq2write/1)%10 + 48;    // Extract ones digit
	MOVLW      2
	ADDWF      Display_Freq_freq_L0+0, 0
	MOVWF      FLOC__Display_Freq+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_Display_Freq_freq2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Freq_freq2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Freq+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;power grid.c,35 :: 		Lcd_Out(1, 11, freq);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       Display_Freq_freq_L0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;power grid.c,36 :: 		Lcd_Out(1,14,"Hz");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_power_32grid+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;power grid.c,37 :: 		}
L_end_Display_Freq:
	RETURN
; end of _Display_Freq

_main:

;power grid.c,40 :: 		void main(){
;power grid.c,41 :: 		TRISA = 0xFF; // set all pins of PORT A as input
	MOVLW      255
	MOVWF      TRISA+0
;power grid.c,42 :: 		TRISC = 0x00; // set all pins as output
	CLRF       TRISC+0
;power grid.c,43 :: 		PORTC = 0x00; // clear port C
	CLRF       PORTC+0
;power grid.c,44 :: 		PORTB = 0x00; // clear port B
	CLRF       PORTB+0
;power grid.c,45 :: 		ADCON1=0x00; // set all Analog
	CLRF       ADCON1+0
;power grid.c,46 :: 		OPTION_REG = 0b00101000; // set TOCKI as clock counter
	MOVLW      40
	MOVWF      OPTION_REG+0
;power grid.c,48 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;power grid.c,49 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;power grid.c,50 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;power grid.c,52 :: 		while(1){
L_main0:
;power grid.c,53 :: 		TMR0 = 0;
	CLRF       TMR0+0
;power grid.c,54 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;power grid.c,55 :: 		Lcd_Out(1,1,"FREQUENCY:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_power_32grid+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;power grid.c,56 :: 		Display_Freq(TMR0 / 2);
	MOVF       TMR0+0, 0
	MOVWF      FARG_Display_Freq_freq2write+0
	CLRF       FARG_Display_Freq_freq2write+1
	RRF        FARG_Display_Freq_freq2write+0, 1
	BCF        FARG_Display_Freq_freq2write+0, 7
	MOVLW      0
	MOVWF      FARG_Display_Freq_freq2write+1
	CALL       _Display_Freq+0
;power grid.c,57 :: 		TMR0 = 0;
	CLRF       TMR0+0
;power grid.c,58 :: 		}
	GOTO       L_main0
;power grid.c,59 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
