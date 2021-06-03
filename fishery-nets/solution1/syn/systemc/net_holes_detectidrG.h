// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __net_holes_detectidrG__HH__
#define __net_holes_detectidrG__HH__
#include "ACMP_srem.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(net_holes_detectidrG) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_srem<ID, 20, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_srem_U;

    SC_CTOR(net_holes_detectidrG):  ACMP_srem_U ("ACMP_srem_U") {
        ACMP_srem_U.clk(clk);
        ACMP_srem_U.reset(reset);
        ACMP_srem_U.ce(ce);
        ACMP_srem_U.din0(din0);
        ACMP_srem_U.din1(din1);
        ACMP_srem_U.dout(dout);

    }

};

#endif //
