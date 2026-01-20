set SynModuleInfo {
  {SRCNAME mfcc_Pipeline_task_2 MODELNAME mfcc_Pipeline_task_2 RTLNAME mfcc_mfcc_Pipeline_task_2
    SUBMODULES {
      {MODELNAME mfcc_flow_control_loop_pipe_sequential_init RTLNAME mfcc_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mfcc_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mfcc_Pipeline_task_6 MODELNAME mfcc_Pipeline_task_6 RTLNAME mfcc_mfcc_Pipeline_task_6}
  {SRCNAME mfcc MODELNAME mfcc RTLNAME mfcc IS_TOP 1
    SUBMODULES {
      {MODELNAME mfcc_regslice_both RTLNAME mfcc_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME mfcc_regslice_both_U}
    }
  }
}
