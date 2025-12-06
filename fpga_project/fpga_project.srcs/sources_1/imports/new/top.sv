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
    input wire trigger,
    
    output var i2s_clk,
    output var logic i2s_lrclk,
    output var i2s_sel,
    output var [15:0] led
    );

    wire data_ready, tvalid_pcm;
    wire [15:0] tdata_pcm;

    
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
    
    fft_top fft0
    (
        .arstn(arstn),
        .clk(clk),
        .trigger(trigger),
        .data(tdata_pcm),
        .data_valid(tvalid_pcm),
        .proc_data(),
        .proc_data_valid(),
        .proc_data_ready(),
        .active()
    );
    
    vga_top vga0
    (
        .arstn(arstn),
        .clk(clk),
        .vga_hor_sync(),
        .vga_ver_sync(),
        .vga_green(),
        .vga_red(),
        .vga_blue(),
        .fft_data(),
        .fft_valid(),
        .fft_ready(),
        .word()
    );

endmodule