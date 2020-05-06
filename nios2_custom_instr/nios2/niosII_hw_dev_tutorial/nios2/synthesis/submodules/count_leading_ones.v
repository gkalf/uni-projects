module count_leading_ones(inA,rslt);
parameter size=32;
input  [size-1:0] inA ;
output [size-1:0] rslt;

wire    [size-1:0] rslt;

reg 	 [4:0] bit_position;

assign rslt = (inA==32'hFFFFFFFF)?32'd32:bit_position ;

always @(inA)
	begin: search_for_1
		for (bit_position = 0; bit_position < 31; bit_position=bit_position+1)
			if (inA[size-1-bit_position] == 0)
				disable search_for_1;
	end

endmodule
