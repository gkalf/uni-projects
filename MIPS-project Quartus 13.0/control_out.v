 module Control_output #(parameter WIDTH = 8)
							 (input reset,
							  input [WIDTH-1:0] CompareR,
							  input [WIDTH-1:0] CounterR,
							  output reg LED
							  );
  
  always @(reset,CompareR, CounterR)
  begin      
    if (reset) 
		begin 
			LED <= 1'b0;
		end
    else if (CompareR >= CounterR)
		begin
         LED <= 1'b1;
		end
	else 
		begin
			 LED <= 1'b0;
		end
  end  
  
  endmodule