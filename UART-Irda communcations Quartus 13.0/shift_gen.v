`timescale 1ns/1ps
module shift_gen(clock,reset,data,shift_in,shift,load,tx_data,data_received);
input [10:0]data;
input clock,reset,shift,load,shift_in;
output wire tx_data;
output wire [10:0]data_received;

reg [10:0] val,new_val;
reg tx_d;

assign tx_data = val[0]; //assign output to the first valuer of shift register
assign data_received = val; //output every value of shift register
								
always @(posedge clock)
begin
	if (reset == 1'b1) 
		val = 11'b1;   //initialize shift reg
	else
	   val = new_val;	
end

always @(val,data,shift,load,shift_in)
begin
	new_val = val;
//when load enables then load registers with data//		
//***R10,R9,R8,R7,R6,R5,R4,R3,R2,R1,R0***//			
//** |P|,D7,D6,D5,D4,D3,D2,D1,D0,|0|,|1|//
//R1 represents startbit and R0 idlebit
	if (load == 1'b1) 
		begin			
			new_val = data;				
		end
	else 
		if (shift == 1'b1)//when receive shift
		begin
			new_val[9:0]= val[10:1];//make a right shift.
			new_val[10] = shift_in;//and put 1 in the last pos of shift reg
		end
end

endmodule

