`timescale 1ns/1ps
module rx_tx(clock,reset,rx2_available,tx2_available,frame_err,parity_err,LED,LED2,rx_data,tx_data);

input clock,reset,rx2_available,tx2_available;
input rx_data;
output tx_data;
output [6:0]LED,LED2;
output wire frame_err,parity_err;

wire tx_available,rx_available,rx2_available,tx2_available;
wire rx_data,tx_data;
wire [7:0]rx_8bitdata,out_data;
wire rd_data,send,wr_data,empty;

//instatiate uart transmitter
ir_transmitter TRANSM(clock,reset,out_data,send,tx_ir_data,tx_available);
//instatiate uart receiver
uart_receiver    RECEIV(rx_data,clock,reset,rx_8bitdata,parity_err,frame_err,LED,LED2,rx_available,wr_data);
//instatiate debouncer circuit
fifo_control     FIFO_control(clock,reset,rx_8bitdata,wr_data,rd_data,out_data,empty);

sync_data        SYNC_data(clock,reset,tx_available,rx2_available,tx2_available,empty,rd_data,send);



endmodule
