module counter #(parameter WIDTH = 8)
             (input              clk, 
              input              reset, 
              output reg [WIDTH-1:0] counter);

		
always @(posedge clk)
  begin      
    if(reset )   counter <= 0;
    else         counter <= counter + 1; 
  end

endmodule
