4-Bit Down Counter
📌 Project Overview
This project implements a 4-bit synchronous down counter using Verilog HDL.

A down counter is a digital circuit that counts in decreasing order. For a 4-bit counter, the counting sequence is:

15 → 14 → 13 → ... → 2 → 1 → 0 → 15 → ...

The design includes a reset input and an enable input. The counter changes its value on every positive edge of the clock when the counter is enabled.

🎯 Objectives
Design a 4-bit synchronous down counter using Verilog HDL.
Implement reset functionality.
Implement counter enable functionality.
Create a Verilog testbench to verify the design.
Simulate the design and observe the output waveform.
⚙️ Features
4-bit counter
Synchronous operation
Active-high reset
Enable control
Counts from 15 down to 0
Automatically wraps from 0 back to 15
Suitable for FPGA/RTL simulation
🧩 Block Diagram
             +----------------------+
             |                      |
    clk ---->|                      |
  reset ---->|    4-Bit Down        |----> count[3:0]
  enable --->|      Counter         |
             |                      |
             +----------------------+

Inputs
Signal	Width	Description
clk	1 bit	Clock input
reset	1 bit	Resets counter to 15
enable	1 bit	Enables counting

Output
Signal	Width	Description
count	4 bits	Current counter value

🔢 Counting Sequence
When reset = 1, the counter is loaded with 15.

When reset = 0 and enable = 1, the counter decrements on every rising edge of the clock.

15 → 14 → 13 → 12 → 11 → 10 → 9 → 8
 ↑                                  ↓
 └────── 0 ← 1 ← 2 ← 3 ← 4 ← 5 ← 6 ← 7

After reaching 0, the next count is 15.

📋 Truth Table
Reset	Enable	Operation
1	X	Counter is reset to 15
0	0	Counter holds its current value
0	1	Counter decrements by 1