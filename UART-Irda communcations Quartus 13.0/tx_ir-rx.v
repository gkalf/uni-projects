`timescale 1ns/1ps
module tx_rx(clock,reset,rx_available,tx_available,frame_err,parity_err,LED,LED2,rx_data,tx_data);

input clock,reset;
input rx_data;
output wire tx_data;
output [6:0]LED,LED2;
output wire frame_err,parity_err,rx_available,tx_available;

wire send;
wire [7:0]rx_8bitdata;
//instatiate Irda_mod_demod module 
//instatiate uart transmitter
uart_transmitter TRANSM2(clock,reset,rx_8bitdata,send,tx_data,tx_available);
//instatiate uart receiver
ir_receiver    RECEIV2(rx_data,clock,reset,rx_8bitdata,parity_err,frame_err,LED,LED2,rx_available,send);
endmodule
