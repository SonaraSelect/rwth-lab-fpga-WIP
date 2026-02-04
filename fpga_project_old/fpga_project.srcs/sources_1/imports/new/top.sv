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
    output var VGA_VS,
    output var uart_tx
    );

    var logic tvalid_pcm, proc_data_valid, proc_data_ready, proc_data_ready_vga, proc_data_ready_mfcc;
    var logic [15:0] tdata_pcm;
    var fft_pkg::real_str_t proc_data;
    
    assign proc_data_ready = proc_data_ready_vga && proc_data_ready_mfcc;

    logic in_stream_TLAST_empty, out_stream_TLAST_empty, uart_mfcc_axi_tready;
    logic [15:0] out_stream_TDATA;
    logic [1:0] in_stream_TKEEP_empty, in_stream_TSTRB_empty,out_stream_TKEEP_empty, out_stream_TSTRB_empty;

    
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
    
    vga_top  #(
	   .fft_t(fft_pkg::real_str_t)
	) vga0 (
        .arstn(arstn),
        .clk(clk),
        .vga_hor_sync(VGA_HS),
        .vga_ver_sync(VGA_VS),
        .vga_green(VGA_G),
        .vga_red(VGA_R),
        .vga_blue(VGA_B),
        .fft_data(proc_data),
        .fft_valid(proc_data_valid),
        .fft_ready(proc_data_ready_vga),
        .word()
    );

    mfcc_1 mfcc (
      .ap_clk(clk),                           // input wire ap_clk
      .ap_rst_n(arstn),                       // input wire ap_rst_n
      .in_stream_TVALID(proc_data_valid),          // input wire in_stream_TVALID
      .in_stream_TREADY(proc_data_ready_mfcc),    // output wire in_stream_TREADY
      .in_stream_TDATA(proc_data),            // input wire [15 : 0] in_stream_TDATA
      .in_stream_TLAST(in_stream_TLAST_empty),      // todo input wire [0 : 0] in_stream_TLAST
      .in_stream_TKEEP(in_stream_TKEEP_empty),      // todo input wire [1 : 0] in_stream_TKEEP
      .in_stream_TSTRB(in_stream_TSTRB_empty),      // todo input wire [1 : 0] in_stream_TSTRB
      .out_stream_TVALID(uart_mfcc_axi_tvalid),  // output wire out_stream_TVALID
      .out_stream_TREADY(uart_mfcc_axi_tready),  // input wire out_stream_TREADY
      .out_stream_TDATA(uart_mfcc_axi_tdata),    // output wire [15 : 0] out_stream_TDATA
      .out_stream_TLAST(out_stream_TLAST_empty),    // output wire [0 : 0] out_stream_TLAST
      .out_stream_TKEEP(out_stream_TKEEP_empty),    // output wire [1 : 0] out_stream_TKEEP
      .out_stream_TSTRB(out_stream_TSTRB_empty)     // output wire [1 : 0] out_stream_TSTRB
    );

    logic uart_mfcc_axi_tvalid, uart_mfcc_axi_tdata;

    uart_top #(
        .AXI_WIDTH(16),
        .CLK_FREQ(100000000),
        .BAUD_RATE(9600)
    ) uart (
        .clk(clk),
        .arstn(arstn),
        .axi_tdata(uart_mfcc_axi_tdata),
        .axi_tvalid(uart_mfcc_axi_tvalid),
        .axi_tready(uart_mfcc_axi_tready),
        .uart_tx(uart_tx)
    );

endmodule