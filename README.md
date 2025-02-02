# Smart AC Grid Monitor & Controller (21. Power Grid System)

## Description  
A microcontroller-based system for monitoring and controlling AC power grid parameters in real time. This project uses a **PIC16C72 microcontroller** to measure voltage (via ADC) and frequency (via timer-counter), displays results on an LCD, and automatically triggers a relay when grid conditions exceed safe thresholds (215-230V, 50-55Hz). Includes test mode for manual parameter simulation using tactile switches.

## Features  
- Real-time AC voltage monitoring (0-230V range)  
- Frequency measurement (0-55Hz range via TMR0 counter)  
- 16x2 LCD interface for parameter visualization  
- Relay-based load control during voltage/frequency deviations  
- Test mode with manual adjustment buttons  
- Voltage averaging algorithm for stable readings  

## Hardware Requirements  
- PIC16C72 microcontroller  
- 16x2 Character LCD  
- Relay module (5V compatible)  
- Voltage sensing circuit (AC step-down + rectifier)  
- Tactile switches for test mode control  
- Frequency input via TMR0 pin  

## Code Structure
```bash
├── power_grid.c         # Main C implementation (MikroC compatible)
├── power_grid.bas       # Proton Basic alternative version
├── LCD_utils/           # LCD driver configuration
└── Hardware_Abstraction # Pin mappings & peripheral config
```

## Installation  
1. Compile `power_grid.c` using MikroC for PIC  
2. For Proton Basic version:  
   ```basic
   ; Compile with Proton IDE
   Device = 16C72
   Xtal 20
   ```
3. Burn generated HEX file to PIC16C72  
4. Connect hardware per pin definitions in code headers  

## Usage  
1. **Normal Mode**:  
   - Displays live frequency (Hz) and voltage (V)  
   - Relay activates when:  
     `215V ≤ Voltage ≤ 230V` AND `50Hz ≤ Frequency ≤ 55Hz`  

2. **Test Mode**:  
   - Press TEST button to enable  
   - Use buttons to simulate parameters:  
     - AC_INC/AC_DEC: Adjust voltage  
     - FREQ_INC/FREQ_DEC: Adjust frequency  

## Notes  
⚠️ Requires voltage isolation circuitry for real-world AC monitoring  
⚠️ Test mode parameters reset to actual values when disabled  

## License  
MIT License (see `LICENSE` file for details)  

---  
*Developed for embedded power system applications. Includes fail-safe relay control logic to prevent equipment damage during grid anomalies.*