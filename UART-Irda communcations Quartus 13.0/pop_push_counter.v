`timescale 1ns/1ps
//bitcounter, counts how many bits have the transmitter sent.
module ram_in_out_pointer #(parameter Width=4)(clock,reset,enable,flag,count);
input clock,reset,enable,flag;
output reg [(Width-1):0] count;

reg [(Width-1):0] new_count;

always @(posedge clock)
begin
	if (reset == 1'b1)
		count = 4'd0;
	else
		count = new_count;//count bits
end

always @(count,enable,flag)
begin
	new_count = count;
	if (enable == 1'b1 && flag == 1'b1) //if shift add one bit to counter
		begin
			new_count = count + 4'b0001;
		end 
end	

endmodule
