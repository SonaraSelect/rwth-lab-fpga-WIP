`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 10:22:23 AM
// Design Name: 
// Module Name: top
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


module top(
    input wire clk,
    input wire arstn, 
    input wire i2s_data,
    
    output wire i2s_clk,
    output var logic i2s_lrclk,
    output wire i2s_sel,
    output wire [15:0] led
    );


    //logic data_pcm, data_valid;
    //loudness_meter_pkg::data_t data;
    
    wire data_ready, tvalid_pcm;
    wire [15:0] tdata_pcm;
    
    loudness_top ltop0
    (
        .arstn(arstn),
        .clk(clk),
        .data(tdata_pcm),
        .data_valid(tvalid_pcm),
        .data_ready(data_ready),
        .led(led[15:0])
    );
    
    i2s_to_pcm i2spcm0
    (
        .clk(clk),
        .arstn(arstn),
        .bclk(i2s_clk),
        .data(i2s_data),
        .lrclk(i2s_lrclk),
        .sel(i2s_sel),
        .tdata_pcm(tdata_pcm),
        .tvalid_pcm(tvalid_pcm)
    );

endmodule