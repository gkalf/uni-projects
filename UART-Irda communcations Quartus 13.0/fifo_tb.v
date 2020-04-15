`timescale 1ns/1ps
module testbench;
    parameter PERIOD = 20; //the perio of the clock
  reg [7:0]data;
	 reg wr_data,rd_data;

  reg  clock, reset;
  wire [7:0]out_data;
  // Instantiate device under test

fifo_control FIFO_tb(clock,reset,data,wr_data,rd_data,out_data);
    
initial begin
	reset = 1'b1;
	#100 reset = 0;
	data = 8'b00000010;
	#10 wr_data = 1'b0; rd_data =0;
	#20 wr_data = 1;
	#20 wr_data = 1'b0;
	data = 8'b00000110;
	#100 wr_data = 1;
	#20 wr_data = 1'b0;
	data = 8'b00001110;
	#100 wr_data = 1;
	#20 wr_data = 1'b0;
	#100 rd_data = 1'b1;
	#20 rd_data = 0;
	#100 rd_data = 1'b1;wr_data = 1'b1;data = 8'b00011110;
	#20 rd_data = 0;wr_data = 0;
	#100 rd_data = 1'b1;
	#20 rd_data = 0;
	#100 rd_data = 1'b1;
	#20 rd_data = 0;
	
	
	

end


initial begin
  clock = 1'b0;
	#(PERIOD/2);
	forever
		#(PERIOD/2) clock = ~clock;
end
endmodule
