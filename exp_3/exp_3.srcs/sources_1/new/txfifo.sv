`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2025 12:49:30 PM
// Design Name: 
// Module Name: txfifo
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


module txfifo #(
        AXI_WIDTH = 32
    )(
    input            PSEL,
    input            PWRITE,
    input            CLEAR_B,
    input            PCLK,
    input      [7:0] PWDATA,
    input            transmit_complete, // go to next output @ posedge
    output reg       tx_ready,          // flag when output is readable
    output reg [7:0] TxData,
    output reg       SSPTXINTR
    );
    reg [7:0] data_reg [AXI_WIDTH/8 - 1:0];
    reg [12:0] in_ptr;           // Points to location where PWDATA will be written
    reg [12:0] out_ptr;          // Points to first-written PWDATA
    reg       finish_transmit;
    
    initial begin
        int i;
        for(i=0;i<AXI_WIDTH/8;i=i+1) begin
            data_reg[i] = 8'd0;
        end
        in_ptr      = 2'b0;
        out_ptr     = 2'b0;
        tx_ready    = 1'b0;
        SSPTXINTR   = 1'b0;
        finish_transmit = 1'b0;
    end

    // Handle writing to Logic & clearing vaalues
    always @(posedge PCLK) begin
        if(~ CLEAR_B) begin
            int i;
            for(i=0;i<AXI_WIDTH/8;i=i+1) begin
                data_reg[i] = 8'd0;
            end
            in_ptr <= 12'b0;
            out_ptr<= 12'b0;
            tx_ready <= 1'b0;
            SSPTXINTR <= 1'b0;
            finish_transmit <= 1'b0;
        end else begin
            // Read PWDATA and input into memory
            if(PSEL && PWRITE && ~SSPTXINTR && PWDATA != data_reg[in_ptr-12'd1]) begin
                data_reg[in_ptr] <= PWDATA;
                SSPTXINTR <= (in_ptr + 12'b1 == out_ptr);
                in_ptr <= in_ptr + 12'b1;
            end
            // Output data to logic
            if(transmit_complete && (in_ptr != out_ptr || SSPTXINTR)) begin    // ~tx_ready in statement should be redundant
                TxData <= data_reg[out_ptr];
                tx_ready <= 1'b1;
                finish_transmit <= 1'b1;
            end else begin
                tx_ready = 1'b0;
            end
            if(finish_transmit) begin
                out_ptr <= out_ptr + 12'b1;
                SSPTXINTR <= 1'b0;
                finish_transmit <= 1'b0;
            end
        end
    end

    
endmodule
