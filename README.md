# Power Grid Monitoring and Control System

## Project Description  
A microcontroller-based system for monitoring AC power line parameters and implementing safety controls. The system measures voltage/frequency in real-time through analog inputs, displays data on a 16x2 LCD, and activates protective relays when values exceed safe thresholds (215-230V, 50-55Hz). Includes a test mode for simulating grid conditions through hardware controls.

## Key Features
- ▪️ Real-time AC voltage measurement (0-230V range)
- ▪️ Frequency monitoring (45-60Hz range)
- ▪️ 4-button interface for test mode parameters
- ▪️ Relay control logic for power cutoff
- ▪️ LCD display of RMS voltage and frequency
- ▪️ Diagnostic test mode with manual override

## Hardware Configuration (PIC16C72)
### Pin Assignments
| Component       | Connection    |
|-----------------|---------------|
| LCD RS          | PORTB.2       |
| LCD EN          | PORTB.3       |
| LCD D4-D7       | PORTB.4-7     |
| Control Relay   | PORTB.0       |
| Test Mode Button| PORTC.0       |
| Voltage+ Button | PORTC.1       |
| Voltage- Button | PORTC.2       |
| Freq+ Button    | PORTC.3       |
| Freq- Button    | PORTC.4       |
| ADC Input       | PORTA.4       |

## Usage Modes
**Normal Operation**  
- Displays live grid frequency and RMS voltage
- Activates relay when both parameters stay within safe range

**Test Mode**  
1. Press TEST button (PORTC.0) to activate
2. Use buttons to simulate voltages (PORTC.1/PORTC.2)
3. Adjust frequency values (PORTC.3/PORTC.4)
4. System validates simulated conditions against safety thresholds

## Resources
- `src/power_grid.c` - Main control logic (mikroC PRO)
- `src/power_grid.bas` - Proton Basic implementation  
- `docs/pinmap.pdf` - Hardware connection diagram
- `docs/schematic.pdf` - Circuit schematic

## Dependencies
- mikroC PRO for PIC (C implementation)
- Proton IDE (Basic implementation)
- PIC16C72 microcontroller
- HD44780-compatible LCD module