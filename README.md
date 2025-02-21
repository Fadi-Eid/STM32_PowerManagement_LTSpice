# Circuit Description

This GitHub repository contains a complete simulation of a protection solution for STM32 microcontrollers against overvoltage, undervoltage, overcurrent, and short circuits. The simulation is based on cost-effective and widely available integrated circuits, whose behavior has been modeled to closely match that of real components.

This protection circuit offers the following features:

Protection against supply voltage exceeding 3.6V
Protection against supply voltage dropping below 3.0V
Protection against short circuits causing a current draw greater than 0.3A
Additionally, the circuit integrates a push button and a GPIO pin to allow reset after a short circuit. The reset occurs automatically when the voltage returns to acceptable limits.

# Screenshots

![image](https://github.com/user-attachments/assets/f41b14ff-b535-42bf-9a25-bd2cf4b5cc72)

![image](https://github.com/user-attachments/assets/70bc5e83-4a66-4d90-9a57-b5d403f64286)
