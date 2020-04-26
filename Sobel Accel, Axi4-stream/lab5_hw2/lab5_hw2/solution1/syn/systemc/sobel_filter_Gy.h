// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __sobel_filter_Gy_H__
#define __sobel_filter_Gy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct sobel_filter_Gy_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 3;
  static const unsigned AddressRange = 9;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(sobel_filter_Gy_ram) {
        ram[0] = "0b001";
        ram[1] = "0b010";
        ram[2] = "0b001";
        ram[3] = "0b000";
        ram[4] = "0b000";
        ram[5] = "0b000";
        ram[6] = "0b111";
        ram[7] = "0b110";
        ram[8] = "0b111";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(sobel_filter_Gy) {


static const unsigned DataWidth = 3;
static const unsigned AddressRange = 9;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sobel_filter_Gy_ram* meminst;


SC_CTOR(sobel_filter_Gy) {
meminst = new sobel_filter_Gy_ram("sobel_filter_Gy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~sobel_filter_Gy() {
    delete meminst;
}


};//endmodule
#endif
