module debouncer(clock,reset,btn,btn_out);
input clock,reset,btn;
output reg btn_out;

reg [24:0] new_count,count;
reg trigger,trigger2;

//1st flip flop
always @(posedge clock)
begin
	if (reset)
		trigger = 1'b1;
	else
		trigger = btn;	
end
//2nd flip flop
always @(posedge clock)
begin
	if (reset)
		trigger2 = 1'b1;
	else
		trigger2 = trigger;		
end

//enable button if the button is pressed more than 50ms
//and stabilized 
always @(posedge clock)
	if (reset)
		count = 0;
	else
		count = new_count;

always @(trigger2,count)
begin
	btn_out = 0;
	if (trigger2 == 0)
		begin
		new_count = count + 1'b1;
		if (new_count == 25'h20)//1E8480 )//approximately 100ms
			btn_out = 1'b1;
		end
	else
		new_count = 0;
end

endmodule