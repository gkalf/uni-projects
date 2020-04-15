module IRda_mod_demod(clock,reset,rx_ir_data,tx_ir_data,uart_tx_data,uart_rx_data);
input clock,reset;
input uart_tx_data,rx_ir_data;
output wire tx_ir_data,uart_rx_data;
wire im_sending;

//connection of the two IrDa modules
irda_demodulator demod_inst(clock,reset,im_sending,rx_ir_data,uart_rx_data);
irda_modulator     mod_inst(clock,reset,im_sending,uart_tx_data,tx_ir_data);

endmodule
