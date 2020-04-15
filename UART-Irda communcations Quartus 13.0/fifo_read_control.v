module fifo_read_control(clock,reset,empty,full,enable,pop);
input clock,reset,empty,full,enable;
output reg pop;

reg n_pop;

always @(posedge clock)
begin
	if (reset)
		pop<=0;
	else
		pop<=n_pop;
end

always @(full,empty,enable,pop)
begin
	n_pop=pop;
	if (~empty)
		begin
			if (enable)
				n_pop=1;	
		end
end
endmodule
