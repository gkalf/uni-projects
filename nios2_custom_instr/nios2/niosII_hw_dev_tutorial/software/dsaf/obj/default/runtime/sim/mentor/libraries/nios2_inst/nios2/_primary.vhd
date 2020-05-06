library verilog;
use verilog.vl_types.all;
entity nios2 is
    port(
        clk_clk         : in     vl_logic;
        reset_reset_n   : in     vl_logic;
        led_pio_external_connection_export: out    vl_logic_vector(7 downto 0)
    );
end nios2;
