module ctrl_receiver(clock,reset,bits_done,rx_D,reset_counters,
rx_available,enable_data);

input rx_D,clock,reset,bits_done;

output reg reset_counters;
output reg enable_data;
output reg rx_available;

parameter idle = 3'b001;
parameter receiving_data = 3'b010;
parameter enable_output = 3'b100;

reg [2:0]n_state,state;

always @(posedge clock)
begin
    if(reset == 1'b1) // go to state zero if rese
        begin
        state <= idle;
        end
    else // otherwise update the states
        begin
        state <= n_state;
        end
end

always @(state,rx_D,enable_output,bits_done)
begin
	n_state = state;
	reset_counters = 0;
	rx_available = 0;
	enable_data = 0;
	case(state)
		idle:
			begin
			rx_available = 1'b1;
			if (rx_D == 0) //state 1 waits rx_data to become zero
				begin       //when this happens goes to the next state 
					n_state = receiving_data;//and resets counters
					reset_counters = 1'b1;
				end
			else
				n_state = idle;
			end

		receiving_data: // receiving data
			begin           // in this state the controller is in state of receiving
			if (bits_done == 1'b1) //when bits is done enable the signal receiving
				n_state = enable_output;
			else
				n_state = receiving_data;
			end
		enable_output:
			begin
				n_state = idle;   //in this state the signal enables_Data comes on 
				enable_data = 1'b1;//to activate the data to the output
			end
		default:
			n_state = 3'bxxx;
			

	endcase
end
endmodule
