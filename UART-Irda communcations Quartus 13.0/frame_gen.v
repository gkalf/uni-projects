module frame_gen(clock,reset,shift,enable,data_in,val);
input clock,reset;
input data_in,shift,enable;
output reg [10:0]val;

reg [10:0]new_val;

always @(posedge clock)
begin
	if (reset == 1'b1) begin
		val <= 0;
	end else begin
		val <= new_val;
	end
end

always @(val,enable,shift,data_in)
begin
	new_val = val;
	if (enable == 1'b1) //if enable==1 then  
		begin            //the shift register waits for data
		if (shift == 1'b1)//if sample signal is on
			begin				 //then shift data one place right
				new_val[10] = data_in;
				new_val[9:0] = val[10:1];
			end
		end
end

endmodule

