module ComplexAdd(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) + $signed(io_op2_re); // @[Modules.scala 74:57]
  assign io_res_im = $signed(io_op1_im) + $signed(io_op2_im); // @[Modules.scala 75:57]
endmodule
module ComplexSub(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) - $signed(io_op2_re); // @[Modules.scala 93:57]
  assign io_res_im = $signed(io_op1_im) - $signed(io_op2_im); // @[Modules.scala 94:57]
endmodule
module ComplexAdd_4(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) + $signed(io_op2_re); // @[Modules.scala 74:57]
  assign io_res_im = $signed(io_op1_im) + $signed(io_op2_im); // @[Modules.scala 75:57]
endmodule
module ComplexSub_4(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) - $signed(io_op2_re); // @[Modules.scala 93:57]
  assign io_res_im = $signed(io_op1_im) - $signed(io_op2_im); // @[Modules.scala 94:57]
endmodule
module ComplexTran(
  input  [16:0] io_in_re,
  input  [16:0] io_in_im,
  output [16:0] io_out_re,
  output [16:0] io_out_im
);
  assign io_out_re = io_in_im; // @[Modules.scala 116:15]
  assign io_out_im = 17'sh0 - $signed(io_in_re); // @[Modules.scala 117:18]
endmodule
module ComplexMul(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  wire [16:0] _k1_T_5 = $signed(io_op1_re) + $signed(io_op1_im); // @[Modules.scala 144:97]
  wire [33:0] k1 = 17'shb50 * $signed(_k1_T_5); // @[Modules.scala 144:55]
  wire [16:0] _k2_T_5 = -17'shb50 - 17'shb50; // @[Modules.scala 145:97]
  wire [33:0] k2 = $signed(io_op1_re) * $signed(_k2_T_5); // @[Modules.scala 145:55]
  wire [33:0] k3 = $signed(io_op1_im) * 17'sh0; // @[Modules.scala 146:55]
  wire [33:0] _io_res_re_T_2 = $signed(k1) - $signed(k3); // @[Modules.scala 147:23]
  wire [33:0] _io_res_im_T_2 = $signed(k1) + $signed(k2); // @[Modules.scala 148:23]
  wire [21:0] _GEN_0 = _io_res_re_T_2[33:12]; // @[Modules.scala 147:17]
  wire [21:0] _GEN_2 = _io_res_im_T_2[33:12]; // @[Modules.scala 148:17]
  assign io_res_re = _GEN_0[16:0]; // @[Modules.scala 147:17]
  assign io_res_im = _GEN_2[16:0]; // @[Modules.scala 148:17]
endmodule
module ComplexMul_4(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  wire [16:0] _k1_T_5 = $signed(io_op1_re) + $signed(io_op1_im); // @[Modules.scala 144:97]
  wire [33:0] k1 = $signed(io_op2_re) * $signed(_k1_T_5); // @[Modules.scala 144:55]
  wire [16:0] _k2_T_5 = $signed(io_op2_im) - $signed(io_op2_re); // @[Modules.scala 145:97]
  wire [33:0] k2 = $signed(io_op1_re) * $signed(_k2_T_5); // @[Modules.scala 145:55]
  wire [16:0] _k3_T_5 = $signed(io_op2_re) + $signed(io_op2_im); // @[Modules.scala 146:97]
  wire [33:0] k3 = $signed(io_op1_im) * $signed(_k3_T_5); // @[Modules.scala 146:55]
  wire [33:0] _io_res_re_T_2 = $signed(k1) - $signed(k3); // @[Modules.scala 147:23]
  wire [33:0] _io_res_im_T_2 = $signed(k1) + $signed(k2); // @[Modules.scala 148:23]
  wire [21:0] _GEN_0 = _io_res_re_T_2[33:12]; // @[Modules.scala 147:17]
  wire [21:0] _GEN_2 = _io_res_im_T_2[33:12]; // @[Modules.scala 148:17]
  assign io_res_re = _GEN_0[16:0]; // @[Modules.scala 147:17]
  assign io_res_im = _GEN_2[16:0]; // @[Modules.scala 148:17]
endmodule
module ButterflyMul(
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  input  [16:0] io_in_2_re,
  input  [16:0] io_in_2_im,
  input  [16:0] io_in_3_re,
  input  [16:0] io_in_3_im,
  input  [16:0] io_in_4_re,
  input  [16:0] io_in_4_im,
  input  [16:0] io_in_5_re,
  input  [16:0] io_in_5_im,
  input  [16:0] io_in_6_re,
  input  [16:0] io_in_6_im,
  input  [16:0] io_in_7_re,
  input  [16:0] io_in_7_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im,
  output [16:0] io_out_4_re,
  output [16:0] io_out_4_im,
  output [16:0] io_out_5_re,
  output [16:0] io_out_5_im,
  output [16:0] io_out_6_re,
  output [16:0] io_out_6_im,
  output [16:0] io_out_7_re,
  output [16:0] io_out_7_im,
  input  [16:0] io_wn_0_re,
  input  [16:0] io_wn_0_im,
  input  [16:0] io_wn_1_re,
  input  [16:0] io_wn_1_im,
  input  [16:0] io_wn_2_re,
  input  [16:0] io_wn_2_im,
  input  [16:0] io_wn_3_re,
  input  [16:0] io_wn_3_im,
  input  [16:0] io_wn_4_re,
  input  [16:0] io_wn_4_im,
  input  [16:0] io_wn_5_re,
  input  [16:0] io_wn_5_im,
  input  [16:0] io_wn_6_re,
  input  [16:0] io_wn_6_im
);
  wire [16:0] temp_data_0_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_4_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] A02_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] S02_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] A13_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] S13_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] A46_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] A46_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] A46_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] A46_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] A46_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] S46_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] S46_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] S46_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] S46_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] S46_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] A57_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] A57_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] A57_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] A57_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] A57_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] S57_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] S57_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] S57_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] S57_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] S57_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_0_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_3_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_4_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] temp_4_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] temp_4_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] temp_4_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] temp_4_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_4_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_4_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_4_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_4_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_4_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_5_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] temp_5_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] temp_5_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] temp_5_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] temp_5_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_5_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_5_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_5_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_5_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_5_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_6_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] temp_6_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] temp_6_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] temp_6_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] temp_6_inst_1_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] temp_6_inst_1_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] temp_6_inst_1_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] temp_6_inst_1_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] temp_6_inst_2_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_6_inst_2_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_6_inst_2_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_6_inst_2_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_6_inst_2_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_6_inst_2_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_7_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] temp_7_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] temp_7_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] temp_7_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] temp_7_inst_1_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] temp_7_inst_1_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] temp_7_inst_1_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] temp_7_inst_1_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] temp_7_inst_2_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_7_inst_2_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_7_inst_2_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_7_inst_2_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_7_inst_2_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_7_inst_2_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_res_im; // @[Modules.scala 158:22]
  ComplexAdd temp_data_0_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_data_0_inst_io_op1_re),
    .io_op1_im(temp_data_0_inst_io_op1_im),
    .io_op2_re(temp_data_0_inst_io_op2_re),
    .io_op2_im(temp_data_0_inst_io_op2_im),
    .io_res_re(temp_data_0_inst_io_res_re),
    .io_res_im(temp_data_0_inst_io_res_im)
  );
  ComplexAdd temp_data_1_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_data_1_inst_io_op1_re),
    .io_op1_im(temp_data_1_inst_io_op1_im),
    .io_op2_re(temp_data_1_inst_io_op2_re),
    .io_op2_im(temp_data_1_inst_io_op2_im),
    .io_res_re(temp_data_1_inst_io_res_re),
    .io_res_im(temp_data_1_inst_io_res_im)
  );
  ComplexAdd temp_data_2_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_data_2_inst_io_op1_re),
    .io_op1_im(temp_data_2_inst_io_op1_im),
    .io_op2_re(temp_data_2_inst_io_op2_re),
    .io_op2_im(temp_data_2_inst_io_op2_im),
    .io_res_re(temp_data_2_inst_io_res_re),
    .io_res_im(temp_data_2_inst_io_res_im)
  );
  ComplexAdd temp_data_3_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_data_3_inst_io_op1_re),
    .io_op1_im(temp_data_3_inst_io_op1_im),
    .io_op2_re(temp_data_3_inst_io_op2_re),
    .io_op2_im(temp_data_3_inst_io_op2_im),
    .io_res_re(temp_data_3_inst_io_res_re),
    .io_res_im(temp_data_3_inst_io_res_im)
  );
  ComplexSub temp_data_4_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_data_4_inst_io_op1_re),
    .io_op1_im(temp_data_4_inst_io_op1_im),
    .io_op2_re(temp_data_4_inst_io_op2_re),
    .io_op2_im(temp_data_4_inst_io_op2_im),
    .io_res_re(temp_data_4_inst_io_res_re),
    .io_res_im(temp_data_4_inst_io_res_im)
  );
  ComplexSub temp_data_5_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_data_5_inst_io_op1_re),
    .io_op1_im(temp_data_5_inst_io_op1_im),
    .io_op2_re(temp_data_5_inst_io_op2_re),
    .io_op2_im(temp_data_5_inst_io_op2_im),
    .io_res_re(temp_data_5_inst_io_res_re),
    .io_res_im(temp_data_5_inst_io_res_im)
  );
  ComplexSub temp_data_6_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_data_6_inst_io_op1_re),
    .io_op1_im(temp_data_6_inst_io_op1_im),
    .io_op2_re(temp_data_6_inst_io_op2_re),
    .io_op2_im(temp_data_6_inst_io_op2_im),
    .io_res_re(temp_data_6_inst_io_res_re),
    .io_res_im(temp_data_6_inst_io_res_im)
  );
  ComplexSub temp_data_7_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_data_7_inst_io_op1_re),
    .io_op1_im(temp_data_7_inst_io_op1_im),
    .io_op2_re(temp_data_7_inst_io_op2_re),
    .io_op2_im(temp_data_7_inst_io_op2_im),
    .io_res_re(temp_data_7_inst_io_res_re),
    .io_res_im(temp_data_7_inst_io_res_im)
  );
  ComplexAdd_4 A02_inst ( // @[Modules.scala 81:22]
    .io_op1_re(A02_inst_io_op1_re),
    .io_op1_im(A02_inst_io_op1_im),
    .io_op2_re(A02_inst_io_op2_re),
    .io_op2_im(A02_inst_io_op2_im),
    .io_res_re(A02_inst_io_res_re),
    .io_res_im(A02_inst_io_res_im)
  );
  ComplexSub_4 S02_inst ( // @[Modules.scala 100:22]
    .io_op1_re(S02_inst_io_op1_re),
    .io_op1_im(S02_inst_io_op1_im),
    .io_op2_re(S02_inst_io_op2_re),
    .io_op2_im(S02_inst_io_op2_im),
    .io_res_re(S02_inst_io_res_re),
    .io_res_im(S02_inst_io_res_im)
  );
  ComplexAdd_4 A13_inst ( // @[Modules.scala 81:22]
    .io_op1_re(A13_inst_io_op1_re),
    .io_op1_im(A13_inst_io_op1_im),
    .io_op2_re(A13_inst_io_op2_re),
    .io_op2_im(A13_inst_io_op2_im),
    .io_res_re(A13_inst_io_res_re),
    .io_res_im(A13_inst_io_res_im)
  );
  ComplexSub_4 S13_inst ( // @[Modules.scala 100:22]
    .io_op1_re(S13_inst_io_op1_re),
    .io_op1_im(S13_inst_io_op1_im),
    .io_op2_re(S13_inst_io_op2_re),
    .io_op2_im(S13_inst_io_op2_im),
    .io_res_re(S13_inst_io_res_re),
    .io_res_im(S13_inst_io_res_im)
  );
  ComplexTran A46_inst ( // @[Modules.scala 123:22]
    .io_in_re(A46_inst_io_in_re),
    .io_in_im(A46_inst_io_in_im),
    .io_out_re(A46_inst_io_out_re),
    .io_out_im(A46_inst_io_out_im)
  );
  ComplexAdd_4 A46_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(A46_inst_1_io_op1_re),
    .io_op1_im(A46_inst_1_io_op1_im),
    .io_op2_re(A46_inst_1_io_op2_re),
    .io_op2_im(A46_inst_1_io_op2_im),
    .io_res_re(A46_inst_1_io_res_re),
    .io_res_im(A46_inst_1_io_res_im)
  );
  ComplexTran S46_inst ( // @[Modules.scala 123:22]
    .io_in_re(S46_inst_io_in_re),
    .io_in_im(S46_inst_io_in_im),
    .io_out_re(S46_inst_io_out_re),
    .io_out_im(S46_inst_io_out_im)
  );
  ComplexSub_4 S46_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(S46_inst_1_io_op1_re),
    .io_op1_im(S46_inst_1_io_op1_im),
    .io_op2_re(S46_inst_1_io_op2_re),
    .io_op2_im(S46_inst_1_io_op2_im),
    .io_res_re(S46_inst_1_io_res_re),
    .io_res_im(S46_inst_1_io_res_im)
  );
  ComplexTran A57_inst ( // @[Modules.scala 123:22]
    .io_in_re(A57_inst_io_in_re),
    .io_in_im(A57_inst_io_in_im),
    .io_out_re(A57_inst_io_out_re),
    .io_out_im(A57_inst_io_out_im)
  );
  ComplexAdd_4 A57_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(A57_inst_1_io_op1_re),
    .io_op1_im(A57_inst_1_io_op1_im),
    .io_op2_re(A57_inst_1_io_op2_re),
    .io_op2_im(A57_inst_1_io_op2_im),
    .io_res_re(A57_inst_1_io_res_re),
    .io_res_im(A57_inst_1_io_res_im)
  );
  ComplexTran S57_inst ( // @[Modules.scala 123:22]
    .io_in_re(S57_inst_io_in_re),
    .io_in_im(S57_inst_io_in_im),
    .io_out_re(S57_inst_io_out_re),
    .io_out_im(S57_inst_io_out_im)
  );
  ComplexSub_4 S57_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(S57_inst_1_io_op1_re),
    .io_op1_im(S57_inst_1_io_op1_im),
    .io_op2_re(S57_inst_1_io_op2_re),
    .io_op2_im(S57_inst_1_io_op2_im),
    .io_res_re(S57_inst_1_io_res_re),
    .io_res_im(S57_inst_1_io_res_im)
  );
  ComplexAdd temp_0_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_0_inst_io_op1_re),
    .io_op1_im(temp_0_inst_io_op1_im),
    .io_op2_re(temp_0_inst_io_op2_re),
    .io_op2_im(temp_0_inst_io_op2_im),
    .io_res_re(temp_0_inst_io_res_re),
    .io_res_im(temp_0_inst_io_res_im)
  );
  ComplexSub temp_1_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_1_inst_io_op1_re),
    .io_op1_im(temp_1_inst_io_op1_im),
    .io_op2_re(temp_1_inst_io_op2_re),
    .io_op2_im(temp_1_inst_io_op2_im),
    .io_res_re(temp_1_inst_io_res_re),
    .io_res_im(temp_1_inst_io_res_im)
  );
  ComplexTran temp_2_inst ( // @[Modules.scala 123:22]
    .io_in_re(temp_2_inst_io_in_re),
    .io_in_im(temp_2_inst_io_in_im),
    .io_out_re(temp_2_inst_io_out_re),
    .io_out_im(temp_2_inst_io_out_im)
  );
  ComplexAdd temp_2_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_2_inst_1_io_op1_re),
    .io_op1_im(temp_2_inst_1_io_op1_im),
    .io_op2_re(temp_2_inst_1_io_op2_re),
    .io_op2_im(temp_2_inst_1_io_op2_im),
    .io_res_re(temp_2_inst_1_io_res_re),
    .io_res_im(temp_2_inst_1_io_res_im)
  );
  ComplexTran temp_3_inst ( // @[Modules.scala 123:22]
    .io_in_re(temp_3_inst_io_in_re),
    .io_in_im(temp_3_inst_io_in_im),
    .io_out_re(temp_3_inst_io_out_re),
    .io_out_im(temp_3_inst_io_out_im)
  );
  ComplexSub temp_3_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_3_inst_1_io_op1_re),
    .io_op1_im(temp_3_inst_1_io_op1_im),
    .io_op2_re(temp_3_inst_1_io_op2_re),
    .io_op2_im(temp_3_inst_1_io_op2_im),
    .io_res_re(temp_3_inst_1_io_res_re),
    .io_res_im(temp_3_inst_1_io_res_im)
  );
  ComplexMul temp_4_inst ( // @[Modules.scala 158:22]
    .io_op1_re(temp_4_inst_io_op1_re),
    .io_op1_im(temp_4_inst_io_op1_im),
    .io_res_re(temp_4_inst_io_res_re),
    .io_res_im(temp_4_inst_io_res_im)
  );
  ComplexAdd temp_4_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_4_inst_1_io_op1_re),
    .io_op1_im(temp_4_inst_1_io_op1_im),
    .io_op2_re(temp_4_inst_1_io_op2_re),
    .io_op2_im(temp_4_inst_1_io_op2_im),
    .io_res_re(temp_4_inst_1_io_res_re),
    .io_res_im(temp_4_inst_1_io_res_im)
  );
  ComplexMul temp_5_inst ( // @[Modules.scala 158:22]
    .io_op1_re(temp_5_inst_io_op1_re),
    .io_op1_im(temp_5_inst_io_op1_im),
    .io_res_re(temp_5_inst_io_res_re),
    .io_res_im(temp_5_inst_io_res_im)
  );
  ComplexSub temp_5_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_5_inst_1_io_op1_re),
    .io_op1_im(temp_5_inst_1_io_op1_im),
    .io_op2_re(temp_5_inst_1_io_op2_re),
    .io_op2_im(temp_5_inst_1_io_op2_im),
    .io_res_re(temp_5_inst_1_io_res_re),
    .io_res_im(temp_5_inst_1_io_res_im)
  );
  ComplexMul temp_6_inst ( // @[Modules.scala 158:22]
    .io_op1_re(temp_6_inst_io_op1_re),
    .io_op1_im(temp_6_inst_io_op1_im),
    .io_res_re(temp_6_inst_io_res_re),
    .io_res_im(temp_6_inst_io_res_im)
  );
  ComplexTran temp_6_inst_1 ( // @[Modules.scala 123:22]
    .io_in_re(temp_6_inst_1_io_in_re),
    .io_in_im(temp_6_inst_1_io_in_im),
    .io_out_re(temp_6_inst_1_io_out_re),
    .io_out_im(temp_6_inst_1_io_out_im)
  );
  ComplexAdd temp_6_inst_2 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_6_inst_2_io_op1_re),
    .io_op1_im(temp_6_inst_2_io_op1_im),
    .io_op2_re(temp_6_inst_2_io_op2_re),
    .io_op2_im(temp_6_inst_2_io_op2_im),
    .io_res_re(temp_6_inst_2_io_res_re),
    .io_res_im(temp_6_inst_2_io_res_im)
  );
  ComplexMul temp_7_inst ( // @[Modules.scala 158:22]
    .io_op1_re(temp_7_inst_io_op1_re),
    .io_op1_im(temp_7_inst_io_op1_im),
    .io_res_re(temp_7_inst_io_res_re),
    .io_res_im(temp_7_inst_io_res_im)
  );
  ComplexTran temp_7_inst_1 ( // @[Modules.scala 123:22]
    .io_in_re(temp_7_inst_1_io_in_re),
    .io_in_im(temp_7_inst_1_io_in_im),
    .io_out_re(temp_7_inst_1_io_out_re),
    .io_out_im(temp_7_inst_1_io_out_im)
  );
  ComplexSub temp_7_inst_2 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_7_inst_2_io_op1_re),
    .io_op1_im(temp_7_inst_2_io_op1_im),
    .io_op2_re(temp_7_inst_2_io_op2_re),
    .io_op2_im(temp_7_inst_2_io_op2_im),
    .io_res_re(temp_7_inst_2_io_res_re),
    .io_res_im(temp_7_inst_2_io_res_im)
  );
  ComplexMul_4 io_out_1_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  ComplexMul_4 io_out_2_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_2_inst_io_op1_re),
    .io_op1_im(io_out_2_inst_io_op1_im),
    .io_op2_re(io_out_2_inst_io_op2_re),
    .io_op2_im(io_out_2_inst_io_op2_im),
    .io_res_re(io_out_2_inst_io_res_re),
    .io_res_im(io_out_2_inst_io_res_im)
  );
  ComplexMul_4 io_out_3_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_3_inst_io_op1_re),
    .io_op1_im(io_out_3_inst_io_op1_im),
    .io_op2_re(io_out_3_inst_io_op2_re),
    .io_op2_im(io_out_3_inst_io_op2_im),
    .io_res_re(io_out_3_inst_io_res_re),
    .io_res_im(io_out_3_inst_io_res_im)
  );
  ComplexMul_4 io_out_4_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_4_inst_io_op1_re),
    .io_op1_im(io_out_4_inst_io_op1_im),
    .io_op2_re(io_out_4_inst_io_op2_re),
    .io_op2_im(io_out_4_inst_io_op2_im),
    .io_res_re(io_out_4_inst_io_res_re),
    .io_res_im(io_out_4_inst_io_res_im)
  );
  ComplexMul_4 io_out_5_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_5_inst_io_op1_re),
    .io_op1_im(io_out_5_inst_io_op1_im),
    .io_op2_re(io_out_5_inst_io_op2_re),
    .io_op2_im(io_out_5_inst_io_op2_im),
    .io_res_re(io_out_5_inst_io_res_re),
    .io_res_im(io_out_5_inst_io_res_im)
  );
  ComplexMul_4 io_out_6_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_6_inst_io_op1_re),
    .io_op1_im(io_out_6_inst_io_op1_im),
    .io_op2_re(io_out_6_inst_io_op2_re),
    .io_op2_im(io_out_6_inst_io_op2_im),
    .io_res_re(io_out_6_inst_io_res_re),
    .io_res_im(io_out_6_inst_io_res_im)
  );
  ComplexMul_4 io_out_7_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_7_inst_io_op1_re),
    .io_op1_im(io_out_7_inst_io_op1_im),
    .io_op2_re(io_out_7_inst_io_op2_re),
    .io_op2_im(io_out_7_inst_io_op2_im),
    .io_res_re(io_out_7_inst_io_res_re),
    .io_res_im(io_out_7_inst_io_res_im)
  );
  assign io_out_0_re = temp_0_inst_io_res_re; // @[Modules.scala 224:21 256:13]
  assign io_out_0_im = temp_0_inst_io_res_im; // @[Modules.scala 224:21 256:13]
  assign io_out_1_re = io_out_1_inst_io_res_re; // @[Modules.scala 275:15]
  assign io_out_1_im = io_out_1_inst_io_res_im; // @[Modules.scala 275:15]
  assign io_out_2_re = io_out_2_inst_io_res_re; // @[Modules.scala 276:15]
  assign io_out_2_im = io_out_2_inst_io_res_im; // @[Modules.scala 276:15]
  assign io_out_3_re = io_out_3_inst_io_res_re; // @[Modules.scala 277:15]
  assign io_out_3_im = io_out_3_inst_io_res_im; // @[Modules.scala 277:15]
  assign io_out_4_re = io_out_4_inst_io_res_re; // @[Modules.scala 278:15]
  assign io_out_4_im = io_out_4_inst_io_res_im; // @[Modules.scala 278:15]
  assign io_out_5_re = io_out_5_inst_io_res_re; // @[Modules.scala 279:15]
  assign io_out_5_im = io_out_5_inst_io_res_im; // @[Modules.scala 279:15]
  assign io_out_6_re = io_out_6_inst_io_res_re; // @[Modules.scala 280:15]
  assign io_out_6_im = io_out_6_inst_io_res_im; // @[Modules.scala 280:15]
  assign io_out_7_re = io_out_7_inst_io_res_re; // @[Modules.scala 281:15]
  assign io_out_7_im = io_out_7_inst_io_res_im; // @[Modules.scala 281:15]
  assign temp_data_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign temp_data_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign temp_data_0_inst_io_op2_re = io_in_4_re; // @[Modules.scala 83:17]
  assign temp_data_0_inst_io_op2_im = io_in_4_im; // @[Modules.scala 83:17]
  assign temp_data_1_inst_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign temp_data_1_inst_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign temp_data_1_inst_io_op2_re = io_in_5_re; // @[Modules.scala 83:17]
  assign temp_data_1_inst_io_op2_im = io_in_5_im; // @[Modules.scala 83:17]
  assign temp_data_2_inst_io_op1_re = io_in_2_re; // @[Modules.scala 82:17]
  assign temp_data_2_inst_io_op1_im = io_in_2_im; // @[Modules.scala 82:17]
  assign temp_data_2_inst_io_op2_re = io_in_6_re; // @[Modules.scala 83:17]
  assign temp_data_2_inst_io_op2_im = io_in_6_im; // @[Modules.scala 83:17]
  assign temp_data_3_inst_io_op1_re = io_in_3_re; // @[Modules.scala 82:17]
  assign temp_data_3_inst_io_op1_im = io_in_3_im; // @[Modules.scala 82:17]
  assign temp_data_3_inst_io_op2_re = io_in_7_re; // @[Modules.scala 83:17]
  assign temp_data_3_inst_io_op2_im = io_in_7_im; // @[Modules.scala 83:17]
  assign temp_data_4_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign temp_data_4_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign temp_data_4_inst_io_op2_re = io_in_4_re; // @[Modules.scala 102:17]
  assign temp_data_4_inst_io_op2_im = io_in_4_im; // @[Modules.scala 102:17]
  assign temp_data_5_inst_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign temp_data_5_inst_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign temp_data_5_inst_io_op2_re = io_in_5_re; // @[Modules.scala 102:17]
  assign temp_data_5_inst_io_op2_im = io_in_5_im; // @[Modules.scala 102:17]
  assign temp_data_6_inst_io_op1_re = io_in_2_re; // @[Modules.scala 101:17]
  assign temp_data_6_inst_io_op1_im = io_in_2_im; // @[Modules.scala 101:17]
  assign temp_data_6_inst_io_op2_re = io_in_6_re; // @[Modules.scala 102:17]
  assign temp_data_6_inst_io_op2_im = io_in_6_im; // @[Modules.scala 102:17]
  assign temp_data_7_inst_io_op1_re = io_in_3_re; // @[Modules.scala 101:17]
  assign temp_data_7_inst_io_op1_im = io_in_3_im; // @[Modules.scala 101:17]
  assign temp_data_7_inst_io_op2_re = io_in_7_re; // @[Modules.scala 102:17]
  assign temp_data_7_inst_io_op2_im = io_in_7_im; // @[Modules.scala 102:17]
  assign A02_inst_io_op1_re = temp_data_0_inst_io_res_re; // @[Modules.scala 245:28 246:39]
  assign A02_inst_io_op1_im = temp_data_0_inst_io_res_im; // @[Modules.scala 245:28 246:39]
  assign A02_inst_io_op2_re = temp_data_2_inst_io_res_re; // @[Modules.scala 245:28 246:39]
  assign A02_inst_io_op2_im = temp_data_2_inst_io_res_im; // @[Modules.scala 245:28 246:39]
  assign S02_inst_io_op1_re = temp_data_0_inst_io_res_re; // @[Modules.scala 245:28 246:39]
  assign S02_inst_io_op1_im = temp_data_0_inst_io_res_im; // @[Modules.scala 245:28 246:39]
  assign S02_inst_io_op2_re = temp_data_2_inst_io_res_re; // @[Modules.scala 245:28 246:39]
  assign S02_inst_io_op2_im = temp_data_2_inst_io_res_im; // @[Modules.scala 245:28 246:39]
  assign A13_inst_io_op1_re = temp_data_1_inst_io_res_re; // @[Modules.scala 245:28 246:39]
  assign A13_inst_io_op1_im = temp_data_1_inst_io_res_im; // @[Modules.scala 245:28 246:39]
  assign A13_inst_io_op2_re = temp_data_3_inst_io_res_re; // @[Modules.scala 245:28 246:39]
  assign A13_inst_io_op2_im = temp_data_3_inst_io_res_im; // @[Modules.scala 245:28 246:39]
  assign S13_inst_io_op1_re = temp_data_1_inst_io_res_re; // @[Modules.scala 245:28 246:39]
  assign S13_inst_io_op1_im = temp_data_1_inst_io_res_im; // @[Modules.scala 245:28 246:39]
  assign S13_inst_io_op2_re = temp_data_3_inst_io_res_re; // @[Modules.scala 245:28 246:39]
  assign S13_inst_io_op2_im = temp_data_3_inst_io_res_im; // @[Modules.scala 245:28 246:39]
  assign A46_inst_io_in_re = temp_data_6_inst_io_res_re; // @[Modules.scala 245:28 247:43]
  assign A46_inst_io_in_im = temp_data_6_inst_io_res_im; // @[Modules.scala 245:28 247:43]
  assign A46_inst_1_io_op1_re = temp_data_4_inst_io_res_re; // @[Modules.scala 245:28 247:43]
  assign A46_inst_1_io_op1_im = temp_data_4_inst_io_res_im; // @[Modules.scala 245:28 247:43]
  assign A46_inst_1_io_op2_re = A46_inst_io_out_re; // @[Modules.scala 83:17]
  assign A46_inst_1_io_op2_im = A46_inst_io_out_im; // @[Modules.scala 83:17]
  assign S46_inst_io_in_re = temp_data_6_inst_io_res_re; // @[Modules.scala 245:28 247:43]
  assign S46_inst_io_in_im = temp_data_6_inst_io_res_im; // @[Modules.scala 245:28 247:43]
  assign S46_inst_1_io_op1_re = temp_data_4_inst_io_res_re; // @[Modules.scala 245:28 247:43]
  assign S46_inst_1_io_op1_im = temp_data_4_inst_io_res_im; // @[Modules.scala 245:28 247:43]
  assign S46_inst_1_io_op2_re = S46_inst_io_out_re; // @[Modules.scala 102:17]
  assign S46_inst_1_io_op2_im = S46_inst_io_out_im; // @[Modules.scala 102:17]
  assign A57_inst_io_in_re = temp_data_7_inst_io_res_re; // @[Modules.scala 245:28 247:43]
  assign A57_inst_io_in_im = temp_data_7_inst_io_res_im; // @[Modules.scala 245:28 247:43]
  assign A57_inst_1_io_op1_re = temp_data_5_inst_io_res_re; // @[Modules.scala 245:28 247:43]
  assign A57_inst_1_io_op1_im = temp_data_5_inst_io_res_im; // @[Modules.scala 245:28 247:43]
  assign A57_inst_1_io_op2_re = A57_inst_io_out_re; // @[Modules.scala 83:17]
  assign A57_inst_1_io_op2_im = A57_inst_io_out_im; // @[Modules.scala 83:17]
  assign S57_inst_io_in_re = temp_data_7_inst_io_res_re; // @[Modules.scala 245:28 247:43]
  assign S57_inst_io_in_im = temp_data_7_inst_io_res_im; // @[Modules.scala 245:28 247:43]
  assign S57_inst_1_io_op1_re = temp_data_5_inst_io_res_re; // @[Modules.scala 245:28 247:43]
  assign S57_inst_1_io_op1_im = temp_data_5_inst_io_res_im; // @[Modules.scala 245:28 247:43]
  assign S57_inst_1_io_op2_re = S57_inst_io_out_re; // @[Modules.scala 102:17]
  assign S57_inst_1_io_op2_im = S57_inst_io_out_im; // @[Modules.scala 102:17]
  assign temp_0_inst_io_op1_re = A02_inst_io_res_re; // @[Modules.scala 82:17]
  assign temp_0_inst_io_op1_im = A02_inst_io_res_im; // @[Modules.scala 82:17]
  assign temp_0_inst_io_op2_re = A13_inst_io_res_re; // @[Modules.scala 83:17]
  assign temp_0_inst_io_op2_im = A13_inst_io_res_im; // @[Modules.scala 83:17]
  assign temp_1_inst_io_op1_re = A02_inst_io_res_re; // @[Modules.scala 101:17]
  assign temp_1_inst_io_op1_im = A02_inst_io_res_im; // @[Modules.scala 101:17]
  assign temp_1_inst_io_op2_re = A13_inst_io_res_re; // @[Modules.scala 102:17]
  assign temp_1_inst_io_op2_im = A13_inst_io_res_im; // @[Modules.scala 102:17]
  assign temp_2_inst_io_in_re = S13_inst_io_res_re; // @[Modules.scala 124:16]
  assign temp_2_inst_io_in_im = S13_inst_io_res_im; // @[Modules.scala 124:16]
  assign temp_2_inst_1_io_op1_re = S02_inst_io_res_re; // @[Modules.scala 82:17]
  assign temp_2_inst_1_io_op1_im = S02_inst_io_res_im; // @[Modules.scala 82:17]
  assign temp_2_inst_1_io_op2_re = temp_2_inst_io_out_re; // @[Modules.scala 83:17]
  assign temp_2_inst_1_io_op2_im = temp_2_inst_io_out_im; // @[Modules.scala 83:17]
  assign temp_3_inst_io_in_re = S13_inst_io_res_re; // @[Modules.scala 124:16]
  assign temp_3_inst_io_in_im = S13_inst_io_res_im; // @[Modules.scala 124:16]
  assign temp_3_inst_1_io_op1_re = S02_inst_io_res_re; // @[Modules.scala 101:17]
  assign temp_3_inst_1_io_op1_im = S02_inst_io_res_im; // @[Modules.scala 101:17]
  assign temp_3_inst_1_io_op2_re = temp_3_inst_io_out_re; // @[Modules.scala 102:17]
  assign temp_3_inst_1_io_op2_im = temp_3_inst_io_out_im; // @[Modules.scala 102:17]
  assign temp_4_inst_io_op1_re = A57_inst_1_io_res_re; // @[Modules.scala 159:17]
  assign temp_4_inst_io_op1_im = A57_inst_1_io_res_im; // @[Modules.scala 159:17]
  assign temp_4_inst_1_io_op1_re = A46_inst_1_io_res_re; // @[Modules.scala 82:17]
  assign temp_4_inst_1_io_op1_im = A46_inst_1_io_res_im; // @[Modules.scala 82:17]
  assign temp_4_inst_1_io_op2_re = temp_4_inst_io_res_re; // @[Modules.scala 83:17]
  assign temp_4_inst_1_io_op2_im = temp_4_inst_io_res_im; // @[Modules.scala 83:17]
  assign temp_5_inst_io_op1_re = A57_inst_1_io_res_re; // @[Modules.scala 159:17]
  assign temp_5_inst_io_op1_im = A57_inst_1_io_res_im; // @[Modules.scala 159:17]
  assign temp_5_inst_1_io_op1_re = A46_inst_1_io_res_re; // @[Modules.scala 101:17]
  assign temp_5_inst_1_io_op1_im = A46_inst_1_io_res_im; // @[Modules.scala 101:17]
  assign temp_5_inst_1_io_op2_re = temp_5_inst_io_res_re; // @[Modules.scala 102:17]
  assign temp_5_inst_1_io_op2_im = temp_5_inst_io_res_im; // @[Modules.scala 102:17]
  assign temp_6_inst_io_op1_re = S57_inst_1_io_res_re; // @[Modules.scala 159:17]
  assign temp_6_inst_io_op1_im = S57_inst_1_io_res_im; // @[Modules.scala 159:17]
  assign temp_6_inst_1_io_in_re = temp_6_inst_io_res_re; // @[Modules.scala 124:16]
  assign temp_6_inst_1_io_in_im = temp_6_inst_io_res_im; // @[Modules.scala 124:16]
  assign temp_6_inst_2_io_op1_re = S46_inst_1_io_res_re; // @[Modules.scala 82:17]
  assign temp_6_inst_2_io_op1_im = S46_inst_1_io_res_im; // @[Modules.scala 82:17]
  assign temp_6_inst_2_io_op2_re = temp_6_inst_1_io_out_re; // @[Modules.scala 83:17]
  assign temp_6_inst_2_io_op2_im = temp_6_inst_1_io_out_im; // @[Modules.scala 83:17]
  assign temp_7_inst_io_op1_re = S57_inst_1_io_res_re; // @[Modules.scala 159:17]
  assign temp_7_inst_io_op1_im = S57_inst_1_io_res_im; // @[Modules.scala 159:17]
  assign temp_7_inst_1_io_in_re = temp_7_inst_io_res_re; // @[Modules.scala 124:16]
  assign temp_7_inst_1_io_in_im = temp_7_inst_io_res_im; // @[Modules.scala 124:16]
  assign temp_7_inst_2_io_op1_re = S46_inst_1_io_res_re; // @[Modules.scala 101:17]
  assign temp_7_inst_2_io_op1_im = S46_inst_1_io_res_im; // @[Modules.scala 101:17]
  assign temp_7_inst_2_io_op2_re = temp_7_inst_1_io_out_re; // @[Modules.scala 102:17]
  assign temp_7_inst_2_io_op2_im = temp_7_inst_1_io_out_im; // @[Modules.scala 102:17]
  assign io_out_1_inst_io_op1_re = temp_1_inst_io_res_re; // @[Modules.scala 224:21 257:13]
  assign io_out_1_inst_io_op1_im = temp_1_inst_io_res_im; // @[Modules.scala 224:21 257:13]
  assign io_out_1_inst_io_op2_re = io_wn_3_re; // @[Modules.scala 160:17]
  assign io_out_1_inst_io_op2_im = io_wn_3_im; // @[Modules.scala 160:17]
  assign io_out_2_inst_io_op1_re = temp_2_inst_1_io_res_re; // @[Modules.scala 224:21 258:13]
  assign io_out_2_inst_io_op1_im = temp_2_inst_1_io_res_im; // @[Modules.scala 224:21 258:13]
  assign io_out_2_inst_io_op2_re = io_wn_1_re; // @[Modules.scala 160:17]
  assign io_out_2_inst_io_op2_im = io_wn_1_im; // @[Modules.scala 160:17]
  assign io_out_3_inst_io_op1_re = temp_3_inst_1_io_res_re; // @[Modules.scala 224:21 259:13]
  assign io_out_3_inst_io_op1_im = temp_3_inst_1_io_res_im; // @[Modules.scala 224:21 259:13]
  assign io_out_3_inst_io_op2_re = io_wn_5_re; // @[Modules.scala 160:17]
  assign io_out_3_inst_io_op2_im = io_wn_5_im; // @[Modules.scala 160:17]
  assign io_out_4_inst_io_op1_re = temp_4_inst_1_io_res_re; // @[Modules.scala 224:21 260:13]
  assign io_out_4_inst_io_op1_im = temp_4_inst_1_io_res_im; // @[Modules.scala 224:21 260:13]
  assign io_out_4_inst_io_op2_re = io_wn_0_re; // @[Modules.scala 160:17]
  assign io_out_4_inst_io_op2_im = io_wn_0_im; // @[Modules.scala 160:17]
  assign io_out_5_inst_io_op1_re = temp_5_inst_1_io_res_re; // @[Modules.scala 224:21 261:13]
  assign io_out_5_inst_io_op1_im = temp_5_inst_1_io_res_im; // @[Modules.scala 224:21 261:13]
  assign io_out_5_inst_io_op2_re = io_wn_4_re; // @[Modules.scala 160:17]
  assign io_out_5_inst_io_op2_im = io_wn_4_im; // @[Modules.scala 160:17]
  assign io_out_6_inst_io_op1_re = temp_6_inst_2_io_res_re; // @[Modules.scala 224:21 262:13]
  assign io_out_6_inst_io_op1_im = temp_6_inst_2_io_res_im; // @[Modules.scala 224:21 262:13]
  assign io_out_6_inst_io_op2_re = io_wn_2_re; // @[Modules.scala 160:17]
  assign io_out_6_inst_io_op2_im = io_wn_2_im; // @[Modules.scala 160:17]
  assign io_out_7_inst_io_op1_re = temp_7_inst_2_io_res_re; // @[Modules.scala 224:21 263:13]
  assign io_out_7_inst_io_op1_im = temp_7_inst_2_io_res_im; // @[Modules.scala 224:21 263:13]
  assign io_out_7_inst_io_op2_re = io_wn_6_re; // @[Modules.scala 160:17]
  assign io_out_7_inst_io_op2_im = io_wn_6_im; // @[Modules.scala 160:17]
endmodule
module ButterflyAdd(
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  input  [16:0] io_in_2_re,
  input  [16:0] io_in_2_im,
  input  [16:0] io_in_3_re,
  input  [16:0] io_in_3_im,
  input  [16:0] io_in_4_re,
  input  [16:0] io_in_4_im,
  input  [16:0] io_in_5_re,
  input  [16:0] io_in_5_im,
  input  [16:0] io_in_6_re,
  input  [16:0] io_in_6_im,
  input  [16:0] io_in_7_re,
  input  [16:0] io_in_7_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im,
  output [16:0] io_out_4_re,
  output [16:0] io_out_4_im,
  output [16:0] io_out_5_re,
  output [16:0] io_out_5_im,
  output [16:0] io_out_6_re,
  output [16:0] io_out_6_im,
  output [16:0] io_out_7_re,
  output [16:0] io_out_7_im
);
  wire [16:0] temp_data_0_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_0_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_1_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_2_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_data_3_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_data_4_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_4_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_5_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_6_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_data_7_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] A02_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] A02_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] S02_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] S02_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] A13_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] A13_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] S13_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] S13_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] A46_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] A46_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] A46_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] A46_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] A46_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] A46_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] S46_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] S46_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] S46_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] S46_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] S46_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] S46_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] A57_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] A57_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] A57_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] A57_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] A57_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] A57_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] S57_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] S57_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] S57_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] S57_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] S57_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] S57_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_0_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_3_inst_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_4_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_4_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_4_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_4_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_4_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_4_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_4_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_5_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_5_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_5_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_5_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_5_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_5_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_5_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_6_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_6_inst_1_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_6_inst_1_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_6_inst_1_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_6_inst_1_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_6_inst_2_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_6_inst_2_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_6_inst_2_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_6_inst_2_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_6_inst_2_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_6_inst_2_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_7_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_7_inst_1_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_7_inst_1_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_7_inst_1_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_7_inst_1_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_7_inst_2_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_7_inst_2_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_7_inst_2_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_7_inst_2_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_7_inst_2_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_7_inst_2_io_res_im; // @[Modules.scala 100:22]
  ComplexAdd temp_data_0_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_data_0_inst_io_op1_re),
    .io_op1_im(temp_data_0_inst_io_op1_im),
    .io_op2_re(temp_data_0_inst_io_op2_re),
    .io_op2_im(temp_data_0_inst_io_op2_im),
    .io_res_re(temp_data_0_inst_io_res_re),
    .io_res_im(temp_data_0_inst_io_res_im)
  );
  ComplexAdd temp_data_1_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_data_1_inst_io_op1_re),
    .io_op1_im(temp_data_1_inst_io_op1_im),
    .io_op2_re(temp_data_1_inst_io_op2_re),
    .io_op2_im(temp_data_1_inst_io_op2_im),
    .io_res_re(temp_data_1_inst_io_res_re),
    .io_res_im(temp_data_1_inst_io_res_im)
  );
  ComplexAdd temp_data_2_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_data_2_inst_io_op1_re),
    .io_op1_im(temp_data_2_inst_io_op1_im),
    .io_op2_re(temp_data_2_inst_io_op2_re),
    .io_op2_im(temp_data_2_inst_io_op2_im),
    .io_res_re(temp_data_2_inst_io_res_re),
    .io_res_im(temp_data_2_inst_io_res_im)
  );
  ComplexAdd temp_data_3_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_data_3_inst_io_op1_re),
    .io_op1_im(temp_data_3_inst_io_op1_im),
    .io_op2_re(temp_data_3_inst_io_op2_re),
    .io_op2_im(temp_data_3_inst_io_op2_im),
    .io_res_re(temp_data_3_inst_io_res_re),
    .io_res_im(temp_data_3_inst_io_res_im)
  );
  ComplexSub temp_data_4_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_data_4_inst_io_op1_re),
    .io_op1_im(temp_data_4_inst_io_op1_im),
    .io_op2_re(temp_data_4_inst_io_op2_re),
    .io_op2_im(temp_data_4_inst_io_op2_im),
    .io_res_re(temp_data_4_inst_io_res_re),
    .io_res_im(temp_data_4_inst_io_res_im)
  );
  ComplexSub temp_data_5_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_data_5_inst_io_op1_re),
    .io_op1_im(temp_data_5_inst_io_op1_im),
    .io_op2_re(temp_data_5_inst_io_op2_re),
    .io_op2_im(temp_data_5_inst_io_op2_im),
    .io_res_re(temp_data_5_inst_io_res_re),
    .io_res_im(temp_data_5_inst_io_res_im)
  );
  ComplexSub temp_data_6_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_data_6_inst_io_op1_re),
    .io_op1_im(temp_data_6_inst_io_op1_im),
    .io_op2_re(temp_data_6_inst_io_op2_re),
    .io_op2_im(temp_data_6_inst_io_op2_im),
    .io_res_re(temp_data_6_inst_io_res_re),
    .io_res_im(temp_data_6_inst_io_res_im)
  );
  ComplexSub temp_data_7_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_data_7_inst_io_op1_re),
    .io_op1_im(temp_data_7_inst_io_op1_im),
    .io_op2_re(temp_data_7_inst_io_op2_re),
    .io_op2_im(temp_data_7_inst_io_op2_im),
    .io_res_re(temp_data_7_inst_io_res_re),
    .io_res_im(temp_data_7_inst_io_res_im)
  );
  ComplexAdd_4 A02_inst ( // @[Modules.scala 81:22]
    .io_op1_re(A02_inst_io_op1_re),
    .io_op1_im(A02_inst_io_op1_im),
    .io_op2_re(A02_inst_io_op2_re),
    .io_op2_im(A02_inst_io_op2_im),
    .io_res_re(A02_inst_io_res_re),
    .io_res_im(A02_inst_io_res_im)
  );
  ComplexSub_4 S02_inst ( // @[Modules.scala 100:22]
    .io_op1_re(S02_inst_io_op1_re),
    .io_op1_im(S02_inst_io_op1_im),
    .io_op2_re(S02_inst_io_op2_re),
    .io_op2_im(S02_inst_io_op2_im),
    .io_res_re(S02_inst_io_res_re),
    .io_res_im(S02_inst_io_res_im)
  );
  ComplexAdd_4 A13_inst ( // @[Modules.scala 81:22]
    .io_op1_re(A13_inst_io_op1_re),
    .io_op1_im(A13_inst_io_op1_im),
    .io_op2_re(A13_inst_io_op2_re),
    .io_op2_im(A13_inst_io_op2_im),
    .io_res_re(A13_inst_io_res_re),
    .io_res_im(A13_inst_io_res_im)
  );
  ComplexSub_4 S13_inst ( // @[Modules.scala 100:22]
    .io_op1_re(S13_inst_io_op1_re),
    .io_op1_im(S13_inst_io_op1_im),
    .io_op2_re(S13_inst_io_op2_re),
    .io_op2_im(S13_inst_io_op2_im),
    .io_res_re(S13_inst_io_res_re),
    .io_res_im(S13_inst_io_res_im)
  );
  ComplexTran A46_inst ( // @[Modules.scala 123:22]
    .io_in_re(A46_inst_io_in_re),
    .io_in_im(A46_inst_io_in_im),
    .io_out_re(A46_inst_io_out_re),
    .io_out_im(A46_inst_io_out_im)
  );
  ComplexAdd_4 A46_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(A46_inst_1_io_op1_re),
    .io_op1_im(A46_inst_1_io_op1_im),
    .io_op2_re(A46_inst_1_io_op2_re),
    .io_op2_im(A46_inst_1_io_op2_im),
    .io_res_re(A46_inst_1_io_res_re),
    .io_res_im(A46_inst_1_io_res_im)
  );
  ComplexTran S46_inst ( // @[Modules.scala 123:22]
    .io_in_re(S46_inst_io_in_re),
    .io_in_im(S46_inst_io_in_im),
    .io_out_re(S46_inst_io_out_re),
    .io_out_im(S46_inst_io_out_im)
  );
  ComplexSub_4 S46_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(S46_inst_1_io_op1_re),
    .io_op1_im(S46_inst_1_io_op1_im),
    .io_op2_re(S46_inst_1_io_op2_re),
    .io_op2_im(S46_inst_1_io_op2_im),
    .io_res_re(S46_inst_1_io_res_re),
    .io_res_im(S46_inst_1_io_res_im)
  );
  ComplexTran A57_inst ( // @[Modules.scala 123:22]
    .io_in_re(A57_inst_io_in_re),
    .io_in_im(A57_inst_io_in_im),
    .io_out_re(A57_inst_io_out_re),
    .io_out_im(A57_inst_io_out_im)
  );
  ComplexAdd_4 A57_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(A57_inst_1_io_op1_re),
    .io_op1_im(A57_inst_1_io_op1_im),
    .io_op2_re(A57_inst_1_io_op2_re),
    .io_op2_im(A57_inst_1_io_op2_im),
    .io_res_re(A57_inst_1_io_res_re),
    .io_res_im(A57_inst_1_io_res_im)
  );
  ComplexTran S57_inst ( // @[Modules.scala 123:22]
    .io_in_re(S57_inst_io_in_re),
    .io_in_im(S57_inst_io_in_im),
    .io_out_re(S57_inst_io_out_re),
    .io_out_im(S57_inst_io_out_im)
  );
  ComplexSub_4 S57_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(S57_inst_1_io_op1_re),
    .io_op1_im(S57_inst_1_io_op1_im),
    .io_op2_re(S57_inst_1_io_op2_re),
    .io_op2_im(S57_inst_1_io_op2_im),
    .io_res_re(S57_inst_1_io_res_re),
    .io_res_im(S57_inst_1_io_res_im)
  );
  ComplexAdd io_out_0_inst ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_0_inst_io_op1_re),
    .io_op1_im(io_out_0_inst_io_op1_im),
    .io_op2_re(io_out_0_inst_io_op2_re),
    .io_op2_im(io_out_0_inst_io_op2_im),
    .io_res_re(io_out_0_inst_io_res_re),
    .io_res_im(io_out_0_inst_io_res_im)
  );
  ComplexSub io_out_1_inst ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  ComplexTran io_out_2_inst ( // @[Modules.scala 123:22]
    .io_in_re(io_out_2_inst_io_in_re),
    .io_in_im(io_out_2_inst_io_in_im),
    .io_out_re(io_out_2_inst_io_out_re),
    .io_out_im(io_out_2_inst_io_out_im)
  );
  ComplexAdd io_out_2_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_2_inst_1_io_op1_re),
    .io_op1_im(io_out_2_inst_1_io_op1_im),
    .io_op2_re(io_out_2_inst_1_io_op2_re),
    .io_op2_im(io_out_2_inst_1_io_op2_im),
    .io_res_re(io_out_2_inst_1_io_res_re),
    .io_res_im(io_out_2_inst_1_io_res_im)
  );
  ComplexTran io_out_3_inst ( // @[Modules.scala 123:22]
    .io_in_re(io_out_3_inst_io_in_re),
    .io_in_im(io_out_3_inst_io_in_im),
    .io_out_re(io_out_3_inst_io_out_re),
    .io_out_im(io_out_3_inst_io_out_im)
  );
  ComplexSub io_out_3_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_3_inst_1_io_op1_re),
    .io_op1_im(io_out_3_inst_1_io_op1_im),
    .io_op2_re(io_out_3_inst_1_io_op2_re),
    .io_op2_im(io_out_3_inst_1_io_op2_im),
    .io_res_re(io_out_3_inst_1_io_res_re),
    .io_res_im(io_out_3_inst_1_io_res_im)
  );
  ComplexMul io_out_4_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_4_inst_io_op1_re),
    .io_op1_im(io_out_4_inst_io_op1_im),
    .io_res_re(io_out_4_inst_io_res_re),
    .io_res_im(io_out_4_inst_io_res_im)
  );
  ComplexAdd io_out_4_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_4_inst_1_io_op1_re),
    .io_op1_im(io_out_4_inst_1_io_op1_im),
    .io_op2_re(io_out_4_inst_1_io_op2_re),
    .io_op2_im(io_out_4_inst_1_io_op2_im),
    .io_res_re(io_out_4_inst_1_io_res_re),
    .io_res_im(io_out_4_inst_1_io_res_im)
  );
  ComplexMul io_out_5_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_5_inst_io_op1_re),
    .io_op1_im(io_out_5_inst_io_op1_im),
    .io_res_re(io_out_5_inst_io_res_re),
    .io_res_im(io_out_5_inst_io_res_im)
  );
  ComplexSub io_out_5_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_5_inst_1_io_op1_re),
    .io_op1_im(io_out_5_inst_1_io_op1_im),
    .io_op2_re(io_out_5_inst_1_io_op2_re),
    .io_op2_im(io_out_5_inst_1_io_op2_im),
    .io_res_re(io_out_5_inst_1_io_res_re),
    .io_res_im(io_out_5_inst_1_io_res_im)
  );
  ComplexMul io_out_6_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_6_inst_io_op1_re),
    .io_op1_im(io_out_6_inst_io_op1_im),
    .io_res_re(io_out_6_inst_io_res_re),
    .io_res_im(io_out_6_inst_io_res_im)
  );
  ComplexTran io_out_6_inst_1 ( // @[Modules.scala 123:22]
    .io_in_re(io_out_6_inst_1_io_in_re),
    .io_in_im(io_out_6_inst_1_io_in_im),
    .io_out_re(io_out_6_inst_1_io_out_re),
    .io_out_im(io_out_6_inst_1_io_out_im)
  );
  ComplexAdd io_out_6_inst_2 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_6_inst_2_io_op1_re),
    .io_op1_im(io_out_6_inst_2_io_op1_im),
    .io_op2_re(io_out_6_inst_2_io_op2_re),
    .io_op2_im(io_out_6_inst_2_io_op2_im),
    .io_res_re(io_out_6_inst_2_io_res_re),
    .io_res_im(io_out_6_inst_2_io_res_im)
  );
  ComplexMul io_out_7_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_7_inst_io_op1_re),
    .io_op1_im(io_out_7_inst_io_op1_im),
    .io_res_re(io_out_7_inst_io_res_re),
    .io_res_im(io_out_7_inst_io_res_im)
  );
  ComplexTran io_out_7_inst_1 ( // @[Modules.scala 123:22]
    .io_in_re(io_out_7_inst_1_io_in_re),
    .io_in_im(io_out_7_inst_1_io_in_im),
    .io_out_re(io_out_7_inst_1_io_out_re),
    .io_out_im(io_out_7_inst_1_io_out_im)
  );
  ComplexSub io_out_7_inst_2 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_7_inst_2_io_op1_re),
    .io_op1_im(io_out_7_inst_2_io_op1_im),
    .io_op2_re(io_out_7_inst_2_io_op2_re),
    .io_op2_im(io_out_7_inst_2_io_op2_im),
    .io_res_re(io_out_7_inst_2_io_res_re),
    .io_res_im(io_out_7_inst_2_io_res_im)
  );
  assign io_out_0_re = io_out_0_inst_io_res_re; // @[Modules.scala 200:15]
  assign io_out_0_im = io_out_0_inst_io_res_im; // @[Modules.scala 200:15]
  assign io_out_1_re = io_out_1_inst_io_res_re; // @[Modules.scala 201:15]
  assign io_out_1_im = io_out_1_inst_io_res_im; // @[Modules.scala 201:15]
  assign io_out_2_re = io_out_2_inst_1_io_res_re; // @[Modules.scala 202:15]
  assign io_out_2_im = io_out_2_inst_1_io_res_im; // @[Modules.scala 202:15]
  assign io_out_3_re = io_out_3_inst_1_io_res_re; // @[Modules.scala 203:15]
  assign io_out_3_im = io_out_3_inst_1_io_res_im; // @[Modules.scala 203:15]
  assign io_out_4_re = io_out_4_inst_1_io_res_re; // @[Modules.scala 204:15]
  assign io_out_4_im = io_out_4_inst_1_io_res_im; // @[Modules.scala 204:15]
  assign io_out_5_re = io_out_5_inst_1_io_res_re; // @[Modules.scala 205:15]
  assign io_out_5_im = io_out_5_inst_1_io_res_im; // @[Modules.scala 205:15]
  assign io_out_6_re = io_out_6_inst_2_io_res_re; // @[Modules.scala 206:15]
  assign io_out_6_im = io_out_6_inst_2_io_res_im; // @[Modules.scala 206:15]
  assign io_out_7_re = io_out_7_inst_2_io_res_re; // @[Modules.scala 207:15]
  assign io_out_7_im = io_out_7_inst_2_io_res_im; // @[Modules.scala 207:15]
  assign temp_data_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign temp_data_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign temp_data_0_inst_io_op2_re = io_in_4_re; // @[Modules.scala 83:17]
  assign temp_data_0_inst_io_op2_im = io_in_4_im; // @[Modules.scala 83:17]
  assign temp_data_1_inst_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign temp_data_1_inst_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign temp_data_1_inst_io_op2_re = io_in_5_re; // @[Modules.scala 83:17]
  assign temp_data_1_inst_io_op2_im = io_in_5_im; // @[Modules.scala 83:17]
  assign temp_data_2_inst_io_op1_re = io_in_2_re; // @[Modules.scala 82:17]
  assign temp_data_2_inst_io_op1_im = io_in_2_im; // @[Modules.scala 82:17]
  assign temp_data_2_inst_io_op2_re = io_in_6_re; // @[Modules.scala 83:17]
  assign temp_data_2_inst_io_op2_im = io_in_6_im; // @[Modules.scala 83:17]
  assign temp_data_3_inst_io_op1_re = io_in_3_re; // @[Modules.scala 82:17]
  assign temp_data_3_inst_io_op1_im = io_in_3_im; // @[Modules.scala 82:17]
  assign temp_data_3_inst_io_op2_re = io_in_7_re; // @[Modules.scala 83:17]
  assign temp_data_3_inst_io_op2_im = io_in_7_im; // @[Modules.scala 83:17]
  assign temp_data_4_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign temp_data_4_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign temp_data_4_inst_io_op2_re = io_in_4_re; // @[Modules.scala 102:17]
  assign temp_data_4_inst_io_op2_im = io_in_4_im; // @[Modules.scala 102:17]
  assign temp_data_5_inst_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign temp_data_5_inst_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign temp_data_5_inst_io_op2_re = io_in_5_re; // @[Modules.scala 102:17]
  assign temp_data_5_inst_io_op2_im = io_in_5_im; // @[Modules.scala 102:17]
  assign temp_data_6_inst_io_op1_re = io_in_2_re; // @[Modules.scala 101:17]
  assign temp_data_6_inst_io_op1_im = io_in_2_im; // @[Modules.scala 101:17]
  assign temp_data_6_inst_io_op2_re = io_in_6_re; // @[Modules.scala 102:17]
  assign temp_data_6_inst_io_op2_im = io_in_6_im; // @[Modules.scala 102:17]
  assign temp_data_7_inst_io_op1_re = io_in_3_re; // @[Modules.scala 101:17]
  assign temp_data_7_inst_io_op1_im = io_in_3_im; // @[Modules.scala 101:17]
  assign temp_data_7_inst_io_op2_re = io_in_7_re; // @[Modules.scala 102:17]
  assign temp_data_7_inst_io_op2_im = io_in_7_im; // @[Modules.scala 102:17]
  assign A02_inst_io_op1_re = temp_data_0_inst_io_res_re; // @[Modules.scala 189:28 190:39]
  assign A02_inst_io_op1_im = temp_data_0_inst_io_res_im; // @[Modules.scala 189:28 190:39]
  assign A02_inst_io_op2_re = temp_data_2_inst_io_res_re; // @[Modules.scala 189:28 190:39]
  assign A02_inst_io_op2_im = temp_data_2_inst_io_res_im; // @[Modules.scala 189:28 190:39]
  assign S02_inst_io_op1_re = temp_data_0_inst_io_res_re; // @[Modules.scala 189:28 190:39]
  assign S02_inst_io_op1_im = temp_data_0_inst_io_res_im; // @[Modules.scala 189:28 190:39]
  assign S02_inst_io_op2_re = temp_data_2_inst_io_res_re; // @[Modules.scala 189:28 190:39]
  assign S02_inst_io_op2_im = temp_data_2_inst_io_res_im; // @[Modules.scala 189:28 190:39]
  assign A13_inst_io_op1_re = temp_data_1_inst_io_res_re; // @[Modules.scala 189:28 190:39]
  assign A13_inst_io_op1_im = temp_data_1_inst_io_res_im; // @[Modules.scala 189:28 190:39]
  assign A13_inst_io_op2_re = temp_data_3_inst_io_res_re; // @[Modules.scala 189:28 190:39]
  assign A13_inst_io_op2_im = temp_data_3_inst_io_res_im; // @[Modules.scala 189:28 190:39]
  assign S13_inst_io_op1_re = temp_data_1_inst_io_res_re; // @[Modules.scala 189:28 190:39]
  assign S13_inst_io_op1_im = temp_data_1_inst_io_res_im; // @[Modules.scala 189:28 190:39]
  assign S13_inst_io_op2_re = temp_data_3_inst_io_res_re; // @[Modules.scala 189:28 190:39]
  assign S13_inst_io_op2_im = temp_data_3_inst_io_res_im; // @[Modules.scala 189:28 190:39]
  assign A46_inst_io_in_re = temp_data_6_inst_io_res_re; // @[Modules.scala 189:28 191:43]
  assign A46_inst_io_in_im = temp_data_6_inst_io_res_im; // @[Modules.scala 189:28 191:43]
  assign A46_inst_1_io_op1_re = temp_data_4_inst_io_res_re; // @[Modules.scala 189:28 191:43]
  assign A46_inst_1_io_op1_im = temp_data_4_inst_io_res_im; // @[Modules.scala 189:28 191:43]
  assign A46_inst_1_io_op2_re = A46_inst_io_out_re; // @[Modules.scala 83:17]
  assign A46_inst_1_io_op2_im = A46_inst_io_out_im; // @[Modules.scala 83:17]
  assign S46_inst_io_in_re = temp_data_6_inst_io_res_re; // @[Modules.scala 189:28 191:43]
  assign S46_inst_io_in_im = temp_data_6_inst_io_res_im; // @[Modules.scala 189:28 191:43]
  assign S46_inst_1_io_op1_re = temp_data_4_inst_io_res_re; // @[Modules.scala 189:28 191:43]
  assign S46_inst_1_io_op1_im = temp_data_4_inst_io_res_im; // @[Modules.scala 189:28 191:43]
  assign S46_inst_1_io_op2_re = S46_inst_io_out_re; // @[Modules.scala 102:17]
  assign S46_inst_1_io_op2_im = S46_inst_io_out_im; // @[Modules.scala 102:17]
  assign A57_inst_io_in_re = temp_data_7_inst_io_res_re; // @[Modules.scala 189:28 191:43]
  assign A57_inst_io_in_im = temp_data_7_inst_io_res_im; // @[Modules.scala 189:28 191:43]
  assign A57_inst_1_io_op1_re = temp_data_5_inst_io_res_re; // @[Modules.scala 189:28 191:43]
  assign A57_inst_1_io_op1_im = temp_data_5_inst_io_res_im; // @[Modules.scala 189:28 191:43]
  assign A57_inst_1_io_op2_re = A57_inst_io_out_re; // @[Modules.scala 83:17]
  assign A57_inst_1_io_op2_im = A57_inst_io_out_im; // @[Modules.scala 83:17]
  assign S57_inst_io_in_re = temp_data_7_inst_io_res_re; // @[Modules.scala 189:28 191:43]
  assign S57_inst_io_in_im = temp_data_7_inst_io_res_im; // @[Modules.scala 189:28 191:43]
  assign S57_inst_1_io_op1_re = temp_data_5_inst_io_res_re; // @[Modules.scala 189:28 191:43]
  assign S57_inst_1_io_op1_im = temp_data_5_inst_io_res_im; // @[Modules.scala 189:28 191:43]
  assign S57_inst_1_io_op2_re = S57_inst_io_out_re; // @[Modules.scala 102:17]
  assign S57_inst_1_io_op2_im = S57_inst_io_out_im; // @[Modules.scala 102:17]
  assign io_out_0_inst_io_op1_re = A02_inst_io_res_re; // @[Modules.scala 82:17]
  assign io_out_0_inst_io_op1_im = A02_inst_io_res_im; // @[Modules.scala 82:17]
  assign io_out_0_inst_io_op2_re = A13_inst_io_res_re; // @[Modules.scala 83:17]
  assign io_out_0_inst_io_op2_im = A13_inst_io_res_im; // @[Modules.scala 83:17]
  assign io_out_1_inst_io_op1_re = A02_inst_io_res_re; // @[Modules.scala 101:17]
  assign io_out_1_inst_io_op1_im = A02_inst_io_res_im; // @[Modules.scala 101:17]
  assign io_out_1_inst_io_op2_re = A13_inst_io_res_re; // @[Modules.scala 102:17]
  assign io_out_1_inst_io_op2_im = A13_inst_io_res_im; // @[Modules.scala 102:17]
  assign io_out_2_inst_io_in_re = S13_inst_io_res_re; // @[Modules.scala 124:16]
  assign io_out_2_inst_io_in_im = S13_inst_io_res_im; // @[Modules.scala 124:16]
  assign io_out_2_inst_1_io_op1_re = S02_inst_io_res_re; // @[Modules.scala 82:17]
  assign io_out_2_inst_1_io_op1_im = S02_inst_io_res_im; // @[Modules.scala 82:17]
  assign io_out_2_inst_1_io_op2_re = io_out_2_inst_io_out_re; // @[Modules.scala 83:17]
  assign io_out_2_inst_1_io_op2_im = io_out_2_inst_io_out_im; // @[Modules.scala 83:17]
  assign io_out_3_inst_io_in_re = S13_inst_io_res_re; // @[Modules.scala 124:16]
  assign io_out_3_inst_io_in_im = S13_inst_io_res_im; // @[Modules.scala 124:16]
  assign io_out_3_inst_1_io_op1_re = S02_inst_io_res_re; // @[Modules.scala 101:17]
  assign io_out_3_inst_1_io_op1_im = S02_inst_io_res_im; // @[Modules.scala 101:17]
  assign io_out_3_inst_1_io_op2_re = io_out_3_inst_io_out_re; // @[Modules.scala 102:17]
  assign io_out_3_inst_1_io_op2_im = io_out_3_inst_io_out_im; // @[Modules.scala 102:17]
  assign io_out_4_inst_io_op1_re = A57_inst_1_io_res_re; // @[Modules.scala 159:17]
  assign io_out_4_inst_io_op1_im = A57_inst_1_io_res_im; // @[Modules.scala 159:17]
  assign io_out_4_inst_1_io_op1_re = A46_inst_1_io_res_re; // @[Modules.scala 82:17]
  assign io_out_4_inst_1_io_op1_im = A46_inst_1_io_res_im; // @[Modules.scala 82:17]
  assign io_out_4_inst_1_io_op2_re = io_out_4_inst_io_res_re; // @[Modules.scala 83:17]
  assign io_out_4_inst_1_io_op2_im = io_out_4_inst_io_res_im; // @[Modules.scala 83:17]
  assign io_out_5_inst_io_op1_re = A57_inst_1_io_res_re; // @[Modules.scala 159:17]
  assign io_out_5_inst_io_op1_im = A57_inst_1_io_res_im; // @[Modules.scala 159:17]
  assign io_out_5_inst_1_io_op1_re = A46_inst_1_io_res_re; // @[Modules.scala 101:17]
  assign io_out_5_inst_1_io_op1_im = A46_inst_1_io_res_im; // @[Modules.scala 101:17]
  assign io_out_5_inst_1_io_op2_re = io_out_5_inst_io_res_re; // @[Modules.scala 102:17]
  assign io_out_5_inst_1_io_op2_im = io_out_5_inst_io_res_im; // @[Modules.scala 102:17]
  assign io_out_6_inst_io_op1_re = S57_inst_1_io_res_re; // @[Modules.scala 159:17]
  assign io_out_6_inst_io_op1_im = S57_inst_1_io_res_im; // @[Modules.scala 159:17]
  assign io_out_6_inst_1_io_in_re = io_out_6_inst_io_res_re; // @[Modules.scala 124:16]
  assign io_out_6_inst_1_io_in_im = io_out_6_inst_io_res_im; // @[Modules.scala 124:16]
  assign io_out_6_inst_2_io_op1_re = S46_inst_1_io_res_re; // @[Modules.scala 82:17]
  assign io_out_6_inst_2_io_op1_im = S46_inst_1_io_res_im; // @[Modules.scala 82:17]
  assign io_out_6_inst_2_io_op2_re = io_out_6_inst_1_io_out_re; // @[Modules.scala 83:17]
  assign io_out_6_inst_2_io_op2_im = io_out_6_inst_1_io_out_im; // @[Modules.scala 83:17]
  assign io_out_7_inst_io_op1_re = S57_inst_1_io_res_re; // @[Modules.scala 159:17]
  assign io_out_7_inst_io_op1_im = S57_inst_1_io_res_im; // @[Modules.scala 159:17]
  assign io_out_7_inst_1_io_in_re = io_out_7_inst_io_res_re; // @[Modules.scala 124:16]
  assign io_out_7_inst_1_io_in_im = io_out_7_inst_io_res_im; // @[Modules.scala 124:16]
  assign io_out_7_inst_2_io_op1_re = S46_inst_1_io_res_re; // @[Modules.scala 101:17]
  assign io_out_7_inst_2_io_op1_im = S46_inst_1_io_res_im; // @[Modules.scala 101:17]
  assign io_out_7_inst_2_io_op2_re = io_out_7_inst_1_io_out_re; // @[Modules.scala 102:17]
  assign io_out_7_inst_2_io_op2_im = io_out_7_inst_1_io_out_im; // @[Modules.scala 102:17]
endmodule
module Switch(
  input         clock,
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  input  [16:0] io_in_2_re,
  input  [16:0] io_in_2_im,
  input  [16:0] io_in_3_re,
  input  [16:0] io_in_3_im,
  input  [16:0] io_in_4_re,
  input  [16:0] io_in_4_im,
  input  [16:0] io_in_5_re,
  input  [16:0] io_in_5_im,
  input  [16:0] io_in_6_re,
  input  [16:0] io_in_6_im,
  input  [16:0] io_in_7_re,
  input  [16:0] io_in_7_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im,
  output [16:0] io_out_4_re,
  output [16:0] io_out_4_im,
  output [16:0] io_out_5_re,
  output [16:0] io_out_5_im,
  output [16:0] io_out_6_re,
  output [16:0] io_out_6_im,
  output [16:0] io_out_7_re,
  output [16:0] io_out_7_im,
  input  [2:0]  io_sel
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
`endif // RANDOMIZE_REG_INIT
  reg [16:0] swdata_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_4_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_4_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_4_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_4_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_4_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_4_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_4_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_4_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_5_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_5_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_6_r_5_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_5_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_5_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_6_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_7_r_6_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_57 = 3'h1 == io_sel ? $signed(swdata_1_r_re) : $signed(io_in_0_re); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_58 = 3'h2 == io_sel ? $signed(swdata_2_r_1_re) : $signed(_GEN_57); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_59 = 3'h3 == io_sel ? $signed(swdata_3_r_2_re) : $signed(_GEN_58); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_65 = 3'h1 == io_sel ? $signed(swdata_1_r_im) : $signed(io_in_0_im); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_66 = 3'h2 == io_sel ? $signed(swdata_2_r_1_im) : $signed(_GEN_65); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_67 = 3'h3 == io_sel ? $signed(swdata_3_r_2_im) : $signed(_GEN_66); // @[Reg.scala 20:{22,22}]
  reg [16:0] io_out_0_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_5_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_5_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_6_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_6_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_87 = 3'h1 == io_sel ? $signed(io_in_0_re) : $signed(swdata_7_r_6_re); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_88 = 3'h2 == io_sel ? $signed(swdata_1_r_re) : $signed(_GEN_87); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_89 = 3'h3 == io_sel ? $signed(swdata_2_r_1_re) : $signed(_GEN_88); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_95 = 3'h1 == io_sel ? $signed(io_in_0_im) : $signed(swdata_7_r_6_im); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_96 = 3'h2 == io_sel ? $signed(swdata_1_r_im) : $signed(_GEN_95); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_97 = 3'h3 == io_sel ? $signed(swdata_2_r_1_im) : $signed(_GEN_96); // @[Reg.scala 20:{22,22}]
  reg [16:0] io_out_1_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_5_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_5_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_115 = 3'h1 == io_sel ? $signed(swdata_7_r_6_re) : $signed(swdata_6_r_5_re); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_116 = 3'h2 == io_sel ? $signed(io_in_0_re) : $signed(_GEN_115); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_117 = 3'h3 == io_sel ? $signed(swdata_1_r_re) : $signed(_GEN_116); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_123 = 3'h1 == io_sel ? $signed(swdata_7_r_6_im) : $signed(swdata_6_r_5_im); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_124 = 3'h2 == io_sel ? $signed(io_in_0_im) : $signed(_GEN_123); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_125 = 3'h3 == io_sel ? $signed(swdata_1_r_im) : $signed(_GEN_124); // @[Reg.scala 20:{22,22}]
  reg [16:0] io_out_2_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_3_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_3_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_141 = 3'h1 == io_sel ? $signed(swdata_6_r_5_re) : $signed(swdata_5_r_4_re); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_142 = 3'h2 == io_sel ? $signed(swdata_7_r_6_re) : $signed(_GEN_141); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_143 = 3'h3 == io_sel ? $signed(io_in_0_re) : $signed(_GEN_142); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_149 = 3'h1 == io_sel ? $signed(swdata_6_r_5_im) : $signed(swdata_5_r_4_im); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_150 = 3'h2 == io_sel ? $signed(swdata_7_r_6_im) : $signed(_GEN_149); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_151 = 3'h3 == io_sel ? $signed(io_in_0_im) : $signed(_GEN_150); // @[Reg.scala 20:{22,22}]
  reg [16:0] io_out_3_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_3_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_3_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_3_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_3_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_3_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_4_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_4_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_165 = 3'h1 == io_sel ? $signed(swdata_5_r_4_re) : $signed(swdata_4_r_3_re); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_166 = 3'h2 == io_sel ? $signed(swdata_6_r_5_re) : $signed(_GEN_165); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_167 = 3'h3 == io_sel ? $signed(swdata_7_r_6_re) : $signed(_GEN_166); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_173 = 3'h1 == io_sel ? $signed(swdata_5_r_4_im) : $signed(swdata_4_r_3_im); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_174 = 3'h2 == io_sel ? $signed(swdata_6_r_5_im) : $signed(_GEN_173); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_175 = 3'h3 == io_sel ? $signed(swdata_7_r_6_im) : $signed(_GEN_174); // @[Reg.scala 20:{22,22}]
  reg [16:0] io_out_4_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_4_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_4_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_4_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_5_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_5_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_187 = 3'h1 == io_sel ? $signed(swdata_4_r_3_re) : $signed(swdata_3_r_2_re); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_188 = 3'h2 == io_sel ? $signed(swdata_5_r_4_re) : $signed(_GEN_187); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_189 = 3'h3 == io_sel ? $signed(swdata_6_r_5_re) : $signed(_GEN_188); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_195 = 3'h1 == io_sel ? $signed(swdata_4_r_3_im) : $signed(swdata_3_r_2_im); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_196 = 3'h2 == io_sel ? $signed(swdata_5_r_4_im) : $signed(_GEN_195); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_197 = 3'h3 == io_sel ? $signed(swdata_6_r_5_im) : $signed(_GEN_196); // @[Reg.scala 20:{22,22}]
  reg [16:0] io_out_5_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_5_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_6_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_6_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_207 = 3'h1 == io_sel ? $signed(swdata_3_r_2_re) : $signed(swdata_2_r_1_re); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_208 = 3'h2 == io_sel ? $signed(swdata_4_r_3_re) : $signed(_GEN_207); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_209 = 3'h3 == io_sel ? $signed(swdata_5_r_4_re) : $signed(_GEN_208); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_215 = 3'h1 == io_sel ? $signed(swdata_3_r_2_im) : $signed(swdata_2_r_1_im); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_216 = 3'h2 == io_sel ? $signed(swdata_4_r_3_im) : $signed(_GEN_215); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_217 = 3'h3 == io_sel ? $signed(swdata_5_r_4_im) : $signed(_GEN_216); // @[Reg.scala 20:{22,22}]
  wire [16:0] _GEN_225 = 3'h1 == io_sel ? $signed(swdata_2_r_1_re) : $signed(swdata_1_r_re); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_226 = 3'h2 == io_sel ? $signed(swdata_3_r_2_re) : $signed(_GEN_225); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_227 = 3'h3 == io_sel ? $signed(swdata_4_r_3_re) : $signed(_GEN_226); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_228 = 3'h4 == io_sel ? $signed(swdata_5_r_4_re) : $signed(_GEN_227); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_229 = 3'h5 == io_sel ? $signed(swdata_6_r_5_re) : $signed(_GEN_228); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_230 = 3'h6 == io_sel ? $signed(swdata_7_r_6_re) : $signed(_GEN_229); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_233 = 3'h1 == io_sel ? $signed(swdata_2_r_1_im) : $signed(swdata_1_r_im); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_234 = 3'h2 == io_sel ? $signed(swdata_3_r_2_im) : $signed(_GEN_233); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_235 = 3'h3 == io_sel ? $signed(swdata_4_r_3_im) : $signed(_GEN_234); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_236 = 3'h4 == io_sel ? $signed(swdata_5_r_4_im) : $signed(_GEN_235); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_237 = 3'h5 == io_sel ? $signed(swdata_6_r_5_im) : $signed(_GEN_236); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_238 = 3'h6 == io_sel ? $signed(swdata_7_r_6_im) : $signed(_GEN_237); // @[Modules.scala 306:{38,38}]
  assign io_out_0_re = io_out_0_r_6_re; // @[Modules.scala 306:38]
  assign io_out_0_im = io_out_0_r_6_im; // @[Modules.scala 306:38]
  assign io_out_1_re = io_out_1_r_5_re; // @[Modules.scala 306:38]
  assign io_out_1_im = io_out_1_r_5_im; // @[Modules.scala 306:38]
  assign io_out_2_re = io_out_2_r_4_re; // @[Modules.scala 306:38]
  assign io_out_2_im = io_out_2_r_4_im; // @[Modules.scala 306:38]
  assign io_out_3_re = io_out_3_r_3_re; // @[Modules.scala 306:38]
  assign io_out_3_im = io_out_3_r_3_im; // @[Modules.scala 306:38]
  assign io_out_4_re = io_out_4_r_2_re; // @[Modules.scala 306:38]
  assign io_out_4_im = io_out_4_r_2_im; // @[Modules.scala 306:38]
  assign io_out_5_re = io_out_5_r_1_re; // @[Modules.scala 306:38]
  assign io_out_5_im = io_out_5_r_1_im; // @[Modules.scala 306:38]
  assign io_out_6_re = io_out_6_r_re; // @[Modules.scala 306:38]
  assign io_out_6_im = io_out_6_r_im; // @[Modules.scala 306:38]
  assign io_out_7_re = 3'h7 == io_sel ? $signed(io_in_0_re) : $signed(_GEN_230); // @[Modules.scala 306:{38,38}]
  assign io_out_7_im = 3'h7 == io_sel ? $signed(io_in_0_im) : $signed(_GEN_238); // @[Modules.scala 306:{38,38}]
  always @(posedge clock) begin
    swdata_1_r_re <= io_in_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_im <= io_in_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_re <= io_in_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_im <= io_in_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_1_re <= swdata_2_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_1_im <= swdata_2_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_re <= io_in_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_im <= io_in_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_1_re <= swdata_3_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_1_im <= swdata_3_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_2_re <= swdata_3_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_2_im <= swdata_3_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_4_r_re <= io_in_4_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_4_r_im <= io_in_4_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_4_r_1_re <= swdata_4_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_4_r_1_im <= swdata_4_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_4_r_2_re <= swdata_4_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_4_r_2_im <= swdata_4_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_4_r_3_re <= swdata_4_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_4_r_3_im <= swdata_4_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_re <= io_in_5_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_im <= io_in_5_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_1_re <= swdata_5_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_1_im <= swdata_5_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_2_re <= swdata_5_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_2_im <= swdata_5_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_3_re <= swdata_5_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_3_im <= swdata_5_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_4_re <= swdata_5_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_5_r_4_im <= swdata_5_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_re <= io_in_6_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_im <= io_in_6_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_1_re <= swdata_6_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_1_im <= swdata_6_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_2_re <= swdata_6_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_2_im <= swdata_6_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_3_re <= swdata_6_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_3_im <= swdata_6_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_4_re <= swdata_6_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_4_im <= swdata_6_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_5_re <= swdata_6_r_4_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_6_r_5_im <= swdata_6_r_4_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_re <= io_in_7_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_im <= io_in_7_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_1_re <= swdata_7_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_1_im <= swdata_7_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_2_re <= swdata_7_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_2_im <= swdata_7_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_3_re <= swdata_7_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_3_im <= swdata_7_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_4_re <= swdata_7_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_4_im <= swdata_7_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_5_re <= swdata_7_r_4_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_5_im <= swdata_7_r_4_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_6_re <= swdata_7_r_5_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_7_r_6_im <= swdata_7_r_5_im; // @[Reg.scala 19:16 20:{18,22}]
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_7_r_6_re; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_6_r_5_re; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_5_r_4_re; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_4_r_3_re; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_re <= _GEN_59;
    end
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_7_r_6_im; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_6_r_5_im; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_5_r_4_im; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_4_r_3_im; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_im <= _GEN_67;
    end
    io_out_0_r_1_re <= io_out_0_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_1_im <= io_out_0_r_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_2_re <= io_out_0_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_2_im <= io_out_0_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_3_re <= io_out_0_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_3_im <= io_out_0_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_4_re <= io_out_0_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_4_im <= io_out_0_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_5_re <= io_out_0_r_4_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_5_im <= io_out_0_r_4_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_6_re <= io_out_0_r_5_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_6_im <= io_out_0_r_5_im; // @[Reg.scala 19:16 20:{18,22}]
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_6_r_5_re; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_5_r_4_re; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_4_r_3_re; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_3_r_2_re; // @[Reg.scala 20:22]
    end else begin
      io_out_1_r_re <= _GEN_89;
    end
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_6_r_5_im; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_5_r_4_im; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_4_r_3_im; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_3_r_2_im; // @[Reg.scala 20:22]
    end else begin
      io_out_1_r_im <= _GEN_97;
    end
    io_out_1_r_1_re <= io_out_1_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_1_im <= io_out_1_r_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_2_re <= io_out_1_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_2_im <= io_out_1_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_3_re <= io_out_1_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_3_im <= io_out_1_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_4_re <= io_out_1_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_4_im <= io_out_1_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_5_re <= io_out_1_r_4_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_5_im <= io_out_1_r_4_im; // @[Reg.scala 19:16 20:{18,22}]
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_5_r_4_re; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_4_r_3_re; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_3_r_2_re; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_2_r_1_re; // @[Reg.scala 20:22]
    end else begin
      io_out_2_r_re <= _GEN_117;
    end
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_5_r_4_im; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_4_r_3_im; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_3_r_2_im; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_2_r_1_im; // @[Reg.scala 20:22]
    end else begin
      io_out_2_r_im <= _GEN_125;
    end
    io_out_2_r_1_re <= io_out_2_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_1_im <= io_out_2_r_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_2_re <= io_out_2_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_2_im <= io_out_2_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_3_re <= io_out_2_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_3_im <= io_out_2_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_4_re <= io_out_2_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_4_im <= io_out_2_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_3_r_re <= swdata_4_r_3_re; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_3_r_re <= swdata_3_r_2_re; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_3_r_re <= swdata_2_r_1_re; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_3_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else begin
      io_out_3_r_re <= _GEN_143;
    end
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_3_r_im <= swdata_4_r_3_im; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_3_r_im <= swdata_3_r_2_im; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_3_r_im <= swdata_2_r_1_im; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_3_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else begin
      io_out_3_r_im <= _GEN_151;
    end
    io_out_3_r_1_re <= io_out_3_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_3_r_1_im <= io_out_3_r_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_3_r_2_re <= io_out_3_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_3_r_2_im <= io_out_3_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_3_r_3_re <= io_out_3_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_3_r_3_im <= io_out_3_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_4_r_re <= swdata_3_r_2_re; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_4_r_re <= swdata_2_r_1_re; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_4_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_4_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else begin
      io_out_4_r_re <= _GEN_167;
    end
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_4_r_im <= swdata_3_r_2_im; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_4_r_im <= swdata_2_r_1_im; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_4_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_4_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else begin
      io_out_4_r_im <= _GEN_175;
    end
    io_out_4_r_1_re <= io_out_4_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_4_r_1_im <= io_out_4_r_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_4_r_2_re <= io_out_4_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_4_r_2_im <= io_out_4_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_5_r_re <= swdata_2_r_1_re; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_5_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_5_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_5_r_re <= swdata_7_r_6_re; // @[Reg.scala 20:22]
    end else begin
      io_out_5_r_re <= _GEN_189;
    end
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_5_r_im <= swdata_2_r_1_im; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_5_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_5_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_5_r_im <= swdata_7_r_6_im; // @[Reg.scala 20:22]
    end else begin
      io_out_5_r_im <= _GEN_197;
    end
    io_out_5_r_1_re <= io_out_5_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_5_r_1_im <= io_out_5_r_im; // @[Reg.scala 19:16 20:{18,22}]
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_6_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_6_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_6_r_re <= swdata_7_r_6_re; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_6_r_re <= swdata_6_r_5_re; // @[Reg.scala 20:22]
    end else begin
      io_out_6_r_re <= _GEN_209;
    end
    if (3'h7 == io_sel) begin // @[Reg.scala 20:22]
      io_out_6_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else if (3'h6 == io_sel) begin // @[Reg.scala 20:22]
      io_out_6_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else if (3'h5 == io_sel) begin // @[Reg.scala 20:22]
      io_out_6_r_im <= swdata_7_r_6_im; // @[Reg.scala 20:22]
    end else if (3'h4 == io_sel) begin // @[Reg.scala 20:22]
      io_out_6_r_im <= swdata_6_r_5_im; // @[Reg.scala 20:22]
    end else begin
      io_out_6_r_im <= _GEN_217;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  swdata_1_r_re = _RAND_0[16:0];
  _RAND_1 = {1{`RANDOM}};
  swdata_1_r_im = _RAND_1[16:0];
  _RAND_2 = {1{`RANDOM}};
  swdata_2_r_re = _RAND_2[16:0];
  _RAND_3 = {1{`RANDOM}};
  swdata_2_r_im = _RAND_3[16:0];
  _RAND_4 = {1{`RANDOM}};
  swdata_2_r_1_re = _RAND_4[16:0];
  _RAND_5 = {1{`RANDOM}};
  swdata_2_r_1_im = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  swdata_3_r_re = _RAND_6[16:0];
  _RAND_7 = {1{`RANDOM}};
  swdata_3_r_im = _RAND_7[16:0];
  _RAND_8 = {1{`RANDOM}};
  swdata_3_r_1_re = _RAND_8[16:0];
  _RAND_9 = {1{`RANDOM}};
  swdata_3_r_1_im = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  swdata_3_r_2_re = _RAND_10[16:0];
  _RAND_11 = {1{`RANDOM}};
  swdata_3_r_2_im = _RAND_11[16:0];
  _RAND_12 = {1{`RANDOM}};
  swdata_4_r_re = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  swdata_4_r_im = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  swdata_4_r_1_re = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  swdata_4_r_1_im = _RAND_15[16:0];
  _RAND_16 = {1{`RANDOM}};
  swdata_4_r_2_re = _RAND_16[16:0];
  _RAND_17 = {1{`RANDOM}};
  swdata_4_r_2_im = _RAND_17[16:0];
  _RAND_18 = {1{`RANDOM}};
  swdata_4_r_3_re = _RAND_18[16:0];
  _RAND_19 = {1{`RANDOM}};
  swdata_4_r_3_im = _RAND_19[16:0];
  _RAND_20 = {1{`RANDOM}};
  swdata_5_r_re = _RAND_20[16:0];
  _RAND_21 = {1{`RANDOM}};
  swdata_5_r_im = _RAND_21[16:0];
  _RAND_22 = {1{`RANDOM}};
  swdata_5_r_1_re = _RAND_22[16:0];
  _RAND_23 = {1{`RANDOM}};
  swdata_5_r_1_im = _RAND_23[16:0];
  _RAND_24 = {1{`RANDOM}};
  swdata_5_r_2_re = _RAND_24[16:0];
  _RAND_25 = {1{`RANDOM}};
  swdata_5_r_2_im = _RAND_25[16:0];
  _RAND_26 = {1{`RANDOM}};
  swdata_5_r_3_re = _RAND_26[16:0];
  _RAND_27 = {1{`RANDOM}};
  swdata_5_r_3_im = _RAND_27[16:0];
  _RAND_28 = {1{`RANDOM}};
  swdata_5_r_4_re = _RAND_28[16:0];
  _RAND_29 = {1{`RANDOM}};
  swdata_5_r_4_im = _RAND_29[16:0];
  _RAND_30 = {1{`RANDOM}};
  swdata_6_r_re = _RAND_30[16:0];
  _RAND_31 = {1{`RANDOM}};
  swdata_6_r_im = _RAND_31[16:0];
  _RAND_32 = {1{`RANDOM}};
  swdata_6_r_1_re = _RAND_32[16:0];
  _RAND_33 = {1{`RANDOM}};
  swdata_6_r_1_im = _RAND_33[16:0];
  _RAND_34 = {1{`RANDOM}};
  swdata_6_r_2_re = _RAND_34[16:0];
  _RAND_35 = {1{`RANDOM}};
  swdata_6_r_2_im = _RAND_35[16:0];
  _RAND_36 = {1{`RANDOM}};
  swdata_6_r_3_re = _RAND_36[16:0];
  _RAND_37 = {1{`RANDOM}};
  swdata_6_r_3_im = _RAND_37[16:0];
  _RAND_38 = {1{`RANDOM}};
  swdata_6_r_4_re = _RAND_38[16:0];
  _RAND_39 = {1{`RANDOM}};
  swdata_6_r_4_im = _RAND_39[16:0];
  _RAND_40 = {1{`RANDOM}};
  swdata_6_r_5_re = _RAND_40[16:0];
  _RAND_41 = {1{`RANDOM}};
  swdata_6_r_5_im = _RAND_41[16:0];
  _RAND_42 = {1{`RANDOM}};
  swdata_7_r_re = _RAND_42[16:0];
  _RAND_43 = {1{`RANDOM}};
  swdata_7_r_im = _RAND_43[16:0];
  _RAND_44 = {1{`RANDOM}};
  swdata_7_r_1_re = _RAND_44[16:0];
  _RAND_45 = {1{`RANDOM}};
  swdata_7_r_1_im = _RAND_45[16:0];
  _RAND_46 = {1{`RANDOM}};
  swdata_7_r_2_re = _RAND_46[16:0];
  _RAND_47 = {1{`RANDOM}};
  swdata_7_r_2_im = _RAND_47[16:0];
  _RAND_48 = {1{`RANDOM}};
  swdata_7_r_3_re = _RAND_48[16:0];
  _RAND_49 = {1{`RANDOM}};
  swdata_7_r_3_im = _RAND_49[16:0];
  _RAND_50 = {1{`RANDOM}};
  swdata_7_r_4_re = _RAND_50[16:0];
  _RAND_51 = {1{`RANDOM}};
  swdata_7_r_4_im = _RAND_51[16:0];
  _RAND_52 = {1{`RANDOM}};
  swdata_7_r_5_re = _RAND_52[16:0];
  _RAND_53 = {1{`RANDOM}};
  swdata_7_r_5_im = _RAND_53[16:0];
  _RAND_54 = {1{`RANDOM}};
  swdata_7_r_6_re = _RAND_54[16:0];
  _RAND_55 = {1{`RANDOM}};
  swdata_7_r_6_im = _RAND_55[16:0];
  _RAND_56 = {1{`RANDOM}};
  io_out_0_r_re = _RAND_56[16:0];
  _RAND_57 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_57[16:0];
  _RAND_58 = {1{`RANDOM}};
  io_out_0_r_1_re = _RAND_58[16:0];
  _RAND_59 = {1{`RANDOM}};
  io_out_0_r_1_im = _RAND_59[16:0];
  _RAND_60 = {1{`RANDOM}};
  io_out_0_r_2_re = _RAND_60[16:0];
  _RAND_61 = {1{`RANDOM}};
  io_out_0_r_2_im = _RAND_61[16:0];
  _RAND_62 = {1{`RANDOM}};
  io_out_0_r_3_re = _RAND_62[16:0];
  _RAND_63 = {1{`RANDOM}};
  io_out_0_r_3_im = _RAND_63[16:0];
  _RAND_64 = {1{`RANDOM}};
  io_out_0_r_4_re = _RAND_64[16:0];
  _RAND_65 = {1{`RANDOM}};
  io_out_0_r_4_im = _RAND_65[16:0];
  _RAND_66 = {1{`RANDOM}};
  io_out_0_r_5_re = _RAND_66[16:0];
  _RAND_67 = {1{`RANDOM}};
  io_out_0_r_5_im = _RAND_67[16:0];
  _RAND_68 = {1{`RANDOM}};
  io_out_0_r_6_re = _RAND_68[16:0];
  _RAND_69 = {1{`RANDOM}};
  io_out_0_r_6_im = _RAND_69[16:0];
  _RAND_70 = {1{`RANDOM}};
  io_out_1_r_re = _RAND_70[16:0];
  _RAND_71 = {1{`RANDOM}};
  io_out_1_r_im = _RAND_71[16:0];
  _RAND_72 = {1{`RANDOM}};
  io_out_1_r_1_re = _RAND_72[16:0];
  _RAND_73 = {1{`RANDOM}};
  io_out_1_r_1_im = _RAND_73[16:0];
  _RAND_74 = {1{`RANDOM}};
  io_out_1_r_2_re = _RAND_74[16:0];
  _RAND_75 = {1{`RANDOM}};
  io_out_1_r_2_im = _RAND_75[16:0];
  _RAND_76 = {1{`RANDOM}};
  io_out_1_r_3_re = _RAND_76[16:0];
  _RAND_77 = {1{`RANDOM}};
  io_out_1_r_3_im = _RAND_77[16:0];
  _RAND_78 = {1{`RANDOM}};
  io_out_1_r_4_re = _RAND_78[16:0];
  _RAND_79 = {1{`RANDOM}};
  io_out_1_r_4_im = _RAND_79[16:0];
  _RAND_80 = {1{`RANDOM}};
  io_out_1_r_5_re = _RAND_80[16:0];
  _RAND_81 = {1{`RANDOM}};
  io_out_1_r_5_im = _RAND_81[16:0];
  _RAND_82 = {1{`RANDOM}};
  io_out_2_r_re = _RAND_82[16:0];
  _RAND_83 = {1{`RANDOM}};
  io_out_2_r_im = _RAND_83[16:0];
  _RAND_84 = {1{`RANDOM}};
  io_out_2_r_1_re = _RAND_84[16:0];
  _RAND_85 = {1{`RANDOM}};
  io_out_2_r_1_im = _RAND_85[16:0];
  _RAND_86 = {1{`RANDOM}};
  io_out_2_r_2_re = _RAND_86[16:0];
  _RAND_87 = {1{`RANDOM}};
  io_out_2_r_2_im = _RAND_87[16:0];
  _RAND_88 = {1{`RANDOM}};
  io_out_2_r_3_re = _RAND_88[16:0];
  _RAND_89 = {1{`RANDOM}};
  io_out_2_r_3_im = _RAND_89[16:0];
  _RAND_90 = {1{`RANDOM}};
  io_out_2_r_4_re = _RAND_90[16:0];
  _RAND_91 = {1{`RANDOM}};
  io_out_2_r_4_im = _RAND_91[16:0];
  _RAND_92 = {1{`RANDOM}};
  io_out_3_r_re = _RAND_92[16:0];
  _RAND_93 = {1{`RANDOM}};
  io_out_3_r_im = _RAND_93[16:0];
  _RAND_94 = {1{`RANDOM}};
  io_out_3_r_1_re = _RAND_94[16:0];
  _RAND_95 = {1{`RANDOM}};
  io_out_3_r_1_im = _RAND_95[16:0];
  _RAND_96 = {1{`RANDOM}};
  io_out_3_r_2_re = _RAND_96[16:0];
  _RAND_97 = {1{`RANDOM}};
  io_out_3_r_2_im = _RAND_97[16:0];
  _RAND_98 = {1{`RANDOM}};
  io_out_3_r_3_re = _RAND_98[16:0];
  _RAND_99 = {1{`RANDOM}};
  io_out_3_r_3_im = _RAND_99[16:0];
  _RAND_100 = {1{`RANDOM}};
  io_out_4_r_re = _RAND_100[16:0];
  _RAND_101 = {1{`RANDOM}};
  io_out_4_r_im = _RAND_101[16:0];
  _RAND_102 = {1{`RANDOM}};
  io_out_4_r_1_re = _RAND_102[16:0];
  _RAND_103 = {1{`RANDOM}};
  io_out_4_r_1_im = _RAND_103[16:0];
  _RAND_104 = {1{`RANDOM}};
  io_out_4_r_2_re = _RAND_104[16:0];
  _RAND_105 = {1{`RANDOM}};
  io_out_4_r_2_im = _RAND_105[16:0];
  _RAND_106 = {1{`RANDOM}};
  io_out_5_r_re = _RAND_106[16:0];
  _RAND_107 = {1{`RANDOM}};
  io_out_5_r_im = _RAND_107[16:0];
  _RAND_108 = {1{`RANDOM}};
  io_out_5_r_1_re = _RAND_108[16:0];
  _RAND_109 = {1{`RANDOM}};
  io_out_5_r_1_im = _RAND_109[16:0];
  _RAND_110 = {1{`RANDOM}};
  io_out_6_r_re = _RAND_110[16:0];
  _RAND_111 = {1{`RANDOM}};
  io_out_6_r_im = _RAND_111[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FFT(
  input         clock,
  input         reset,
  input  [16:0] io_dIn_0_re,
  input  [16:0] io_dIn_0_im,
  input  [16:0] io_dIn_1_re,
  input  [16:0] io_dIn_1_im,
  input  [16:0] io_dIn_2_re,
  input  [16:0] io_dIn_2_im,
  input  [16:0] io_dIn_3_re,
  input  [16:0] io_dIn_3_im,
  input  [16:0] io_dIn_4_re,
  input  [16:0] io_dIn_4_im,
  input  [16:0] io_dIn_5_re,
  input  [16:0] io_dIn_5_im,
  input  [16:0] io_dIn_6_re,
  input  [16:0] io_dIn_6_im,
  input  [16:0] io_dIn_7_re,
  input  [16:0] io_dIn_7_im,
  output [16:0] io_dOut_0_re,
  output [16:0] io_dOut_0_im,
  output [16:0] io_dOut_1_re,
  output [16:0] io_dOut_1_im,
  output [16:0] io_dOut_2_re,
  output [16:0] io_dOut_2_im,
  output [16:0] io_dOut_3_re,
  output [16:0] io_dOut_3_im,
  output [16:0] io_dOut_4_re,
  output [16:0] io_dOut_4_im,
  output [16:0] io_dOut_5_re,
  output [16:0] io_dOut_5_im,
  output [16:0] io_dOut_6_re,
  output [16:0] io_dOut_6_im,
  output [16:0] io_dOut_7_re,
  output [16:0] io_dOut_7_im,
  input         io_din_valid,
  output        io_dout_valid,
  output        io_busy
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  wire [16:0] inst_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_4_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_4_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_5_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_5_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_6_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_6_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_7_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_7_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_4_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_4_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_5_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_5_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_6_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_6_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_7_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_7_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_4_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_4_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_5_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_5_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_6_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_6_im; // @[Modules.scala 287:22]
  wire [16:0] dataotemp_inst_io_in_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_4_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_4_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_5_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_5_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_6_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_6_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_7_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_7_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_4_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_4_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_5_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_5_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_6_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_6_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_7_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_7_im; // @[Modules.scala 213:22]
  wire  inst_1_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_3_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_4_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_4_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_5_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_5_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_6_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_6_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_7_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_in_7_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_3_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_4_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_4_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_5_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_5_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_6_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_6_im; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_7_re; // @[Modules.scala 311:22]
  wire [16:0] inst_1_io_out_7_im; // @[Modules.scala 311:22]
  wire [2:0] inst_1_io_sel; // @[Modules.scala 311:22]
  reg [6:0] cnt_0; // @[FFT.scala 110:46]
  wire  busy = cnt_0 != 7'h0; // @[FFT.scala 114:21]
  wire [6:0] _cnt_0_T_2 = cnt_0 + 7'h1; // @[FFT.scala 116:87]
  wire [2:0] wnCtrl = cnt_0[2:0]; // @[FFT.scala 131:23]
  wire [3:0] _wnList_T = {{1'd0}, wnCtrl}; // @[FFT.scala 135:148]
  wire [16:0] _GEN_2 = 3'h1 == _wnList_T[2:0] ? $signed(17'shfec) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_3 = 3'h2 == _wnList_T[2:0] ? $signed(17'shfb1) : $signed(_GEN_2); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_4 = 3'h3 == _wnList_T[2:0] ? $signed(17'shf50) : $signed(_GEN_3); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_5 = 3'h4 == _wnList_T[2:0] ? $signed(17'shec8) : $signed(_GEN_4); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_6 = 3'h5 == _wnList_T[2:0] ? $signed(17'she1c) : $signed(_GEN_5); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_7 = 3'h6 == _wnList_T[2:0] ? $signed(17'shd4e) : $signed(_GEN_6); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_10 = 3'h1 == _wnList_T[2:0] ? $signed(-17'sh191) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_11 = 3'h2 == _wnList_T[2:0] ? $signed(-17'sh31f) : $signed(_GEN_10); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_12 = 3'h3 == _wnList_T[2:0] ? $signed(-17'sh4a5) : $signed(_GEN_11); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_13 = 3'h4 == _wnList_T[2:0] ? $signed(-17'sh61f) : $signed(_GEN_12); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_14 = 3'h5 == _wnList_T[2:0] ? $signed(-17'sh78b) : $signed(_GEN_13); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_15 = 3'h6 == _wnList_T[2:0] ? $signed(-17'sh8e4) : $signed(_GEN_14); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_18 = 3'h1 == _wnList_T[2:0] ? $signed(17'shfb1) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_19 = 3'h2 == _wnList_T[2:0] ? $signed(17'shec8) : $signed(_GEN_18); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_20 = 3'h3 == _wnList_T[2:0] ? $signed(17'shd4e) : $signed(_GEN_19); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_21 = 3'h4 == _wnList_T[2:0] ? $signed(17'shb50) : $signed(_GEN_20); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_22 = 3'h5 == _wnList_T[2:0] ? $signed(17'sh8e4) : $signed(_GEN_21); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_23 = 3'h6 == _wnList_T[2:0] ? $signed(17'sh61f) : $signed(_GEN_22); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_26 = 3'h1 == _wnList_T[2:0] ? $signed(-17'sh31f) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_27 = 3'h2 == _wnList_T[2:0] ? $signed(-17'sh61f) : $signed(_GEN_26); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_28 = 3'h3 == _wnList_T[2:0] ? $signed(-17'sh8e4) : $signed(_GEN_27); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_29 = 3'h4 == _wnList_T[2:0] ? $signed(-17'shb50) : $signed(_GEN_28); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_30 = 3'h5 == _wnList_T[2:0] ? $signed(-17'shd4e) : $signed(_GEN_29); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_31 = 3'h6 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_30); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_34 = 3'h1 == _wnList_T[2:0] ? $signed(17'shf50) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_35 = 3'h2 == _wnList_T[2:0] ? $signed(17'shd4e) : $signed(_GEN_34); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_36 = 3'h3 == _wnList_T[2:0] ? $signed(17'sha26) : $signed(_GEN_35); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_37 = 3'h4 == _wnList_T[2:0] ? $signed(17'sh61f) : $signed(_GEN_36); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_38 = 3'h5 == _wnList_T[2:0] ? $signed(17'sh191) : $signed(_GEN_37); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_39 = 3'h6 == _wnList_T[2:0] ? $signed(-17'sh31f) : $signed(_GEN_38); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_42 = 3'h1 == _wnList_T[2:0] ? $signed(-17'sh4a5) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_43 = 3'h2 == _wnList_T[2:0] ? $signed(-17'sh8e4) : $signed(_GEN_42); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_44 = 3'h3 == _wnList_T[2:0] ? $signed(-17'shc5e) : $signed(_GEN_43); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_45 = 3'h4 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_44); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_46 = 3'h5 == _wnList_T[2:0] ? $signed(-17'shfec) : $signed(_GEN_45); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_47 = 3'h6 == _wnList_T[2:0] ? $signed(-17'shfb1) : $signed(_GEN_46); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_50 = 3'h1 == _wnList_T[2:0] ? $signed(17'shec8) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_51 = 3'h2 == _wnList_T[2:0] ? $signed(17'shb50) : $signed(_GEN_50); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_52 = 3'h3 == _wnList_T[2:0] ? $signed(17'sh61f) : $signed(_GEN_51); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_53 = 3'h4 == _wnList_T[2:0] ? $signed(17'sh0) : $signed(_GEN_52); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_54 = 3'h5 == _wnList_T[2:0] ? $signed(-17'sh61f) : $signed(_GEN_53); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_55 = 3'h6 == _wnList_T[2:0] ? $signed(-17'shb50) : $signed(_GEN_54); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_58 = 3'h1 == _wnList_T[2:0] ? $signed(-17'sh61f) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_59 = 3'h2 == _wnList_T[2:0] ? $signed(-17'shb50) : $signed(_GEN_58); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_60 = 3'h3 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_59); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_61 = 3'h4 == _wnList_T[2:0] ? $signed(-17'sh1000) : $signed(_GEN_60); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_62 = 3'h5 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_61); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_63 = 3'h6 == _wnList_T[2:0] ? $signed(-17'shb50) : $signed(_GEN_62); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_66 = 3'h1 == _wnList_T[2:0] ? $signed(17'she1c) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_67 = 3'h2 == _wnList_T[2:0] ? $signed(17'sh8e4) : $signed(_GEN_66); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_68 = 3'h3 == _wnList_T[2:0] ? $signed(17'sh191) : $signed(_GEN_67); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_69 = 3'h4 == _wnList_T[2:0] ? $signed(-17'sh61f) : $signed(_GEN_68); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_70 = 3'h5 == _wnList_T[2:0] ? $signed(-17'shc5e) : $signed(_GEN_69); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_71 = 3'h6 == _wnList_T[2:0] ? $signed(-17'shfb1) : $signed(_GEN_70); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_74 = 3'h1 == _wnList_T[2:0] ? $signed(-17'sh78b) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_75 = 3'h2 == _wnList_T[2:0] ? $signed(-17'shd4e) : $signed(_GEN_74); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_76 = 3'h3 == _wnList_T[2:0] ? $signed(-17'shfec) : $signed(_GEN_75); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_77 = 3'h4 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_76); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_78 = 3'h5 == _wnList_T[2:0] ? $signed(-17'sha26) : $signed(_GEN_77); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_79 = 3'h6 == _wnList_T[2:0] ? $signed(-17'sh31f) : $signed(_GEN_78); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_82 = 3'h1 == _wnList_T[2:0] ? $signed(17'shd4e) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_83 = 3'h2 == _wnList_T[2:0] ? $signed(17'sh61f) : $signed(_GEN_82); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_84 = 3'h3 == _wnList_T[2:0] ? $signed(-17'sh31f) : $signed(_GEN_83); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_85 = 3'h4 == _wnList_T[2:0] ? $signed(-17'shb50) : $signed(_GEN_84); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_86 = 3'h5 == _wnList_T[2:0] ? $signed(-17'shfb1) : $signed(_GEN_85); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_87 = 3'h6 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_86); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_90 = 3'h1 == _wnList_T[2:0] ? $signed(-17'sh8e4) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_91 = 3'h2 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_90); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_92 = 3'h3 == _wnList_T[2:0] ? $signed(-17'shfb1) : $signed(_GEN_91); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_93 = 3'h4 == _wnList_T[2:0] ? $signed(-17'shb50) : $signed(_GEN_92); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_94 = 3'h5 == _wnList_T[2:0] ? $signed(-17'sh31f) : $signed(_GEN_93); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_95 = 3'h6 == _wnList_T[2:0] ? $signed(17'sh61f) : $signed(_GEN_94); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_98 = 3'h1 == _wnList_T[2:0] ? $signed(17'shc5e) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_99 = 3'h2 == _wnList_T[2:0] ? $signed(17'sh31f) : $signed(_GEN_98); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_100 = 3'h3 == _wnList_T[2:0] ? $signed(-17'sh78b) : $signed(_GEN_99); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_101 = 3'h4 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_100); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_102 = 3'h5 == _wnList_T[2:0] ? $signed(-17'shf50) : $signed(_GEN_101); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_103 = 3'h6 == _wnList_T[2:0] ? $signed(-17'sh8e4) : $signed(_GEN_102); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_106 = 3'h1 == _wnList_T[2:0] ? $signed(-17'sha26) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_107 = 3'h2 == _wnList_T[2:0] ? $signed(-17'shfb1) : $signed(_GEN_106); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_108 = 3'h3 == _wnList_T[2:0] ? $signed(-17'she1c) : $signed(_GEN_107); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_109 = 3'h4 == _wnList_T[2:0] ? $signed(-17'sh61f) : $signed(_GEN_108); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_110 = 3'h5 == _wnList_T[2:0] ? $signed(17'sh4a5) : $signed(_GEN_109); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_111 = 3'h6 == _wnList_T[2:0] ? $signed(17'shd4e) : $signed(_GEN_110); // @[FFT.scala 73:{12,12}]
  reg [6:0] io_dout_valid_REG; // @[FFT.scala 179:27]
  reg [16:0] REG_0_re; // @[FFT.scala 184:23]
  reg [16:0] REG_0_im; // @[FFT.scala 184:23]
  reg [16:0] REG_1_re; // @[FFT.scala 184:23]
  reg [16:0] REG_1_im; // @[FFT.scala 184:23]
  reg [16:0] REG_2_re; // @[FFT.scala 184:23]
  reg [16:0] REG_2_im; // @[FFT.scala 184:23]
  reg [16:0] REG_3_re; // @[FFT.scala 184:23]
  reg [16:0] REG_3_im; // @[FFT.scala 184:23]
  reg [16:0] REG_4_re; // @[FFT.scala 184:23]
  reg [16:0] REG_4_im; // @[FFT.scala 184:23]
  reg [16:0] REG_5_re; // @[FFT.scala 184:23]
  reg [16:0] REG_5_im; // @[FFT.scala 184:23]
  reg [16:0] REG_6_re; // @[FFT.scala 184:23]
  reg [16:0] REG_6_im; // @[FFT.scala 184:23]
  reg [16:0] REG_7_re; // @[FFT.scala 184:23]
  reg [16:0] REG_7_im; // @[FFT.scala 184:23]
  ButterflyMul inst ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_io_in_0_re),
    .io_in_0_im(inst_io_in_0_im),
    .io_in_1_re(inst_io_in_1_re),
    .io_in_1_im(inst_io_in_1_im),
    .io_in_2_re(inst_io_in_2_re),
    .io_in_2_im(inst_io_in_2_im),
    .io_in_3_re(inst_io_in_3_re),
    .io_in_3_im(inst_io_in_3_im),
    .io_in_4_re(inst_io_in_4_re),
    .io_in_4_im(inst_io_in_4_im),
    .io_in_5_re(inst_io_in_5_re),
    .io_in_5_im(inst_io_in_5_im),
    .io_in_6_re(inst_io_in_6_re),
    .io_in_6_im(inst_io_in_6_im),
    .io_in_7_re(inst_io_in_7_re),
    .io_in_7_im(inst_io_in_7_im),
    .io_out_0_re(inst_io_out_0_re),
    .io_out_0_im(inst_io_out_0_im),
    .io_out_1_re(inst_io_out_1_re),
    .io_out_1_im(inst_io_out_1_im),
    .io_out_2_re(inst_io_out_2_re),
    .io_out_2_im(inst_io_out_2_im),
    .io_out_3_re(inst_io_out_3_re),
    .io_out_3_im(inst_io_out_3_im),
    .io_out_4_re(inst_io_out_4_re),
    .io_out_4_im(inst_io_out_4_im),
    .io_out_5_re(inst_io_out_5_re),
    .io_out_5_im(inst_io_out_5_im),
    .io_out_6_re(inst_io_out_6_re),
    .io_out_6_im(inst_io_out_6_im),
    .io_out_7_re(inst_io_out_7_re),
    .io_out_7_im(inst_io_out_7_im),
    .io_wn_0_re(inst_io_wn_0_re),
    .io_wn_0_im(inst_io_wn_0_im),
    .io_wn_1_re(inst_io_wn_1_re),
    .io_wn_1_im(inst_io_wn_1_im),
    .io_wn_2_re(inst_io_wn_2_re),
    .io_wn_2_im(inst_io_wn_2_im),
    .io_wn_3_re(inst_io_wn_3_re),
    .io_wn_3_im(inst_io_wn_3_im),
    .io_wn_4_re(inst_io_wn_4_re),
    .io_wn_4_im(inst_io_wn_4_im),
    .io_wn_5_re(inst_io_wn_5_re),
    .io_wn_5_im(inst_io_wn_5_im),
    .io_wn_6_re(inst_io_wn_6_re),
    .io_wn_6_im(inst_io_wn_6_im)
  );
  ButterflyAdd dataotemp_inst ( // @[Modules.scala 213:22]
    .io_in_0_re(dataotemp_inst_io_in_0_re),
    .io_in_0_im(dataotemp_inst_io_in_0_im),
    .io_in_1_re(dataotemp_inst_io_in_1_re),
    .io_in_1_im(dataotemp_inst_io_in_1_im),
    .io_in_2_re(dataotemp_inst_io_in_2_re),
    .io_in_2_im(dataotemp_inst_io_in_2_im),
    .io_in_3_re(dataotemp_inst_io_in_3_re),
    .io_in_3_im(dataotemp_inst_io_in_3_im),
    .io_in_4_re(dataotemp_inst_io_in_4_re),
    .io_in_4_im(dataotemp_inst_io_in_4_im),
    .io_in_5_re(dataotemp_inst_io_in_5_re),
    .io_in_5_im(dataotemp_inst_io_in_5_im),
    .io_in_6_re(dataotemp_inst_io_in_6_re),
    .io_in_6_im(dataotemp_inst_io_in_6_im),
    .io_in_7_re(dataotemp_inst_io_in_7_re),
    .io_in_7_im(dataotemp_inst_io_in_7_im),
    .io_out_0_re(dataotemp_inst_io_out_0_re),
    .io_out_0_im(dataotemp_inst_io_out_0_im),
    .io_out_1_re(dataotemp_inst_io_out_1_re),
    .io_out_1_im(dataotemp_inst_io_out_1_im),
    .io_out_2_re(dataotemp_inst_io_out_2_re),
    .io_out_2_im(dataotemp_inst_io_out_2_im),
    .io_out_3_re(dataotemp_inst_io_out_3_re),
    .io_out_3_im(dataotemp_inst_io_out_3_im),
    .io_out_4_re(dataotemp_inst_io_out_4_re),
    .io_out_4_im(dataotemp_inst_io_out_4_im),
    .io_out_5_re(dataotemp_inst_io_out_5_re),
    .io_out_5_im(dataotemp_inst_io_out_5_im),
    .io_out_6_re(dataotemp_inst_io_out_6_re),
    .io_out_6_im(dataotemp_inst_io_out_6_im),
    .io_out_7_re(dataotemp_inst_io_out_7_re),
    .io_out_7_im(dataotemp_inst_io_out_7_im)
  );
  Switch inst_1 ( // @[Modules.scala 311:22]
    .clock(inst_1_clock),
    .io_in_0_re(inst_1_io_in_0_re),
    .io_in_0_im(inst_1_io_in_0_im),
    .io_in_1_re(inst_1_io_in_1_re),
    .io_in_1_im(inst_1_io_in_1_im),
    .io_in_2_re(inst_1_io_in_2_re),
    .io_in_2_im(inst_1_io_in_2_im),
    .io_in_3_re(inst_1_io_in_3_re),
    .io_in_3_im(inst_1_io_in_3_im),
    .io_in_4_re(inst_1_io_in_4_re),
    .io_in_4_im(inst_1_io_in_4_im),
    .io_in_5_re(inst_1_io_in_5_re),
    .io_in_5_im(inst_1_io_in_5_im),
    .io_in_6_re(inst_1_io_in_6_re),
    .io_in_6_im(inst_1_io_in_6_im),
    .io_in_7_re(inst_1_io_in_7_re),
    .io_in_7_im(inst_1_io_in_7_im),
    .io_out_0_re(inst_1_io_out_0_re),
    .io_out_0_im(inst_1_io_out_0_im),
    .io_out_1_re(inst_1_io_out_1_re),
    .io_out_1_im(inst_1_io_out_1_im),
    .io_out_2_re(inst_1_io_out_2_re),
    .io_out_2_im(inst_1_io_out_2_im),
    .io_out_3_re(inst_1_io_out_3_re),
    .io_out_3_im(inst_1_io_out_3_im),
    .io_out_4_re(inst_1_io_out_4_re),
    .io_out_4_im(inst_1_io_out_4_im),
    .io_out_5_re(inst_1_io_out_5_re),
    .io_out_5_im(inst_1_io_out_5_im),
    .io_out_6_re(inst_1_io_out_6_re),
    .io_out_6_im(inst_1_io_out_6_im),
    .io_out_7_re(inst_1_io_out_7_re),
    .io_out_7_im(inst_1_io_out_7_im),
    .io_sel(inst_1_io_sel)
  );
  assign io_dOut_0_re = REG_0_re; // @[FFT.scala 184:13]
  assign io_dOut_0_im = REG_0_im; // @[FFT.scala 184:13]
  assign io_dOut_1_re = REG_1_re; // @[FFT.scala 184:13]
  assign io_dOut_1_im = REG_1_im; // @[FFT.scala 184:13]
  assign io_dOut_2_re = REG_2_re; // @[FFT.scala 184:13]
  assign io_dOut_2_im = REG_2_im; // @[FFT.scala 184:13]
  assign io_dOut_3_re = REG_3_re; // @[FFT.scala 184:13]
  assign io_dOut_3_im = REG_3_im; // @[FFT.scala 184:13]
  assign io_dOut_4_re = REG_4_re; // @[FFT.scala 184:13]
  assign io_dOut_4_im = REG_4_im; // @[FFT.scala 184:13]
  assign io_dOut_5_re = REG_5_re; // @[FFT.scala 184:13]
  assign io_dOut_5_im = REG_5_im; // @[FFT.scala 184:13]
  assign io_dOut_6_re = REG_6_re; // @[FFT.scala 184:13]
  assign io_dOut_6_im = REG_6_im; // @[FFT.scala 184:13]
  assign io_dOut_7_re = REG_7_re; // @[FFT.scala 184:13]
  assign io_dOut_7_im = REG_7_im; // @[FFT.scala 184:13]
  assign io_dout_valid = io_dout_valid_REG == 7'h7; // @[FFT.scala 179:36]
  assign io_busy = cnt_0 != 7'h0; // @[FFT.scala 114:21]
  assign inst_io_in_0_re = io_dIn_0_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_0_im = io_dIn_0_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_1_re = io_dIn_1_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_1_im = io_dIn_1_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_2_re = io_dIn_2_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_2_im = io_dIn_2_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_3_re = io_dIn_3_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_3_im = io_dIn_3_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_4_re = io_dIn_4_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_4_im = io_dIn_4_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_5_re = io_dIn_5_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_5_im = io_dIn_5_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_6_re = io_dIn_6_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_6_im = io_dIn_6_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_7_re = io_dIn_7_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_7_im = io_dIn_7_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_wn_0_re = 3'h7 == _wnList_T[2:0] ? $signed(17'shc5e) : $signed(_GEN_7); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_0_im = 3'h7 == _wnList_T[2:0] ? $signed(-17'sha26) : $signed(_GEN_15); // @[FFT.scala 73:{12,12}]
  assign inst_io_wn_1_re = 3'h7 == _wnList_T[2:0] ? $signed(17'sh31f) : $signed(_GEN_23); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_1_im = 3'h7 == _wnList_T[2:0] ? $signed(-17'shfb1) : $signed(_GEN_31); // @[FFT.scala 73:{12,12}]
  assign inst_io_wn_2_re = 3'h7 == _wnList_T[2:0] ? $signed(-17'sh78b) : $signed(_GEN_39); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_2_im = 3'h7 == _wnList_T[2:0] ? $signed(-17'she1c) : $signed(_GEN_47); // @[FFT.scala 73:{12,12}]
  assign inst_io_wn_3_re = 3'h7 == _wnList_T[2:0] ? $signed(-17'shec8) : $signed(_GEN_55); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_3_im = 3'h7 == _wnList_T[2:0] ? $signed(-17'sh61f) : $signed(_GEN_63); // @[FFT.scala 73:{12,12}]
  assign inst_io_wn_4_re = 3'h7 == _wnList_T[2:0] ? $signed(-17'shf50) : $signed(_GEN_71); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_4_im = 3'h7 == _wnList_T[2:0] ? $signed(17'sh4a5) : $signed(_GEN_79); // @[FFT.scala 73:{12,12}]
  assign inst_io_wn_5_re = 3'h7 == _wnList_T[2:0] ? $signed(-17'sh8e4) : $signed(_GEN_87); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_5_im = 3'h7 == _wnList_T[2:0] ? $signed(17'shd4e) : $signed(_GEN_95); // @[FFT.scala 73:{12,12}]
  assign inst_io_wn_6_re = 3'h7 == _wnList_T[2:0] ? $signed(17'sh191) : $signed(_GEN_103); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_6_im = 3'h7 == _wnList_T[2:0] ? $signed(17'shfec) : $signed(_GEN_111); // @[FFT.scala 73:{12,12}]
  assign dataotemp_inst_io_in_0_re = inst_1_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_0_im = inst_1_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_1_re = inst_1_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_1_im = inst_1_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_2_re = inst_1_io_out_2_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_2_im = inst_1_io_out_2_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_3_re = inst_1_io_out_3_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_3_im = inst_1_io_out_3_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_4_re = inst_1_io_out_4_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_4_im = inst_1_io_out_4_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_5_re = inst_1_io_out_5_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_5_im = inst_1_io_out_5_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_6_re = inst_1_io_out_6_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_6_im = inst_1_io_out_6_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_7_re = inst_1_io_out_7_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_7_im = inst_1_io_out_7_im; // @[FFT.scala 122:65 164:54]
  assign inst_1_clock = clock;
  assign inst_1_io_in_0_re = inst_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_0_im = inst_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_1_re = inst_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_1_im = inst_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_2_re = inst_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_2_im = inst_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_3_re = inst_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_3_im = inst_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_4_re = inst_io_out_4_re; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_4_im = inst_io_out_4_im; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_5_re = inst_io_out_5_re; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_5_im = inst_io_out_5_im; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_6_re = inst_io_out_6_re; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_6_im = inst_io_out_6_im; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_7_re = inst_io_out_7_re; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_in_7_im = inst_io_out_7_im; // @[FFT.scala 123:69 136:19]
  assign inst_1_io_sel = cnt_0[2:0]; // @[FFT.scala 163:31]
  always @(posedge clock) begin
    if (reset) begin // @[FFT.scala 110:46]
      cnt_0 <= 7'h0; // @[FFT.scala 110:46]
    end else if (io_din_valid | busy) begin // @[FFT.scala 115:30]
      if (cnt_0 == 7'hf) begin // @[FFT.scala 116:18]
        cnt_0 <= 7'h0;
      end else begin
        cnt_0 <= _cnt_0_T_2;
      end
    end
    io_dout_valid_REG <= cnt_0; // @[FFT.scala 179:27]
    REG_0_re <= dataotemp_inst_io_out_0_re; // @[FFT.scala 124:22 141:9]
    REG_0_im <= dataotemp_inst_io_out_0_im; // @[FFT.scala 124:22 141:9]
    REG_1_re <= dataotemp_inst_io_out_1_re; // @[FFT.scala 124:22 141:9]
    REG_1_im <= dataotemp_inst_io_out_1_im; // @[FFT.scala 124:22 141:9]
    REG_2_re <= dataotemp_inst_io_out_2_re; // @[FFT.scala 124:22 141:9]
    REG_2_im <= dataotemp_inst_io_out_2_im; // @[FFT.scala 124:22 141:9]
    REG_3_re <= dataotemp_inst_io_out_3_re; // @[FFT.scala 124:22 141:9]
    REG_3_im <= dataotemp_inst_io_out_3_im; // @[FFT.scala 124:22 141:9]
    REG_4_re <= dataotemp_inst_io_out_4_re; // @[FFT.scala 124:22 141:9]
    REG_4_im <= dataotemp_inst_io_out_4_im; // @[FFT.scala 124:22 141:9]
    REG_5_re <= dataotemp_inst_io_out_5_re; // @[FFT.scala 124:22 141:9]
    REG_5_im <= dataotemp_inst_io_out_5_im; // @[FFT.scala 124:22 141:9]
    REG_6_re <= dataotemp_inst_io_out_6_re; // @[FFT.scala 124:22 141:9]
    REG_6_im <= dataotemp_inst_io_out_6_im; // @[FFT.scala 124:22 141:9]
    REG_7_re <= dataotemp_inst_io_out_7_re; // @[FFT.scala 124:22 141:9]
    REG_7_im <= dataotemp_inst_io_out_7_im; // @[FFT.scala 124:22 141:9]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cnt_0 = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  io_dout_valid_REG = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  REG_0_re = _RAND_2[16:0];
  _RAND_3 = {1{`RANDOM}};
  REG_0_im = _RAND_3[16:0];
  _RAND_4 = {1{`RANDOM}};
  REG_1_re = _RAND_4[16:0];
  _RAND_5 = {1{`RANDOM}};
  REG_1_im = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_re = _RAND_6[16:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_im = _RAND_7[16:0];
  _RAND_8 = {1{`RANDOM}};
  REG_3_re = _RAND_8[16:0];
  _RAND_9 = {1{`RANDOM}};
  REG_3_im = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  REG_4_re = _RAND_10[16:0];
  _RAND_11 = {1{`RANDOM}};
  REG_4_im = _RAND_11[16:0];
  _RAND_12 = {1{`RANDOM}};
  REG_5_re = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  REG_5_im = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  REG_6_re = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  REG_6_im = _RAND_15[16:0];
  _RAND_16 = {1{`RANDOM}};
  REG_7_re = _RAND_16[16:0];
  _RAND_17 = {1{`RANDOM}};
  REG_7_im = _RAND_17[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FFTtop(
  input         clock,
  input         reset,
  input  [16:0] io_dIn_0_re,
  input  [16:0] io_dIn_0_im,
  input  [16:0] io_dIn_1_re,
  input  [16:0] io_dIn_1_im,
  input  [16:0] io_dIn_2_re,
  input  [16:0] io_dIn_2_im,
  input  [16:0] io_dIn_3_re,
  input  [16:0] io_dIn_3_im,
  input  [16:0] io_dIn_4_re,
  input  [16:0] io_dIn_4_im,
  input  [16:0] io_dIn_5_re,
  input  [16:0] io_dIn_5_im,
  input  [16:0] io_dIn_6_re,
  input  [16:0] io_dIn_6_im,
  input  [16:0] io_dIn_7_re,
  input  [16:0] io_dIn_7_im,
  output [16:0] io_dOut_0_re,
  output [16:0] io_dOut_0_im,
  output [16:0] io_dOut_1_re,
  output [16:0] io_dOut_1_im,
  output [16:0] io_dOut_2_re,
  output [16:0] io_dOut_2_im,
  output [16:0] io_dOut_3_re,
  output [16:0] io_dOut_3_im,
  output [16:0] io_dOut_4_re,
  output [16:0] io_dOut_4_im,
  output [16:0] io_dOut_5_re,
  output [16:0] io_dOut_5_im,
  output [16:0] io_dOut_6_re,
  output [16:0] io_dOut_6_im,
  output [16:0] io_dOut_7_re,
  output [16:0] io_dOut_7_im,
  input         io_din_valid,
  output        io_dout_valid,
  output        io_busy
);
  wire  fft_clock; // @[Top.scala 15:19]
  wire  fft_reset; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_0_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_0_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_1_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_1_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_2_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_2_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_3_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_3_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_4_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_4_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_5_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_5_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_6_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_6_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_7_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dIn_7_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_0_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_0_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_1_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_1_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_2_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_2_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_3_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_3_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_4_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_4_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_5_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_5_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_6_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_6_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_7_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_7_im; // @[Top.scala 15:19]
  wire  fft_io_din_valid; // @[Top.scala 15:19]
  wire  fft_io_dout_valid; // @[Top.scala 15:19]
  wire  fft_io_busy; // @[Top.scala 15:19]
  FFT fft ( // @[Top.scala 15:19]
    .clock(fft_clock),
    .reset(fft_reset),
    .io_dIn_0_re(fft_io_dIn_0_re),
    .io_dIn_0_im(fft_io_dIn_0_im),
    .io_dIn_1_re(fft_io_dIn_1_re),
    .io_dIn_1_im(fft_io_dIn_1_im),
    .io_dIn_2_re(fft_io_dIn_2_re),
    .io_dIn_2_im(fft_io_dIn_2_im),
    .io_dIn_3_re(fft_io_dIn_3_re),
    .io_dIn_3_im(fft_io_dIn_3_im),
    .io_dIn_4_re(fft_io_dIn_4_re),
    .io_dIn_4_im(fft_io_dIn_4_im),
    .io_dIn_5_re(fft_io_dIn_5_re),
    .io_dIn_5_im(fft_io_dIn_5_im),
    .io_dIn_6_re(fft_io_dIn_6_re),
    .io_dIn_6_im(fft_io_dIn_6_im),
    .io_dIn_7_re(fft_io_dIn_7_re),
    .io_dIn_7_im(fft_io_dIn_7_im),
    .io_dOut_0_re(fft_io_dOut_0_re),
    .io_dOut_0_im(fft_io_dOut_0_im),
    .io_dOut_1_re(fft_io_dOut_1_re),
    .io_dOut_1_im(fft_io_dOut_1_im),
    .io_dOut_2_re(fft_io_dOut_2_re),
    .io_dOut_2_im(fft_io_dOut_2_im),
    .io_dOut_3_re(fft_io_dOut_3_re),
    .io_dOut_3_im(fft_io_dOut_3_im),
    .io_dOut_4_re(fft_io_dOut_4_re),
    .io_dOut_4_im(fft_io_dOut_4_im),
    .io_dOut_5_re(fft_io_dOut_5_re),
    .io_dOut_5_im(fft_io_dOut_5_im),
    .io_dOut_6_re(fft_io_dOut_6_re),
    .io_dOut_6_im(fft_io_dOut_6_im),
    .io_dOut_7_re(fft_io_dOut_7_re),
    .io_dOut_7_im(fft_io_dOut_7_im),
    .io_din_valid(fft_io_din_valid),
    .io_dout_valid(fft_io_dout_valid),
    .io_busy(fft_io_busy)
  );
  assign io_dOut_0_re = fft_io_dOut_0_re; // @[Top.scala 27:13]
  assign io_dOut_0_im = fft_io_dOut_0_im; // @[Top.scala 27:13]
  assign io_dOut_1_re = fft_io_dOut_1_re; // @[Top.scala 27:13]
  assign io_dOut_1_im = fft_io_dOut_1_im; // @[Top.scala 27:13]
  assign io_dOut_2_re = fft_io_dOut_2_re; // @[Top.scala 27:13]
  assign io_dOut_2_im = fft_io_dOut_2_im; // @[Top.scala 27:13]
  assign io_dOut_3_re = fft_io_dOut_3_re; // @[Top.scala 27:13]
  assign io_dOut_3_im = fft_io_dOut_3_im; // @[Top.scala 27:13]
  assign io_dOut_4_re = fft_io_dOut_4_re; // @[Top.scala 27:13]
  assign io_dOut_4_im = fft_io_dOut_4_im; // @[Top.scala 27:13]
  assign io_dOut_5_re = fft_io_dOut_5_re; // @[Top.scala 27:13]
  assign io_dOut_5_im = fft_io_dOut_5_im; // @[Top.scala 27:13]
  assign io_dOut_6_re = fft_io_dOut_6_re; // @[Top.scala 27:13]
  assign io_dOut_6_im = fft_io_dOut_6_im; // @[Top.scala 27:13]
  assign io_dOut_7_re = fft_io_dOut_7_re; // @[Top.scala 27:13]
  assign io_dOut_7_im = fft_io_dOut_7_im; // @[Top.scala 27:13]
  assign io_dout_valid = fft_io_dout_valid; // @[Top.scala 28:19]
  assign io_busy = fft_io_busy; // @[Top.scala 29:13]
  assign fft_clock = clock;
  assign fft_reset = reset;
  assign fft_io_dIn_0_re = io_dIn_0_re; // @[Top.scala 16:14]
  assign fft_io_dIn_0_im = io_dIn_0_im; // @[Top.scala 16:14]
  assign fft_io_dIn_1_re = io_dIn_1_re; // @[Top.scala 16:14]
  assign fft_io_dIn_1_im = io_dIn_1_im; // @[Top.scala 16:14]
  assign fft_io_dIn_2_re = io_dIn_2_re; // @[Top.scala 16:14]
  assign fft_io_dIn_2_im = io_dIn_2_im; // @[Top.scala 16:14]
  assign fft_io_dIn_3_re = io_dIn_3_re; // @[Top.scala 16:14]
  assign fft_io_dIn_3_im = io_dIn_3_im; // @[Top.scala 16:14]
  assign fft_io_dIn_4_re = io_dIn_4_re; // @[Top.scala 16:14]
  assign fft_io_dIn_4_im = io_dIn_4_im; // @[Top.scala 16:14]
  assign fft_io_dIn_5_re = io_dIn_5_re; // @[Top.scala 16:14]
  assign fft_io_dIn_5_im = io_dIn_5_im; // @[Top.scala 16:14]
  assign fft_io_dIn_6_re = io_dIn_6_re; // @[Top.scala 16:14]
  assign fft_io_dIn_6_im = io_dIn_6_im; // @[Top.scala 16:14]
  assign fft_io_dIn_7_re = io_dIn_7_re; // @[Top.scala 16:14]
  assign fft_io_dIn_7_im = io_dIn_7_im; // @[Top.scala 16:14]
  assign fft_io_din_valid = io_din_valid; // @[Top.scala 17:20]
endmodule
