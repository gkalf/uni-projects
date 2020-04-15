`timescale 1ns/1ps
//bitcounter, counts how many bits have the transmitter sent.
module bit_counter(clock,reset,shift,reset_bits,bits_done);
input clock,reset,shift,reset_bits;
output reg bits_done;

reg [3:0] new_count,count;

always @(posedge clock)
begin
	if (reset == 1'b1)
		count = 0;
	else
		count = new_count;//count bits
end

always @(*)
begin
			new_count = count;
			bits_done = 0;    //to avoid latches
			if (reset_bits == 1'b1)//if reset bits then reset counter
				new_count = 0;
			else if (count == 4'd11) //if count equals 11_bits 
				begin
				bits_done = 1'b1; // send bits_done
				end
			else if (shift == 1'b1) //if shift add one bit to counter
				begin
					new_count = count + 4'b1;
				end 
		end	

endmodule
