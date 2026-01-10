`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2025 12:10:14 PM
// Design Name: 
// Module Name: uart_top
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


module uart_top#(
    AXI_WIDTH = 32
    )(
    input logic clk,
    input logic arstn,
    
    input logic [AXI_WIDTH - 1: 0] axi_tdata,
    input logic axi_tvalid,
    output logic axi_tready,

    output logic uart_tx
    );
    
    always_ff @(posedge clk or negedge arstn) begin
        if (!arstn) begin
            axi_tready <= 1'b0;
        end else begin
            // segment data and push into FIFO
        end
    end
    
//    input            PSEL,
//    input            PWRITE,
//    input            CLEAR_B,
//    input            PCLK,
//    input      [7:0] PWDATA,
//    input            transmit_complete, // go to next output @ posedge
//    output reg       tx_ready,          // flag when output is readable
//    output reg [7:0] TxData,
//    output reg       SSPTXINTR
    txfifo #(
    .AXI_WIDTH(AXI_WIDTH)
    ) txfifo0 (
        .PSEL(),
        .PWRITE(),
        .CLEAR_B(),
        .PCLK(),
        .PWDATA(),
        .transmit_complete(),
        .tx_ready(),
        .TxData(),
        .SSPTXINTR()
    );
    
    logic [7:0] frame;
    
    typedef enum {
        IDLE, START, bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7, STOP
    }
    uart_state;
    
    uart_state tx_state;
    
    always_ff @(posedge clk or negedge arstn) begin
        if(!arstn) tx_state = IDLE;
        else begin
            case (tx_state)
                IDLE: begin
                    uart_tx = 1;
                end
                                
                START: begin
                    uart_tx = 0;
                end
                                
                bit0: begin
                    uart_tx = frame[0];
                end
                                
                bit1: begin
                    uart_tx = frame[1];
                end
                                
                bit2: begin
                    uart_tx = frame[2];
                end
                                
                bit3: begin
                    uart_tx = frame[3];
                end
                                
                bit4: begin
                    uart_tx = frame[4];
                end
                                
                bit5: begin
                    uart_tx = frame[5];
                end
                                
                bit6: begin
                    uart_tx = frame[6];
                end
                                
                bit7: begin
                    uart_tx = frame[7];
                end
                                
                default: begin // stop case
                    uart_tx = 1;
                end
            endcase
        end
    end
    
    
    
    
    
endmodule
