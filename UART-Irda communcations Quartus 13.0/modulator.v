module irda_modulator(clock,reset,im_sending,uart_tx_data,tx_pulse_data);
input clock,reset,uart_tx_data;
output reg tx_pulse_data;
output reg im_sending;
reg pulse;
reg [13:0]count,new_count;

always @(posedge clock)
begin
	if (reset == 1'b1)
		count = 0;
	else
		count = new_count;
end

always @(count,uart_tx_data)
begin
	new_count = count;
	im_sending = 0;
	pulse = 0;
	if (uart_tx_data == 0) 
		begin
			im_sending = 1'b1;
			new_count = count + 1'b1; 
			if (count == 13'h1457) //when count = max_count
				begin
				new_count = 0;	
				end
			if (count > 13'd2604 && count <= 13'd3581)
				begin
				pulse = 1'b1;
				end
		end
end


always @(*)
begin
	if (pulse)
		tx_pulse_data = ~uart_tx_data;
	else
		tx_pulse_data = 0;
	
end


endmodule
