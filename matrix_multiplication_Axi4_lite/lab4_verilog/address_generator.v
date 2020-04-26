module address_generator(clk, rst, en, addr);

parameter addr_width  = 10;
parameter counter_max = 1023;

input clk, en, rst;
output [addr_width - 1: 0] addr;

reg [addr_width - 1: 0] cnt;


always @(posedge clk)
begin
    if(rst)
        cnt <= 0;
    else
    begin
        if (en)
        begin
            if (cnt == counter_max)
                cnt <= 0;
            else
                cnt <= cnt + 1;
        end
    end
end

assign addr = cnt;

endmodule
