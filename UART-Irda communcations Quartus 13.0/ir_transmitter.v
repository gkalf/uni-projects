module ir_transmitter(clock,reset,data,send,tx_data_out,tx_idle);
input clock,reset,send;
input [7:0] data;
output wire tx_data_out,tx_idle;
wire shift,full_baud,bits_done,reset_bit_counter,parity_bit,load,pulse;
wire [10:0]shift_data;

//baud_generator
ir_baud_generator   BAUD(clock,reset,~tx_idle,half_bit_sample,full_baud,pulse);
//shift register
shift_gen        SHIFT(clock,reset,shift_data,1'b1,shift,load,tx_data,data_received);
//bit_counter
bit_counter	     BIT_C(clock,reset,shift,reset_bit_counter,bits_done);
//Controller asm
ctrl        	  CTRL(clock,reset,send,load,full_baud,bits_done,shift,reset_bit_counter,tx_idle);
//parity_gen
parity_gen       parity_GEN({1'b0,data},shift_data);

modulate_data    pulse_inst(pulse,tx_data,tx_data_out);
endmodule
