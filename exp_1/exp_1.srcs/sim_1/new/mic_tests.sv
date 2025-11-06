`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 12:19:18 PM
// Design Name: 
// Module Name: mic_tests
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


module mic_tests();
    
    logic clk, arstn, i2s_data;
    wire i2s_clk, i2s_lrclk, i2s_sel;
    wire [15:0] led;
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        arstn = 1'b0;
        #20 arstn = 1'b1;
    end
    
    initial begin
        forever begin
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1; 
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b1;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
            #10 i2s_data = 1'b0;
        end
    end
    
    top t0 (
        .clk(clk),
        .arstn(arstn),
        .i2s_data(i2s_data),
        .i2s_clk(i2s_clk),
        .i2s_lrclk(i2s_lrclk),
        .i2s_sel(i2s_sel),
        .led(led)
    );
    
endmodule
