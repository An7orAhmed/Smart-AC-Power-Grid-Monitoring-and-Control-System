# **AC Grid Monitoring & Control System**  
**v1.0**  

![Power Grid System](https://via.placeholder.com/400x200?text=Hardware+Demo)  

## **Description**  
This project implements a smart AC power grid monitoring and control system using **PIC microcontrollers** (PIC16F73 and PIC16C72). It measures AC voltage, frequency, and operational parameters in real time, provides a user interface via an LCD, and automates grid protection by triggering relays when thresholds are exceeded. Ideal for energy management systems, industrial automation, or educational instrumentation projects.

---

## **Key Features**  
- 📊 **Real-Time Measurements**:  
  - AC Frequency (40–60 Hz range)  
  - RMS Voltage (0–230V range)  
- 🔒 **Safety Control Logic**: Activates relay when voltage/frequency exceed safe thresholds (215–230V, 50–55Hz).  
- 🛠️ **Test Mode**: Simulate voltage/frequency fluctuations manually using tactile switches.  
- 📟 **LCD Interface**: Displays live data, system status, and interactive test mode.  

---

## **Hardware Requirements**  
- **Microcontrollers**: PIC16F73, PIC16C72  
- **Peripherals**: 16x2 LCD, Tactile Switches, Relay Module  
- **Sensors**: Voltage Divider Network for ADC  
- **Clock**: 8MHz/20MHz Crystal Oscillator  

---

## **Software Implementation**  
### **Core Logic**  
1. **Frequency Measurement**  
   - Uses Timer0 (TMR0) counter mode to track AC cycles over 1-second intervals.  
   ```c  
   TMR0 = 0;                // Reset counter  
   Delay_ms(1000);          // Wait 1 second  
   freq = TMR0 / 2;         // Calculate frequency (Hz)  
   ```  
2. **Voltage Sensing**  
   - ADC reads averaged over 1000 samples for stability:  
   ```vb  
   For x = 0 To 1000  
     adc = ADIn 4           // Read analog pin  
     adc_avg = adc_avg + adc  
   Next  
   volt = (adc_avg / 1000) + 75  // Calibration offset  
   ```  
3. **Relay Control**  
   ```vb  
   If t_volt >= 215 And t_volt <= 230 Then  
     If t_freq >= 50 And t_freq <= 55 Then  
       relay = 1            // Activate on valid conditions  
     Else  
       relay = 0  
     EndIf  
   ```  

---

## **Installation & Usage**  
1. **Dependencies**:  
   - MikroC PRO for PIC (C code)  
   - Proton IDE (BASIC code)  
   - PIC programmer (e.g., PICkit 3)  
2. **Upload Code**:  
   ```bash  
   $ picp /dev/ttyUSB0 16F73 -wp power_grid.c  
   ```  
3. **Operation**:  
   - Connect AC source to ADC input.  
   - Adjust parameters in Test Mode using `ac_inc`, `ac_dec`, `freq_inc`, `freq_dec` buttons.  

---

## **Contributing**  
Authored by **Mithun K. Das** ([mithun060@gmail.com](mailto:mithun060@gmail.com)). Contributions welcome via pull requests or issue reports.  

---

**License**: MIT  
**Documentation Last Updated**: May 2024