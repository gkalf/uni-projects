module ir_baud_generator(clock,reset,enable,half_bit_sample,full_baud,pulse);
input clock,reset,enable;
output reg pulse,full_baud,half_bit_sample;
reg [12:0]count,new_count;


always @(posedge clock)
begin
	if (reset == 1'b1)
		count = 13'd0;
	else
		count = new_count;
end

always @(count,enable)
begin
	new_count = count;
	half_bit_sample = 0;
	full_baud = 0;
	pulse =0;
	if (enable == 1'b1)    
	begin							//begin counting
		if (count == 13'd60)// when 2.4us/2 count is reached
			begin
				half_bit_sample = 1'b1; //enable bit sample
				new_count = count + 1'b1;//and count++
			end				//is reached reset counter
		else if (count > 13'd2604 && count <= 13'd3581)
			begin  // this is 3/16 of the baud
				pulse = 1'b1;
				new_count = count + 1'b1;
			end
		else if (count == 13'h1457) //when count = max_count in my case 
			begin						//50Mhz/9600 
				full_baud = 1'b1; //enable signal for 1 clock cycle and resetcount
				new_count = 0;
			end
		else								
			new_count = count + 1'b1;//else count++
	end
	else
		new_count = 0;
end	
endmodule
