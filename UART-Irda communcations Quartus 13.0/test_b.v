// Testbench
`timescale 1ns/1ps
module testbench;
    parameter PERIOD = 20; //the perio of the clock

	integer i,j;
  reg  clock, reset,send;
  reg uart_rx_data;
  reg [7:0]uart_data,uart_data_in;
  wire tx_ir_data;
  reg rx_ir_data;
  reg [7:0] data;
  wire[6:0] LED0,LED1,LED2,LED3;
  wire uart_tx_data;
  wire [7:0]rx_8bitdata;
  wire frame_err_in,parity_err_in;
  wire frame_err_out,parity_err_out;
  // Instantiate device under test
top TOP(clock,reset,uart_rx_data,uart_tx_data,frame_err_in,tx_ir_data,rx_ir_data,
frame_err_out,parity_err_in,parity_err_out,LED3,LED2,LED1,LED0);
initial begin
reset = 0;
uart_rx_data = 1;
rx_ir_data=1;
#100 reset = 1;
	for (i=0; i <= 20; i = i+1)
		begin
		uart_data = i;
		#104160 rx_ir_data=0 ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=uart_data[0] ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=uart_data[1] ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=uart_data[2] ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=uart_data[3] ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=uart_data[4] ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=uart_data[5] ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=uart_data[6] ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=uart_data[7] ;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data= ~^uart_data;
		#19540 rx_ir_data=1;
		#84620 rx_ir_data=1;
		#104160;
		end
end

initial begin
uart_rx_data = 1;
#800000;
	for (j=0; j <= 60; j = j+1)
		begin
		uart_data_in = j;
		#104160 uart_rx_data=0 ;
		#104160 uart_rx_data=uart_data_in[0] ;
		#104160 uart_rx_data=uart_data_in[1] ;
		#104160 uart_rx_data=uart_data_in[2] ;
		#104160 uart_rx_data=uart_data_in[3] ;
		#104160 uart_rx_data=uart_data_in[4] ;
		#104160 uart_rx_data=uart_data_in[5] ;
		#104160 uart_rx_data=uart_data_in[6] ;
		#104160 uart_rx_data=uart_data_in[7] ;
		#104160 uart_rx_data= ~^uart_data_in;
		#104160 uart_rx_data=1;
		#104160;
		end

#50000000;
	for (j=0; j <= 60; j = j+1)
		begin
		uart_data_in = j;
		#104160 uart_rx_data=0 ;
		#104160 uart_rx_data=uart_data_in[0] ;
		#104160 uart_rx_data=uart_data_in[1] ;
		#104160 uart_rx_data=uart_data_in[2] ;
		#104160 uart_rx_data=uart_data_in[3] ;
		#104160 uart_rx_data=uart_data_in[4] ;
		#104160 uart_rx_data=uart_data_in[5] ;
		#104160 uart_rx_data=uart_data_in[6] ;
		#104160 uart_rx_data=uart_data_in[7] ;
		#104160 uart_rx_data= ~^uart_data_in;
		#104160 uart_rx_data=1;
		#1041600;
		end
		
		
end


   initial begin
     clock = 1'b0;
      #(PERIOD/2);
      forever
         #(PERIOD/2) clock = ~clock;
   end
endmodule
