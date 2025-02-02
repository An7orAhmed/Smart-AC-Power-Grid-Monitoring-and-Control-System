;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16C72, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
TMR2 equ 0X0011
T2CON equ 0X0012
SSPBUF equ 0X0013
SSPCON equ 0X0014
CCPR1L equ 0X0015
CCPR1LH equ 0X0016
CCPR1H equ 0X0016
CCP1CON equ 0X0017
ADRES equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PCON equ 0X008E
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
ADCON1 equ 0X009F
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=3
IRP=7
RP1=6
RP0=5
NOT_TO=4
NOT_PD=3
Z=2
DC=1
C=0
GIE=7
PEIE=6
T0IE=5
INTE=4
RBIE=3
T0IF=2
INTF=1
RBIF=0
ADIF=6
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
TMR1CS=1
TMR1ON=0
TOUTPS3=6
TOUTPS2=5
TOUTPS1=4
TOUTPS0=3
TMR2ON=2
PP_TMR2ON=2
T2CKPS1=1
PP_T2CKPS1=1
T2CKPS0=0
PP_T2CKPS0=0
WCOL=7
SSPOV=6
SSPEN=5
CKP=4
SSPM3=3
SSPM2=2
SSPM1=1
SSPM0=0
CCP1X=5
CCP1Y=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
ADCS1=7
ADCS0=6
CHS2=5
CHS1=4
CHS0=3
GO=2
NOT_DONE=2
GO_DONE=2
PP_GO_DONE=2
ADON=0
NOT_RBPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
ADIE=6
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
I2C_DATA=5
NOT_A=5
NOT_ADDRESS=5
D_A=5
DATA_ADDRESS=5
I2C_STOP=4
I2C_START=3
I2C_READ=2
NOT_W=2
NOT_WRITE=2
R_W=2
PP_R_W=2
READ_WRITE=2
UA=1
BF=0
PP_BF=0
PCFG2=2
PCFG1=1
PCFG0=0
  __MAXRAM 0XBF
  __BADRAM 0X08-0X09, 0X0D, 0X18-0X1D
  __BADRAM 0X88-0X89, 0X8D, 0X8F-0X91, 0X95-0X9E
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X00CF
CP_75 equ 0X15DF
CP_50 equ 0X2AEF
CP_OFF equ 0X3FFF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LP_OSC equ 0X3FFC
XT_OSC equ 0X3FFD
HS_OSC equ 0X3FFE
RC_OSC equ 0X3FFF
BOREN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16C72 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 128
#define _RAM_END 0X0080
#define _MAXMEM 2048
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 1
#define _BANKS 2
#define RAM_BANKS 2
#define _USART 0
#define _USB 0
#define _FLASH 0
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00BF
#define _SYSTEM_VARIABLE_COUNT 31
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#DTPORT PORTB
#define LCD#DTPIN 4
#define LCD#RSPORT PORTB
#define LCD#RSPIN 2
#define LCD#ENPORT PORTB
#define LCD#ENPIN 3
#define LCD#INTERFACE 4
#define LCD#TYPE 0
f@call macro PDEST
if(PDEST < 1)
else
if(PDEST > $)
else
endif
endif
        call PDEST
        endm
F@JUMP macro PDEST
if(PDEST < 1)
else
if(PDEST > $)
else
endif
endif
        goto PDEST
        endm
set@page macro PDEST
        endm
s@b     macro pVarin
if((pVarin & 384) == 0)
if(ram_bank == 1)
        bcf 3,5
endif
if(ram_bank == 2)
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
        bcf 3,6
endif
ram_bank = 0
endif
if((pVarin & 384) == 128)
if(ram_bank == 0)
        bsf 3,5
endif
if(ram_bank == 2)
        bsf 3,5
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,6
endif
ram_bank = 1
endif
if((pVarin & 384) == 256)
if(ram_bank == 0)
        bsf 3,6
endif
if(ram_bank == 1)
        bcf 3,5
        bsf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
endif
ram_bank = 2
endif
        endm
r@b     macro
if((ram_bank & 1) != 0)
        bcf 3,5
endif
if((ram_bank & 2) != 0)
        bcf 3,6
endif
ram_bank = 0
        endm
jump macro PLABEL
    goto PLABEL
    endm
wreg_byte macro pByteOut
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
wreg_bit macro pVarOut,pBitout
    s@b pVarOut
    andlw 1
    btfsc STATUS,2
    bcf pVarOut,pBitout
    btfss STATUS,2
    bsf pVarOut,pBitout
    r@b
    endm
wreg_word macro pWordOut
    s@b pWordOut
    movwf pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    r@b
    endm
wreg_dword macro pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    s@b pDwordOut
    movwf pDwordOut
    r@b
    endm
byte_wreg macro pByteIn
    s@b pByteIn
    movf pByteIn,W
    r@b
    endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
    endm
num_byte macro pNumIn,pByteOut
    s@b pByteOut
if(pNumIn == 0)
    clrf pByteOut
else
    movlw (pNumIn & 255)
    movwf pByteOut
endif
    r@b
    endm
num_bit macro pNumIn,pVarOut,pBitout
    s@b pVarOut
if((pNumIn & 1) == 1)
    bsf pVarOut,pBitout
else
    bcf pVarOut,pBitout
endif
    r@b
    endm
num_word macro pNumIn,pWordOut
if((pNumIn & 255) == 0)
    s@b pWordOut
    clrf pWordOut
else
    s@b pWordOut
    movlw low (pNumIn)
    movwf pWordOut
endif
if(((pNumIn >> 8) & 255) == 0)
    s@b pWordOut+1
    clrf pWordOut+1
else
    s@b pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
endif
    r@b
    endm
num_dword macro pNumIn,pDwordOut
if ((pNumIn >> 24 & 255) == 0)
    s@b pDwordOut+3
    clrf pDwordOut+3
else
    s@b pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
endif
if( ((pNumIn >> 16) & 255) == 0)
    s@b pDwordOut+2
    clrf pDwordOut+2
else
    s@b pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
endif
if( ((pNumIn >> 8) & 255) == 0)
    s@b pDwordOut+1
    clrf pDwordOut+1
else
    s@b pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
endif
if((pNumIn & 255) == 0)
    s@b pDwordOut
    clrf pDwordOut
else
    s@b pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
endif
    r@b
    endm
bit_wreg macro pVarin,pBitIn
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    r@b
    endm
bit_byte macro pVarin,pBitIn,pByteOut
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
bit_bit macro pVarin,pBitIn,pVarOut,pBitout
if((pVarin & 65408) == (pVarOut & 65408))
    s@b pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
    s@b pVarin
    clrdc
    btfsc pVarin,pBitIn
    setdc
    s@b pVarOut
    skpndc
    bsf pVarOut,pBitout
    skpdc
    bcf pVarOut,pBitout
endif
    endm
bit_word macro pVarin,pBitIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    bit_byte pVarin,pBitIn,pWordOut
    endm
bit_dword macro pVarin,pBitIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    bit_byte pVarin,pBitIn,pDwordOut
    endm
word_wreg macro pWordIn
    byte_wreg pWordIn
    endm
word_byte macro pWordIn,pByteOut
    byte_byte pWordIn,pByteOut
    endm
word_bit macro pWordIn,pVarOut,pBitout
    byte_bit pWordIn, pVarOut, pBitout
    endm
word_word macro pWordIn,pWordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pWordIn,pWordOut
    endm
word_dword macro pWordIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    byte_byte pWordIn+1,pDwordOut+1
    byte_byte pWordIn,pDwordOut
    endm
byte_byte macro pByteIn,pByteOut
    s@b pByteIn
    movf pByteIn,W
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
byte_word macro pByteIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    byte_byte pByteIn,pWordOut
    endm
byte_dword macro pByteIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    byte_byte pByteIn,pDwordOut
    endm
    byte_bit macro pByteIn,pVarOut,pBitout
if((pByteIn & 65408) == (pVarOut & 65408))
    s@b pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
    s@b pByteIn
    rrf pByteIn,W
    s@b pVarOut
    skpnc
    bsf pVarOut,pBitout
    skpc
    bcf pVarOut,pBitout
endif
    r@b
    endm
dword_wreg macro pDwordIn
    byte_wreg pDwordIn
    endm
dword_byte macro pDwordIn,pByteOut
    byte_byte pDwordIn,pByteOut
    endm
dword_word macro pDwordIn,pWordOut
    s@b pDwordIn+1
    movf pDwordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pDwordIn,pWordOut
    endm
dword_dword macro pDwordIn,pDwordOut
    byte_byte pDwordIn+3,pDwordOut+3
    byte_byte pDwordIn+2,pDwordOut+2
    byte_byte pDwordIn+1,pDwordOut+1
    byte_byte pDwordIn,pDwordOut
    endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
    endm
variable CURRENT@PAGE = 0
variable PDESTINATION@PAGE = 0
FIND@PAGE macro pLabelIn
local CURRENT_ADDR = $
local DEST_ADDR = pLabelIn
if((CURRENT_ADDR >= 0X1800) && (CURRENT_ADDR <= 0X2000))
    CURRENT@PAGE = 3
endif
if((CURRENT_ADDR >= 0X1000) && (CURRENT_ADDR <= 0X1800))
    CURRENT@PAGE = 2
endif
if((CURRENT_ADDR >= 0X0800) && (CURRENT_ADDR <= 0X1000))
    CURRENT@PAGE = 1
endif
if((CURRENT_ADDR >= 0) && (CURRENT_ADDR <= 0X0800))
    CURRENT@PAGE = 0
endif
if((DEST_ADDR >= 0X1800) && (DEST_ADDR <= 0X2000))
    PDESTINATION@PAGE = 3
endif
if((DEST_ADDR >= 0X1000) && (DEST_ADDR <= 0X1800))
    PDESTINATION@PAGE = 2
endif
if((DEST_ADDR >= 0X0800) && (DEST_ADDR <= 0X1000))
    PDESTINATION@PAGE = 1
endif
if((DEST_ADDR >= 0) && (DEST_ADDR <= 0X0800))
    PDESTINATION@PAGE = 0
endif
    endm
NUM_FSR macro pNumIn
    num_byte pNumIn, FSR
if (((pNumIn >> 8) & 255) == 1)
    bsf STATUS,7
else
    bcf STATUS,7
endif
    endm
label_word macro pLabelIn,pWordOut
    movlw low (pLabelIn)
    s@b pWordOut
    movwf pWordOut
    movlw high (pLabelIn)
    s@b pWordOut
    movwf pWordOut+1
    r@b
    endm
BPF = 32
BPFH = 33
GEN = 34
GEN4 = 35
GEN4H = 36
GPR = 37
PP0 = 38
PP0H = 39
PP0HH = 40
PP0HHH = 41
PP1 = 42
PP1H = 43
PP1HH = 44
PP1HHH = 45
PP2 = 46
PP2H = 47
PP2HH = 48
PP2HHH = 49
PP3 = 50
PP3H = 51
PP4 = 52
PP5 = 53
PP7 = 54
PP7H = 55
PP7HH = 56
PP7HHH = 57
PPZ = 58
PPZH = 59
PPZHH = 60
PPZHHH = 61
SP#P9 = 62
freq = 63
adc = 64
t_freq = 65
t_volt = 66
t_voltH = 67
adc_avg = 68
adc_avgH = 69
adc_avgHH = 70
adc_avgHHH = 71
volt = 72
voltH = 73
_X = 74
_XH = 75
_B#VR1 = 76
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define test PORTC,0
#define ac_inc PORTC,1
#define ac_dec PORTC,2
#define freq_inc PORTC,3
#define freq_dec PORTC,4
#define relay PORTB,0
#define test_flag _B#VR1,0
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
proton#code#start
        org 0
        goto proton#main#start
T@GE
        movwf 42
        movlw 3
        goto T@ST
T@LEB
        clrf 39
T@LEW
        clrf 43
T@LE
        movwf 42
        movlw 6
T@ST
        movwf 37
        movf 43,W
        subwf 39,W
        skpz
        goto $ + 3
        movf 42,W
        subwf 38,W
        movlw 4
        skpnc
        movlw 1
        skpnz
        movlw 2
        andwf 37,W
        skpz
        movlw 1
        goto I@NT
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 39
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 53
        movlw 254
        call CH@SND
        movf 53,W
        goto CH@SND
OUT@DECB
        clrf 36
OUT@DECC
        movwf 46
        clrf 47
OUT@DEC
        bcf 32,3
        movf 36,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 35
        movlw 39
        movwf 43
        movlw 16
        call D@DIG
        movlw 3
        movwf 43
        movlw 232
        call D@DIG
        clrf 43
        movlw 100
        call D@DIG
        clrf 43
        movlw 10
        call D@DIG
        movf 46,W
        goto SEND@IT
D@DIG
        movwf 42
        movf 47,W
        movwf 39
        movf 46,W
        movwf 38
        call D@VD
        movf 38,W
SEND@IT
        movwf 38
        decf 35,F
        skpnz
        bcf 32,3
        movf 36,W
        skpnz
        goto $ + 4
        subwf 35,W
        skpnc
        goto EX@SEND@IT
        movf 38,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 51
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 51,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 39
        movlw 128
        call DLUS@W
        movlw 51
        movwf 50
        call PR@LP
        movlw 19
        movwf 39
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 50
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 51,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 50
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 39
        movlw 208
        call DLUS@W
        bsf 3,0
        return
PRIT@SKP
        bsf 32,0
        sublw 254
        skpnz
        goto PR@EX
        bsf PORTB,2
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTB,3
        movlw 15
        andwf PORTB,F
        movf 50,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 50,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 51,W
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        return
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 8
RD@AD
        movwf 50
        rlf 50,F
        rlf 50,F
        rlf 50,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        clrf 55
        movf 30,W
        movwf 54
        goto I@NT
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 43
DLY@W
        movwf 42
DLY@P
        movlw 255
        addwf 42,F
        skpc
        addwf 43,F
        skpc
        goto I@NT
        movlw 3
        movwf 39
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 39
DLUS@W
        addlw 252
        movwf 38
        comf 39,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 38,F
        skpnc
        goto $ - 3
        addwf 38,F
        nop
        incfsz 39,F
        goto $ - 8
        return
L@DIV
L@MOD
        movf 41,W
        xorwf 49,W
        andlw 128
        movwf 51
        btfss 41,7
        goto DIVS@32X32SKIP1
        comf 38,F
        comf 39,F
        comf 40,F
        comf 41,F
        incf 38,F
        btfsc 3,2
        incf 39,F
        btfsc 3,2
        incf 40,F
        btfsc 3,2
        incf 41,F
DIVS@32X32SKIP1
        btfss 49,7
        goto DIVS@32X32SKIP2
        comf 46,F
        comf 47,F
        comf 48,F
        comf 49,F
        incf 46,F
        btfsc 3,2
        incf 47,F
        btfsc 3,2
        incf 48,F
        btfsc 3,2
        incf 49,F
DIVS@32X32SKIP2
        clrf 42
        clrf 43
        clrf 44
        clrf 45
        clrf 58
        clrf 59
        clrf 60
        clrf 61
        movf 49,W
        iorwf 48,W
        iorwf 47,W
        iorwf 46,W
        bz DIVS@32X32SKIP5
        movlw 32
        movwf 50
DIVS@32X32LOOP
        bcf 3,0
        rlf 38,F
        rlf 39,F
        rlf 40,F
        rlf 41,F
        rlf 58,F
        rlf 59,F
        rlf 60,F
        rlf 61,F
        movf 49,W
        subwf 61,W
        bnz DIVS@32X32SKIP3
        movf 48,W
        subwf 60,W
        bnz DIVS@32X32SKIP3
        movf 47,W
        subwf 59,W
        bnz DIVS@32X32SKIP3
        movf 46,W
        subwf 58,W
DIVS@32X32SKIP3
        bnc DIVS@32X32SKIP4
        movf 46,W
        subwf 58,F
        movf 47,W
        btfss 3,0
        incfsz 47,W
        subwf 59,F
        movf 48,W
        btfss 3,0
        incfsz 48,W
        subwf 60,F
        movf 49,W
        btfss 3,0
        incfsz 49,W
        subwf 61,F
        bsf 3,0
DIVS@32X32SKIP4
        rlf 42,F
        rlf 43,F
        rlf 44,F
        rlf 45,F
        decfsz 50,F
        goto DIVS@32X32LOOP
DIVS@32X32SKIP5
        btfss 51,7
        goto DIVS@32X32EXIT
        comf 42,F
        comf 43,F
        comf 44,F
        comf 45,F
        incf 42,F
        btfsc 3,2
        incf 43,F
        btfsc 3,2
        incf 44,F
        btfsc 3,2
        incf 45,F
DIVS@32X32EXIT
        movf 58,W
        movwf 46
        movf 59,W
        movwf 47
        movf 60,W
        movwf 48
        movf 61,W
        movwf 49
        movf 42,W
        movwf 38
        movf 43,W
        movwf 39
        movf 44,W
        movwf 40
        movf 45,W
        movwf 41
        goto I@NT
D@VD
        clrf 47
        clrf 46
D@VD2
        movlw 16
        movwf 50
        rlf 39,W
        rlf 46,F
        rlf 47,F
        movf 42,W
        subwf 46,F
        movf 43,W
        skpc
        incfsz 43,W
        subwf 47,F
        skpnc
        goto $ + 8
        movf 42,W
        addwf 46,F
        movf 43,W
        skpnc
        incfsz 43,W
        addwf 47,F
        bcf 3,0
        rlf 38,F
        rlf 39,F
        decfsz 50,F
        goto $ - 21
        movf 38,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        clrf 32
F2_SOF equ $ ; POWER GRID.PRP
F2_EOF equ $ ; POWER GRID.PRP
F1_SOF equ $ ; POWER GRID.BAS
F1_000017 equ $ ; IN [POWER GRID.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000018 equ $ ; IN [POWER GRID.BAS] CLS
        call LCD@CLS
F1_000020 equ $ ; IN [POWER GRID.BAS] OPTION_REG = %00101000
        movlw 40
        bsf STATUS,5
ram_bank = 1
        movwf OPTION_REG
F1_000021 equ $ ; IN [POWER GRID.BAS] TRISA = $FF
        movlw 255
        movwf TRISA
F1_000029 equ $ ; IN [POWER GRID.BAS] OUTPUT RELAY : LOW RELAY
        bcf TRISB,0
        bcf TRISB,0
        bcf STATUS,5
ram_bank = 0
        bcf PORTB,0
F1_000030 equ $ ; IN [POWER GRID.BAS] TRISC = $FF
        bsf STATUS,5
ram_bank = 1
        movwf TRISC
F1_000040 equ $ ; IN [POWER GRID.BAS] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        bcf STATUS,5
ram_bank = 0
        call CL@R
        movlw 160
        movwf FSR
        movlw 32
        call CL@R
main
F1_000043 equ $ ; IN [POWER GRID.BAS] ADC_AVG = 0
        clrf adc_avgHHH
        clrf adc_avgHH
        clrf adc_avgH
        clrf adc_avg
F1_000044 equ $ ; IN [POWER GRID.BAS] FOR X = 0 TO 1000
        clrf _XH
        clrf _X
FR@LB2
        movlw 3
        subwf _XH,W
        btfss STATUS,0
        goto CP@LB2
        btfss STATUS,2
        goto NX@LB3
        movlw 233
        subwf _X,W
        btfsc STATUS,0
        goto NX@LB3
CP@LB2
F1_000045 equ $ ; IN [POWER GRID.BAS] ADC = ADIN 4
        movlw 4
        call RD@AD
        movwf adc
F1_000046 equ $ ; IN [POWER GRID.BAS] ADC_AVG = ADC_AVG + ADC
        movf adc,W
        addwf adc_avg,W
        movwf adc_avg
        movlw 0
        btfsc STATUS,0
        movlw 1
        addwf adc_avgH,F
        movlw 0
        btfsc STATUS,0
        movlw 1
        addwf adc_avgHH,F
        movlw 0
        btfsc STATUS,0
        movlw 1
        addwf adc_avgHHH,F
CT@LB4
F1_000047 equ $ ; IN [POWER GRID.BAS] NEXT
        incf _X,F
        btfsc STATUS,2
        incfsz _XH,F
        goto FR@LB2
NX@LB3
F1_000048 equ $ ; IN [POWER GRID.BAS] VOLT = (ADC_AVG / 1000) + 75
        movf adc_avgHHH,W
        movwf PP0HHH
        movf adc_avgHH,W
        movwf PP0HH
        movf adc_avgH,W
        movwf PP0H
        movf adc_avg,W
        movwf PP0
        clrf PP2HHH
        clrf PP2HH
        movlw 3
        movwf PP2H
        movlw 232
        movwf PP2
        call L@DIV
        movf PP0HHH,W
        movwf PP7HHH
        movf PP0HH,W
        movwf PP7HH
        movf PP0H,W
        movwf PP7H
        movf PP0,W
        movwf PP7
        movlw 75
        addwf PP7,W
        movwf volt
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        movwf voltH
F1_000049 equ $ ; IN [POWER GRID.BAS] IF VOLT < 150 THEN VOLT = 0
        movf voltH,F
        btfss STATUS,2
        goto BC@LL5
        movlw 150
        subwf volt,W
        btfsc STATUS,0
        goto BC@LL5
        clrf voltH
        clrf volt
BC@LL5
F1_000051 equ $ ; IN [POWER GRID.BAS] PRINT AT 1,1, "AC FREQ: "
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 65
        call PRINT
        movlw 67
        call PRINT
        movlw 32
        call PRINT
        movlw 70
        call PRINT
        movlw 114
        call PRINT
        movlw 101
        call PRINT
        movlw 113
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
F1_000052 equ $ ; IN [POWER GRID.BAS] PRINT AT 2,1, "AC VOLT: "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 65
        call PRINT
        movlw 67
        call PRINT
        movlw 32
        call PRINT
        movlw 86
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        movlw 116
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
F1_000054 equ $ ; IN [POWER GRID.BAS] TMR0 = 0
        clrf TMR0
F1_000055 equ $ ; IN [POWER GRID.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000056 equ $ ; IN [POWER GRID.BAS] FREQ = TMR0
        movf TMR0,W
        movwf freq
F1_000057 equ $ ; IN [POWER GRID.BAS] FREQ = FREQ / 2
        bcf STATUS,0
        rrf freq,F
F1_000059 equ $ ; IN [POWER GRID.BAS] IF TEST = 0 THEN
        btfsc PORTC,0
        goto BC@LL7
F1_000060 equ $ ; IN [POWER GRID.BAS] TEST_FLAG = ~TEST_FLAG
        movlw 1
        xorwf _B#VR1,F
F1_000061 equ $ ; IN [POWER GRID.BAS] CLS
        call LCD@CLS
F1_000062 equ $ ; IN [POWER GRID.BAS] IF TEST_FLAG = 1 THEN
        btfss _B#VR1,0
        goto BC@LL9
F1_000063 equ $ ; IN [POWER GRID.BAS] PRINT AT 1,1, "TEST MODE ON"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 84
        call PRINT
        movlw 69
        call PRINT
        movlw 83
        call PRINT
        movlw 84
        call PRINT
        movlw 32
        call PRINT
        movlw 77
        call PRINT
        movlw 79
        call PRINT
        movlw 68
        call PRINT
        movlw 69
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 78
        call PRINT
        goto BC@LL10
BC@LL9
F1_000064 equ $ ; IN [POWER GRID.BAS] ELSE
F1_000065 equ $ ; IN [POWER GRID.BAS] PRINT AT 1,1, "TEST MODE OFF"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 84
        call PRINT
        movlw 69
        call PRINT
        movlw 83
        call PRINT
        movlw 84
        call PRINT
        movlw 32
        call PRINT
        movlw 77
        call PRINT
        movlw 79
        call PRINT
        movlw 68
        call PRINT
        movlw 69
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 70
        call PRINT
        call PRINT
F1_000066 equ $ ; IN [POWER GRID.BAS] ENDIF
BC@LL10
F1_000067 equ $ ; IN [POWER GRID.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        call DLY@W
F1_000068 equ $ ; IN [POWER GRID.BAS] CLS
        call LCD@CLS
F1_000069 equ $ ; IN [POWER GRID.BAS] ENDIF
BC@LL7
F1_000071 equ $ ; IN [POWER GRID.BAS] IF TEST_FLAG = 1 THEN
        btfss _B#VR1,0
        goto BC@LL12
F1_000072 equ $ ; IN [POWER GRID.BAS] IF AC_INC = 0 THEN INC T_VOLT
        btfsc PORTC,1
        goto BC@LL14
        incf t_volt,F
        btfsc STATUS,2
        incf t_voltH,F
BC@LL14
F1_000073 equ $ ; IN [POWER GRID.BAS] IF AC_DEC = 0 THEN DEC T_VOLT
        btfsc PORTC,2
        goto BC@LL16
        decf t_volt,F
        incf t_volt,W
        btfsc STATUS,2
        decf t_voltH,F
BC@LL16
F1_000074 equ $ ; IN [POWER GRID.BAS] IF FREQ_INC = 0 THEN INC T_FREQ
        btfsc PORTC,3
        goto BC@LL18
        incf t_freq,F
BC@LL18
F1_000075 equ $ ; IN [POWER GRID.BAS] IF FREQ_DEC = 0 THEN DEC T_FREQ
        btfsc PORTC,4
        goto BC@LL20
        decf t_freq,F
BC@LL20
F1_000076 equ $ ; IN [POWER GRID.BAS] IF T_VOLT < 0 THEN T_VOLT = 0
        btfss t_voltH,7
        goto BC@LL22
        clrf t_voltH
        clrf t_volt
BC@LL22
F1_000077 equ $ ; IN [POWER GRID.BAS] IF T_FREQ < 0 THEN T_FREQ = 0
        btfss t_freq,7
        goto BC@LL24
        clrf t_freq
BC@LL24
F1_000078 equ $ ; IN [POWER GRID.BAS] PRINT AT 1,10, DEC T_FREQ, "HZ  "
        movlw 128
        movwf BPFH
        movlw 137
        call LCD@CRS
        movf t_freq,W
        call OUT@DECB
        movlw 72
        call PRINT
        movlw 122
        call PRINT
        movlw 32
        call PRINT
        call PRINT
F1_000079 equ $ ; IN [POWER GRID.BAS] PRINT AT 2,10, DEC T_VOLT, "V  "
        movlw 128
        movwf BPFH
        movlw 201
        call LCD@CRS
        clrf GEN4H
        movf t_voltH,W
        movwf PP2H
        movf t_volt,W
        movwf PP2
        call OUT@DEC
        movlw 118
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        goto BC@LL25
BC@LL12
F1_000080 equ $ ; IN [POWER GRID.BAS] ELSE
F1_000081 equ $ ; IN [POWER GRID.BAS] PRINT AT 1,10, DEC FREQ, "HZ  "
        movlw 128
        movwf BPFH
        movlw 137
        call LCD@CRS
        movf freq,W
        call OUT@DECB
        movlw 72
        call PRINT
        movlw 122
        call PRINT
        movlw 32
        call PRINT
        call PRINT
F1_000082 equ $ ; IN [POWER GRID.BAS] PRINT AT 2,10, DEC VOLT, "V  "
        movlw 128
        movwf BPFH
        movlw 201
        call LCD@CRS
        clrf GEN4H
        movf voltH,W
        movwf PP2H
        movf volt,W
        movwf PP2
        call OUT@DEC
        movlw 118
        call PRINT
        movlw 32
        call PRINT
        call PRINT
F1_000083 equ $ ; IN [POWER GRID.BAS] T_FREQ = FREQ
        movf freq,W
        movwf t_freq
F1_000084 equ $ ; IN [POWER GRID.BAS] T_VOLT = VOLT
        movf voltH,W
        movwf t_voltH
        movf volt,W
        movwf t_volt
F1_000085 equ $ ; IN [POWER GRID.BAS] ENDIF
BC@LL25
F1_000087 equ $ ; IN [POWER GRID.BAS] IF T_VOLT >= 215 AND T_VOLT <= 230 THEN
        movf t_voltH,W
        movwf PP0H
        movf t_volt,W
        movwf PP0
        clrf PP1H
        movlw 215
        call T@GE
        movwf SP#P9
        movf t_voltH,W
        movwf PP0H
        movf t_volt,W
        movwf PP0
        clrf PP1H
        movlw 230
        call T@LE
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL27
F1_000088 equ $ ; IN [POWER GRID.BAS] IF T_FREQ >= 50 AND T_FREQ <= 55 THEN
        movlw 50
        subwf t_freq,W
        movlw 0
        btfsc STATUS,0
        movlw 1
        movwf SP#P9
        movf t_freq,W
        movwf PP0
        movlw 55
        call T@LEB
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL29
F1_000089 equ $ ; IN [POWER GRID.BAS] RELAY = 1
        bsf PORTB,0
        goto BC@LL30
BC@LL29
F1_000090 equ $ ; IN [POWER GRID.BAS] ELSE
F1_000091 equ $ ; IN [POWER GRID.BAS] RELAY = 0
        bcf PORTB,0
F1_000092 equ $ ; IN [POWER GRID.BAS] ENDIF
BC@LL30
        goto BC@LL31
BC@LL27
F1_000093 equ $ ; IN [POWER GRID.BAS] ELSE
F1_000094 equ $ ; IN [POWER GRID.BAS] RELAY = 0
        bcf PORTB,0
F1_000095 equ $ ; IN [POWER GRID.BAS] ENDIF
BC@LL31
F1_000097 equ $ ; IN [POWER GRID.BAS] GOTO MAIN
        goto main
F1_EOF equ $ ; POWER GRID.BAS
PB@LB33
        goto PB@LB33
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
