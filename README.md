# VLSI-Internship

# CODTECH Task 1 – Basic ALU Design using Verilog HDL

## Objective
Design a 4-bit Basic Arithmetic Logic Unit (ALU) supporting:
- Addition
- Subtraction
- AND
- OR
- NOT

## Description
This project implements a Basic ALU in Verilog HDL capable of performing arithmetic and logical operations based on a selection input (ALU_Sel). The design was verified using simulation.

## Files Included
- basic_alu.v → Verilog code for ALU implementation
- basic_alu_tb.v → Testbench code for simulation
- simulation_report.md → Simulation results and outputs

## Tools Used
- Verilog HDL
- EDA Playground (Simulation)

## Simulation Results
Input:
A = 1010
B = 0011

Outputs:
000 → Addition → 1101
001 → Subtraction → 0111
010 → AND → 0010
011 → OR → 1011
100 → NOT → 0101

## Conclusion
The ALU successfully performs arithmetic and logical operations and produces expected outputs.
