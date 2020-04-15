module frame_error(data_in,frame_err);
input [1:0]data_in;
output reg frame_err;

always @(data_in)
begin
	if (data_in[1] == 1'b1 && data_in[0] == 1'b0)
		frame_err = 0;
	else
		frame_err = 1'b1;
end

endmodule
