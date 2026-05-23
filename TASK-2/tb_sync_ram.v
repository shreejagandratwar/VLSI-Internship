// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb_sync_ram;

    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 4;

    // Testbench signals
    reg clk;
    reg we;
    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] data_out;

    // Instantiate DUT
    sync_ram #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation (20ns period)
    always #10 clk = ~clk;

    initial begin

        // Generate waveform file
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_sync_ram);

        // Initialize
        clk = 0;
        we = 0;
        addr = 0;
        data_in = 0;

        #20;

        // -------- Write Operations --------
        $display("[TIME: %0t] Writing Data...", $time);

        write_mem(4'hA, 8'h55);
        write_mem(4'h5, 8'hAA);
        write_mem(4'hF, 8'h3C);

        @(posedge clk);
        we = 0;

        #20;

        // -------- Read Operations --------
        $display("[TIME: %0t] Reading Data...", $time);

        read_mem(4'hA);
        read_mem(4'h5);
        read_mem(4'hF);
        read_mem(4'h0);

        #40;

        $display("[TIME: %0t] Simulation Finished.", $time);
        $finish;
    end


    // Write Task
    task write_mem(
        input [ADDR_WIDTH-1:0] w_addr,
        input [DATA_WIDTH-1:0] w_data
    );
    begin
        @(posedge clk);
        we      = 1;
        addr    = w_addr;
        data_in = w_data;
    end
    endtask


    // Read Task
    task read_mem(
        input [ADDR_WIDTH-1:0] r_addr
    );
    begin
        @(posedge clk);
        we   = 0;
        addr = r_addr;

        @(posedge clk);

        $display("Read Addr = %h | Data Out = %h",
                 r_addr, data_out);
    end
    endtask

endmodule
