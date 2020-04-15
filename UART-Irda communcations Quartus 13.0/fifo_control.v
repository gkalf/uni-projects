module fifo_control(clock,reset,data,wr_data,rd_data,out_data,empty);
input clock,reset,wr_data,rd_data;
input [7:0]data;
output wire [7:0]out_data;
output empty;
wire push,pop,full,empty;
wire [3:0]write_addr,read_addr;

ram_in_out_pointer #(.Width(4))ram_write_pointer_inst(clock,reset,wr_data,~full,write_addr);

ram_in_out_pointer #(.Width(4))ram_read_pointer_inst(clock,reset,rd_data,~empty,read_addr);

simple_dual_port_ram_single_clock 
#(.DATA_WIDTH(8),.ADDR_WIDTH(4))fifo_buffer(data,read_addr, write_addr,wr_data, clock, out_data);

flag_control #(.Width(4))flag_control_inst(clock,reset,rd_data,write_addr,read_addr,empty,full);


endmodule
