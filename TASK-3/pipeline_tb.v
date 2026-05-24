// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module pipeline_tb;

reg clk;
reg reset;

// Instantiate processor
pipeline_processor uut(
    .clk(clk),
    .reset(reset)
);


// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end


// Reset and simulation
initial begin

    reset = 1;
    #10;

    reset = 0;

    #100;

    $finish;

end


// Waveform generation
initial begin

    $dumpfile("pipeline.vcd");

    $dumpvars(
        0,
        pipeline_tb
    );

end

endmodule
