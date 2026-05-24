`timescale 1ns/1ps

module fir_tb;

reg clk;
reg reset;
reg [7:0] x;

wire [15:0] y;


fir_filter uut(
    .clk(clk),
    .reset(reset),
    .x(x),
    .y(y)
);


// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end


initial begin

    reset = 1;
    x = 0;

    #10;
    reset = 0;

    // Updated inputs
    #10 x = 5;
    #10 x = 15;
    #10 x = 25;
    #10 x = 35;
    #10 x = 45;
    #10 x = 55;

    #60;

    $finish;

end


initial begin

    $dumpfile("fir.vcd");
    $dumpvars(0,fir_tb);

end

endmodule
