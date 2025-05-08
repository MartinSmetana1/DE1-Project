# DE1-Project - multi-channel Pulse Width Modulation (PWM) for LED brightness 

### Team Members

* Smetana Martin - Main coder, testing
* Střítežský Jiří - Code check, formatting, consulting, presenting
* Ritschel Natan - ReadMe, testing
* Špalle Vojtěch - Poster, visuals

### Abstract

This project explores Pulse Width Modulation (PWM) control using the Nexys A7-50T board. The core objective is to implement a system that manages two LEDs through PWM signals and displays the PWM percentage on two trios of 7-segment displays. The system is designed using Xilinx Vivado in VHDL. The repo includes both hardware schematics and software logic to ensure a modular and scalable design. Through simulation and hardware testing, we verified the consistency and performance of the PWM output and its interaction with visible elements . 

The main contributions of the project are:

* Implementation of a dual-channel PWM controller using VHDL.
* Integration of PWM outputs with LEDs.
* Percentage sync with 7-segment displays.

![📌 View A3 Project Poster](https://github.com/user-attachments/assets/80ea885c-9010-4854-9a7e-8f97ec889c00)

---

## Hardware Description of Demo Application

The application runs on the NEXYS-A750T board, utilizing its built-in LEDs and 7-segment display modules. The system uses PWM modules for driving two LEDs with variable duty cycles used for brightness modulation. The following schematic represents the top-level hardware design:


![topLevel schematic](https://github.com/user-attachments/assets/8b420d2d-9e9e-4cf0-be3b-22ac1742ee07)

---

## Software Description

The PWM control logic is implemented in VHDL using Vivado and Visual Studio. The project includes modular design elements, with clearly defined signal flow and control structure. The main software components are:

* A clock divider to scale down the input clock.
* A PWM generator module with adjustable duty cycle.
* A control unit to assign duty cycles based on switches or input.

Below are diagrams showing the flow of the software logic:

![PWM Flowchart](https://github.com/MartinSmetana1/DE1-Project/blob/main/img/scope_0.png?raw=true)  
[🔗 Source Code (`src` folder)](/main/src)  
[🔗 Testbenches (`sim` folder)](/main/sim)

---

### Component(s) Simulations

Each module was simulated to validate behavior before hardware deployment. Key components and their simulation screenshots include:

**PWM Generator Simulation:**

![PWM Signal Simulation](/main/img/PWM_TB.png)  

**7-Segment Display Simulation:**

![7-Segment Display Simulation](/main/img/BIN2SEG_TB_CLOSE.png)  
_Above: Duty cycle variations on display output._

---

## References

1. DE1-SoC User Manual and GPIO reference – [Intel/Altera Docs](https://www.intel.com/content/www/us/en/docs/programmable/683537/current/de1-soc-user-manual.pdf)
2. Visual Studio Copilot
3. VHDL reference documentation – IEEE Std 1076
4. VHDL course github page – [vhdl-labs](https://github.com/tomas-fryza/vhdl-labs)

---

