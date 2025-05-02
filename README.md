# DE1-Project

### Team Members

* Střítežský Jiří  
* Smetana Martin  
* Ritschel Natan  
* Špalle Vojtěch  

### Abstract

This project explores Pulse Width Modulation (PWM) control using the DE1-SoC FPGA development board. The core objective is to implement a system that manages two LEDs and two segments of a 7-segment display through hardware-level PWM signals. The system is designed using VHDL and simulates real-world embedded control techniques that balance brightness and timing precision. The project includes both hardware schematics and software logic to ensure a modular and scalable design. Through simulation and hardware testing, we verified the consistency and performance of the PWM output and its interaction with visible elements. This project serves as a foundational example for students interested in digital logic design, hardware description languages, and FPGA development.  

The main contributions of the project are:

* Implementation of a dual-channel PWM controller using VHDL.
* Integration of PWM outputs with LEDs and 7-segment display segments.
* Verification of the design through simulations and on-board demonstration.

![Photo of the application with labeled parts](./docs/hardware_photo_labeled.jpg)  
[📌 View A3 Project Poster](./docs/A3_Poster.pdf)  
[▶️ Watch Video Presentation (Optional)](https://www.youtube.com/your-video-link)

---

## Hardware Description of Demo Application

The application runs on the DE1-SoC board, utilizing its built-in LEDs and 7-segment display modules. The system uses two PWM modules: one driving two LEDs with variable duty cycles, and another controlling two 7-segment digits for brightness modulation. The following schematic represents the top-level hardware design:

![Top-Level Schematic](./docs/top_level_schematic.png)

---

## Software Description

The PWM control logic is implemented in VHDL. The project includes modular design elements, with clearly defined signal flow and control structure. The main software components are:

* A clock divider to scale down the input clock.
* A PWM generator module with adjustable duty cycle.
* A control unit to assign duty cycles based on switches or input.

Below are diagrams showing the flow of the software logic:

![PWM Flowchart](./docs/pwm_flowchart.png)  
[🔗 Source Code (`src` folder)](./src)  
[🔗 Testbenches (`sim` folder)](./sim)

---

### Component(s) Simulations

Each module was simulated to validate behavior before hardware deployment. Key components and their simulation screenshots include:

**PWM Generator Simulation:**

![PWM Signal Simulation](./docs/pwm_simulation.png)  
_Above: PWM wave with 50% duty cycle for LED channel._

**7-Segment Display Simulation:**

![7-Segment Display Simulation](./docs/seven_seg_sim.png)  
_Above: Duty cycle variations on display output._

---

## References

1. DE1-SoC User Manual and GPIO reference – [Intel/Altera Docs](https://www.intel.com/content/www/us/en/docs/programmable/683537/current/de1-soc-user-manual.pdf)
2. Online waveform and logic analyzers (e.g., EDA Playground, ModelSim)
3. VHDL reference documentation – IEEE Std 1076
4. Project GitHub Repository – [DE1-Project on GitHub](https://github.com/MartinSmetana1/DE1-Project)

---

