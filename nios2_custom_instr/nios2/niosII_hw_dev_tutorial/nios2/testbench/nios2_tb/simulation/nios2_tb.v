// nios2_tb.v

// Generated using ACDS version 13.0sp1 232 at 2020.05.04.23:49:16

`timescale 1 ps / 1 ps
module nios2_tb (
	);

	wire    nios2_inst_clk_bfm_clk_clk;       // nios2_inst_clk_bfm:clk -> [nios2_inst:clk_clk, nios2_inst_reset_bfm:clk]
	wire    nios2_inst_reset_bfm_reset_reset; // nios2_inst_reset_bfm:reset -> nios2_inst:reset_reset_n

	nios2 nios2_inst (
		.clk_clk                            (nios2_inst_clk_bfm_clk_clk),       //                         clk.clk
		.reset_reset_n                      (nios2_inst_reset_bfm_reset_reset), //                       reset.reset_n
		.led_pio_external_connection_export ()                                  // led_pio_external_connection.export
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) nios2_inst_clk_bfm (
		.clk (nios2_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) nios2_inst_reset_bfm (
		.reset (nios2_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (nios2_inst_clk_bfm_clk_clk)        //   clk.clk
	);

endmodule
