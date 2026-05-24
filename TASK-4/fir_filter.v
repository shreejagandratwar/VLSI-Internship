module fir_filter(
    input clk,
    input reset,
    input [7:0] x,
    output reg [15:0] y
);

// Delay registers
reg [7:0] x1, x2, x3;

// Updated FIR coefficients
parameter h0 = 2;
parameter h1 = 4;
parameter h2 = 3;
parameter h3 = 1;


always @(posedge clk or posedge reset)
begin

if(reset)
begin
    x1 <= 0;
    x2 <= 0;
    x3 <= 0;
    y <= 0;
end

else begin

    // Shift operation
    x3 <= x2;
    x2 <= x1;
    x1 <= x;

    // FIR Filter equation
    y <= (h0*x) +
         (h1*x1) +
         (h2*x2) +
         (h3*x3);

end

end

endmodule
