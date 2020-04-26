
`timescale 1 ns / 1 ps

	module super_multiplication_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here
    
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
     reg [31:0] valid_in;
     reg [9:0] addr_in ;
     reg [31:0] data_in;
     reg [31:0] size ;
     reg [31:0] proc_en;
         
    //user variables
    wire [63:0]data_out;
    wire [31:0]valid_out;
    
    wire [31:0]cnt2;
    //wire [31:0] slv_reg5_komas = data_out[95:64];
     wire [2:0]regstate;
     reg [31:0]write;
     wire [31:0]wrote_data;
     
    wire [31:0] slv_reg6_komas = data_out[63:32];
    wire [31:0] slv_reg7_komas = data_out[31:0];
    wire [31:0] slv_reg4_komas = valid_out[31:0];
    wire [31:0] slv_reg12_komas = regstate;
    wire [31:0] slv_reg10_komas = wrote_data;
    wire [31:0] slv_reg9_komas = S_AXI_WDATA;
    wire [31:0] slv_reg5_komas = cnt2;
    
    
    
    //-----------
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
	localparam integer OPT_MEM_ADDR_BITS = 3;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 12
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg8;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg9;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg10;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg11;
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
	      slv_reg4 <= 0;
	      slv_reg5 <= 0;
	      slv_reg6 <= 0;
	      slv_reg7 <= 0;
	      slv_reg8 <= 0;
	      slv_reg9 <= 0;
	      slv_reg10 <= 0;
	      slv_reg11 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          4'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h1:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h4:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h5:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 5
	                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h6:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 6
	                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h7:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h8:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 8
	                slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h9:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 9
	                slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'hA:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 10
	                slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'hB:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 11
	                slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                      slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                      slv_reg8 <= slv_reg8;
	                      slv_reg9 <= slv_reg9;
	                      slv_reg10 <= slv_reg10;
	                      slv_reg11 <= slv_reg11;
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
	
	
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        4'h0   : reg_data_out <= slv_reg0;
	        4'h1   : reg_data_out <= slv_reg1;
	        4'h2   : reg_data_out <= slv_reg2;
	        4'h3   : reg_data_out <= slv_reg3;
	        4'h4   : reg_data_out <= slv_reg4_komas;
	        4'h5   : reg_data_out <= slv_reg5_komas;
	        4'h6   : reg_data_out <= slv_reg6_komas;
	        4'h7   : reg_data_out <= slv_reg7_komas;
	        4'h8   : reg_data_out <= slv_reg8;
	        4'h9   : reg_data_out <= slv_reg9_komas;
	        4'hA   : reg_data_out <= slv_reg10_komas;
	        4'hB   : reg_data_out <= slv_reg12_komas;
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
	
   
      
        always @(posedge S_AXI_ACLK)
            begin
            if (~S_AXI_ARESETN)
                begin
                    valid_in = 0;
                    addr_in = 0;
                    size = 0;
                    proc_en = 0;
                    data_in = 0;
                    write = 0;
                end
                
            else if (slv_reg_wren)
                begin
                    if (axi_awaddr[5:2] == 4'd0)
                        valid_in = S_AXI_WDATA;
                    else if (axi_awaddr[5:2] == 4'd1)
                        addr_in = S_AXI_WDATA;
                    else if (axi_awaddr[5:2] == 4'd2)
                        data_in = S_AXI_WDATA;
                    else if (axi_awaddr[5:2] == 4'd3)
                        size = S_AXI_WDATA;
                    else if (axi_awaddr[5:2] == 4'd8)                        
                        proc_en = S_AXI_WDATA;
                    else if (axi_awaddr[5:2] == 4'd9)
                        write = S_AXI_WDATA;
                 end
            end
        // Add user logic here
        top_level top_livil(
            .clk(S_AXI_ACLK), 
            .rst(S_AXI_ARESETN),
            .proc_en(proc_en),
            .valid_in(valid_in) ,
            .addr_in(addr_in),
            .data_in(data_in),
            .size(size),
            .valid_out(valid_out),
            .dataout(data_out),
            .regstate(regstate),
            .cnt2(cnt2),
            .write(write),
            .wrote_data(wrote_data),
            .slv_reg_rden(slv_reg_rden),
            .axi_araddr(axi_araddr));
        // User logic ends
        

        endmodule
        
 module top_level(clk, rst, proc_en, valid_in, addr_in, data_in, size, valid_out, dataout,regstate,cnt2,write, wrote_data,axi_araddr,slv_reg_rden);
                    
                    parameter data_width = 32;
                    parameter addr_width = 10;
                    parameter IDLE       = 1;
                    parameter LOAD_RAM   = 2;
                    parameter PROCESS    = 3;
                    parameter RESULT     = 4;
                    parameter WAIT_FOR_CPU_WRITE = 5;
                    parameter WAIT_FOR_CPU_READ =6;
                    parameter WAIT_ONE_CYCLE = 7;
                    
                    input clk, rst;
                    input [31:0]proc_en; //shma gia na 3ekinhsei to processing
                    input [31:0] valid_in;
                    input [data_width - 1:0] data_in;
                    input [addr_width - 1:0] addr_in;
                    input [data_width - 1:0] size;
                    input [data_width - 1:0] write;
                    input [5:0]axi_araddr;
                    input slv_reg_rden;
                    
                    
                    output reg [data_width - 1:0] wrote_data;
                    output [data_width - 1:0] valid_out;
                    output [2*data_width - 1:0] dataout;
                    output [2:0] regstate;
                    output [31:0] cnt2;
                 
                    
                    parameter const_A = 32'd10;
                    
                    reg write_flag;
                    reg [31:0] cnt, cnt2;
                    reg [2:0] state;
                    reg [3:0] next_state;
                    reg [31:0] size_reg;
                    
                    wire [data_width - 1:0] ram1_dataout;
                    
                    reg [63:0] ram2_datain;
                    
                    reg pr_flag;
                    
                    
                    /* ramX read sthn katastash PROCESS kai write sthn katastash LOAD_RAM */
                    wire [1:0] ramin_en = (state == IDLE || state == WAIT_FOR_CPU_WRITE || state == WAIT_FOR_CPU_READ)? 2'b00 : ((state == LOAD_RAM)? 2'b10 :((state == PROCESS)? 2'b01:2'b00));
                    /* ramY read sthn stis katastaseis e3odou kai write sthn PROCESS */
                    wire [1:0] ramout_en = (state == LOAD_RAM)? 2'b00 : ((state == PROCESS)? 2'b10 : 2'b01);
                    /* otan 8a grapsei tis eisodous h ram 8a parei dieu8unsh thn eisodo alliws thn timh tou counter*/
                    wire [addr_width - 1:0] ram_addr = (state == LOAD_RAM)? addr_in: cnt;
                    /**************************************************************************/
                    wire [addr_width - 1:0] ram2_addr = (state == LOAD_RAM)? addr_in: cnt2; 
                    /**************************************************************************/
       
                    assign regstate = state; //debug wire gia thn katastash
                    /* valid_out energo stis katastaseis e3odou gia na katalavei o ARM oti uparxoun dia8esima dedomena gia output */
                    assign valid_out = (state == WAIT_FOR_CPU_WRITE || state == WAIT_FOR_CPU_READ || state == WAIT_ONE_CYCLE)? 32'd1 : 32'd0;
                    
                    always@(posedge clk)
                    begin
                        if(~rst)
                        begin
                        /* arxikopoihsh */
                            state <= IDLE;
                            cnt <= 0;
                            cnt2 <= -2;
                            pr_flag <= 0;
                            wrote_data <= 0;
                            write_flag <= 0;
                            size_reg <= 0;
                        end
                        else
                        case(state)
                            IDLE: 
                            begin
                            //perimene valid in = 2 gia na diavaseis to size
                                cnt <= 0;
                                size_reg <= size;
                                wrote_data <= 0;
                                write_flag <= 0;
                                if(valid_in == 32'd2 && size_reg == size && size_reg != 0)
                                begin
                                  state <= LOAD_RAM;
                                  cnt2 <= -2;
                                end
                            end
                            LOAD_RAM:
                            begin
                            //ka8e fora pou vlepei valid in = 2 diavazei address kai grafei sth ramX
                                if(valid_in == 32'd2)
                                begin
                                    if(addr_in == size_reg - 1) //gemise h ram
                                    begin
                                        state <= PROCESS;
                                        pr_flag <= 0;
                                    end
                                    //alliws grafei sth ram
                                end
                            end
                            PROCESS:
                            begin
                            //perimenei trigger kai ananewnei to flag
                                if (proc_en == 32'd1 && (pr_flag == 0))
                                     begin
                                     pr_flag = 1;
                                     end
                                     
                                if (pr_flag)
                                begin
                                     if(cnt2 == size_reg - 1) //teleiwsan oi pra3eis
                                        begin
                                            state <= WAIT_FOR_CPU_WRITE;
                                            write_flag <= 0;
                                            cnt <= 0;
                                            cnt2 <= 0;
                                            pr_flag <= 0;
                                        end
                                     else
                                        begin
                                            cnt <= cnt + 1'b1;
                                            cnt2<= cnt2+ 1'b1;
                                        end
                                end
                            end
                            WAIT_FOR_CPU_WRITE:
                             begin
                             //perimenei na zhthsei dedomena o ARM kai krataei to shma gia enan kuklo
                                 wrote_data <= 0;
                                if(write == 32'd1 && ~write_flag)
                                    begin
                                    write_flag <= 1'b1;
                                    state <= WAIT_FOR_CPU_READ;
                                    end
                            
                              end
                              
                              
                            WAIT_FOR_CPU_READ:
                             begin
                                 wrote_data <= 32'd1;
                                 //o ARM 8a diavasei mia fora ta dedomena apo tous registers
                                 if(write_flag == 1'b1 && slv_reg_rden == 1'b1 && (axi_araddr[5:2] == 4'h7 | axi_araddr[5:2] == 4'h6))
                                 begin
                                     cnt2 <= cnt2 + 1'b1;
                                     write_flag <= 1'b0;
                                 end
                                 if(write == 32'd0)
                                     begin
                                         state <= WAIT_FOR_CPU_WRITE;
                                         wrote_data <= 0;
                                     end
                                   if( cnt2 == size_reg )
                                        begin
                                            state <= WAIT_ONE_CYCLE;
                                        end
                              end
                           WAIT_ONE_CYCLE:
                             begin
                                 state = IDLE;
                             end
                        endcase
                    end
                    wire [31:0] ram3_dataout;
       
                    always@(posedge clk)
                    begin
                        if(~rst)
                            ram2_datain <= 64'd0;
                        else
                            ram2_datain <= ram1_dataout * ram3_dataout;
                    end
                    
                   wire [63:0]ramYin = ram2_datain;
                    
                    RAM RAM1_INST(clk, ramin_en, ram_addr, data_in, ram1_dataout);
                    RAM RAM3_INST(clk, ramin_en, ram_addr, data_in, ram3_dataout);
       
                    RAM #(.data_width(64),
                          .addr_width(10)
                          ) RAM2_INST(clk, ramout_en, ram2_addr, ramYin, dataout);
                    
                    endmodule
                 /*************************************************************************************/
                        
               module RAM(clk, wre, address, datain, dataout);
               
               parameter data_width = 32;
               parameter addr_width = 10;
               
               input clk;
               input [1:0] wre; //10 = write 01 = read
               input [addr_width - 1:0] address;
               input [data_width - 1:0] datain;
               output reg[data_width - 1:0] dataout;
               reg [data_width - 1:0] ram [1024:0];
               
               
               always @(posedge clk)
               begin
                   if (wre == 2'b10) //write
                       ram[address] <= datain;
                   else if (wre == 2'b01) //read
                       dataout <= ram[address];
               end
               
               endmodule