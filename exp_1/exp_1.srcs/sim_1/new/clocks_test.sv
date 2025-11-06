`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 11:00:55 AM
// Design Name: 
// Module Name: clocks_test
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


module clocks_test(

    );
    
    
    
    logic clk, arstn, data;
    
    i2s_to_pcm itp0
    (
        .clk(clk),
        .arstn(arstn),
        .data(data)
    );
    
    initial begin
        {clk, data, arstn} = 3'b000;
    end
    
    initial forever #5 clk = ~clk;
    initial #10 arstn = 1;
    
    

endmodule
