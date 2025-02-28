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
