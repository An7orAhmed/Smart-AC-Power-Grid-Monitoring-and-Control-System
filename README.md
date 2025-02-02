# Smart Grid Monitoring & Control System  

![Power Grid](https://via.placeholder.com/800x400.png?text=Power+Grid+System+Diagram)  

## 📖 Project Description  
An embedded system solution for real-time AC power grid monitoring and stabilization. This hybrid C/Proton BASIC implementation features voltage/frequency measurement, automated load control, and LCD interface for power parameters visualization. The system ensures grid stability through relay control when parameters exceed safe thresholds (215-230V, 50-55Hz).  

Key Features:  
⚡ Real-time AC voltage RMS measurement  
🔋 Frequency calculation via TMR0 counter  
🔌 Automatic relay control for load management  
🧪 Test mode for parameter simulation  
📟 16x2 LCD interface for system metrics  

## 🛠 Hardware Setup  
**Required Components**  
- PIC16C72 Microcontroller  
- 16x2 Character LCD  
- Electromagnetic Relay Module  
- Push Buttons (Frequency/Voltage Control)  
- AC Voltage Sensor  
- ADC Module (MCP3008 recommended)  

## 💻 Software Requirements  
- MikroC PRO for PIC (LCD/ADC libraries)  
- Proton IDE BASIC Compiler  
- PICKit2 Programmer  

## 📂 Code Structure  
```bash
21-Power-Grid-System/
├── power_grid.c        # Main C implementation (Frequency counter/LCD)
├── power_grid.bas      # Proton BASIC logic (Voltage control/Relay logic)
└── includes/           # Device configuration headers
```

### 🔍 Key Code Components  
**C Implementation (`power_grid.c`)**  
- TMR0-based frequency measurement (50Hz-60Hz range)  
- Custom 7-segment style LCD display routines  
- Analog voltage reading preprocessing  

**BASIC Implementation (`power_grid.bas`)**  
- Averaged ADC voltage measurement (1000-sample smoothing)  
- Safety relay control logic  
- Test mode with manual parameter override  

## 🚀 Usage  
1. **Normal Operation**  
   - Real-time display of grid frequency/voltage  
   - Automatic relay trip when parameters exceed:  
     `215V ≤ Voltage ≤ 230V` & `50Hz ≤ Frequency ≤ 55Hz`  

2. **Test Mode**  
   - Force parameters with tactile switches:  
     - PORTB.1: Voltage+  | PORTB.2: Voltage-  
     - PORTB.3: Freq+     | PORTB.4: Freq-  

## 🔌 Example Wiring  
| Component  | MCU Pin  | Connection   |
|------------|----------|--------------|
| LCD RS     | RB2      | → LCD.4      |
| Relay      | RB0      | → NC Contact |
| Voltage IN | RA4      | → ADC Input  |
| Test Button| RC0      | → GND        |

## 📄 License  
MIT License - See [LICENSE](LICENSE) for details  

## 🤝 Contributing  
Bug reports and feature requests welcome! Please open an issue first to discuss proposed changes.  

---  
*Created with ❤️ for sustainable energy solutions* 🔋💡