`timescale 1ns/100ps

module RAM(clk, wre, address, datain, dataout);

parameter data_width = 32;
parameter addr_width = 10;

input clk;
input [1:0] wre; //10 = write 01 = read
input [addr_width - 1:0] address;
input [data_width - 1:0] datain;
output reg[data_width - 1:0] dataout;
reg [data_width - 1:0] ram [1023:0];


always @(posedge clk)
begin
    if (wre == 2'b10) //write
        ram[address] <= datain;
    else if (wre == 2'b01) //read
        dataout <= ram[address];
end

endmodule
