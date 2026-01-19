set SynModuleInfo {
  {SRCNAME mfcc_Pipeline_task_3 MODELNAME mfcc_Pipeline_task_3 RTLNAME mfcc_mfcc_Pipeline_task_3
    SUBMODULES {
      {MODELNAME mfcc_flow_control_loop_pipe_sequential_init RTLNAME mfcc_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mfcc_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mfcc_Pipeline_VITIS_LOOP_180_1 MODELNAME mfcc_Pipeline_VITIS_LOOP_180_1 RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1
    SUBMODULES {
      {MODELNAME mfcc_mul_8ns_16s_24_1_1 RTLNAME mfcc_mul_8ns_16s_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mul_7ns_16s_23_1_1 RTLNAME mfcc_mul_7ns_16s_23_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mul_6ns_16s_22_1_1 RTLNAME mfcc_mul_6ns_16s_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mul_5ns_16s_21_1_1 RTLNAME mfcc_mul_5ns_16s_21_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_first_ind_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_first_ind_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_0_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_1_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_2_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_3_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_4_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_5_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_6_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_7_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_8_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_8_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_9_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_9_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_10_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_10_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_11_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_11_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_12_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_12_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_13_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_13_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_14_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_14_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_15_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_15_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_16_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_16_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_17_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_17_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_18_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_18_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_19_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_19_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_20_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_20_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_21_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_21_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_22_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_22_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_23_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_23_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_24_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_24_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_25_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_25_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_26_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_26_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_27_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_27_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_28_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_28_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_29_ROM_AUTO_1R RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_180_1_mel_filterbank_29_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {log<17, 9>} MODELNAME log_17_9_s RTLNAME mfcc_log_17_9_s
    SUBMODULES {
      {MODELNAME mfcc_mul_29s_6ns_29_2_1 RTLNAME mfcc_mul_29s_6ns_29_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mul_5s_23ns_28_1_1 RTLNAME mfcc_mul_5s_23ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mul_9ns_9ns_18_1_1 RTLNAME mfcc_mul_9ns_9ns_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1 RTLNAME mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_log_17_9_s_log_apfixed_reduce_log_inverse_lut_table_array_ROM_AUTO_1R RTLNAME mfcc_log_17_9_s_log_apfixed_reduce_log_inverse_lut_table_array_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_log_17_9_s_log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array_ROM_AUTO_1R RTLNAME mfcc_log_17_9_s_log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_log_17_9_s_log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array_ROM_AUTO_1R RTLNAME mfcc_log_17_9_s_log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mfcc_Pipeline_VITIS_LOOP_199_1 MODELNAME mfcc_Pipeline_VITIS_LOOP_199_1 RTLNAME mfcc_mfcc_Pipeline_VITIS_LOOP_199_1}
  {SRCNAME mfcc_Pipeline_task_6 MODELNAME mfcc_Pipeline_task_6 RTLNAME mfcc_mfcc_Pipeline_task_6}
  {SRCNAME mfcc MODELNAME mfcc RTLNAME mfcc IS_TOP 1
    SUBMODULES {
      {MODELNAME mfcc_abs_spectrogram_RAM_1WNR_AUTO_1R1W RTLNAME mfcc_abs_spectrogram_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mel_filtered_RAM_AUTO_1R1W RTLNAME mfcc_mel_filtered_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_mfcc_1_RAM_AUTO_1R1W RTLNAME mfcc_mfcc_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mfcc_regslice_both RTLNAME mfcc_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME mfcc_regslice_both_U}
    }
  }
}
