`timescale 1ns/1ps
module baud_fail(clock,reset,baud_gen);
input clock,reset;
output reg baud_gen;

reg [12:0] count,new_count;

always @(posedge clock)
begin
	if (reset)
		count = 0;
	else
	//count = state,
	//new_count =n_state
		count = new_count;
end

always @(count)
begin

new_count = count + 1'b1; 
if (count == 13'h1457) //when count = max_count in my case 
	begin						//50Mhz/9600 
		baud_gen = 1'b1; //enable signal for 1 clock cycle and resetcount
		new_count = 0;
	end
else
		baud_gen = 0;
		
end

endmodule
