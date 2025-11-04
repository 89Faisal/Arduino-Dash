**Arduino Input/Output with PC Dashboard (Processing Interface)**

This project demonstrates how to use the digital and analog input/output pins of an Arduino Uno, visualize real-time data on a PC dashboard using Processing, and control Arduino outputs through serial communication between the Arduino and the computer.

**Project Objective:**

The main goal of this project is to explore how the Arduino Uno can:

Read digital and analog inputs such as buttons and potentiometers.

Send data to a PC for monitoring through the serial port.

Receive commands from the PC to control outputs like LEDs.

This project helps to understand the two-way communication between Arduino hardware and a computer interface, which is fundamental for building interactive embedded systems.

**Features and Working Principle**

_Digital Input/Output_

A push button is used as a digital input.

When the button is pressed, the white LED turns ON.

When the button is released, the LED turns OFF.

_PC-Controlled LED_

A red LED is controlled directly from the Processing dashboard on the PC.

Pressing the ‘A’ key turns the red LED ON.

Pressing the ‘B’ key turns it OFF.

_Analog Input (Potentiometer)_

A potentiometer is connected to an analog input pin.

Arduino’s 10-bit ADC reads values ranging from 0 to 1023.

At maximum rotation → the value is 1023.

At minimum rotation → the value is 0.

These values are sent to the PC through the serial port and displayed in both text and graphical formats.

_Real-Time Graphical Display_

The Processing interface displays a bar graph that dynamically changes with the potentiometer’s value.

As the potentiometer is increased, the bar graph rises; when decreased, the bar drops accordingly.

**Future Scope**

This project lays a foundation for advanced embedded system and IoT applications.
It demonstrates how:

Serial communication can be used to control loads connected to Arduino.

Real-time data visualization can enhance monitoring and control interfaces.

Overall, this project bridges the gap between hardware control and software visualization, providing a strong starting point for developing interactive dashboards, sensor interfaces, and smart embedded systems.

**Watch Project Video on Youtube**

https://youtu.be/LkfMwHkfQis
