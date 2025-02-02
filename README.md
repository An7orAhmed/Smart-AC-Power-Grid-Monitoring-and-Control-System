# IntelliGrid: AC Power Monitor & Relay Control

## Description  
A PIC microcontroller-based system for monitoring AC power grid parameters and automated relay control. This project enables real-time measurement of voltage (RMS), frequency, and power factor while implementing safety thresholds to activate/deactivate grid-connected devices. Features an LCD interface for live data display and a test mode for parameter simulation.  

Developed in **C** (for PIC16F73) and **Proton Basic** (for PIC16C72), this firmware demonstrates embedded control techniques for power systems, including:  
- AC voltage sensing via ADC  
- Frequency measurement using TMR0 counter  
- RMS calculation and relaylogic for undervoltage/overfrequency protection  
- Interactive test mode for threshold simulation  

Designed for engineers, educators, and electronics enthusiasts working on smart grid applications.

## Key Features  
🔌 **Voltage & Frequency Measurement**  
- AC input: 0-230V range (RMS calculation with analog averaging)  
- Frequency detection: 45-60Hz via pulse counting  

🛡️ **Safety Relay Control**  
- Activates relay only when voltage (215-230V) and frequency (50-55Hz) are within safe limits  

📟 **LCD Interface**  
- Displays real-time voltage, frequency, and test mode status  

🔧 **Test Mode**  
- Simulate voltage/frequency parameters using tactile buttons  
- Bypass real-world measurements for system validation  

## Hardware Setup  
**Components**  
- PIC16F73/PIC16C72 MCU  
- 16x2 LCD (HD44780-compatible)  
- Voltage sensor (resistive divider + ADC)  
- Tactile buttons for test mode  
- Relay module (5V/230V rating)  
- 8/20MHz crystal oscillator  

**Software**  
- MPLAB X + XC8 Compiler (for C code)  
- Proton IDE (for Proton Basic)  
- `LiquidCrystal` library for LCD  

## Usage  
1. **Programming**:  
   - Compile `power_grid.c` (PIC16F73) or `power_grid.bas` (PIC16C72)  
   - Burn hex file to MCU using PIC programmer  

2. **Runtime Operation**:  
   ```bash
   LCD Startup ➔ Live Monitoring Mode:
   FREQUENCY: 50Hz   AC Volt: 220v  
   -------------------------------
   # Enter Test Mode (Hold TEST button):  
   - Adjust simulated voltage/freq with [▲][▼] buttons  
   - Relay status updates based on custom thresholds  
   ```

## Notes  
- ⚠️ **High Voltage Warning**: Isolate monitoring circuit from AC mains using optocouplers  
- Config bits (Proton Basic) set via Fuse Configurator plugin  
- C firmware uses `mikroC PRO for PIC` LCD library  

![Block Diagram](https://via.placeholder.com/600x200.png?text=Power+Grid+System+Architecture)  

*Disclaimer: Demo code – validate calibration for production use.*