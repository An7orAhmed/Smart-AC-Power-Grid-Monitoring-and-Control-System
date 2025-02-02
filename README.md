# Power Grid Monitoring & Control System

![Project Banner](https://via.placeholder.com/800x200?text=Embedded+Power+Grid+Monitoring+System)  
*Real-time AC parameter monitoring with safety controls*

## Description  
A PIC microcontroller-based system designed to monitor and manage AC power grid parameters. This embedded solution measures **voltage (RMS)** and **frequency** in real-time, features a test mode for parameter simulation, and automatically controls power flow via relay based on safe operating thresholds (215-230V, 50-55Hz). Developed using Proton Basic and C for PIC16F73, it serves as a compact safeguard against grid instability.

## Key Features  
- ⚡ Real-time AC frequency measurement (TMR0 counter-based)  
- 🔍 Voltage monitoring via ADC with 1000-sample averaging  
- 🧪 Interactive test mode with manual parameter adjustment  
- 🛡️ Relay control logic for over/under voltage & frequency protection  
- 📟 HD44780 LCD interface for parameter visualization  
- 🔄 Modular code structure for PIC16C72/PIC16F73 compatibility  

## Hardware Requirements  
- PIC16F73/16C72 microcontroller  
- 16x2 LCD character display  
- 4x4 keypad or tactile switches (test mode control)  
- Relay module (250V/10A rating recommended)  
- AC sensing circuit:  
  - Voltage divider + potential transformer (230V input)  
  - Zero-crossing detection for frequency measurement  
- 8MHz/20MHz crystal oscillator  

## Software Requirements  
- MikroC PRO for PIC Compiler (`power_grid.c`)  
- Proton IDE (`power_grid.bas`)  
- PIC programming tools (PICkit 3/4, MPLAB IPE)  

## Code Structure  
```bash
21-Power-Grid-System/
├── power_grid.c          # MikroC code - Frequency measurement core
├── power_grid.bas        # Proton Basic - Voltage/control logic
└── ConfigurationBits.inc # Fuse settings for PIC16C72
```

## Installation  
1. Clone repository:  
   `git clone https://github.com/yourusername/21-Power-Grid-System.git`
2. Program PIC16F73 with `power_grid.c` (MikroC) for frequency detection
3. Flash `power_grid.bas` (Proton IDE) to PIC16C72 for control logic
4. Configure oscillator settings:  
   - XTAL_HS mode (8MHz for C code / 20MHz for Basic)  
5. Connect hardware as per schematic comments in code

## Usage  
1. Power ON system & initialize LCD display  
2. Normal Mode:  
   - Line 1: `FREQUENCY: 50Hz`  
   - Line 2: `AC Volt: 230v`  
3. Test Mode (activate via PORTC.0):  
   - Adjust simulated values with PORTC.1-4 buttons  
   - Relay automatically disengages at >230V or <215V  

## Notes  
*Author*: Mithun K. Das ([mithun060@gmail.com](mailto:mithun060@gmail.com))  
⚠️ **WARNING**: Implement proper isolation when working with mains voltage.  
This project is intended for educational purposes - verify all measurements with calibrated equipment.  

*"Electricity is really just organized lightning."* - George Carlin  