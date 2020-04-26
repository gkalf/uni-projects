set moduleName sobel_filter
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ INPUT_IMAGE_V_data_V int 8 regular {axi_s 0 volatile  { INPUT_IMAGE Data } }  }
	{ INPUT_IMAGE_V_keep_V int 1 regular {axi_s 0 volatile  { INPUT_IMAGE Keep } }  }
	{ INPUT_IMAGE_V_strb_V int 1 regular {axi_s 0 volatile  { INPUT_IMAGE Strb } }  }
	{ INPUT_IMAGE_V_user_V int 2 regular {axi_s 0 volatile  { INPUT_IMAGE User } }  }
	{ INPUT_IMAGE_V_last_V int 1 regular {axi_s 0 volatile  { INPUT_IMAGE Last } }  }
	{ INPUT_IMAGE_V_id_V int 5 regular {axi_s 0 volatile  { INPUT_IMAGE ID } }  }
	{ INPUT_IMAGE_V_dest_V int 6 regular {axi_s 0 volatile  { INPUT_IMAGE Dest } }  }
	{ OUTPUT_IMAGE_V_data_V int 8 regular {axi_s 1 volatile  { OUTPUT_IMAGE Data } }  }
	{ OUTPUT_IMAGE_V_keep_V int 1 regular {axi_s 1 volatile  { OUTPUT_IMAGE Keep } }  }
	{ OUTPUT_IMAGE_V_strb_V int 1 regular {axi_s 1 volatile  { OUTPUT_IMAGE Strb } }  }
	{ OUTPUT_IMAGE_V_user_V int 2 regular {axi_s 1 volatile  { OUTPUT_IMAGE User } }  }
	{ OUTPUT_IMAGE_V_last_V int 1 regular {axi_s 1 volatile  { OUTPUT_IMAGE Last } }  }
	{ OUTPUT_IMAGE_V_id_V int 5 regular {axi_s 1 volatile  { OUTPUT_IMAGE ID } }  }
	{ OUTPUT_IMAGE_V_dest_V int 6 regular {axi_s 1 volatile  { OUTPUT_IMAGE Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "INPUT_IMAGE_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "INPUT_IMAGE.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_IMAGE_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_IMAGE.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_IMAGE_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_IMAGE.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_IMAGE_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "INPUT_IMAGE.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_IMAGE_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_IMAGE.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_IMAGE_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "INPUT_IMAGE.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_IMAGE_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "INPUT_IMAGE.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_IMAGE_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "OUTPUT_IMAGE.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_IMAGE_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_IMAGE.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_IMAGE_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_IMAGE.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_IMAGE_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "OUTPUT_IMAGE.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_IMAGE_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_IMAGE.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_IMAGE_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "OUTPUT_IMAGE.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_IMAGE_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "OUTPUT_IMAGE.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ INPUT_IMAGE_TDATA sc_in sc_lv 8 signal 0 } 
	{ INPUT_IMAGE_TVALID sc_in sc_logic 1 invld 6 } 
	{ INPUT_IMAGE_TREADY sc_out sc_logic 1 inacc 6 } 
	{ INPUT_IMAGE_TKEEP sc_in sc_lv 1 signal 1 } 
	{ INPUT_IMAGE_TSTRB sc_in sc_lv 1 signal 2 } 
	{ INPUT_IMAGE_TUSER sc_in sc_lv 2 signal 3 } 
	{ INPUT_IMAGE_TLAST sc_in sc_lv 1 signal 4 } 
	{ INPUT_IMAGE_TID sc_in sc_lv 5 signal 5 } 
	{ INPUT_IMAGE_TDEST sc_in sc_lv 6 signal 6 } 
	{ OUTPUT_IMAGE_TDATA sc_out sc_lv 8 signal 7 } 
	{ OUTPUT_IMAGE_TVALID sc_out sc_logic 1 outvld 13 } 
	{ OUTPUT_IMAGE_TREADY sc_in sc_logic 1 outacc 7 } 
	{ OUTPUT_IMAGE_TKEEP sc_out sc_lv 1 signal 8 } 
	{ OUTPUT_IMAGE_TSTRB sc_out sc_lv 1 signal 9 } 
	{ OUTPUT_IMAGE_TUSER sc_out sc_lv 2 signal 10 } 
	{ OUTPUT_IMAGE_TLAST sc_out sc_lv 1 signal 11 } 
	{ OUTPUT_IMAGE_TID sc_out sc_lv 5 signal 12 } 
	{ OUTPUT_IMAGE_TDEST sc_out sc_lv 6 signal 13 } 
	{ s_axi_ctrl_bus_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_bus_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctrl_bus_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_bus_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_bus_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctrl_bus_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctrl_bus_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ctrl_bus_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWADDR" },"address":[{"name":"sobel_filter","role":"start","value":"0","valid_bit":"0"},{"name":"sobel_filter","role":"continue","value":"0","valid_bit":"4"},{"name":"sobel_filter","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_bus_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_bus_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_bus_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_bus_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_bus_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_bus_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_bus_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARADDR" },"address":[{"name":"sobel_filter","role":"start","value":"0","valid_bit":"0"},{"name":"sobel_filter","role":"done","value":"0","valid_bit":"1"},{"name":"sobel_filter","role":"idle","value":"0","valid_bit":"2"},{"name":"sobel_filter","role":"ready","value":"0","valid_bit":"3"},{"name":"sobel_filter","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_bus_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARVALID" } },
	{ "name": "s_axi_ctrl_bus_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARREADY" } },
	{ "name": "s_axi_ctrl_bus_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RVALID" } },
	{ "name": "s_axi_ctrl_bus_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RREADY" } },
	{ "name": "s_axi_ctrl_bus_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RDATA" } },
	{ "name": "s_axi_ctrl_bus_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RRESP" } },
	{ "name": "s_axi_ctrl_bus_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BVALID" } },
	{ "name": "s_axi_ctrl_bus_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BREADY" } },
	{ "name": "s_axi_ctrl_bus_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "INPUT_IMAGE_V_data_V", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "INPUT_IMAGE_V_dest_V", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "INPUT_IMAGE_V_dest_V", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_IMAGE_V_keep_V", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_IMAGE_V_strb_V", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_IMAGE_V_user_V", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_IMAGE_V_last_V", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "INPUT_IMAGE_V_id_V", "role": "default" }} , 
 	{ "name": "INPUT_IMAGE_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "INPUT_IMAGE_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUTPUT_IMAGE_V_data_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OUTPUT_IMAGE_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "OUTPUT_IMAGE_V_data_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_IMAGE_V_keep_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_IMAGE_V_strb_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_IMAGE_V_user_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_IMAGE_V_last_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OUTPUT_IMAGE_V_id_V", "role": "default" }} , 
 	{ "name": "OUTPUT_IMAGE_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OUTPUT_IMAGE_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "sobel_filter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3149844", "EstimateLatencyMax" : "29364244",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "INPUT_IMAGE_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "INPUT_IMAGE_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "INPUT_IMAGE_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_IMAGE_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_IMAGE_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_IMAGE_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_IMAGE_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_IMAGE_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "OUTPUT_IMAGE_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUTPUT_IMAGE_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OUTPUT_IMAGE_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_IMAGE_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_IMAGE_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_IMAGE_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_IMAGE_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_IMAGE_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "Gx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Gy", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Gx_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Gy_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_filter_ctrl_bus_s_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixelbuffer_val_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixelbuffer_val_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_filter_mux_dEe_U1", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_filter_mac_eOg_U2", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_filter_mac_eOg_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sobel_filter {
		INPUT_IMAGE_V_data_V {Type I LastRead 4 FirstWrite -1}
		INPUT_IMAGE_V_keep_V {Type I LastRead 4 FirstWrite -1}
		INPUT_IMAGE_V_strb_V {Type I LastRead 4 FirstWrite -1}
		INPUT_IMAGE_V_user_V {Type I LastRead 4 FirstWrite -1}
		INPUT_IMAGE_V_last_V {Type I LastRead 4 FirstWrite -1}
		INPUT_IMAGE_V_id_V {Type I LastRead 4 FirstWrite -1}
		INPUT_IMAGE_V_dest_V {Type I LastRead 4 FirstWrite -1}
		OUTPUT_IMAGE_V_data_V {Type O LastRead -1 FirstWrite 2}
		OUTPUT_IMAGE_V_keep_V {Type O LastRead -1 FirstWrite 2}
		OUTPUT_IMAGE_V_strb_V {Type O LastRead -1 FirstWrite 2}
		OUTPUT_IMAGE_V_user_V {Type O LastRead -1 FirstWrite 2}
		OUTPUT_IMAGE_V_last_V {Type O LastRead -1 FirstWrite 2}
		OUTPUT_IMAGE_V_id_V {Type O LastRead -1 FirstWrite 2}
		OUTPUT_IMAGE_V_dest_V {Type O LastRead -1 FirstWrite 2}
		Gx {Type I LastRead -1 FirstWrite -1}
		Gy {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3149844", "Max" : "29364244"}
	, {"Name" : "Interval", "Min" : "3149845", "Max" : "29364245"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	INPUT_IMAGE_V_data_V { axis {  { INPUT_IMAGE_TDATA in_data 0 8 } } }
	INPUT_IMAGE_V_keep_V { axis {  { INPUT_IMAGE_TKEEP in_data 0 1 } } }
	INPUT_IMAGE_V_strb_V { axis {  { INPUT_IMAGE_TSTRB in_data 0 1 } } }
	INPUT_IMAGE_V_user_V { axis {  { INPUT_IMAGE_TUSER in_data 0 2 } } }
	INPUT_IMAGE_V_last_V { axis {  { INPUT_IMAGE_TLAST in_data 0 1 } } }
	INPUT_IMAGE_V_id_V { axis {  { INPUT_IMAGE_TID in_data 0 5 } } }
	INPUT_IMAGE_V_dest_V { axis {  { INPUT_IMAGE_TVALID in_vld 0 1 }  { INPUT_IMAGE_TREADY in_acc 1 1 }  { INPUT_IMAGE_TDEST in_data 0 6 } } }
	OUTPUT_IMAGE_V_data_V { axis {  { OUTPUT_IMAGE_TDATA out_data 1 8 }  { OUTPUT_IMAGE_TREADY out_acc 0 1 } } }
	OUTPUT_IMAGE_V_keep_V { axis {  { OUTPUT_IMAGE_TKEEP out_data 1 1 } } }
	OUTPUT_IMAGE_V_strb_V { axis {  { OUTPUT_IMAGE_TSTRB out_data 1 1 } } }
	OUTPUT_IMAGE_V_user_V { axis {  { OUTPUT_IMAGE_TUSER out_data 1 2 } } }
	OUTPUT_IMAGE_V_last_V { axis {  { OUTPUT_IMAGE_TLAST out_data 1 1 } } }
	OUTPUT_IMAGE_V_id_V { axis {  { OUTPUT_IMAGE_TID out_data 1 5 } } }
	OUTPUT_IMAGE_V_dest_V { axis {  { OUTPUT_IMAGE_TVALID out_vld 1 1 }  { OUTPUT_IMAGE_TDEST out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
