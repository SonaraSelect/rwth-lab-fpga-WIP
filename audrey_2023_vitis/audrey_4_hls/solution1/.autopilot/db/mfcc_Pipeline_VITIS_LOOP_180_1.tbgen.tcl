set moduleName mfcc_Pipeline_VITIS_LOOP_180_1
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
set C_modelName {mfcc_Pipeline_VITIS_LOOP_180_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ abs_spectrogram int 16 regular {array 257 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 3 } 1 1 }  }
	{ mel_filtered int 16 regular {array 42 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "abs_spectrogram", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mel_filtered", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ abs_spectrogram_address0 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce0 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q0 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address1 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce1 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q1 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address2 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce2 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q2 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address3 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce3 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q3 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address4 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce4 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q4 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address5 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce5 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q5 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address6 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce6 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q6 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address7 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce7 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q7 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address8 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce8 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q8 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address9 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce9 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q9 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address10 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce10 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q10 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address11 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce11 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q11 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address12 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce12 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q12 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address13 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce13 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q13 sc_in sc_lv 16 signal 0 } 
	{ abs_spectrogram_address14 sc_out sc_lv 9 signal 0 } 
	{ abs_spectrogram_ce14 sc_out sc_logic 1 signal 0 } 
	{ abs_spectrogram_q14 sc_in sc_lv 16 signal 0 } 
	{ mel_filtered_address0 sc_out sc_lv 6 signal 1 } 
	{ mel_filtered_ce0 sc_out sc_logic 1 signal 1 } 
	{ mel_filtered_we0 sc_out sc_logic 1 signal 1 } 
	{ mel_filtered_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "abs_spectrogram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address0" }} , 
 	{ "name": "abs_spectrogram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce0" }} , 
 	{ "name": "abs_spectrogram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q0" }} , 
 	{ "name": "abs_spectrogram_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address1" }} , 
 	{ "name": "abs_spectrogram_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce1" }} , 
 	{ "name": "abs_spectrogram_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q1" }} , 
 	{ "name": "abs_spectrogram_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address2" }} , 
 	{ "name": "abs_spectrogram_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce2" }} , 
 	{ "name": "abs_spectrogram_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q2" }} , 
 	{ "name": "abs_spectrogram_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address3" }} , 
 	{ "name": "abs_spectrogram_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce3" }} , 
 	{ "name": "abs_spectrogram_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q3" }} , 
 	{ "name": "abs_spectrogram_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address4" }} , 
 	{ "name": "abs_spectrogram_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce4" }} , 
 	{ "name": "abs_spectrogram_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q4" }} , 
 	{ "name": "abs_spectrogram_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address5" }} , 
 	{ "name": "abs_spectrogram_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce5" }} , 
 	{ "name": "abs_spectrogram_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q5" }} , 
 	{ "name": "abs_spectrogram_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address6" }} , 
 	{ "name": "abs_spectrogram_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce6" }} , 
 	{ "name": "abs_spectrogram_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q6" }} , 
 	{ "name": "abs_spectrogram_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address7" }} , 
 	{ "name": "abs_spectrogram_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce7" }} , 
 	{ "name": "abs_spectrogram_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q7" }} , 
 	{ "name": "abs_spectrogram_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address8" }} , 
 	{ "name": "abs_spectrogram_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce8" }} , 
 	{ "name": "abs_spectrogram_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q8" }} , 
 	{ "name": "abs_spectrogram_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address9" }} , 
 	{ "name": "abs_spectrogram_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce9" }} , 
 	{ "name": "abs_spectrogram_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q9" }} , 
 	{ "name": "abs_spectrogram_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address10" }} , 
 	{ "name": "abs_spectrogram_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce10" }} , 
 	{ "name": "abs_spectrogram_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q10" }} , 
 	{ "name": "abs_spectrogram_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address11" }} , 
 	{ "name": "abs_spectrogram_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce11" }} , 
 	{ "name": "abs_spectrogram_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q11" }} , 
 	{ "name": "abs_spectrogram_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address12" }} , 
 	{ "name": "abs_spectrogram_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce12" }} , 
 	{ "name": "abs_spectrogram_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q12" }} , 
 	{ "name": "abs_spectrogram_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address13" }} , 
 	{ "name": "abs_spectrogram_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce13" }} , 
 	{ "name": "abs_spectrogram_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q13" }} , 
 	{ "name": "abs_spectrogram_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "address14" }} , 
 	{ "name": "abs_spectrogram_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "ce14" }} , 
 	{ "name": "abs_spectrogram_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "abs_spectrogram", "role": "q14" }} , 
 	{ "name": "mel_filtered_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mel_filtered", "role": "address0" }} , 
 	{ "name": "mel_filtered_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mel_filtered", "role": "ce0" }} , 
 	{ "name": "mel_filtered_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mel_filtered", "role": "we0" }} , 
 	{ "name": "mel_filtered_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mel_filtered", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.first_ind_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_9_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_10_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_11_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_12_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_13_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_14_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_15_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_16_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_17_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_18_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_19_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_20_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_21_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_22_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_23_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_24_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_25_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_26_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_27_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_28_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mel_filterbank_29_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U6", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U7", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U8", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U9", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U10", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U11", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U12", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U13", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U14", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U15", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U16", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U17", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_16s_23_1_1_U18", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_16s_22_1_1_U19", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_16s_22_1_1_U20", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_16s_21_1_1_U21", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U22", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U23", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U24", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U25", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U26", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U27", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U28", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U29", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U30", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U31", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U32", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_16s_23_1_1_U33", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_16s_23_1_1_U34", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_16s_23_1_1_U35", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		mel_filterbank_29 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "92", "Max" : "92"}
	, {"Name" : "Interval", "Min" : "92", "Max" : "92"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	abs_spectrogram { ap_memory {  { abs_spectrogram_address0 mem_address 1 9 }  { abs_spectrogram_ce0 mem_ce 1 1 }  { abs_spectrogram_q0 mem_dout 0 16 }  { abs_spectrogram_address1 MemPortADDR2 1 9 }  { abs_spectrogram_ce1 MemPortCE2 1 1 }  { abs_spectrogram_q1 MemPortDOUT2 0 16 }  { abs_spectrogram_address2 MemPortADDR2 1 9 }  { abs_spectrogram_ce2 MemPortCE2 1 1 }  { abs_spectrogram_q2 MemPortDOUT2 0 16 }  { abs_spectrogram_address3 MemPortADDR2 1 9 }  { abs_spectrogram_ce3 MemPortCE2 1 1 }  { abs_spectrogram_q3 MemPortDOUT2 0 16 }  { abs_spectrogram_address4 MemPortADDR2 1 9 }  { abs_spectrogram_ce4 MemPortCE2 1 1 }  { abs_spectrogram_q4 MemPortDOUT2 0 16 }  { abs_spectrogram_address5 MemPortADDR2 1 9 }  { abs_spectrogram_ce5 MemPortCE2 1 1 }  { abs_spectrogram_q5 MemPortDOUT2 0 16 }  { abs_spectrogram_address6 MemPortADDR2 1 9 }  { abs_spectrogram_ce6 MemPortCE2 1 1 }  { abs_spectrogram_q6 MemPortDOUT2 0 16 }  { abs_spectrogram_address7 MemPortADDR2 1 9 }  { abs_spectrogram_ce7 MemPortCE2 1 1 }  { abs_spectrogram_q7 MemPortDOUT2 0 16 }  { abs_spectrogram_address8 MemPortADDR2 1 9 }  { abs_spectrogram_ce8 MemPortCE2 1 1 }  { abs_spectrogram_q8 MemPortDOUT2 0 16 }  { abs_spectrogram_address9 MemPortADDR2 1 9 }  { abs_spectrogram_ce9 MemPortCE2 1 1 }  { abs_spectrogram_q9 MemPortDOUT2 0 16 }  { abs_spectrogram_address10 MemPortADDR2 1 9 }  { abs_spectrogram_ce10 MemPortCE2 1 1 }  { abs_spectrogram_q10 MemPortDOUT2 0 16 }  { abs_spectrogram_address11 MemPortADDR2 1 9 }  { abs_spectrogram_ce11 MemPortCE2 1 1 }  { abs_spectrogram_q11 MemPortDOUT2 0 16 }  { abs_spectrogram_address12 MemPortADDR2 1 9 }  { abs_spectrogram_ce12 MemPortCE2 1 1 }  { abs_spectrogram_q12 MemPortDOUT2 0 16 }  { abs_spectrogram_address13 MemPortADDR2 1 9 }  { abs_spectrogram_ce13 MemPortCE2 1 1 }  { abs_spectrogram_q13 MemPortDOUT2 0 16 }  { abs_spectrogram_address14 MemPortADDR2 1 9 }  { abs_spectrogram_ce14 MemPortCE2 1 1 }  { abs_spectrogram_q14 MemPortDOUT2 0 16 } } }
	mel_filtered { ap_memory {  { mel_filtered_address0 mem_address 1 6 }  { mel_filtered_ce0 mem_ce 1 1 }  { mel_filtered_we0 mem_we 1 1 }  { mel_filtered_d0 mem_din 1 16 } } }
}
