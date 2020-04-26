module top_level(clk, rst, proc_en, valid_in, addr_in, data_in, size, valid_out, dataout);

parameter data_width = 32;
parameter addr_width = 10;
parameter IDLE       = 1;
parameter LOAD_RAM   = 2;
parameter PROCESS    = 3;
parameter RESULT     = 4;

input clk, rst, proc_en; //shma gia na 3ekinhsei to processing
input [31:0] valid_in;
input [data_width - 1:0] data_in;
input [addr_width - 1:0] addr_in;
input [data_width - 1:0] size;

output [data_width - 1:0] valid_out;
output [3*data_width - 1:0] dataout;

parameter const_A = 32'd10;

reg [31:0] cnt, cnt2;
reg [3:0] state;
reg [3:0] next_state;
reg [31:0] size_reg;
 
/* an eisai se state load_ram kane write an eisai se process kane read alliws tipota */
wire [1:0] ramin_en = (state == IDLE || state == RESULT)? 2'b00 : ((state == LOAD_RAM)? 2'b10 : 2'b01);
/* an eisai se state process kane write an eisai se result kane read alliws tipota */
wire [1:0] ramout_en = (state == IDLE || state == LOAD_RAM)? 2'b00 : ((state == PROCESS)? 2'b10 : 2'b01);
/* otan 8a grapsei tis eisodous h ram 8a parei dieu8unsh thn eisodo alliws thn timh tou counter*/
wire [addr_width - 1:0] ram_addr = (state == LOAD_RAM)? addr_in: cnt;
/**************************************************************************/
wire [addr_width - 1:0] ram2_addr = (state == LOAD_RAM)? addr_in: cnt2;
/**************************************************************************/

wire [data_width - 1:0] ram1_dataout;

wire [3*data_width - 1:0] ram2_datain = ram1_dataout * ram1_dataout * const_A;
reg pr_flag;

assign valid_out = (state == RESULT)? 32'd1 : 32'd0;

always@(posedge clk)
begin
    if(rst)
    begin
        state <= IDLE;
        cnt <= 0;
        cnt2 <= -1;
        pr_flag <= 0;
    end
    else
    case(state)
        IDLE: //perimene valid in gia na diavaseis to size
        begin
            if(valid_in == 32'd1)
            begin
                size_reg <= size;
                state <= LOAD_RAM;
            end
        end
        LOAD_RAM:
        begin
            if(valid_in == 32'd2)
            begin
                if(addr_in == size_reg - 1) //gemise h ram
                begin
                    state <= PROCESS;
                    
                end
                //alliws grafei sth ram
            end
        end
        PROCESS:
        begin
            if(proc_en && ~pr_flag)
                pr_flag <= 1;
                
            if (pr_flag)
            begin
                if(cnt == size_reg)
                begin
                    state <= RESULT;
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
        RESULT:
        begin
            if(cnt2 == size_reg - 1)
            begin
                cnt <= 0;
                state <= IDLE;
            end
            else
                cnt2 <= cnt2 + 1'b1;  
        end
    endcase
end



RAM RAM1_INST(clk, ramin_en, ram_addr, data_in, ram1_dataout);
RAM #(.data_width(96),
      .addr_width(10)
      ) RAM2_INST(clk, ramout_en, ram2_addr, ram2_datain, dataout);

endmodule
