module stop_ir_receiving(rx_ir_data,sending,rx_data);
input rx_ir_data,sending;
output reg rx_data;

always @(rx_ir_data,sending)
begin
	if(sending)
		rx_data = 1'b1;
	else
		rx_data = rx_ir_data;
end

endmodule

