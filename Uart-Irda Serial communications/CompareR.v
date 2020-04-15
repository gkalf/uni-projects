module compare_register  (input        clk,
									input        reset,
									input        CS_N,
									input        WR_N,
									input  [11:0]Addr,
									input  [31:0]DataIn,
									output reg [31:0]CompareR);
	
  // Compare Register Write
  always @(posedge clk)
  begin
    if(reset)                                        
          CompareR <=32'hFFFF_FFFF;
          
    else if(~CS_N && ~WR_N && (Addr[11:0]==12'h000))     
          CompareR <= DataIn;
          
  end
    
endmodule
