// Code your design here
// Module: sync_ram
// Description: Synchronous Single-Port RAM with configurable width and depth.
`timescale 1ns / 1ps

module sync_ram #(
    parameter DATA_WIDTH = 8,  // Size of each data word
    parameter ADDR_WIDTH = 4   // 2^4 = 16 memory locations
)(
    input  wire                  clk,
    input  wire                  we,
    input  wire [ADDR_WIDTH-1:0] addr,
    input  wire [DATA_WIDTH-1:0] data_in,
    output reg  [DATA_WIDTH-1:0] data_out
);

    // Memory array declaration
    reg [DATA_WIDTH-1:0] ram [0:(1<<ADDR_WIDTH)-1];

    // Synchronous Read and Write
    always @(posedge clk) begin
        if (we)
            ram[addr] <= data_in;   // Write operation

        data_out <= ram[addr];      // Read operation
    end

endmodule
