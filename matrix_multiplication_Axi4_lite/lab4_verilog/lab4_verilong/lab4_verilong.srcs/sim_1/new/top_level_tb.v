`timescale 1ns/100ps

module TB1;
  
  reg clk, rst;
  reg [31:0] proc_en ;
  reg [31:0] data_in, size,valid_in; 
  reg [9:0] addr_in;
  reg [31:0] write;
  
  wire [31:0]valid_out;
  wire [63:0] dataout;
  wire [2:0]regstate;
  wire [31:0] cnt2;
  
  reg [31:0] data_outa;
  
  integer i,cnt;
							 
  // Initial statement for signal initialization (reset, clk, EndOfSimulation)
   initial 
     begin
     write = 32'b0;
     valid_in= 2;
     proc_en = 32'b0;
     clk = 1'b1;
     rst = 1'b0;
     size = 0;
     #50 rst  = 1'b1;
      // ....
      size = 0;
      #50;
      valid_in = 32'd2;
      size = 32'd1024; 
      data_in = 32'd0;
      
      
      #50
      valid_in = 32'd2;
    
      for ( i = 0; i < size; i = i+1)
      begin
          data_in = i;
          addr_in = i;
          #200;
      end
      #200 proc_en <= 32'd1;
      valid_in = 0;
      cnt = 32'd0;
      #1000;
      while( cnt!=10000)
      begin
        if (valid_out == 32'd1)
            begin
                if (wrote_data == 1)
                    begin
                    data_outa = dataout;
                    write = 0;
                    
                    end
            else if ((wrote_data == 0)) 
                begin
                    write = 32'd1;
                    
                end 
           end
        cnt = cnt+32'd1;
        #10;   
      end
      
      #500;
      addr_in = 0;
      
       write = 32'b0;
          valid_in= 32'd2;
          proc_en = 32'b0;
          size = 0;
          #50 rst  = 1'b1;
           // ....
           size = 0;
           #50;
           valid_in = 32'd2;
           size = 32'd1024; 
           data_in = 32'd0;
           
           
           #50
           valid_in = 32'd2;
         
           for ( i = 0; i < size; i = i+1)
           begin
               data_in = i;
               addr_in = i;
               #200;
           end
           #200 proc_en <= 32'd1;
           valid_in = 0;
           #10000;
           while(1)
           begin
             if (valid_out == 32'd1)
                 begin
                     if (wrote_data == 1)
                         begin
                         data_outa = dataout;
                         write = 0;
                         end
                 else if ((wrote_data == 0)) 
                     begin
                         write = 32'd1;
                     end 
                end
              #100;
                
                
           end

     end
  // Always statement to drive the clock goes here
  always 
    begin
	#5 clk = ~clk;
    end
	
top_level DUT(clk, rst, proc_en, valid_in, addr_in, data_in, size, valid_out, dataout,regstate,cnt2,write, wrote_data);

endmodule