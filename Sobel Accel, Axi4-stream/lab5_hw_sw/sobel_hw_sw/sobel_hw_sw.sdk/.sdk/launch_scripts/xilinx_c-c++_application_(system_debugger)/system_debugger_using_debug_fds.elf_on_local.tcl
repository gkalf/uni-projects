connect -url tcp:127.0.0.1:3121
source /home/gkmikros/Dropbox/CE435/lab5/lab5_hw_sw/sobel_hw_sw/sobel_hw_sw.sdk/lab3_simple_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248553221"} -index 0
loadhw /home/gkmikros/Dropbox/CE435/lab5/lab5_hw_sw/sobel_hw_sw/sobel_hw_sw.sdk/lab3_simple_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248553221"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248553221"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248553221"} -index 0
dow /home/gkmikros/Dropbox/CE435/lab5/lab5_hw_sw/sobel_hw_sw/sobel_hw_sw.sdk/fds/Debug/fds.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248553221"} -index 0
con
