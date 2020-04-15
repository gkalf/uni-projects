module sync_data(clock,reset,tx_available,rx2_available,
tx2_available,empty,rd_data,send);
input clock,reset;
input tx_available,rx2_available,tx2_available,empty;
output reg rd_data,send;

parameter idle = 2'b01;
parameter read = 2'b10;

reg [1:0] state,n_state;

always @(posedge clock)
begin
	if (reset)
		state = idle;
	else
		state = n_state;
end

always @(state,rx2_available,tx2_available,empty,tx_available)
begin
	n_state=state;
	rd_data =0;
	send=0;
	case(state)
		idle:
			begin//if it not receiving data from IR side
				if (rx2_available && tx2_available)
					begin //and if the FIFO is empty and not 
							//transmitting with IR transmitter
						if (~empty && tx_available)
							begin
								n_state = read;
							end
					end
			end
		read:
			begin
				rd_data = 1;//send the data which are 
				send = 1;//current in FIFO and 
							//increase the read pointer
				n_state=idle;
			end
		default:
			n_state = idle;
	endcase
end

endmodule
