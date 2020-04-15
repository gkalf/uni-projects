module PWM(
  input clk,
  input reset,
  input CS_N,
  input WR_N,
  input [11:0] Addr,
  input [31:0] DataIn,
  output wire LED);
  

  wire [31:0] CompareR;
  wire [11:0] CounterR;
  
    
//  ==============================
//  PWM registers 
//  ==============================
//  ------------------------------
//  FFFF_3000 Compare register (Write)
//  ==============================


compare_register     compareReg (.clk(clk),
											.reset(reset),
											.CS_N(CS_N),
											.WR_N(WR_N),
											.Addr(Addr),
											.DataIn(DataIn),
											.CompareR(CompareR));
		 // OUTPUT LED
Control_output#(12)  Control   (.reset(reset),
										  .CompareR(CompareR[11:0]),
										  .CounterR(CounterR),
										  .LED(LED)
										  );

 counter#(12)        Counter   ( .clk(clk), 
							    			.reset(reset),
											.counter(CounterR)
										  );


 
endmodule
