module fifo_write_control(clock,reset,empty,full,enable,push);
input clock,reset,empty,full,enable;
output reg push;

reg n_push;

always @(posedge clock)
begin
	if (reset)
		push<=0;
	else
		push<=n_push;
end

always @(full,empty,enable,push)
begin
	n_push=push;
	n_push=0;
	if (empty && ~full)
		begin
			if (enable)
				n_push = 1'b1;
		end
	else if (full)
		n_push=0;	
end

endmodule
