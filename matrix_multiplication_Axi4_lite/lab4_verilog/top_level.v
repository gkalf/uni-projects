module top_level(clk, rst, valid_in, addr_in, size, valid_out, dataout);

parameter data_width = 32;
parameter addr_width = 10;
parameter IDLE       = 1;
parameter LOAD_RAM   = 2;
parameter PROCESS    = 3;
parameter RESULT     = 4;

input clk, rst, 
input [data_width - 1:0] valid_in;
input [data_width - 1:0] data_in;
input [addr_width - 1:0] addr_in;
input [data_width - 1:0] size;

output valid_out;
output [2*data_width - 1:0] dataout;

reg [3:0] state;
reg [3:0] next_state;
reg [data_width - 1:0] size_reg;

// dedomena apo to AXI
	
always@(posedge clk)
begin
    if(rst)
        state <= IDLE;
    else
        state <= next_state;
end


always @(*)
begin
	next_state <= state;
	wre_reg_load <= 0;
	wre_reg_unload <= 0;
	MAC_en <= 0;
    case(state)

        IDLE:
        begin
			size_reg <= 0;
			if(valid_in == 1)
			begin			
				size_reg <= size;
				next_state <= LOAD_RAM;
			end
        end
        LOAD_RAM:
        begin
			if(valid_in == 2)
			begin
				if(addr_in == size_reg)
				begin
					next_state <= PROCESS;
					MAC_en <= 1;
					wre_reg_load <= 1;
				end
				else
					wre_reg_load <= 2;
			end
        end
        PROCESS:
        begin
			if(en)
			begin
				if(cnt == size_reg) //mporei na 8elei +1 h kai alliws
				begin
					next_state <= RESULT;
					wre_reg_unload <= 1;
				end
				else
				begin
					cnt <= cnt + 1;
					wre_reg_unload <= 2;
					wre_reg_load <= 1;
				end
			end
			
        end
        RESULT:
        begin
			valid_out_reg <= 1;
			wre_reg_unload <= 1;
			if(cnt == size_reg)
			begin
				next_state <= IDLE;
				wre_reg_unload <= 0;
				wre_reg_unload <= 0;
			end
			else
			begin
				cnt <= cnt + 1;
			end
        end
    endcase
end

assign valid_out = (wre_reg_unload & (state == RESULT);
assign address = cnt;
assign datain_unload = (dataout_load * dataout_load);

reg [1:0] wre_reg_load;
reg [1:0] wre_reg_unload;
reg MAC_en;

wire [1:0] wre = wre_reg_load;
wire [1:0] wre2 = wre_reg_unload;
wire en = MAC_en;
wire address = cnt;

RAM LOAD_RAM_INST(clk, wre, address, data_in, dataout_load);
RAM UNLOCAD_RAM_INST#(data_width = 64)(clk, wre2, address, datain_unload, data_out);
//MAC MAC_INST(clk, rst, en, a, b, result);

endmodule
