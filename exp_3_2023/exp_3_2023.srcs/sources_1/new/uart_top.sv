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

module uart_top #(
    parameter AXI_WIDTH = 32,
    parameter CLK_FREQ  = 100000000,
    parameter BAUD_RATE = 115200
)(
    input  logic       clk,
    input  logic       arstn,
    
//    input  logic [AXI_WIDTH-1:0] axi_tdata,
//    input  logic                 axi_tvalid,
    output logic                 axi_tready,

    output logic       uart_tx
);

    // For demonstration purposes
    logic [AXI_WIDTH-1:0] axi_tdata;
    logic axi_tvalid;
    
     assign axi_tdata = 32'hDEADBEAD;
     assign axi_tvalid = 1;
    

    localparam NUM_BYTES = AXI_WIDTH / 8;
    localparam INDEX_WIDTH = (NUM_BYTES > 1) ? $clog2(NUM_BYTES) : 1;

    logic       uart_start;
    logic [7:0] uart_data;
    logic       uart_busy;

    logic [AXI_WIDTH-1:0] data_buffer;
    logic [INDEX_WIDTH-1:0] byte_index;

    typedef enum {S_IDLE, S_TRANSMIT, S_WAIT_DONE} top_state_t;
    top_state_t state;

    uart_gen #(
        .CLK_FREQ(CLK_FREQ), 
        .BAUD_RATE(BAUD_RATE)
    ) u_gen (
        .clk(clk),
        .arstn(arstn),
        .tx_start(uart_start),
        .tx_data(uart_data),
        .tx_busy(uart_busy),
        .uart_tx(uart_tx)
    );

    always_ff @(posedge clk or negedge arstn) begin
        if (!arstn) begin
            axi_tready  <= 1'b0;
            state       <= S_IDLE;
            uart_start   <= 1'b0;
            data_buffer <= 0;
            byte_index  <= 0;
            uart_data    <= 0;
            
            // DELETE -------------------------------------------
           
        end else begin
            case (state)
                S_IDLE: begin
                    axi_tready <= 1'b1;
                    uart_start  <= 1'b0;
                    
                    if (axi_tvalid && axi_tready) begin
                        data_buffer <= axi_tdata;
                        axi_tready  <= 1'b0;
                        byte_index  <= 0;
                        state       <= S_TRANSMIT;
                    end
                end

                S_TRANSMIT: begin
                    uart_data  <= data_buffer[byte_index*8 +: 8];
                    uart_start <= 1'b1;
                    state     <= S_WAIT_DONE;
                end

                S_WAIT_DONE: begin
                    uart_start <= 1'b0;

                    if (!uart_busy && !uart_start) begin
                        if (byte_index == (AXI_WIDTH/8) - 1) begin
                            state <= S_IDLE;
                        end else begin
                            byte_index <= byte_index + 1;
                            state      <= S_TRANSMIT;
                        end
                    end
                end
            endcase
        end
    end

endmodule

module uart_gen #(
    parameter CLK_FREQ  = 100000000,
    parameter BAUD_RATE = 9600
)(
    input  logic       clk,
    input  logic       arstn,
    input  logic       tx_start,
    input  logic [7:0] tx_data,
    output logic       tx_busy,
    output logic       uart_tx
);

    localparam CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;
    
    logic [$clog2(CLKS_PER_BIT)-1:0] clk_cnt;
    logic baud_tick;

    always_ff @(posedge clk or negedge arstn) begin
        if (!arstn) begin
            clk_cnt <= 0;
            baud_tick <= 0;
        end else if (tx_busy) begin
            if (clk_cnt == CLKS_PER_BIT - 1) begin
                clk_cnt <= 0;
                baud_tick <= 1;
            end else begin
                clk_cnt <= clk_cnt + 1;
                baud_tick <= 0;
            end
        end else begin
            clk_cnt <= 0;
            baud_tick <= 0;
        end
    end

    typedef enum logic [3:0] {
        IDLE, START, 
        BIT0, BIT1, BIT2, BIT3, BIT4, BIT5, BIT6, BIT7, 
        STOP
    } state_t;

    state_t state;
    logic [7:0] sh_reg;

    always_ff @(posedge clk or negedge arstn) begin
        if (!arstn) begin
            state   <= IDLE;
            uart_tx <= 1'b1;
            tx_busy <= 1'b0;
            sh_reg  <= 8'h00;
        end else begin
            case (state)
                IDLE: begin
                    uart_tx <= 1'b1;
                    if (tx_start) begin
                        state   <= START;
                        tx_busy <= 1'b1;
                        sh_reg  <= tx_data;
                    end else begin
                        tx_busy <= 1'b0;
                    end
                end

                START: begin
                    uart_tx <= 1'b0;
                    if (baud_tick) state <= BIT0;
                end

                BIT0: begin uart_tx <= sh_reg[0]; if (baud_tick) state <= BIT1; end
                BIT1: begin uart_tx <= sh_reg[1]; if (baud_tick) state <= BIT2; end
                BIT2: begin uart_tx <= sh_reg[2]; if (baud_tick) state <= BIT3; end
                BIT3: begin uart_tx <= sh_reg[3]; if (baud_tick) state <= BIT4; end
                BIT4: begin uart_tx <= sh_reg[4]; if (baud_tick) state <= BIT5; end
                BIT5: begin uart_tx <= sh_reg[5]; if (baud_tick) state <= BIT6; end
                BIT6: begin uart_tx <= sh_reg[6]; if (baud_tick) state <= BIT7; end
                BIT7: begin uart_tx <= sh_reg[7]; if (baud_tick) state <= STOP; end

                STOP: begin
                    uart_tx <= 1'b1;
                    if (baud_tick) begin
                        state   <= IDLE;
                        tx_busy <= 1'b0;
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end

endmodule