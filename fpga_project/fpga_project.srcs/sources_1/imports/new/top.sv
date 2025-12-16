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
    output var [3:0] VGA_R,
    output var [3:0] VGA_G,
    output var [3:0] VGA_B,
    output var VGA_HS,
    output var VGA_VS
    );

    var logic data_ready, tvalid_pcm, proc_data_valid, proc_data_ready;
    var logic [15:0] tdata_pcm;
    var fft_pkg::real_str_t proc_data;

    
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
        .proc_data(proc_data),
        .proc_data_valid(proc_data_valid),
        .proc_data_ready(proc_data_ready),
        .active()
    );
    always_comb begin
        VGA_G = 4'd3;
        VGA_R = 4'd15;
        VGA_B = 4'd0;
    end
    
    vga_top  #(
	   .fft_t(fft_pkg::real_str_t)
	) vga0 (
        .arstn(arstn),
        .clk(clk),
        .vga_hor_sync(VGA_HS),
        .vga_ver_sync(VGA_VS),
        .vga_green(),
        .vga_red(),
        .vga_blue(),
        .fft_data(proc_data),
        .fft_valid(proc_data_valid),
        .fft_ready(proc_data_ready),
        .word()
    );

endmodule