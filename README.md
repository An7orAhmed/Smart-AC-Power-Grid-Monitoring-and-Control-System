# Power Grid Monitoring & Control System  

## Description  
This project implements a power grid monitoring and control system using microcontrollers (PIC16C72) to measure AC voltage and frequency. It features an LCD interface for real-time parameter display, relay-based load management, and a test mode for manual adjustments. The system validates grid stability by ensuring voltage (215–230V) and frequency (50–55Hz) ranges, with automatic shutdown via relay during deviations. Includes C/Proton Basic code for ADC sampling, frequency counting, and user input handling.  

## Key Features  
- Real-time AC voltage measurement via ADC  
- Frequency detection using Timer0 counter  
- Test mode with manual voltage/frequency override  
- LCD display for parameters (FREQUENCY, RMS VOLTAGE)  
- Relay control based on safety thresholds  
- Button interface for adjustments (increment/decrement)  

## Pin Configuration  
**LCD Interface (PORTB):**  
- `RB2`: LCD_RS  
- `RB3`: LCD_EN  
- `RB4–RB7`: LCD Data Pins (D4–D7)  

**Control Pins (PORTC):**  
- `RC.0`: Test Mode Toggle  
- `RC.1`: Voltage Increment  
- `RC.2`: Voltage Decrement  
- `RC.3`: Frequency Increment  
- `RC.4`: Frequency Decrement  
- `Relay Output`: PORTB.0  

**Analog Input:**  
- `RA4`: AC Voltage Sensor (ADC Channel 4)  

## Resources  
- Pinout Diagram: `/docs/pinmap.pdf`  
- Schematic: `/docs/power_grid_schematic.pdf`  

## Code Structure  
1. **Initialization:**  
   - Configures ADC for voltage sampling.  
   - Sets Timer0 for frequency measurement.  
   - Initializes LCD and I/O ports.  

2. **Main Loop:**  
   - Updates voltage reading using 1000-sample averaging.  
   - Measures frequency via Timer0 pulses over 1-second intervals.  
   - Monitors buttons for test mode activation and parameter adjustments.  

3. **Safety Logic:**  
   ```c  
   // Relay control snippet (Proton Basic)  
   If t_volt >= 215 And t_volt <= 230 Then  
     If t_freq >= 50 And t_freq <= 55 Then  
       relay = 1  
     Else  
       relay = 0  
     EndIf  
   Else  
     relay = 0  
   EndIf  
   ```  

## Installation  
1. Compile `power_grid.c` using MikroC for PIC.  
2. Flash `power_grid.bas` via Proton IDE to PIC16C72.  
3. Connect hardware per pinmap and schematic.  

## Usage Overview  
1. **Normal Mode:** Displays live grid voltage/frequency.  
2. **Test Mode:**  
   - Press `RC.0` to enable manual voltage/frequency adjustment.  
   - Use `RC.1–RC.4` to modify parameters.  
   - System validates adjusted values before enabling the relay.  

> Note: Requires 20MHz crystal and 5V supply.