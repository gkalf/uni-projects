module write_control(write,full,wr_data);
input write,full;
output reg wr_data;

always @(write,full)
begin
	if (write)
	begin
		if (full)
			wr_data = 0;
		else
			wr_data = 1;
	end
	else
		wr_data = 0;		

end
endmodule