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
