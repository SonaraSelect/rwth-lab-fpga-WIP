set moduleName mfcc_Pipeline_VITIS_LOOP_199_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {mfcc_Pipeline_VITIS_LOOP_199_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ mel_filtered int 16 regular {array 42 { 1 3 } 1 1 }  }
	{ mfcc_1 int 15 regular {array 42 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "mel_filtered", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mfcc_1", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mel_filtered_address0 sc_out sc_lv 6 signal 0 } 
	{ mel_filtered_ce0 sc_out sc_logic 1 signal 0 } 
	{ mel_filtered_q0 sc_in sc_lv 16 signal 0 } 
	{ mfcc_1_address0 sc_out sc_lv 6 signal 1 } 
	{ mfcc_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ mfcc_1_we0 sc_out sc_logic 1 signal 1 } 
	{ mfcc_1_d0 sc_out sc_lv 15 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mel_filtered_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mel_filtered", "role": "address0" }} , 
 	{ "name": "mel_filtered_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mel_filtered", "role": "ce0" }} , 
 	{ "name": "mel_filtered_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mel_filtered", "role": "q0" }} , 
 	{ "name": "mfcc_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mfcc_1", "role": "address0" }} , 
 	{ "name": "mfcc_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mfcc_1", "role": "ce0" }} , 
 	{ "name": "mfcc_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mfcc_1", "role": "we0" }} , 
 	{ "name": "mfcc_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "mfcc_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "9"],
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
					{"ID" : "1", "SubInstance" : "grp_log_17_9_s_fu_70", "Port" : "log_apfixed_reduce_log_inverse_lut_table_array", "Inst_start_state" : "3", "Inst_end_state" : "13"}]},
			{"Name" : "log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_log_17_9_s_fu_70", "Port" : "log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array", "Inst_start_state" : "3", "Inst_end_state" : "13"}]},
			{"Name" : "log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_log_17_9_s_fu_70", "Port" : "log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array", "Inst_start_state" : "3", "Inst_end_state" : "13"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_log_17_9_s_fu_70", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_17_9_s_fu_70.log_apfixed_reduce_log_inverse_lut_table_array_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_17_9_s_fu_70.log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_17_9_s_fu_70.log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_17_9_s_fu_70.mul_29s_6ns_29_2_1_U73", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_17_9_s_fu_70.mul_5s_23ns_28_1_1_U74", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_17_9_s_fu_70.mul_9ns_9ns_18_1_1_U75", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_17_9_s_fu_70.mac_mulsub_24ns_4ns_29ns_29_4_1_U76", "Parent" : "1"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "55", "Max" : "55"}
	, {"Name" : "Interval", "Min" : "55", "Max" : "55"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mel_filtered { ap_memory {  { mel_filtered_address0 mem_address 1 6 }  { mel_filtered_ce0 mem_ce 1 1 }  { mel_filtered_q0 in_data 0 16 } } }
	mfcc_1 { ap_memory {  { mfcc_1_address0 mem_address 1 6 }  { mfcc_1_ce0 mem_ce 1 1 }  { mfcc_1_we0 mem_we 1 1 }  { mfcc_1_d0 mem_din 1 15 } } }
}
