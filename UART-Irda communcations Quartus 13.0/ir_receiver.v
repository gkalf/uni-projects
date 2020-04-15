module ir_receiver(rx_data,clock,reset,rx_8bitdata,parity_err,frame_err,LED,LED2,rx_available,wr_data);
input rx_data,clock,reset;
output [7:0]rx_8bitdata;
output [6:0]LED,LED2;
output parity_err,frame_err,rx_available,wr_data;

wire bits_done,reset_counters,rx_available,half_bit_sample,wr_data;
wire [10:0] data_received,parity;

assign parity_err=parity[10];
assign rx_8bitdata=data_received[8:1];
//ASM
ctrl_receiver  receiver_inst(clock,reset,bits_done,rx_data,reset_counters,rx_available,wr_data);
//shift register
shift_gen      shift_inst(clock,reset,11'b0,rx_data,half_bit_sample,1'b0,tx_data,data_received);
//check error bits
parity_gen       parity_inst(data_received[9:1],parity);

frame_error    frame_error_inst({data_received[10],data_received[0]},frame_err);
//baud generator with a signal at half baud
ir_baud_generator baud_generator(clock,reset,~rx_available,half_bit_sample,full_baud,pulse);
//Bit_counter
bit_counter    BIT_count(clock,reset,half_bit_sample,reset_counters,bits_done);

seven_segmen_decode SEVEN_segmen_decode(rx_8bitdata[3:0],LED);
seven_segmen_decode SEVEN_segmen_decode2(rx_8bitdata[7:4],LED2);

endmodule
