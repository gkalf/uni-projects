library verilog;
use verilog.vl_types.all;
entity nios2_cpu_test_bench is
    port(
        E_src1          : in     vl_logic_vector(31 downto 0);
        E_src2          : in     vl_logic_vector(31 downto 0);
        E_valid         : in     vl_logic;
        M_ctrl_ld_non_io: in     vl_logic;
        M_en            : in     vl_logic;
        M_valid         : in     vl_logic;
        M_wr_data_unfiltered: in     vl_logic_vector(31 downto 0);
        M_wr_dst_reg    : in     vl_logic;
        W_dst_regnum    : in     vl_logic_vector(4 downto 0);
        W_iw            : in     vl_logic_vector(31 downto 0);
        W_iw_op         : in     vl_logic_vector(5 downto 0);
        W_iw_opx        : in     vl_logic_vector(5 downto 0);
        W_pcb           : in     vl_logic_vector(16 downto 0);
        W_valid         : in     vl_logic;
        W_vinst         : in     vl_logic_vector(159 downto 0);
        W_wr_data       : in     vl_logic_vector(31 downto 0);
        W_wr_dst_reg    : in     vl_logic;
        clk             : in     vl_logic;
        d_address       : in     vl_logic_vector(16 downto 0);
        d_byteenable    : in     vl_logic_vector(3 downto 0);
        d_read          : in     vl_logic;
        d_write         : in     vl_logic;
        i_address       : in     vl_logic_vector(16 downto 0);
        i_read          : in     vl_logic;
        i_readdatavalid : in     vl_logic;
        reset_n         : in     vl_logic;
        E_src1_eq_src2  : out    vl_logic;
        M_wr_data_filtered: out    vl_logic_vector(31 downto 0);
        test_has_ended  : out    vl_logic
    );
end nios2_cpu_test_bench;