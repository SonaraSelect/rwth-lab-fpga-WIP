// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1__HH__
#define __mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1__HH__
#include "mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0 mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U;

    SC_CTOR(mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1):  mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U ("mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U") {
        mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U.clk(clk);
        mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U.rst(reset);
        mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U.ce(ce);
        mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U.in0(din0);
        mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U.in1(din1);
        mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U.in2(din2);
        mfcc_mac_mulsub_24ns_4ns_29ns_29_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
