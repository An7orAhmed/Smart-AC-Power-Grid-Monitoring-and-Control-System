# Smart AC Power Grid Monitoring & Control System

![Power Grid System](https://via.placeholder.com/800x400.png?text=Power+Grid+Monitoring+System)

## Description  
A microcontroller-based solution for monitoring AC power grid parameters in real-time. This dual-language project (C/Proton Basic) implements voltage/frequency measurement, threshold detection, and automatic load control using relays. Features include LCD display of RMS voltage (0-230V) and frequency (45-60Hz), test mode for parameter simulation, and safety cutoff when values exceed operational limits (215-230V, 50-55Hz).

## Key Features
- 📊 Real-time AC voltage sampling (10-bit ADC)
- ⏱ Frequency measurement via timer counter
- 🛡 Safety relay control for over/under-voltage/frequency
- 🔍 Test mode with manual parameter adjustment
- 🖥 16x2 LCD interface for system status
- 📈 Digital signal processing (1000-sample averaging)
- 🔄 Input validation and range checking

## Hardware Requirements
- PIC16C72 microcontroller
- 20MHz crystal oscillator
- 16x2 character LCD
- Voltage divider network (ADC input)
- Relay module (220V/10A)
- Tactile switches for test mode
- Current-limiting resistors

## Software Dependencies
- MikroC PRO for PIC (C code)
- Proton Development Suite (BASIC code) 
- MPLAB X IDE (optional)
- PICkit 3 programmer

## Installation
```bash
git clone https://github.com/yourusername/power-grid-system.git
cd power-grid-system
# Compile using MikroC for C version 
# or Proton IDE for BASIC version
# Burn hex file to PIC MCU
```

## Code Structure
| File               | Purpose                                   |
|--------------------|-------------------------------------------|
| `power_grid.c`     | Frequency measurement core logic         |
| `power_grid.bas`   | Voltage monitoring + relay control system|
| `LCD_config.inc`   | Display interface configuration          |
| `device_config.ini`| MCU fuse settings                         |

## Usage
1. Connect AC source to ADC channel 4
2. System auto-calibrates with 75V offset
3. Normal Mode: Displays live measurements
4. Test Mode (TRIGGER):  
   - Adjust simulated values with INC/DEC pins
   - Validate relay triggering thresholds
   - Exit with TRIGGER button

![Operation Flowchart](https://via.placeholder.com/400x200.png?text=System+Flowchart)

## Contributing
Contributions welcome! Please adhere to:
- PIC coding standards for embedded systems
- 1000-sample moving average implementation
- Hardware abstraction layer principles

## License
GPL-3.0 © 2023 Power Grid Solutions Team

---

> **Warning**  
> Requires proper electrical isolation when working with mains voltage. Use optocouplers for ADC inputs.