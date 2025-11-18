`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 09:54:51 AM
// Design Name: 
// Module Name: fft_test
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


module fft_test();

logic clk, arstn, trigger, data_valid, proc_data_valid, proc_data_ready, active;
fft_pkg::complex_t data;
fft_pkg::real_str_t proc_data;

fft_top i_fft (
    .clk(clk),
    .arstn(arstn),
    .trigger(trigger),
    .data(data),
    .data_valid(data_valid),
    .proc_data(proc_data),
    .proc_data_valid(proc_data_valid),
    .proc_data_ready(proc_data_ready),
    .active(active)
);

initial begin
    clk = 0;
    arstn = 0;
    trigger = 1;
    data_valid = 1;
    data = 32'hbead;
    forever #5 clk = ~clk;
end

initial begin
    #10 arstn = 1;
    #20 trigger = 0;
    forever begin
        #10 data = 32'b10101010101010101010101010101010;
        #10 data = 32'b01010101010101010101010101010101;
        #10 data = 32'b11111111111111110000000000000000;
        #10 data = 32'b00000000000000001111111111111111;
    end
end
endmodule;