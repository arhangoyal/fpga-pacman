# FPGA-Based Pac-Man Game 

## Overview

This project implements a hardware-software co-designed version of the classic **Pac-Man arcade game** using a **Spartan 7 FPGA**. 
The game features HDMI-based video output, keyboard-controlled gameplay, real-time score display on the FPGA's HEX displays, and dynamic game logic managed in C. 
This project seeks to combine hardware (SystemVerilog) for handling critical tasks like VGA display, keyboard input processing, and real-time score updates, with software (C) to manage dynamic game logic, including Pac-Man's movement, ghost behavior, collision detection, and scoring mechanisms. <br>

This project seeks to combine hardware (SystemVerilog) for handling critical tasks like VGA display, keyboard input processing, and real-time score updates, with software (C) to manage dynamic game logic, including Pac-Man's movement, ghost behavior, collision detection, and scoring mechanisms. The primary objective is to create a fully playable and visually engaging version of Pac-Man that operates seamlessly on an FPGA platform, while also providing real-time feedback through hardware interfaces like HEX displays.


## Features

- **Playable Pac-Man Game**: Control Pac-Man using a keyboard.
- **AXI Lite 4 Communication**: Facilitates communication between the game logic and the HDMI interface.
- **Real-Time Score Display**: Scores are updated dynamically and shown on HEX displays.
- **VGA Video Output**: Displays game graphics on a VGA monitor.
- **Ghost Movement**: Ghosts react to pacman's movement. Each ghost moves differently and has a certain degree of randomness to make predicting its movement very difficult.
- **Collision Detection**: Handles interactions between Pac-Man, ghosts, walls, pellets, and bigger pellets that send pacman into kill-mode.
- **Game Reset on Death**: Automatically resets the game after a brief timer if Pac-Man dies.
- **Hardware-Software Co-Design**:
  - **Hardware**: VGA rendering, keyboard input, HEX display.
  - **Software**: Character movement, game logic, and collision detection.


## System Requirements

- **Hardware**:
  - Spartan 7 FPGA Development Board with HEX Displays (for score display)
  - HDMI Monitor
  - USB Keyboard

- **Software**:
  - **Vivado 2022.2** for hardware design
  - **Vitis IDE** for C code development and integration


## Components

### Hardware (SystemVerilog)
- **VGA Controller**: Renders the game board, Pac-Man, and ghosts.
- **Keyboard Interface**: Captures user input for Pac-Man's movement.
- **HEX Display Module**: Displays the current score in real time.

### Software (C)
- **Game Logic**: Implements Pac-Man movement, ghost AI, pellet consumption, scoring, and game reset.
- **Collision Detection**: Ensures realistic interactions between characters and game elements.
- **Ghost Behaviors**:
  - Ghosts exhibit different modes: chase and scared.
  - Unique logic for individual ghost paths (Blinky, Pinky, Inky, Clyde).


## How to Build and Run

### Hardware Setup
1. Open **Vivado 2022.2**. The project was developed in version 2022.2 although you should be able use the latest version of Vivado.
2. Load the hardware design files and generate a bitstream
3. Program the FPGA with the generated bitstream.
### Notes:
1. Most of the HDMI interface (like AXI logic) and hardware required for the pacman logic lies within the hdmi_packman_controller custom IP. Go into User IPs and Edit in IP Editor to edit the IP
2. [`hdmi_tx_1.0`](hdmi_tx_1.0/) IP provided within this repo need to be manually added to the Vivado IP repository

### Software Setup
1. Open the **Vitis IDE**
2. Import the C project files (select the correct workspace directory: [`packman/workspace/`](packman/workspace/))
3. Build the software project and deploy it to the FPGA

### Running the Game
1. Connect the FPGA to:
   - VGA monitor
   - Keyboard
   - HEX display (for score)
2. Power on the FPGA.
3. Start the game by controlling Pac-Man using the keyboard.

**Note:** In order to edit the custom HDMI Packman IP, you will probably need to reinitialize the ROM blocks with the .COE files included in the project files.

## C Code Description

The C code manages the dynamic game logic for Pac-Man, integrating hardware control with software behavior. Key components include:

- **`lw_usb_main.c`**:  
  - Handles Pac-Man's movement, pellet consumption, scoring, and ghost interactions.  
  - Captures keyboard input via USB to control Pac-Man's direction.  
  - Resets the game state when Pac-Man dies, including score, pellets, and ghost positions.  
  - Implements collision detection with walls, pellets, and ghosts.  

- **`lw_usb_main.h`**:  
  - Defines the hardware-software interface through **AXI Registers**, including positions and movement states for Pac-Man and ghosts.  
  - Contains the game board grid (31x28), representing walls and paths for movement.  

- **Ghost Logic Files**:  
  - **`blinky.c`, `pinky.c`, `inky.c`, `clyde.c`**: Implement individual ghost behaviors and movement patterns.  
    - **Blinky**: Chases Pac-Man directly.  
    - **Pinky**: Moves unpredictably with randomness and vertical gap checks.  
    - **Inky**: Similar to Pinky but adds randomness for horizontal movement.  
    - **Clyde**: Prioritizes avoiding Pac-Man when close but follows structured movement otherwise.  
  - Each file includes **"scared" behavior** for ghosts when Pac-Man collects a large pellet, reversing their movement logic.  

Together, the C code integrates **Pac-Man's logic, ghost behaviors, and game state management** while interacting with hardware through the AXI interface.


## Images to Check for Verification of Output

### Initial Game Screen
![Initial Game Screen](images/initGameScreen.png)

### Mid Game Screen Grab
![Mid Game Screen Grab](images/midGameScreenGrab.jpg)

### Block Design
![Block Design](images/blockDesign.png)

### Top Level RTL Diagram
![Top Level RTL Diagram](images/topLevelRTL.png)

### Internal RTL Diagram
![Internal RTL Diagram](images/internalRTL.png)
