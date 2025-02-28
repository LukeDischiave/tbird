# Ford Thunderbird FSM Simulation
This repository contains a Verilog implementation and testbench for a state machine (FSM) that controls the turn signal lights of a Thunderbird vehicle.
## Files
tbird_fsm.sv: Implements the FSM to control the left and right turn signals based on user input.\
testbench_hw8.sv: A testbench to verify the functionality of the FSM.
## tbird_fsm.sv
Implements a finite state machine (FSM) for the following turn signals:\
-Left and right turns\
-hazard lights\
-no lights
## testbench_hw8.sv
This is the testbench for the FSM to validate behavior\
-generates clk and reset signal\
-simulates left & right turn, and hazard lights\
-toggles clk signal every 5 time units using forever loop
## Simulation instructions
### 1.) open modelsim as administrator
### 2.) Create project with any name you desire
### 3.) added tbird_fsm.sv and testbench_hw8.sv as existing files
### 4.) 
## Simulation result
![image](https://github.com/user-attachments/assets/cab88670-3fc4-4beb-8f19-397324b1219c)
