set moduleName mfcc
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {mfcc}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V_data_V int 16 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 2 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 2 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ out_stream_V_data_V int 16 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 2 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 2 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_stream_TDATA sc_in sc_lv 16 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 3 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 3 } 
	{ in_stream_TKEEP sc_in sc_lv 2 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 2 signal 2 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 3 } 
	{ out_stream_TDATA sc_out sc_lv 16 signal 4 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 7 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 7 } 
	{ out_stream_TKEEP sc_out sc_lv 2 signal 5 } 
	{ out_stream_TSTRB sc_out sc_lv 2 signal 6 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "69", "79", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "mfcc",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "459", "EstimateLatencyMax" : "459",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mfcc_Pipeline_task_3_fu_138", "Port" : "in_stream_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mfcc_Pipeline_task_3_fu_138", "Port" : "in_stream_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mfcc_Pipeline_task_3_fu_138", "Port" : "in_stream_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mfcc_Pipeline_task_3_fu_138", "Port" : "in_stream_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_mfcc_Pipeline_task_6_fu_231", "Port" : "out_stream_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_mfcc_Pipeline_task_6_fu_231", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_mfcc_Pipeline_task_6_fu_231", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_mfcc_Pipeline_task_6_fu_231", "Port" : "out_stream_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "first_ind", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "first_ind", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_8", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_9", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_10", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_11", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_12", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_13", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_14", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_15", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_16", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_17", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_18", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_19", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_20", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_21", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_22", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_23", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_24", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_25", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_26", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_27", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_28", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mel_filterbank_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Port" : "mel_filterbank_29", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "log_apfixed_reduce_log_inverse_lut_table_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219", "Port" : "log_apfixed_reduce_log_inverse_lut_table_array", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219", "Port" : "log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219", "Port" : "log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.abs_spectrogram_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filtered_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mfcc_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_task_3_fu_138", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "mfcc_Pipeline_task_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "abs_spectrogram", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "task_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_task_3_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68"],
		"CDFG" : "mfcc_Pipeline_VITIS_LOOP_180_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "92", "EstimateLatencyMax" : "92",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "abs_spectrogram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filtered", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "first_ind", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mel_filterbank_29", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.first_ind_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_0_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_1_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_2_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_3_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_4_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_5_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_6_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_7_U", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_8_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_9_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_10_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_11_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_12_U", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_13_U", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_14_U", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_15_U", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_16_U", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_17_U", "Parent" : "6"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_18_U", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_19_U", "Parent" : "6"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_20_U", "Parent" : "6"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_21_U", "Parent" : "6"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_22_U", "Parent" : "6"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_23_U", "Parent" : "6"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_24_U", "Parent" : "6"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_25_U", "Parent" : "6"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_26_U", "Parent" : "6"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_27_U", "Parent" : "6"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_28_U", "Parent" : "6"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mel_filterbank_29_U", "Parent" : "6"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U6", "Parent" : "6"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U7", "Parent" : "6"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U8", "Parent" : "6"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U9", "Parent" : "6"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U10", "Parent" : "6"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U11", "Parent" : "6"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U12", "Parent" : "6"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U13", "Parent" : "6"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U14", "Parent" : "6"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U15", "Parent" : "6"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U16", "Parent" : "6"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U17", "Parent" : "6"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_7ns_16s_23_1_1_U18", "Parent" : "6"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_6ns_16s_22_1_1_U19", "Parent" : "6"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_6ns_16s_22_1_1_U20", "Parent" : "6"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_5ns_16s_21_1_1_U21", "Parent" : "6"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U22", "Parent" : "6"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U23", "Parent" : "6"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U24", "Parent" : "6"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U25", "Parent" : "6"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U26", "Parent" : "6"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U27", "Parent" : "6"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U28", "Parent" : "6"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U29", "Parent" : "6"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U30", "Parent" : "6"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U31", "Parent" : "6"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_8ns_16s_24_1_1_U32", "Parent" : "6"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_7ns_16s_23_1_1_U33", "Parent" : "6"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_7ns_16s_23_1_1_U34", "Parent" : "6"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.mul_7ns_16s_23_1_1_U35", "Parent" : "6"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219", "Parent" : "0", "Child" : ["70", "78"],
		"CDFG" : "mfcc_Pipeline_VITIS_LOOP_199_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mel_filtered", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mfcc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "log_apfixed_reduce_log_inverse_lut_table_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_log_17_9_s_fu_70", "Port" : "log_apfixed_reduce_log_inverse_lut_table_array", "Inst_start_state" : "3", "Inst_end_state" : "13"}]},
			{"Name" : "log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_log_17_9_s_fu_70", "Port" : "log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array", "Inst_start_state" : "3", "Inst_end_state" : "13"}]},
			{"Name" : "log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_log_17_9_s_fu_70", "Port" : "log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array", "Inst_start_state" : "3", "Inst_end_state" : "13"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.grp_log_17_9_s_fu_70", "Parent" : "69", "Child" : ["71", "72", "73", "74", "75", "76", "77"],
		"CDFG" : "log_17_9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "log_apfixed_reduce_log_inverse_lut_table_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.grp_log_17_9_s_fu_70.log_apfixed_reduce_log_inverse_lut_table_array_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.grp_log_17_9_s_fu_70.log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.grp_log_17_9_s_fu_70.log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.grp_log_17_9_s_fu_70.mul_29s_6ns_29_2_1_U73", "Parent" : "70"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.grp_log_17_9_s_fu_70.mul_5s_23ns_28_1_1_U74", "Parent" : "70"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.grp_log_17_9_s_fu_70.mul_9ns_9ns_18_1_1_U75", "Parent" : "70"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.grp_log_17_9_s_fu_70.mac_mulsub_24ns_4ns_29ns_29_4_1_U76", "Parent" : "70"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_task_6_fu_231", "Parent" : "0", "Child" : ["80"],
		"CDFG" : "mfcc_Pipeline_task_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mfcc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"}],
		"Loop" : [
			{"Name" : "task_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mfcc_Pipeline_task_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mfcc {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		first_ind {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_0 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_1 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_2 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_3 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_4 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_5 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_6 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_7 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_8 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_9 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_10 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_11 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_12 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_13 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_14 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_15 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_16 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_17 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_18 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_19 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_20 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_21 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_22 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_23 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_24 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_25 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_26 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_27 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_28 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_29 {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_inverse_lut_table_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}
	mfcc_Pipeline_task_3 {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		abs_spectrogram {Type O LastRead -1 FirstWrite 0}}
	mfcc_Pipeline_VITIS_LOOP_180_1 {
		abs_spectrogram {Type I LastRead 4 FirstWrite -1}
		mel_filtered {Type O LastRead -1 FirstWrite 8}
		first_ind {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_0 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_1 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_2 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_3 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_4 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_5 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_6 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_7 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_8 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_9 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_10 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_11 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_12 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_13 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_14 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_15 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_16 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_17 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_18 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_19 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_20 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_21 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_22 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_23 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_24 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_25 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_26 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_27 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_28 {Type I LastRead -1 FirstWrite -1}
		mel_filterbank_29 {Type I LastRead -1 FirstWrite -1}}
	mfcc_Pipeline_VITIS_LOOP_199_1 {
		mel_filtered {Type I LastRead 0 FirstWrite -1}
		mfcc_1 {Type O LastRead -1 FirstWrite 12}
		log_apfixed_reduce_log_inverse_lut_table_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}
	log_17_9_s {
		x_val {Type I LastRead 0 FirstWrite -1}
		log_apfixed_reduce_log_inverse_lut_table_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}
	mfcc_Pipeline_task_6 {
		mfcc_1 {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "459", "Max" : "459"}
	, {"Name" : "Interval", "Min" : "460", "Max" : "460"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 16 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 2 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 2 } } }
	in_stream_V_last_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TLAST in_data 0 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 16 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 2 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 2 } } }
	out_stream_V_last_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TLAST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

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
