module parity_gen(data,out);
input [8:0] data;
output reg [10:0]out;
//data are 8bit 
//the extra bit represents which parity
//would be used
//if data[8] == 0 for odd parity
//and 1 for even
always @(data)
begin
	if (~^data[7:0] == data[8]) 		
		    //PARITY,data8bit,Start,IDLE
		out = {1'b0,data[7:0],1'b0,1'b1};
	else	
		out = {1'b1,data[7:0],1'b0,1'b1};
end

endmodule
