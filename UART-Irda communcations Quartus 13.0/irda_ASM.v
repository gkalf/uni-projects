module irda_controller(clock,reset,enable,sending,rx_ir_data,bit_done,reset_count,uart_rx_data);
input clock,reset;
input sending,rx_ir_data,bit_done;
output reg enable,uart_rx_data,reset_count;

parameter idle = 1'b0;
parameter demodulating = 1'b1;

reg [13:0]count,n_count;
reg n_state,state;

always @(posedge clock)
begin
	if (reset == 1'b1)
		state = idle;
	else
		state = n_state;
		
end
// trying to extend the received short pulse 2.4us of irda module
//to a UART width pulse.
always @(state,sending,rx_ir_data,bit_done)
begin
	n_state = state;
	enable = 0;
	uart_rx_data = 1'b1;
	reset_count = 0;
	case(state)
		idle: 		
			begin
				uart_rx_data = 1'b1;
				if (sending == 1'b1) //if transmitter sending then deactivate
					uart_rx_data = 1'b1;
				else
					begin
					if (rx_ir_data == 1'b0)  // when receives a pulse
						begin							//goes to the next state
							n_state = demodulating;
							reset_count = 1'b1; //resets counters
							uart_rx_data = 1'b0;
						end
					end
			end
		demodulating:
			begin
				enable = 1'b1; //enables counter
				uart_rx_data = 1'b0;
				reset_count = 0;
				if (sending == 1'b1)//if transmitter sending then deactivate
					begin
						uart_rx_data = 1'b1;
						n_state = idle;
					end	
				else
					begin
						if (bit_done == 1'b1) //until the counter finishes keeps
							begin						// the channel 0
								n_state = idle;
								uart_rx_data = 1'b1;
							end
					end
			end
	endcase
end	


endmodule
