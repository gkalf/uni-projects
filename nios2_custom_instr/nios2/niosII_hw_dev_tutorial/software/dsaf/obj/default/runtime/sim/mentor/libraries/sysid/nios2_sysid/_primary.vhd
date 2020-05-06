library verilog;
use verilog.vl_types.all;
entity nios2_sysid is
    port(
        address         : in     vl_logic;
        clock           : in     vl_logic;
        readdata        : out    vl_logic_vector(31 downto 0);
        reset_n         : in     vl_logic
    );
end nios2_sysid;
