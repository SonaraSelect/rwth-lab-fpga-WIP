set ModuleHierarchy {[{
"Name" : "mfcc","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_mfcc_Pipeline_task_3_fu_138","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "task_3","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_mfcc_Pipeline_VITIS_LOOP_180_1_fu_151","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_180_1","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_mfcc_Pipeline_VITIS_LOOP_199_1_fu_219","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_199_1","ID" : "6","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_log_17_9_s_fu_70","ID" : "7","Type" : "pipeline"},]},]},
	{"Name" : "grp_mfcc_Pipeline_task_6_fu_231","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "task_6","ID" : "9","Type" : "pipeline"},]},]
}]}