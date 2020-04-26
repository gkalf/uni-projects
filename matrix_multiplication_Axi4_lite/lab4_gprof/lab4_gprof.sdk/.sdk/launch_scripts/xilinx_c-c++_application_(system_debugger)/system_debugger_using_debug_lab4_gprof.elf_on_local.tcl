connect -url tcp:127.0.0.1:3121
source /home/gkmikros/Dropbox/CE435/lab4/lab4_gprof/lab4_gprof.sdk/lab3_simple_wrapper_hw_platform_1/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248650715" && level==0} -index 1
fpga -file /home/gkmikros/Dropbox/CE435/lab4/lab4_gprof/lab4_gprof.sdk/lab3_simple_wrapper_hw_platform_1/lab3_simple_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248650715"} -index 0
loadhw /home/gkmikros/Dropbox/CE435/lab4/lab4_gprof/lab4_gprof.sdk/lab3_simple_wrapper_hw_platform_1/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248650715"} -index 0
stop
ps7_init
ps7_post_config
