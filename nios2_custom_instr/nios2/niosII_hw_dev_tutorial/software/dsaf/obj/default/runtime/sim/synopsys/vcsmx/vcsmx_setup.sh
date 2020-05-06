
# (C) 2001-2020 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2020.05.04.23:54:45

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="nios2_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/rsp_xbar_mux_001/
mkdir -p ./libraries/rsp_xbar_mux/
mkdir -p ./libraries/rsp_xbar_demux_002/
mkdir -p ./libraries/rsp_xbar_demux/
mkdir -p ./libraries/cmd_xbar_mux/
mkdir -p ./libraries/cmd_xbar_demux_001/
mkdir -p ./libraries/cmd_xbar_demux/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/limiter/
mkdir -p ./libraries/id_router_002/
mkdir -p ./libraries/id_router/
mkdir -p ./libraries/addr_router_001/
mkdir -p ./libraries/addr_router/
mkdir -p ./libraries/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/cpu_instruction_master_translator_avalon_universal_master_0_agent/
mkdir -p ./libraries/cpu_jtag_debug_module_translator/
mkdir -p ./libraries/cpu_instruction_master_translator/
mkdir -p ./libraries/cpu_custom_instruction_master_comb_slave_translator0/
mkdir -p ./libraries/cpu_custom_instruction_master_comb_xconnect/
mkdir -p ./libraries/cpu_custom_instruction_master_translator/
mkdir -p ./libraries/count_leading_ones_0/
mkdir -p ./libraries/led_pio/
mkdir -p ./libraries/sysid/
mkdir -p ./libraries/sys_clk_timer/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/onchip_mem/
mkdir -p ./libraries/nios2_inst_reset_bfm/
mkdir -p ./libraries/nios2_inst_clk_bfm/
mkdir -p ./libraries/nios2_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneii_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_ic_tag_ram.dat ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_ic_tag_ram.hex ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_ic_tag_ram.mif ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_ociram_default_contents.dat ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_ociram_default_contents.hex ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_ociram_default_contents.mif ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_rf_ram_a.dat ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_rf_ram_a.hex ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_rf_ram_a.mif ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_rf_ram_b.dat ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_rf_ram_b.hex ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_rf_ram_b.mif ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_onchip_mem.hex ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/software/dsaf/mem_init/hdl_sim/nios2_onchip_mem.dat ./
  cp -f C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/software/dsaf/mem_init/nios2_onchip_mem.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.v"   -work cycloneii_ver   
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_irq_mapper.sv"                                  -work irq_mapper                                                              
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_arbitrator.sv"                          -work rsp_xbar_mux_001                                                        
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_rsp_xbar_mux_001.sv"                            -work rsp_xbar_mux_001                                                        
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_arbitrator.sv"                          -work rsp_xbar_mux                                                            
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_rsp_xbar_mux.sv"                                -work rsp_xbar_mux                                                            
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_rsp_xbar_demux_002.sv"                          -work rsp_xbar_demux_002                                                      
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_rsp_xbar_demux.sv"                              -work rsp_xbar_demux                                                          
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_arbitrator.sv"                          -work cmd_xbar_mux                                                            
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cmd_xbar_mux.sv"                                -work cmd_xbar_mux                                                            
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cmd_xbar_demux_001.sv"                          -work cmd_xbar_demux_001                                                      
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cmd_xbar_demux.sv"                              -work cmd_xbar_demux                                                          
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_reset_controller.v"                            -work rst_controller                                                          
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_reset_synchronizer.v"                          -work rst_controller                                                          
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_traffic_limiter.sv"                     -work limiter                                                                 
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                     -work limiter                                                                 
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_id_router_002.sv"                               -work id_router_002                                                           
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_id_router.sv"                                   -work id_router                                                               
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_addr_router_001.sv"                             -work addr_router_001                                                         
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_addr_router.sv"                                 -work addr_router                                                             
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_avalon_sc_fifo.v"                              -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_slave_agent.sv"                         -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"                  -work cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_master_agent.sv"                        -work cpu_instruction_master_translator_avalon_universal_master_0_agent       
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_slave_translator.sv"                    -work cpu_jtag_debug_module_translator                                        
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_merlin_master_translator.sv"                   -work cpu_instruction_master_translator                                       
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_customins_slave_translator.sv"                 -work cpu_custom_instruction_master_comb_slave_translator0                    
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_custom_instruction_master_comb_xconnect.sv" -work cpu_custom_instruction_master_comb_xconnect                             
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_customins_master_translator.v"                 -work cpu_custom_instruction_master_translator                                
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/count_leading_ones.v"                                 -work count_leading_ones_0                                                    
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_led_pio.v"                                      -work led_pio                                                                 
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_sysid.vo"                                       -work sysid                                                                   
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_sys_clk_timer.v"                                -work sys_clk_timer                                                           
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_jtag_uart.v"                                    -work jtag_uart                                                               
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu.vo"                                         -work cpu                                                                     
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_jtag_debug_module_sysclk.v"                 -work cpu                                                                     
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_jtag_debug_module_tck.v"                    -work cpu                                                                     
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_jtag_debug_module_wrapper.v"                -work cpu                                                                     
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_oci_test_bench.v"                           -work cpu                                                                     
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_cpu_test_bench.v"                               -work cpu                                                                     
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2_onchip_mem.v"                                   -work onchip_mem                                                              
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/verbosity_pkg.sv"                                     -work nios2_inst_reset_bfm                                                    
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_avalon_reset_source.sv"                        -work nios2_inst_reset_bfm                                                    
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/verbosity_pkg.sv"                                     -work nios2_inst_clk_bfm                                                      
  vlogan +v2k -sverilog "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/altera_avalon_clock_source.sv"                        -work nios2_inst_clk_bfm                                                      
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/submodules/nios2.v"                                              -work nios2_inst                                                              
  vlogan +v2k           "C:/Users/geoka/Documents/GitHub/uni-projects/nios2_custom_instr/nios2/niosII_hw_dev_tutorial/nios2/testbench/nios2_tb/simulation/nios2_tb.v"                                                                                                                                    
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
