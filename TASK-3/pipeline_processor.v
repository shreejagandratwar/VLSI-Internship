// Code your design here
module pipeline_processor(
    input clk,
    input reset
);

// Instruction memory
reg [7:0] instruction_mem [0:15];

// Registers
reg [7:0] R0, R1, R2, R3;

// Pipeline registers
reg [7:0] IF_ID;
reg [7:0] ID_EX;
reg [7:0] EX_WB;

integer pc;

// Initialize instructions
initial begin
    instruction_mem[0] = 8'b00010010; // ADD
    instruction_mem[1] = 8'b00100011; // SUB
    instruction_mem[2] = 8'b00110100; // LOAD
    instruction_mem[3] = 8'b00010110; // ADD
    instruction_mem[4] = 8'b00100101; // SUB
end

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        pc <= 0;

        // Initialize registers
        R0 <= 0;
        R1 <= 15;
        R2 <= 8;
        R3 <= 5;

        IF_ID <= 0;
        ID_EX <= 0;
        EX_WB <= 0;
    end

    else
    begin

        // -------------------
        // Stage 1: Fetch
        // -------------------
        IF_ID <= instruction_mem[pc];
        pc <= pc + 1;

        // -------------------
        // Stage 2: Decode
        // -------------------
        ID_EX <= IF_ID;

        // -------------------
        // Stage 3: Execute
        // -------------------
        case(ID_EX[7:4])

            4'b0001:
                EX_WB <= R1 + R2; // ADD

            4'b0010:
                EX_WB <= R1 - R2; // SUB

            4'b0011:
                EX_WB <= 8'd50; // LOAD

            default:
                EX_WB <= 0;

        endcase


        // -------------------
        // Stage 4: Write Back
        // -------------------
        R0 <= EX_WB;


        // Display pipeline operations
        $display(
        "Time=%0t | PC=%d | IF=%b | ID=%b | Result=%d | R0=%d",
        $time,
        pc,
        IF_ID,
        ID_EX,
        EX_WB,
        R0
        );

    end

end

endmodule
