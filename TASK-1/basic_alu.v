module basic_alu (
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALU_Sel,
    output reg [3:0] ALU_Out,
    output reg CarryOut
);

always @(*) begin
    case (ALU_Sel)

        3'b000: begin
            {CarryOut, ALU_Out} = A + B;   // Addition
        end

        3'b001: begin
            {CarryOut, ALU_Out} = A - B;   // Subtraction
        end

        3'b010: begin
            ALU_Out = A & B;               // AND
            CarryOut = 0;
        end

        3'b011: begin
            ALU_Out = A | B;               // OR
            CarryOut = 0;
        end

        3'b100: begin
            ALU_Out = ~A;                  // NOT
            CarryOut = 0;
        end

        default: begin
            ALU_Out = 0;
            CarryOut = 0;
        end

    endcase
end

endmodule
