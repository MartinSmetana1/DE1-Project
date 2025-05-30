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

![📌 View A3 Project Poster](https://github.com/user-attachments/assets/c2fb0014-9e11-46e1-a44b-e536f9b3cda3)

---

## Hardware Description of Demo Application

The application runs on the NEXYS-A750T board, utilizing its built-in LEDs and 7-segment display modules. The system uses PWM modules for driving two LEDs with variable duty cycles used for brightness modulation. The following schematic represents the top-level hardware design:


![topLevel schematic](https://github.com/user-attachments/assets/8b420d2d-9e9e-4cf0-be3b-22ac1742ee07)

---

## Software Description

The PWM control logic is implemented in VHDL using Vivado and Visual Studio. The project includes modular design elements, with clearly defined signal flow and control structure. The main software components are:

* A PWM generator module with adjustable duty cycle.
* A control unit to assign duty cycles based on switches or input.

Below is an oscillogram using showing two channels at different duty cycles along with the source code and testbenches:

![PWM Oscillogram showing channel 1 and channel 2 at different levels](https://github.com/MartinSmetana1/DE1-Project/blob/main/img/scope_0.png?raw=true)  
[🔗 Source Code (`src` folder)](./src)  
[🔗 Testbenches (`sim` folder)](./sim)

---

### Component(s) Simulations

Each module was simulated to validate behavior before hardware deployment. Key components and their simulation screenshots include:

**PWM Generator Simulation:**

![PWM Signal Simulation](./img/PWM_TB.png)  

**7-Segment Display Simulation:**

![7-Segment Display Simulation](./img/BIN2SEG_TB_CLOSE.png)

---

## References

1. VHDL documentation by Altium – [VHDL learning guide](https://valhalla.altium.com/Learning-Guides/TR0114%20VHDL%20Language%20Reference.pdf)
2. VHDL course github page – [vhdl-labs](https://github.com/tomas-fryza/vhdl-labs)
3. Visual Studio Copilot
4. PWM wiki - [wikipage](https://en.wikipedia.org/wiki/Pulse-width_modulation)

---

