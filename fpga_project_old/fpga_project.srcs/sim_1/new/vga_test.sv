`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2025 10:53:17 AM
// Design Name: 
// Module Name: vga_test
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


module vga_test();

logic arstn, clk, vga_hor_sync, vga_ver_sync;
logic [3:0] word, vga_green, vga_red, vga_blue;
typedef struct {
	logic [8:0] tdata;
	logic tlast;
} fft_t;

initial begin
    clk = 0;
    arstn = 0;
    #50 arstn = 1;
end

initial forever #5 clk = ~clk;

vga_top #(
	.fft_t(fft_t)
) DUT (
	.clk(clk),
	.arstn(arstn),
	.vga_hor_sync(vga_hor_sync),
	.vga_ver_sync(vga_ver_sync),
	.vga_green(vga_green),
	.vga_red(vga_red),
	.vga_blue(vga_blue),
	.fft_data(),
	.fft_valid(),
	.fft_ready(),
	.word(word)
);

endmodule
