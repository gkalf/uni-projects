
�
Command: %s
53*	vivadotcl2V
Bwrite_bitstream -force -no_partial_bitfile lab3_simple_wrapper.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
�
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2�
�Net lab3_simple_i/Gray_counter_ip_0/inst/Gray_counter_ip_v1_0_S00_AXI_inst/U1/clk_en_reg03_out is a gated clock net sourced by a combinational pin lab3_simple_i/Gray_counter_ip_0/inst/Gray_counter_ip_v1_0_S00_AXI_inst/U1/reset_reg_reg_i_1/O, cell lab3_simple_i/Gray_counter_ip_0/inst/Gray_counter_ip_v1_0_S00_AXI_inst/U1/reset_reg_reg_i_1. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2�
�Net lab3_simple_i/Gray_counter_ip_0/inst/Gray_counter_ip_v1_0_S00_AXI_inst/U1/delay_reg_reg/G0 is a gated clock net sourced by a combinational pin lab3_simple_i/Gray_counter_ip_0/inst/Gray_counter_ip_v1_0_S00_AXI_inst/U1/delay_reg_reg/L3_2/O, cell lab3_simple_i/Gray_counter_ip_0/inst/Gray_counter_ip_v1_0_S00_AXI_inst/U1/delay_reg_reg/L3_2 (in lab3_simple_i/Gray_counter_ip_0/inst/Gray_counter_ip_v1_0_S00_AXI_inst/U1/delay_reg_reg macro). This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px� 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 2 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
j
Writing bitstream %s...
11*	bitstream2-
./lab3_simple_wrapper.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
832default:default2
152default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:192default:default2
00:00:202default:default2
2341.9922default:default2
287.1482default:default2
1282default:default2
33362default:defaultZ17-722h px� 


End Record