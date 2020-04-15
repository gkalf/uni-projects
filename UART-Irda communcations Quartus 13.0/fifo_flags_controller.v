// Quartus II Verilog Template
// 4-State Mealy state machine

// A Mealy machine has outputs that depend on both the state and 
// the inputs.  When the inputs change, the outputs are updated
// immediately, without waiting for a clock edge.  The outputs
// can be written more than once per state or per clock cycle.

module flag_control #(parameter Width=4)(clock,reset,enable,push_pointer,pop_pointer,empty,full);
input wire clock,reset,enable;
input wire [(Width-1):0]push_pointer,pop_pointer;
output reg empty,full;

reg n_state,state;


always @(posedge clock)
begin
	if (reset==1)
		state=0;
	else 
		state=n_state;
end
	

// Determine the output based only on the current state
// and the input (do not wait for a clock edge).
always @ (state,push_pointer,pop_pointer,enable)
begin
	n_state = state;
	empty =0;
	full = 0;
	if (push_pointer == pop_pointer)
		begin
			empty = 1;
			full = 0;
		end
	else if ((push_pointer - pop_pointer > 0) && (push_pointer - pop_pointer <4'b1111))
		begin
			empty = 0;
			full = 0;
//			if (enable)
//				pop = 1'b1;
		end
	else if (push_pointer - pop_pointer == 4'b1111)
		begin
			empty = 0;
			full = 1;
//			if (enable)
//				pop = 1'b1;
		end	

end

endmodule
