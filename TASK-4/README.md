# Task 4 - Digital FIR Filter Design

## Objective
Design and simulate a digital FIR (Finite Impulse Response) filter using Verilog.

## Files
- `fir_filter.v` → FIR filter code
- `fir_tb.v` → Testbench
- `waveform.png` → Simulation waveform

## FIR Coefficients
h0 = 2  
h1 = 4  
h2 = 3  
h3 = 1  


## Working Principle
The FIR filter performs weighted summation of present and previous input samples.

Filter equation:

y(n) = h0x(n) + h1x(n−1) + h2x(n−2) + h3x(n−3)

## Simulation Results
| Input | Output |
|-------|--------|
|5      |10      |
|15     |50      |
|25     |125     |
|35     |220     |
|45     |320     |
|55     |430     |

## Performance Analysis
- Stable output response observed.
- FIR filter provides weighted averaging of current and previous samples.
- No feedback loop, ensuring inherent stability.
- Suitable for digital signal processing and noise reduction.
  
## Result
The FIR filter was successfully designed and simulated using Verilog. Output waveform verified correct filtering operation.
