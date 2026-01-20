`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 13:17:36
// Design Name: 
// Module Name: uart_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_tb;
    localparam WIDTH = 32;
    localparam CLK_FREQ = 100_000_000; 
    localparam BAUD_RATE = 10_000_000;

    logic arstn, clk;
    logic [WIDTH-1:0] axi_tdata;
    logic axi_tvalid, axi_tready;
    logic uart_tx;

    uart_top #(
        .AXI_WIDTH(WIDTH),
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) dut (
        .clk(clk),
        .arstn(arstn),
//        .axi_tdata(axi_tdata),
//        .axi_tvalid(axi_tvalid),
        .axi_tready(axi_tready),
        .uart_tx(uart_tx)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        arstn = 0;
//        axi_tvalid = 0;
//        axi_tdata = 0;
        #100;
        arstn = 1;
        #20;

        wait(axi_tready);
        
        @(posedge clk);
//        axi_tdata  <= 32'h44434241;
//        axi_tvalid <= 1;

        wait(!axi_tready);
        @(posedge clk);
//        axi_tvalid <= 0;

        #10000; 
        
        $stop;
    end

endmodule
