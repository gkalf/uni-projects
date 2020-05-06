library verilog;
use verilog.vl_types.all;
entity count_leading_ones is
    generic(
        size            : integer := 32
    );
    port(
        inA             : in     vl_logic_vector;
        rslt            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end count_leading_ones;
