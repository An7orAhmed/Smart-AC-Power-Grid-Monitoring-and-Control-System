# Smart AC Power Grid Monitoring and Control System

![Power Grid System](https://via.placeholder.com/800x400.png?text=Power+Grid+Monitoring+System)

A microcontroller-based solution for real-time AC power parameter analysis and safety control, designed for PIC16F73 devices.

## 📑 Description
This system monitors AC voltage and frequency while implementing intelligent safety protocols. It features:
- **Live power analysis** (RMS voltage, frequency measurement)
- **Relay safety control** based on voltage (215-230V) and frequency (50-55Hz) thresholds
- **Interactive test mode** for parameter simulation
- LCD interface for real-time data visualization
- Multi-input control interface (buttons for test adjustments)

Supports C (mikroC compiler) and Proton Basic implementations.

## 🛠 Key Features
- 🔌 Real-time AC voltage monitoring (0-230V range)
- 📶 Frequency measurement via TMR0 counter (45-60Hz range)
- 🧪 Interactive test mode with manual parameter override
- ⚡ Relay-based protection system
- 📊 16x2 LCD display interface
- 🎚️ Input averaging for stable voltage readings (1000-sample ADC filter)

## 🔧 Hardware Requirements
| Component          | Specification              |
|---------------------|---------------------------|
| MCU                 | PIC16F73                  |
| Clock               | 20MHz (Proton) / 8MHz (C) |
| Display             | 4-bit 16x2 LCD            |
| Voltage Sensing     | Analog Input (RA4)        |
| User Interface      | 5 Tactile Switches        |
| Safety Control      | Relay Module (PORTB.0)    |

## 📚 Code Structure
### `power_grid.c`
- TMR0 counter-based frequency calculation
- LCD display drivers for voltage parameters
- 8MHz clock implementation

### `power_grid.bas`
- Test mode flag system (`test_flag`)
- Parameter adjustment logic with boundary checks
- Multi-condition relay control algorithm
- 20MHz clock implementation

## ⚙️ Installation
```bash
git clone https://github.com/your-username/21-power-grid-system.git
```
**Prerequisites:**
- MPLAB X IDE
- mikroC PRO for PIC (C version)
- Proton IDE (Basic version)
- PICkit 3/4 programmer

## 🖥️ Usage
1. Upload firmware to PIC16F73
2. LCD shows real-time parameters:
   ```
   FREQUENCY: 50Hz
   AC Volt: 230v
   ```
3. Press TEST button to enter simulation mode
4. Use [AC▲/▼] and [FREQ▲/▼] buttons to modify values

## 📄 License
MIT License - Free for educational and non-commercial use

## ⚠️ Disclaimer
❗ Use caution when working with AC mains voltages.  
❗ Ensure proper isolation before deploying system.  
❗ Not recommended for production use without hardware validation.
