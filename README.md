# Smart AC Power Grid Monitoring & Control System

![Power Grid System](https://via.placeholder.com/800x400?text=Power+Grid+Monitoring+System) <!-- Add real image if available -->

## Description  
A microcontroller-based solution for real-time AC power grid parameter monitoring and automated control. This system measures voltage/frequency using PIC16F73 (C) and PIC16C72 (Proton Basic) microcontrollers, featuring:
- Real-time AC voltage RMS calculation
- Frequency measurement via timer/counter
- Interactive LCD display for parameters
- Relay control logic for safe operating ranges (215-230V, 50-55Hz)
- Manual test mode for parameter simulation

## Features
- 📊 Dual implementation in C (PIC16F73) and Proton Basic (PIC16C72)
- 🔄 Cross-frequency measurement (50-55Hz range)
- ⚡ Automatic relay tripping for out-of-spec conditions
- 🛠️ Test mode with manual voltage/frequency adjustment
- 📟 Character LCD interface for system status
- 🔋 Efficient analog input handling (10-bit ADC)

## Code Structure
```
Power-Grid-System/
├── power_grid.c          # PIC16F73 implementation (C)
├── power_grid.bas        # PIC16C72 implementation (Proton Basic)
├── includes/             # Peripheral libraries
└── hex_files/            # Compiled binaries
```

## Hardware Requirements
- PIC16F73/PIC16C72 MCU
- 16x2 Character LCD
- Analog voltage sensor (AC input)
- Electromechanical relay module
- 8MHz/20MHz crystal oscillator
- Pushbuttons for test mode interface

## Installation & Usage
1. **Compilation**  
   - C Code: Use MikroC Compiler for PIC
   - Proton Basic: Use Proton IDE

2. **Flashing**  
   ```bash
   picpgm -p PIC16F73 -c power_grid.hex
   ```

3. **Operation Modes**  
   - **Normal Mode**: Displays live measurements  
   - **Test Mode** (trigger via RC0):  
     - Adjust simulated values with RC1-RC4  
     - Observe relay logic response  

## Dependencies
- [MikroC PRO for PIC](https://www.mikroe.com/mikroc-pic)
- [Proton Development Suite](https://www.crownhill.co.uk/proton.php)
- PICkit 3/4 Programmer

## Contributors
- **Engr. Mithun K. Das** ([mithun060@gmail.com](mailto:mithun060@gmail.com))  
- Open to community contributions

## License  
Contact original author for licensing details. Private/commercial use requires permission.

---

*Ensure proper electrical isolation when interfacing with AC mains. Follow IEC 61010 safety standards.*