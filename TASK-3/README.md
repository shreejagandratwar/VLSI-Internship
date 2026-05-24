# Task 3 - 4 Stage Pipeline Processor Design

## Objective
Design and simulate a 4-stage pipelined processor supporting basic instructions such as ADD, SUB, and LOAD.

## Pipeline Stages
1. Instruction Fetch (IF)
2. Instruction Decode (ID)
3. Execute (EX)
4. Write Back (WB)

## Files Included
- `pipeline_processor.v` → Verilog code for pipelined processor
- `pipeline_tb.v` → Testbench code
- `waveform.png` → Simulation waveform output

## Instructions Executed
- ADD → Performs addition of register values
- SUB → Performs subtraction of register values
- LOAD → Loads predefined value into register

## Register Values Used
```plaintext
R1 = 15
R2 = 8
```

## Simulation Results

| Instruction | Operation | Output  |
|-------------|-----------|---------|
| ADD         | 15 + 8    |    23   |
| SUB         | 15 - 8    | 7       |
| LOAD        | Load value| 50      |

## Expected Output

```plaintext
Time=35000 | Result=23 | ADD operation executed
Time=45000 | Result=7  | SUB operation executed
Time=55000 | Result=50 | LOAD operation executed
```

## Result
The 4-stage pipelined processor was successfully designed and simulated. The processor correctly executed ADD, SUB, and LOAD instructions through Fetch, Decode, Execute, and Write Back stages. Simulation waveform verified proper pipeline operation and register updates.

## Conclusion
The implemented pipelined architecture improves instruction execution efficiency by overlapping multiple stages, demonstrating the working principle of a basic processor pipeline.
