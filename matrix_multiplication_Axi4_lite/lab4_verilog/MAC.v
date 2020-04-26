module MAC(clk, rst, en, a, b, result);

parameter data_width = 32;
input clk;
input rst;
input en;
input [data_width - 1:0] a;
input [data_width - 1:0] b;
output[2*data_width - 1:0] result;
reg [2*data_width - 1: 0] DOUT;
reg [2*data_width - 1: 0] multi_rslt;
reg [2*data_width - 1: 0] adder_rslt;

always @(*)
    multi_rslt = a * b;
always @(*)
    adder_rslt = DOUT + multi_rslt;
assign result   = adder_rslt;

always @(posedge clk)
begin
    if(rst)
        DOUT <= 0;
    else
    begin
        if(~en)
            DOUT <= adder_rslt;
        else
            DOUT <= 0;
    end
end
endmodule
