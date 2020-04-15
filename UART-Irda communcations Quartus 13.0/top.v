`timescale 1ns/1ps
module top(clock,reset,uart_rx_data,uart_tx_data,frame_err_in,tx_ir_data,rx_ir_data,
frame_err_out,parity_err_in,parity_err_out,LED3,LED2,LED1,LED0);

input clock,reset;
input uart_rx_data,rx_ir_data;
output uart_tx_data,tx_ir_data;
output wire frame_err_in,frame_err_out,parity_err_in,parity_err_out;
output [6:0]LED3,LED2,LED1,LED0;

wire tx_available,rx_available,rx2_available,tx2_available;
wire [7:0]rx_8bitdata,rx_8bit_data,out_data;
wire rx_data,rd_data,send,send2,wr_data,empty;


//instatiate ir transmitter
ir_transmitter TRANSM(clock,~reset,out_data,send,tx_ir_data,tx_available);
//instatiate uart receiver
uart_receiver    RECEIV(uart_rx_data,clock,~reset,rx_8bitdata,parity_err_in,frame_err_in,LED0,LED1,rx_available,wr_data);

fifo_control     FIFO_control(clock,~reset,rx_8bitdata,wr_data,rd_data,out_data,empty);
sync_data        SYNC_data(clock,~reset,tx_available,rx2_available,tx2_available,empty,rd_data,send);



//instatiate uart transmitter
uart_transmitter TRANSM2(clock,~reset,rx_8bit_data,send2,uart_tx_data,tx2_available);
//instatiate ir receiver
ir_receiver    RECEIV2(rx_data,clock,~reset,rx_8bit_data,parity_err_out,frame_err_out,LED2,LED3,rx2_available,send2);

stop_ir_receiving Stop_ir_receiving(rx_ir_data,~tx_available,rx_data);

endmodule
