`timescale 1ns/1ps

module basic_alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] ALU_Sel;

wire [3:0] ALU_Out;
wire CarryOut;

basic_alu uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .CarryOut(CarryOut)
);

initial begin

$monitor("A=%b B=%b ALU_Sel=%b Output=%b Carry=%b",
          A,B,ALU_Sel,ALU_Out,CarryOut);

A = 4'b1010;
B = 4'b0011;

ALU_Sel = 3'b000; #10; // Addition
ALU_Sel = 3'b001; #10; // Subtraction
ALU_Sel = 3'b010; #10; // AND
ALU_Sel = 3'b011; #10; // OR
ALU_Sel = 3'b100; #10; // NOT

$finish;

end

endmodule
