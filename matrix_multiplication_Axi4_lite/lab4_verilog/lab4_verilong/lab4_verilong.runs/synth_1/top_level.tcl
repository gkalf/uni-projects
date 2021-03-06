# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/gkmikros/Dropbox/CE435/lab4/lab4_verilog/lab4_verilong/lab4_verilong.cache/wt [current_project]
set_property parent.project_path /home/gkmikros/Dropbox/CE435/lab4/lab4_verilog/lab4_verilong/lab4_verilong.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_output_repo /home/gkmikros/Dropbox/CE435/lab4/lab4_verilog/lab4_verilong/lab4_verilong.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/gkmikros/Dropbox/CE435/lab4/lab4_verilog/lab4_verilong/lab4_verilong.srcs/sources_1/imports/lab4_verilog/RAM.v
  /home/gkmikros/Dropbox/CE435/lab4/lab4_verilog/lab4_verilong/lab4_verilong.srcs/sources_1/imports/lab4_verilog/top_level.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top top_level -part xc7z020clg484-1


write_checkpoint -force -noxdef top_level.dcp

catch { report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb }
