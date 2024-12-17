// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov 17 22:21:23 2024
// Host        : Winferior running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top pm_rom -prefix
//               pm_rom_ pm_rom_stub.v
// Design      : pm_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *)
module pm_rom(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[12:0],dina[0:0],douta[0:0]" */;
  input clka;
  input [0:0]wea;
  input [12:0]addra;
  input [0:0]dina;
  output [0:0]douta;
endmodule
