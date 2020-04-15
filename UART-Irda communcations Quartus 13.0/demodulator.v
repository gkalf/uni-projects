module irda_demodulator(clock,reset,im_not_receiving,rx_ir_data,uart_rx_data);
output reg uart_rx_data;
input clock,reset,rx_ir_data;
input im_not_receiving;

parameter idle = 1'b0;
parameter demodulating = 1'b1;

reg [13:0]count,n_count;
reg n_state,state,enable,reset_count,bit_done;

always @(posedge clock)
begin
	if (reset == 1'b1)
		state = idle;
	else
		state = n_state;
		
end

always @(posedge clock)
begin
	n_state = state;
	enable = 0;
	
	case(state)
		idle: 		
			begin
				uart_rx_data = 1'b1;
				if (im_not_receiving == 1'b1)
					uart_rx_data = 1'b1;
				else
					begin
					if (rx_ir_data == 1'b0)
						begin
							n_state = demodulating;
							reset_count = 1'b1;
							uart_rx_data = 1'b0;
						end
					end
			end
		demodulating:
			begin
				enable = 1'b1;
				uart_rx_data = 1'b0;
				reset_count = 0;
				if (im_not_receiving == 1'b1)
					begin
						uart_rx_data = 1'b1;
						n_state = idle;
					end	
				else
					begin
					if (bit_done == 1'b1)
						begin
							n_state = idle;
							uart_rx_data = 1'b1;
						end
					end
			end
	endcase
end	


always @(posedge clock)
begin
	if (reset == 1'b1)
		count = 0;
	else
		count = n_count;
end

always @(*)
begin
	n_count = count;
	bit_done = 0;
	if (reset_count == 1'b1)
		begin
			n_count = 0;
		end
	else
		begin
			if (enable == 1'b1)
				begin
					n_count = count + 1'b1;
					if (count == 13'h1457 && rx_ir_data == 0) //when count = max_count
						n_count = 0;
					else if (count == 13'h1457)
						begin
							n_count = 0;
							bit_done = 1'b1;
						end
						
				end
			else
				n_count = 0;
		end
end
endmodule
