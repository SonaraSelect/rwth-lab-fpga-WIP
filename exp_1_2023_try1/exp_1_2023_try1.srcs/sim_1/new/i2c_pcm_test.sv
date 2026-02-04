`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 13:02:57
// Design Name: 
// Module Name: i2s_pcm_test
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


module i2s_pcm_test();
    
    logic clk, arstn, bclk, lrclk;
    logic data;
    logic sel;
    logic [15:0] tdata_pcm;
    logic tvalid_pcm;
    
    i2s_to_pcm i2s0 (
        .clk(clk), .arstn(arstn), .bclk(bclk),
        .data(data),
        .lrclk(lrclk),
        .sel(sel),
        .tdata_pcm(tdata_pcm),
        .tvalid_pcm(tvalid_pcm)
    );
    
    
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    
    initial begin
        arstn = 1;
        #30 arstn = 0;
        #30 arstn = 1;
    end
    
    always #10 data <= $urandom;

endmodule
