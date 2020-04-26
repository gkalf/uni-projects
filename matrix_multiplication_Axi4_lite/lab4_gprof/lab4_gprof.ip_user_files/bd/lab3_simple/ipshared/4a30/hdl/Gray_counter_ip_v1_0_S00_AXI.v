
`timescale 1 ns / 1 ps

	module Gray_counter_ip_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
        output [7:0]LED,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 1;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 4
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	        end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          2'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h1:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	wire [31:0]slv_reg3_komas = LED;
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        2'h0   : reg_data_out <= slv_reg0;
	        2'h1   : reg_data_out <= slv_reg1;
	        2'h2   : reg_data_out <= slv_reg2;
	        2'h3   : reg_data_out <= slv_reg3_komas;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
    GrayCounter_System# (
        .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH), // parameters
        .ADDR_LSB(ADDR_LSB)
    ) U1 (
        .clk(S_AXI_ACLK),
        .rst(S_AXI_ARESETN),
        .slv_reg_wren(slv_reg_wren),
       // .slv_reg_rden(slv_reg_rden),
        .axi_awaddr(axi_awaddr[C_S_AXI_ADDR_WIDTH-1 : ADDR_LSB]),
       // .axi_araddr(axi_awaddr[C_S_AXI_ADDR_WIDTH-1 : ADDR_LSB]),
        .S_AXI_WDATA(S_AXI_WDATA),
        //.S_AXI_RDATA(slv_reg1),
        //.rd_en(rd_en),
        .leds(LED)
    );
	// User logic ends

	endmodule
	
	module GrayCounter_System#(
	  parameter integer C_S_AXI_ADDR_WIDTH	= 4,
      parameter integer ADDR_LSB            = 2	
      )(
       input clk, 
       input rst,
       input [C_S_AXI_ADDR_WIDTH-1:ADDR_LSB] axi_awaddr,
       input [31:0] S_AXI_WDATA, 
       input slv_reg_wren,
       //input slv_reg_rden,
       //input [C_S_AXI_ADDR_WIDTH-1:ADDR_LSB] axi_araddr,
       output [7:0]leds
       //output reg [31:0]S_AXI_RDATA,
       //output rd_en
       );
      
   //   parameter N = 8;
     // parameter distance = 27'd100;//000000;
      
      reg button,button_2;
     // wire pulse,pulse_2;
      //wire async_pulse,async_pulse_2;
      wire start_count;
       reg clk_en_reg;
       reg reset_reg;
       reg delay_reg;
       //reg [31:0]S_AXI_RDATA;
       wire clk_en,reset,delay;
      ///
    
      assign clk_en = clk_en_reg | start_count;
      assign reset = reset_reg;
      assign delay = delay_reg;
      
      always @( posedge clk )
          begin
              if (rst == 1'b0 )
                begin
                  button <= 0;
                  button_2 <= 0;
                end
              else begin
                  if ((slv_reg_wren == 1) && (axi_awaddr == 0))
                      begin
                        if ( S_AXI_WDATA == 32'd4)
                            begin
                                button_2 = 1;
                                button = 0;
                            end
                         if ( S_AXI_WDATA == 32'd8)
                                begin
                                    button_2 = 0;
                                    button = 1;
                                end
                        if ( S_AXI_WDATA == 32'd12)
                            begin
                                button_2 = 1;
                                button = 1;
                            end
                         end
               end
          end
      
      always @(button_2,button)
        begin
           /* if (~rst)
                begin
                clk_en_reg = 0;
                reset_reg = 1;
                delay_reg = 0;
                end  
            else
               begin*/ 
                if (~button_2 & button)//freeze
                    begin
                    clk_en_reg = 0;
                    reset_reg = 0;
                    delay_reg = 0;
                    end
                else if (button_2 & ~button)//start
                     begin
                     clk_en_reg = 1'b0;
                     reset_reg = 0;
                     delay_reg = 1;
                     end
                 else if (button_2 && button)//reset and freeze
                     begin
                     clk_en_reg = 0;
                     reset_reg = 1;
                     delay_reg = 0;
                     end
                 else
                    begin
                    clk_en_reg = clk_en_reg;
                    reset_reg = reset_reg;
                    delay_reg = delay_reg; 
                    end
            //end
        end  
       // assign rd_en = clk_en;
        
        
          gray_Nbits gray_counter(clk, clk_en, reset, leds); 
        //debounceButton debouncer(clk,rst, button, pulse);
        //debounceButton debounceButton(clk,rst,button,pulse,async_pulse);
        //debounceButton debounceButton_2(clk,rst,button_2,pulse_2,async_pulse_2);
        progressive_debounceButton progressive_debounceButton(clk,reset,delay, start_count);
        
    
    endmodule
    
    
    module gray_Nbits (clk, clk_en, rst, gray_out);
      parameter N = 8;
      parameter SIZE =(N+1);
      parameter Zeros = {SIZE{1'b0}};
      // Place the definition of wires and regs here
    
      input clk,rst,clk_en;
      output [N-1:0]gray_out;
     
      reg [N:0] state ;
      reg [N:0] toggle;
        integer i,j;
      
      // The state of the Gray counter
      always @(posedge clk, posedge rst)
        begin
        if (rst == 1'b1)
                // Initialize state with 1000..00
            begin
            state <= Zeros;
            state[N] <= 1'b1;
            end             
        else if (clk_en)
                for (j=0; j<=N; j=j+1)
                    begin
                        if(toggle[j])
                        state[j] <= ~state[j];
                    end
         end
      reg temp;
      // The combinational logic produces the toggle[N:0] signals
      always @(state)
        begin     
            toggle[0] <=  1'b1;
            toggle[1] <= state[0];    
            for (i=2; i<N; i=i+1) 
                   begin
                       temp = 0;
                       for(j = 0; j <= i-2; j = j +1)
                       begin
                         temp = temp | state[j];
                       end
                       temp = ~temp;
                    if ((state[i-1] == 1'b1) && temp)// & ~(| state[i-2:0]))
                        toggle[i] <= 1'b1;
                    else
                        toggle[i] <= 0;
                       end
                    
            
            if (~| state[N-2:0])
                toggle[N] <= 1'b1;
            else
                  toggle[N] <= 1'b0; 
    end  
        assign gray_out=state[N:1];
       
    endmodule
    
    /* Debounce Button
     *
     * This is a module that implements an anti-bounce
     * filter for mechanical buttons. There are 2 FFs 
     * in series used for 1 cycle delay. Also there is
     * a counter for any remaining bounces. When the 
     * counter reaches max value we are sure if the button
     * was pressed or not.
    **/
    
    module debounceButton(clk,rst, buttin, buttout, async_buttout);
    
    input clk, buttin,rst;
    output reg buttout;
    output wire async_buttout;
    
    reg [31:0] counter;        // artificial delay to reach the safe state
    reg ff1, ff2;              // output from flipflop 1,2 correspondingly
    reg flag;                // Flag is used to prevent output 1 for more than one cycles
    wire async_button;         // compare the output of 2 flipflops
    
    always @(posedge clk)    // 2 flip flops in series for 1 cycle delay on buttin
    begin
        ff1 = buttin;
    end
    
    always @(posedge clk)    // reg(ff2) is the async output of second FF
    begin
        ff2 = ff1;
    end
    
    assign async_button = ff2;
    assign async_buttout = ff2;
    wire [31:0]counter_max = 32'd1000000; //an den leitourgei swsta allazoume to delay edw 0.01
    
    always @(posedge clk)            
    begin
        if(rst)
            flag = 1'b1;
        else
            begin
                if(async_button)
                begin
                    if (counter == counter_max && flag)
                        
                        begin
                            buttout = 1'b1;
                            flag = 1'b0;
                        //counter = 0;
                        end
                    else
                        begin
                            counter = counter + 1'b1;
                            buttout = 1'b0;
                        end
                end
                else
                begin
                    counter = 10'b0;
                    flag = 1'b1;
                    buttout = 1'b0;
                end
          end
    end
    
    endmodule
    
    /* Debounce Button
     *
     * This is a module that implements an anti-bounce
     * filter for mechanical buttons. There are 2 FFs 
     * in series used for 1 cycle delay. Also there is
     * a counter for any remaining bounces. When the 
     * counter reaches max value we are sure if the button
     * was pressed or not.
    **/
    
    module progressive_debounceButton(clk,rst, buttin, buttout);
    
    input clk, buttin,rst;
    output reg buttout;
    
    reg [31:0] counter;        // artificial delay to reach the safe state
    reg ff1, ff2;              // outpu3t from flipflop 1,2 correspondingly
    reg flag;                // Flag is used to prevent output 1 for more than one cycles
    wire async_button;         // compare the output of 2 flipflops
    
    always @(posedge clk)    // 2 flip flops in series for 1 cycle delay on buttin
    begin
        ff1 <= buttin;
    end
    
    always @(posedge clk)    // reg(ff2) is the async output of second FF
    begin
        ff2 <= ff1;
    end
    
    assign async_button = ff2;
    reg [31:0]counter_max; //
    reg [10:0] cnt;
    always @(posedge clk)            
    begin
       if(rst)
       begin
            counter_max = 32'd100_000_000;
            cnt = 0;
            //flag <= 1;
        end
        else
        begin
            if(async_button)
            begin
                if ((counter == counter_max)) //&& flag)
                begin
                    buttout <= 1'b1;
                    counter <= 0;
                    cnt = cnt + 1'b1;
                    if (cnt == 11'd6)
                        begin
                        cnt = 0;
                        if(counter_max == 32'd100_000_000)
                            counter_max <= counter_max;
                        else
                            counter_max <= counter_max/2;
                        end
                    //flag <= 1'b0;
                end
                else
                begin
                    counter <= counter + 1'b1;
                    buttout <= 1'b0;
                end
            end
            else
            begin
                counter <= 32'b0;
                //flag <= 1'b1;
                counter_max = 32'd100_000_000;
                buttout <= 1'b0;
            end
        end
    end
    
    endmodule
