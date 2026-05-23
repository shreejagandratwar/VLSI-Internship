# Task 2: Synchronous RAM Design using Verilog HDL

## Objective
To design and implement a simple synchronous RAM module with read and write operations and verify its functionality through simulation.

## Description
This project implements a parameterized synchronous RAM using Verilog HDL. The RAM supports:
- Write operation when Write Enable (`we`) is high
- Read operation synchronized with the clock
- Parameterized data width and address width
- Memory storage and retrieval functionality

## Features
✔ Synchronous Read and Write Operations  
✔ Parameterized RAM Design  
✔ Clock-driven Memory Access  
✔ Simulation Verification using Testbench  
✔ Waveform Analysis using EPWave  

## Files Included
- `sync_ram.v` → Verilog design code for synchronous RAM
- `tb_sync_ram.v` → Testbench code for simulation
- `waveform.png` → Simulation waveform output

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave Simulator

## Simulation Results
The RAM module successfully:
1. Stores data into specified memory locations
2. Retrieves stored data correctly during read operations
3. Demonstrates proper synchronous behavior with clock signals

### Example Output:
```text
Read Addr = A | Data Out = 55
Read Addr = 5 | Data Out = AA
Read Addr = F | Data Out = 3C
Read Addr = 0 | Data Out = XX
