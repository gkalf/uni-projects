module modulate_data(pulse,uart_tx_data,ir_tx_data);
input pulse,uart_tx_data;
output reg ir_tx_data;

always @(pulse,uart_tx_data)
begin
	if (~uart_tx_data)
		ir_tx_data = pulse;
	else
		ir_tx_data = 0;
end

endmodule
		