module irda_modulate(clock,reset,bit_done,enable,reset_count,rx_ir_data);
input clock,reset,enable,reset_count,rx_ir_data;
output reg bit_done;

reg [12:0] count,n_count;

// a counter that helps with the extension of the width
always @(posedge clock)
begin
	if (reset == 1'b1)
		count = 0;
	else
		count = n_count;
end

always @(count,rx_ir_data,reset_count,enable)
begin
	n_count = count;
	bit_done = 0;
	if (reset_count == 1'b1)
		begin
			n_count = 0;
		end
	else
		begin
			if (enable == 1'b1)//if its enabled 
				begin
					n_count = count + 1'b1;//when the countings has finished but 
					if (count == 13'h1457 && rx_ir_data == 0)//the next bit is also 0
						n_count = 0;  //then reset counter. else causing glitches.
					else if (count == 13'h1457)
						begin         //when it finishes reset_counter and 
							n_count = 0; //set bit_done 1 
							bit_done = 1'b1;
						end
						
				end
			else
				n_count = 0;
		end
end

endmodule
