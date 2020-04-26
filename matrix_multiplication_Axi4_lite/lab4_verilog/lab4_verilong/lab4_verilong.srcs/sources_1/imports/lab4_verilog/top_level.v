//  module top_level(clk, rst, proc_en, valid_in, addr_in, data_in, size, valid_out, dataout,regstate,cnt2,write, wrote_data);
       
//       parameter data_width = 32;
//       parameter addr_width = 10;
//       parameter IDLE       = 1;
//       parameter LOAD_RAM   = 2;
//       parameter PROCESS    = 3;
//       parameter RESULT     = 4;
//       parameter WAIT_FOR_CPU_WRITE = 5;
//       parameter WAIT_FOR_CPU_READ =6;
//       parameter WAIT_ONE_CYCLE = 7;
       
//       input clk, rst;
//       input [31:0]proc_en; //shma gia na 3ekinhsei to processing
//       input [31:0] valid_in;
//       input [data_width - 1:0] data_in;
//       input [addr_width - 1:0] addr_in;
//       input [data_width - 1:0] size;
//       input [data_width - 1:0] write;
       
//       output reg [data_width - 1:0] wrote_data;
//       output [data_width - 1:0] valid_out;
//       output [2*data_width - 1:0] dataout;
//       output [2:0] regstate;
//       output [31:0] cnt2;
    
       
//       parameter const_A = 32'd10;
       
//       reg [31:0] cnt3;
//       reg write_flag;
//       reg [31:0] cnt, cnt2;
//       reg [2:0] state;
//       reg [3:0] next_state;
//       reg [31:0] size_reg;
       
//       wire [data_width - 1:0] ram1_dataout;
       
//       reg [63:0] ram2_datain;
       
//       reg pr_flag;
       
       
//       /* an eisai se state load_ram kane write an eisai se process kane read alliws tipota */
//       wire [1:0] ramin_en = (state == IDLE || state == WAIT_FOR_CPU_WRITE || state == WAIT_FOR_CPU_READ)? 2'b00 : ((state == LOAD_RAM)? 2'b10 :((state == PROCESS)? 2'b01:2'b00));
//       /* an eisai se state process kane write an eisai se result kane read alliws tipota */
//       wire [1:0] ramout_en = (state == LOAD_RAM)? 2'b00 : ((state == PROCESS)? 2'b10 : 2'b01);
//       /* otan 8a grapsei tis eisodous h ram 8a parei dieu8unsh thn eisodo alliws thn timh tou counter*/
//       wire [addr_width - 1:0] ram_addr = (state == LOAD_RAM)? addr_in: cnt;
//       /**************************************************************************/
//       wire [addr_width - 1:0] ram2_addr = (state == LOAD_RAM)? addr_in: cnt2; //((state == PROCESS) ? cnt2 -2 : cnt2);
//       /**************************************************************************/
//       //assign size_reg = size;
//       assign regstate = state;
//      // reg [31:0] delaycnt;       
//       assign valid_out = (state == WAIT_FOR_CPU_READ || state == WAIT_ONE_CYCLE|| state == WAIT_FOR_CPU_WRITE)? 32'd1 : 32'd0;
       
//       always@(posedge clk)
//       begin
//           if(~rst)
//           begin
//               cnt3 <= 0;
//               state <= IDLE;
//               cnt <= 0;
//               cnt2 <= -2;
//               pr_flag <= 0;
//               //delaycnt <=0;
//               wrote_data <= 0;
//                              write_flag <= 0;
//               size_reg <= 0;
//           end
//           else
//           case(state)
//               IDLE: //perimene valid in gia na diavaseis to size
//               begin
//                   cnt <= 0;
                   
//                   size_reg <= size;
//                   wrote_data <= 0;
//                   write_flag <= 0;
//                   if(valid_in == 32'd2 && size_reg == size && size_reg != 0)
//                   begin
//                     state <= LOAD_RAM;
//                     cnt2 <= -2;
//                   end
//               end
//               LOAD_RAM:
//               begin
                   
//                   if(valid_in == 32'd2)
//                   begin
//                       if(addr_in == size_reg - 1) //gemise h ram
//                       begin
//                           state <= PROCESS;
//                           pr_flag <= 0;
//                       end
//                       //alliws grafei sth ram
//                   end
//               end
//               PROCESS:
//               begin
//                   if (proc_en == 32'd1 && (pr_flag == 0))
//                        begin
//                        pr_flag = 1;
//                        end
                        
//                   if (pr_flag)
//                   begin
                   
//                        if(cnt2 == size_reg - 1)
//                           begin
//                               state <= WAIT_FOR_CPU_WRITE;
//                               write_flag <= 0;
//                               cnt <= 0;
//                               cnt2 <= -1;
//                               pr_flag <= 0;
//                           end
//                        else
//                           begin
//                               cnt <= cnt + 1'b1;
//                               cnt2<= cnt2+ 1'b1;
//                           end
//                   end
//               end
//               WAIT_FOR_CPU_WRITE:
//                begin
//                    wrote_data <= 0;
//                   if(write == 32'd1 && ~write_flag)
//                       begin
//                       write_flag <= 1'b1;
//                       state <= WAIT_FOR_CPU_READ;
//                       end
               
//                 end
                 
                 
//               WAIT_FOR_CPU_READ:
//                begin
//                    wrote_data <= 32'd1;
//                    if(write_flag == 1'b1)
//                    begin
//                        cnt2 <= cnt2 + 1'b1;
//                        write_flag <= 1'b0;
//                        //wrote_data <= 32'd1;
//                    end
//                    if(write == 32'd0)
//                        begin
//                            state <= WAIT_FOR_CPU_WRITE;
//                            wrote_data <= 0;
//                        end
//                      if( cnt2 == size_reg)
//                           begin
//                               state <= WAIT_ONE_CYCLE;
//                               cnt3 = 0;
//                           end
//                 end
//              WAIT_ONE_CYCLE:
//                begin
//                    if (cnt3 == 32'd100)
//                        state <= IDLE;
//                    else
//                        cnt3 <= cnt3 + 1'b1;
                        
//                end
//           endcase
//       end
//       wire [31:0] ram1_dataout_reg;
       
//       assign ram1_dataout_reg = ram1_dataout_reg;
//       always@(posedge clk)
//       begin
//           if(~rst)
//               ram2_datain <= 64'd0;
//           else
//               ram2_datain <= ram1_dataout * 32'd10;
//       end
       
//      wire [63:0]paparia = ram2_datain;
       
//       RAM RAM1_INST(clk, ramin_en, ram_addr, data_in, ram1_dataout);
//       RAM #(.data_width(64),
//             .addr_width(10)
//             ) RAM2_INST(clk, ramout_en, ram2_addr, paparia, dataout);
       
//       endmodule
//    /*************************************************************************************/
  
       
 module top_level(clk, rst, proc_en, valid_in, addr_in, data_in, size, valid_out, dataout,regstate,cnt2,write, wrote_data);
        
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
        
        reg [31:0] ram1;
        reg [31:0] ram2;
        reg [63:0] result;
        
        reg [32 :0] memX [0 : 1023];
        reg [63 :0] memY [0 : 1023];
        reg [63 :0] dataout_reg;
 
        
        assign regstate = state;
        assign valid_out = (state == WAIT_FOR_CPU_READ || state == WAIT_ONE_CYCLE|| state == WAIT_FOR_CPU_WRITE)? 32'd1 : 32'd0;
        
        always@(posedge clk)
        begin
            if(~rst)
            begin
            ram1 <= 0;
            ram2 <= 0;
            result <= 0;
            dataout_reg <= 64'd0;
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
                IDLE: //perimene valid in gia na diavaseis to size
                begin
                    cnt <= 0;
                    size_reg <= size;
                    wrote_data <= 0;
                    write_flag <= 0;
                    if(valid_in == 32'd2 && size_reg == size && size_reg != 0)
                    begin
                      state <= LOAD_RAM;
                      cnt2 <= 0;
                    end
                end
                LOAD_RAM:
                begin
                    
                    if(valid_in == 32'd2)
                    begin
                        memX[addr_in] <= data_in;
                        if(addr_in == size_reg - 1) //gemise h ram
                        begin
                            state <= PROCESS;
                            pr_flag <= 0;
                            cnt2 <= -2;
                            cnt <= 0;
                            
                        end
                    end
                end
                PROCESS:
                begin
                    if (proc_en == 32'd1 && (pr_flag == 0))
                         begin
                         pr_flag = 1;
                         end
                         
                    if (pr_flag)
                    begin
                         //memY[cnt2] <= memX[cnt2] * memX[cnt2];
                         
                         memY[cnt2] <= result;
                         if(cnt2 == size_reg + 1)
                            begin
                                cnt2 <= 0;
                                state <= WAIT_FOR_CPU_WRITE;
                                write_flag <= 0;
                                cnt <= 0;
                                cnt2 <= -1;
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
                     wrote_data <= 0;
                    if(write == 32'd1 && ~write_flag)
                        begin
                        write_flag <= 1'b1;
                        state <= WAIT_FOR_CPU_READ;
                        end
                
                  end
                  
                  
                WAIT_FOR_CPU_READ:
                 begin
                     dataout_reg <= memY[cnt2];
                     wrote_data <= 32'd1;
                     if(write_flag == 1'b1)
                     begin
                         cnt2 <= cnt2 + 1'b1;
                         write_flag <= 1'b0;
                         //wrote_data <= 32'd1;
                     end
                     if(write == 32'd0)
                         begin
                             state <= WAIT_FOR_CPU_WRITE;
                             wrote_data <= 0;
                         end
                       if( cnt2 == size_reg-1)
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
        always@(posedge clk)
        begin
             ram1 <= memX[cnt];
             ram2 <= memX[cnt];
        end
        always@(posedge clk)
        begin
             result <= ram1 * ram2;
        end
        assign dataout = dataout_reg;
        
        endmodule
     /*************************************************************************************/
