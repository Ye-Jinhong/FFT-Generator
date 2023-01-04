module ComplexAdd(
  input  [9:0] io_op1_re,
  input  [9:0] io_op1_im,
  input  [9:0] io_op2_re,
  input  [9:0] io_op2_im,
  output [9:0] io_res_re,
  output [9:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) + $signed(io_op2_re); // @[Modules.scala 34:55]
  assign io_res_im = $signed(io_op1_im) + $signed(io_op2_im); // @[Modules.scala 35:55]
endmodule
module ComplexAdd_2(
  input  [9:0] io_op1_re,
  input  [9:0] io_op1_im,
  input  [9:0] io_op2_re,
  input  [9:0] io_op2_im,
  output [9:0] io_res_re,
  output [9:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) + $signed(io_op2_re); // @[Modules.scala 34:55]
  assign io_res_im = $signed(io_op1_im) + $signed(io_op2_im); // @[Modules.scala 35:55]
endmodule
module ComplexSub(
  input  [9:0] io_op1_re,
  input  [9:0] io_op1_im,
  input  [9:0] io_op2_re,
  input  [9:0] io_op2_im,
  output [9:0] io_res_re,
  output [9:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) - $signed(io_op2_re); // @[Modules.scala 50:55]
  assign io_res_im = $signed(io_op1_im) - $signed(io_op2_im); // @[Modules.scala 51:55]
endmodule
module ComplexSub_1(
  input  [9:0] io_op1_re,
  input  [9:0] io_op1_im,
  input  [9:0] io_op2_re,
  input  [9:0] io_op2_im,
  output [9:0] io_res_re,
  output [9:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) - $signed(io_op2_re); // @[Modules.scala 50:55]
  assign io_res_im = $signed(io_op1_im) - $signed(io_op2_im); // @[Modules.scala 51:55]
endmodule
module ComplexTran(
  input  [9:0] io_in_re,
  input  [9:0] io_in_im,
  output [9:0] io_out_re,
  output [9:0] io_out_im
);
  assign io_out_re = io_in_im; // @[Modules.scala 69:13]
  assign io_out_im = 10'sh0 - $signed(io_in_re); // @[Modules.scala 70:16]
endmodule
module ComplexMul(
  input  [9:0] io_op1_re,
  input  [9:0] io_op1_im,
  input  [9:0] io_op2_re,
  input  [9:0] io_op2_im,
  output [9:0] io_res_re,
  output [9:0] io_res_im
);
  wire [9:0] _k1_T_5 = $signed(io_op1_re) + $signed(io_op1_im); // @[Modules.scala 83:95]
  wire [19:0] k1 = $signed(io_op2_re) * $signed(_k1_T_5); // @[Modules.scala 83:53]
  wire [9:0] _k2_T_5 = $signed(io_op2_im) - $signed(io_op2_re); // @[Modules.scala 84:95]
  wire [19:0] k2 = $signed(io_op1_re) * $signed(_k2_T_5); // @[Modules.scala 84:53]
  wire [9:0] _k3_T_5 = $signed(io_op2_re) + $signed(io_op2_im); // @[Modules.scala 85:95]
  wire [19:0] k3 = $signed(io_op1_im) * $signed(_k3_T_5); // @[Modules.scala 85:53]
  wire [19:0] _io_res_re_T_2 = $signed(k1) - $signed(k3); // @[Modules.scala 86:21]
  wire [19:0] _io_res_im_T_2 = $signed(k1) + $signed(k2); // @[Modules.scala 87:21]
  wire [14:0] _GEN_0 = _io_res_re_T_2[19:5]; // @[Modules.scala 86:15]
  wire [14:0] _GEN_2 = _io_res_im_T_2[19:5]; // @[Modules.scala 87:15]
  assign io_res_re = _GEN_0[9:0]; // @[Modules.scala 86:15]
  assign io_res_im = _GEN_2[9:0]; // @[Modules.scala 87:15]
endmodule
module ButterflyMul(
  input  [9:0] io_in_0_re,
  input  [9:0] io_in_0_im,
  input  [9:0] io_in_1_re,
  input  [9:0] io_in_1_im,
  input  [9:0] io_in_2_re,
  input  [9:0] io_in_2_im,
  input  [9:0] io_in_3_re,
  input  [9:0] io_in_3_im,
  output [9:0] io_out_0_re,
  output [9:0] io_out_0_im,
  output [9:0] io_out_1_re,
  output [9:0] io_out_1_im,
  output [9:0] io_out_2_re,
  output [9:0] io_out_2_im,
  output [9:0] io_out_3_re,
  output [9:0] io_out_3_im,
  input  [9:0] io_wn_0_re,
  input  [9:0] io_wn_0_im,
  input  [9:0] io_wn_1_re,
  input  [9:0] io_wn_1_im,
  input  [9:0] io_wn_2_re,
  input  [9:0] io_wn_2_im
);
  wire [9:0] temp_0_inst_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_1_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_1_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_1_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_1_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_1_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_1_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_2_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_2_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_2_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_2_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_2_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] temp_0_inst_2_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_1_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_1_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_1_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_1_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_1_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_1_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] temp_1_inst_2_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] temp_1_inst_2_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] temp_1_inst_2_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] temp_1_inst_2_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] temp_1_inst_2_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] temp_1_inst_2_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_1_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_1_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_1_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_1_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_1_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_1_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] temp_2_inst_2_io_in_re; // @[Modules.scala 75:22]
  wire [9:0] temp_2_inst_2_io_in_im; // @[Modules.scala 75:22]
  wire [9:0] temp_2_inst_2_io_out_re; // @[Modules.scala 75:22]
  wire [9:0] temp_2_inst_2_io_out_im; // @[Modules.scala 75:22]
  wire [9:0] temp_2_inst_3_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] temp_2_inst_3_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] temp_2_inst_3_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] temp_2_inst_3_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] temp_2_inst_3_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] temp_2_inst_3_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] temp_3_inst_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_1_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_1_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_1_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_1_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_1_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_1_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_2_io_in_re; // @[Modules.scala 75:22]
  wire [9:0] temp_3_inst_2_io_in_im; // @[Modules.scala 75:22]
  wire [9:0] temp_3_inst_2_io_out_re; // @[Modules.scala 75:22]
  wire [9:0] temp_3_inst_2_io_out_im; // @[Modules.scala 75:22]
  wire [9:0] temp_3_inst_3_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_3_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_3_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_3_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_3_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] temp_3_inst_3_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_1_inst_io_op1_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_1_inst_io_op1_im; // @[Modules.scala 97:22]
  wire [9:0] io_out_1_inst_io_op2_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_1_inst_io_op2_im; // @[Modules.scala 97:22]
  wire [9:0] io_out_1_inst_io_res_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_1_inst_io_res_im; // @[Modules.scala 97:22]
  wire [9:0] io_out_2_inst_io_op1_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_2_inst_io_op1_im; // @[Modules.scala 97:22]
  wire [9:0] io_out_2_inst_io_op2_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_2_inst_io_op2_im; // @[Modules.scala 97:22]
  wire [9:0] io_out_2_inst_io_res_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_2_inst_io_res_im; // @[Modules.scala 97:22]
  wire [9:0] io_out_3_inst_io_op1_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_3_inst_io_op1_im; // @[Modules.scala 97:22]
  wire [9:0] io_out_3_inst_io_op2_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_3_inst_io_op2_im; // @[Modules.scala 97:22]
  wire [9:0] io_out_3_inst_io_res_re; // @[Modules.scala 97:22]
  wire [9:0] io_out_3_inst_io_res_im; // @[Modules.scala 97:22]
  ComplexAdd temp_0_inst ( // @[Modules.scala 41:22]
    .io_op1_re(temp_0_inst_io_op1_re),
    .io_op1_im(temp_0_inst_io_op1_im),
    .io_op2_re(temp_0_inst_io_op2_re),
    .io_op2_im(temp_0_inst_io_op2_im),
    .io_res_re(temp_0_inst_io_res_re),
    .io_res_im(temp_0_inst_io_res_im)
  );
  ComplexAdd temp_0_inst_1 ( // @[Modules.scala 41:22]
    .io_op1_re(temp_0_inst_1_io_op1_re),
    .io_op1_im(temp_0_inst_1_io_op1_im),
    .io_op2_re(temp_0_inst_1_io_op2_re),
    .io_op2_im(temp_0_inst_1_io_op2_im),
    .io_res_re(temp_0_inst_1_io_res_re),
    .io_res_im(temp_0_inst_1_io_res_im)
  );
  ComplexAdd_2 temp_0_inst_2 ( // @[Modules.scala 41:22]
    .io_op1_re(temp_0_inst_2_io_op1_re),
    .io_op1_im(temp_0_inst_2_io_op1_im),
    .io_op2_re(temp_0_inst_2_io_op2_re),
    .io_op2_im(temp_0_inst_2_io_op2_im),
    .io_res_re(temp_0_inst_2_io_res_re),
    .io_res_im(temp_0_inst_2_io_res_im)
  );
  ComplexAdd temp_1_inst ( // @[Modules.scala 41:22]
    .io_op1_re(temp_1_inst_io_op1_re),
    .io_op1_im(temp_1_inst_io_op1_im),
    .io_op2_re(temp_1_inst_io_op2_re),
    .io_op2_im(temp_1_inst_io_op2_im),
    .io_res_re(temp_1_inst_io_res_re),
    .io_res_im(temp_1_inst_io_res_im)
  );
  ComplexAdd temp_1_inst_1 ( // @[Modules.scala 41:22]
    .io_op1_re(temp_1_inst_1_io_op1_re),
    .io_op1_im(temp_1_inst_1_io_op1_im),
    .io_op2_re(temp_1_inst_1_io_op2_re),
    .io_op2_im(temp_1_inst_1_io_op2_im),
    .io_res_re(temp_1_inst_1_io_res_re),
    .io_res_im(temp_1_inst_1_io_res_im)
  );
  ComplexSub temp_1_inst_2 ( // @[Modules.scala 57:22]
    .io_op1_re(temp_1_inst_2_io_op1_re),
    .io_op1_im(temp_1_inst_2_io_op1_im),
    .io_op2_re(temp_1_inst_2_io_op2_re),
    .io_op2_im(temp_1_inst_2_io_op2_im),
    .io_res_re(temp_1_inst_2_io_res_re),
    .io_res_im(temp_1_inst_2_io_res_im)
  );
  ComplexSub_1 temp_2_inst ( // @[Modules.scala 57:22]
    .io_op1_re(temp_2_inst_io_op1_re),
    .io_op1_im(temp_2_inst_io_op1_im),
    .io_op2_re(temp_2_inst_io_op2_re),
    .io_op2_im(temp_2_inst_io_op2_im),
    .io_res_re(temp_2_inst_io_res_re),
    .io_res_im(temp_2_inst_io_res_im)
  );
  ComplexSub_1 temp_2_inst_1 ( // @[Modules.scala 57:22]
    .io_op1_re(temp_2_inst_1_io_op1_re),
    .io_op1_im(temp_2_inst_1_io_op1_im),
    .io_op2_re(temp_2_inst_1_io_op2_re),
    .io_op2_im(temp_2_inst_1_io_op2_im),
    .io_res_re(temp_2_inst_1_io_res_re),
    .io_res_im(temp_2_inst_1_io_res_im)
  );
  ComplexTran temp_2_inst_2 ( // @[Modules.scala 75:22]
    .io_in_re(temp_2_inst_2_io_in_re),
    .io_in_im(temp_2_inst_2_io_in_im),
    .io_out_re(temp_2_inst_2_io_out_re),
    .io_out_im(temp_2_inst_2_io_out_im)
  );
  ComplexAdd_2 temp_2_inst_3 ( // @[Modules.scala 41:22]
    .io_op1_re(temp_2_inst_3_io_op1_re),
    .io_op1_im(temp_2_inst_3_io_op1_im),
    .io_op2_re(temp_2_inst_3_io_op2_re),
    .io_op2_im(temp_2_inst_3_io_op2_im),
    .io_res_re(temp_2_inst_3_io_res_re),
    .io_res_im(temp_2_inst_3_io_res_im)
  );
  ComplexSub_1 temp_3_inst ( // @[Modules.scala 57:22]
    .io_op1_re(temp_3_inst_io_op1_re),
    .io_op1_im(temp_3_inst_io_op1_im),
    .io_op2_re(temp_3_inst_io_op2_re),
    .io_op2_im(temp_3_inst_io_op2_im),
    .io_res_re(temp_3_inst_io_res_re),
    .io_res_im(temp_3_inst_io_res_im)
  );
  ComplexSub_1 temp_3_inst_1 ( // @[Modules.scala 57:22]
    .io_op1_re(temp_3_inst_1_io_op1_re),
    .io_op1_im(temp_3_inst_1_io_op1_im),
    .io_op2_re(temp_3_inst_1_io_op2_re),
    .io_op2_im(temp_3_inst_1_io_op2_im),
    .io_res_re(temp_3_inst_1_io_res_re),
    .io_res_im(temp_3_inst_1_io_res_im)
  );
  ComplexTran temp_3_inst_2 ( // @[Modules.scala 75:22]
    .io_in_re(temp_3_inst_2_io_in_re),
    .io_in_im(temp_3_inst_2_io_in_im),
    .io_out_re(temp_3_inst_2_io_out_re),
    .io_out_im(temp_3_inst_2_io_out_im)
  );
  ComplexSub temp_3_inst_3 ( // @[Modules.scala 57:22]
    .io_op1_re(temp_3_inst_3_io_op1_re),
    .io_op1_im(temp_3_inst_3_io_op1_im),
    .io_op2_re(temp_3_inst_3_io_op2_re),
    .io_op2_im(temp_3_inst_3_io_op2_im),
    .io_res_re(temp_3_inst_3_io_res_re),
    .io_res_im(temp_3_inst_3_io_res_im)
  );
  ComplexMul io_out_1_inst ( // @[Modules.scala 97:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  ComplexMul io_out_2_inst ( // @[Modules.scala 97:22]
    .io_op1_re(io_out_2_inst_io_op1_re),
    .io_op1_im(io_out_2_inst_io_op1_im),
    .io_op2_re(io_out_2_inst_io_op2_re),
    .io_op2_im(io_out_2_inst_io_op2_im),
    .io_res_re(io_out_2_inst_io_res_re),
    .io_res_im(io_out_2_inst_io_res_im)
  );
  ComplexMul io_out_3_inst ( // @[Modules.scala 97:22]
    .io_op1_re(io_out_3_inst_io_op1_re),
    .io_op1_im(io_out_3_inst_io_op1_im),
    .io_op2_re(io_out_3_inst_io_op2_re),
    .io_op2_im(io_out_3_inst_io_op2_im),
    .io_res_re(io_out_3_inst_io_res_re),
    .io_res_im(io_out_3_inst_io_res_im)
  );
  assign io_out_0_re = temp_0_inst_2_io_res_re; // @[Modules.scala 155:21 160:13]
  assign io_out_0_im = temp_0_inst_2_io_res_im; // @[Modules.scala 155:21 160:13]
  assign io_out_1_re = io_out_1_inst_io_res_re; // @[Modules.scala 193:15]
  assign io_out_1_im = io_out_1_inst_io_res_im; // @[Modules.scala 193:15]
  assign io_out_2_re = io_out_2_inst_io_res_re; // @[Modules.scala 194:15]
  assign io_out_2_im = io_out_2_inst_io_res_im; // @[Modules.scala 194:15]
  assign io_out_3_re = io_out_3_inst_io_res_re; // @[Modules.scala 195:15]
  assign io_out_3_im = io_out_3_inst_io_res_im; // @[Modules.scala 195:15]
  assign temp_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 42:17]
  assign temp_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 42:17]
  assign temp_0_inst_io_op2_re = io_in_2_re; // @[Modules.scala 43:17]
  assign temp_0_inst_io_op2_im = io_in_2_im; // @[Modules.scala 43:17]
  assign temp_0_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 42:17]
  assign temp_0_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 42:17]
  assign temp_0_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 43:17]
  assign temp_0_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 43:17]
  assign temp_0_inst_2_io_op1_re = temp_0_inst_io_res_re; // @[Modules.scala 42:17]
  assign temp_0_inst_2_io_op1_im = temp_0_inst_io_res_im; // @[Modules.scala 42:17]
  assign temp_0_inst_2_io_op2_re = temp_0_inst_1_io_res_re; // @[Modules.scala 43:17]
  assign temp_0_inst_2_io_op2_im = temp_0_inst_1_io_res_im; // @[Modules.scala 43:17]
  assign temp_1_inst_io_op1_re = io_in_0_re; // @[Modules.scala 42:17]
  assign temp_1_inst_io_op1_im = io_in_0_im; // @[Modules.scala 42:17]
  assign temp_1_inst_io_op2_re = io_in_2_re; // @[Modules.scala 43:17]
  assign temp_1_inst_io_op2_im = io_in_2_im; // @[Modules.scala 43:17]
  assign temp_1_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 42:17]
  assign temp_1_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 42:17]
  assign temp_1_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 43:17]
  assign temp_1_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 43:17]
  assign temp_1_inst_2_io_op1_re = temp_1_inst_io_res_re; // @[Modules.scala 58:17]
  assign temp_1_inst_2_io_op1_im = temp_1_inst_io_res_im; // @[Modules.scala 58:17]
  assign temp_1_inst_2_io_op2_re = temp_1_inst_1_io_res_re; // @[Modules.scala 59:17]
  assign temp_1_inst_2_io_op2_im = temp_1_inst_1_io_res_im; // @[Modules.scala 59:17]
  assign temp_2_inst_io_op1_re = io_in_0_re; // @[Modules.scala 58:17]
  assign temp_2_inst_io_op1_im = io_in_0_im; // @[Modules.scala 58:17]
  assign temp_2_inst_io_op2_re = io_in_2_re; // @[Modules.scala 59:17]
  assign temp_2_inst_io_op2_im = io_in_2_im; // @[Modules.scala 59:17]
  assign temp_2_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 58:17]
  assign temp_2_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 58:17]
  assign temp_2_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 59:17]
  assign temp_2_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 59:17]
  assign temp_2_inst_2_io_in_re = temp_2_inst_1_io_res_re; // @[Modules.scala 76:16]
  assign temp_2_inst_2_io_in_im = temp_2_inst_1_io_res_im; // @[Modules.scala 76:16]
  assign temp_2_inst_3_io_op1_re = temp_2_inst_io_res_re; // @[Modules.scala 42:17]
  assign temp_2_inst_3_io_op1_im = temp_2_inst_io_res_im; // @[Modules.scala 42:17]
  assign temp_2_inst_3_io_op2_re = temp_2_inst_2_io_out_re; // @[Modules.scala 43:17]
  assign temp_2_inst_3_io_op2_im = temp_2_inst_2_io_out_im; // @[Modules.scala 43:17]
  assign temp_3_inst_io_op1_re = io_in_0_re; // @[Modules.scala 58:17]
  assign temp_3_inst_io_op1_im = io_in_0_im; // @[Modules.scala 58:17]
  assign temp_3_inst_io_op2_re = io_in_2_re; // @[Modules.scala 59:17]
  assign temp_3_inst_io_op2_im = io_in_2_im; // @[Modules.scala 59:17]
  assign temp_3_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 58:17]
  assign temp_3_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 58:17]
  assign temp_3_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 59:17]
  assign temp_3_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 59:17]
  assign temp_3_inst_2_io_in_re = temp_3_inst_1_io_res_re; // @[Modules.scala 76:16]
  assign temp_3_inst_2_io_in_im = temp_3_inst_1_io_res_im; // @[Modules.scala 76:16]
  assign temp_3_inst_3_io_op1_re = temp_3_inst_io_res_re; // @[Modules.scala 58:17]
  assign temp_3_inst_3_io_op1_im = temp_3_inst_io_res_im; // @[Modules.scala 58:17]
  assign temp_3_inst_3_io_op2_re = temp_3_inst_2_io_out_re; // @[Modules.scala 59:17]
  assign temp_3_inst_3_io_op2_im = temp_3_inst_2_io_out_im; // @[Modules.scala 59:17]
  assign io_out_1_inst_io_op1_re = temp_1_inst_2_io_res_re; // @[Modules.scala 155:21 161:13]
  assign io_out_1_inst_io_op1_im = temp_1_inst_2_io_res_im; // @[Modules.scala 155:21 161:13]
  assign io_out_1_inst_io_op2_re = io_wn_1_re; // @[Modules.scala 99:17]
  assign io_out_1_inst_io_op2_im = io_wn_1_im; // @[Modules.scala 99:17]
  assign io_out_2_inst_io_op1_re = temp_2_inst_3_io_res_re; // @[Modules.scala 155:21 162:13]
  assign io_out_2_inst_io_op1_im = temp_2_inst_3_io_res_im; // @[Modules.scala 155:21 162:13]
  assign io_out_2_inst_io_op2_re = io_wn_0_re; // @[Modules.scala 99:17]
  assign io_out_2_inst_io_op2_im = io_wn_0_im; // @[Modules.scala 99:17]
  assign io_out_3_inst_io_op1_re = temp_3_inst_3_io_res_re; // @[Modules.scala 155:21 163:13]
  assign io_out_3_inst_io_op1_im = temp_3_inst_3_io_res_im; // @[Modules.scala 155:21 163:13]
  assign io_out_3_inst_io_op2_re = io_wn_2_re; // @[Modules.scala 99:17]
  assign io_out_3_inst_io_op2_im = io_wn_2_im; // @[Modules.scala 99:17]
endmodule
module ButterflyAdd(
  input  [9:0] io_in_0_re,
  input  [9:0] io_in_0_im,
  input  [9:0] io_in_1_re,
  input  [9:0] io_in_1_im,
  input  [9:0] io_in_2_re,
  input  [9:0] io_in_2_im,
  input  [9:0] io_in_3_re,
  input  [9:0] io_in_3_im,
  output [9:0] io_out_0_re,
  output [9:0] io_out_0_im,
  output [9:0] io_out_1_re,
  output [9:0] io_out_1_im,
  output [9:0] io_out_2_re,
  output [9:0] io_out_2_im,
  output [9:0] io_out_3_re,
  output [9:0] io_out_3_im
);
  wire [9:0] io_out_0_inst_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_1_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_1_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_1_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_1_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_1_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_1_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_2_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_2_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_2_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_2_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_2_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_0_inst_2_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_1_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_1_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_1_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_1_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_1_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_1_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_1_inst_2_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_1_inst_2_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_1_inst_2_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_1_inst_2_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_1_inst_2_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_1_inst_2_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_1_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_1_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_1_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_1_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_1_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_1_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_2_inst_2_io_in_re; // @[Modules.scala 75:22]
  wire [9:0] io_out_2_inst_2_io_in_im; // @[Modules.scala 75:22]
  wire [9:0] io_out_2_inst_2_io_out_re; // @[Modules.scala 75:22]
  wire [9:0] io_out_2_inst_2_io_out_im; // @[Modules.scala 75:22]
  wire [9:0] io_out_2_inst_3_io_op1_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_2_inst_3_io_op1_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_2_inst_3_io_op2_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_2_inst_3_io_op2_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_2_inst_3_io_res_re; // @[Modules.scala 41:22]
  wire [9:0] io_out_2_inst_3_io_res_im; // @[Modules.scala 41:22]
  wire [9:0] io_out_3_inst_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_1_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_1_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_1_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_1_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_1_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_1_io_res_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_2_io_in_re; // @[Modules.scala 75:22]
  wire [9:0] io_out_3_inst_2_io_in_im; // @[Modules.scala 75:22]
  wire [9:0] io_out_3_inst_2_io_out_re; // @[Modules.scala 75:22]
  wire [9:0] io_out_3_inst_2_io_out_im; // @[Modules.scala 75:22]
  wire [9:0] io_out_3_inst_3_io_op1_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_3_io_op1_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_3_io_op2_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_3_io_op2_im; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_3_io_res_re; // @[Modules.scala 57:22]
  wire [9:0] io_out_3_inst_3_io_res_im; // @[Modules.scala 57:22]
  ComplexAdd io_out_0_inst ( // @[Modules.scala 41:22]
    .io_op1_re(io_out_0_inst_io_op1_re),
    .io_op1_im(io_out_0_inst_io_op1_im),
    .io_op2_re(io_out_0_inst_io_op2_re),
    .io_op2_im(io_out_0_inst_io_op2_im),
    .io_res_re(io_out_0_inst_io_res_re),
    .io_res_im(io_out_0_inst_io_res_im)
  );
  ComplexAdd io_out_0_inst_1 ( // @[Modules.scala 41:22]
    .io_op1_re(io_out_0_inst_1_io_op1_re),
    .io_op1_im(io_out_0_inst_1_io_op1_im),
    .io_op2_re(io_out_0_inst_1_io_op2_re),
    .io_op2_im(io_out_0_inst_1_io_op2_im),
    .io_res_re(io_out_0_inst_1_io_res_re),
    .io_res_im(io_out_0_inst_1_io_res_im)
  );
  ComplexAdd_2 io_out_0_inst_2 ( // @[Modules.scala 41:22]
    .io_op1_re(io_out_0_inst_2_io_op1_re),
    .io_op1_im(io_out_0_inst_2_io_op1_im),
    .io_op2_re(io_out_0_inst_2_io_op2_re),
    .io_op2_im(io_out_0_inst_2_io_op2_im),
    .io_res_re(io_out_0_inst_2_io_res_re),
    .io_res_im(io_out_0_inst_2_io_res_im)
  );
  ComplexAdd io_out_1_inst ( // @[Modules.scala 41:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  ComplexAdd io_out_1_inst_1 ( // @[Modules.scala 41:22]
    .io_op1_re(io_out_1_inst_1_io_op1_re),
    .io_op1_im(io_out_1_inst_1_io_op1_im),
    .io_op2_re(io_out_1_inst_1_io_op2_re),
    .io_op2_im(io_out_1_inst_1_io_op2_im),
    .io_res_re(io_out_1_inst_1_io_res_re),
    .io_res_im(io_out_1_inst_1_io_res_im)
  );
  ComplexSub io_out_1_inst_2 ( // @[Modules.scala 57:22]
    .io_op1_re(io_out_1_inst_2_io_op1_re),
    .io_op1_im(io_out_1_inst_2_io_op1_im),
    .io_op2_re(io_out_1_inst_2_io_op2_re),
    .io_op2_im(io_out_1_inst_2_io_op2_im),
    .io_res_re(io_out_1_inst_2_io_res_re),
    .io_res_im(io_out_1_inst_2_io_res_im)
  );
  ComplexSub_1 io_out_2_inst ( // @[Modules.scala 57:22]
    .io_op1_re(io_out_2_inst_io_op1_re),
    .io_op1_im(io_out_2_inst_io_op1_im),
    .io_op2_re(io_out_2_inst_io_op2_re),
    .io_op2_im(io_out_2_inst_io_op2_im),
    .io_res_re(io_out_2_inst_io_res_re),
    .io_res_im(io_out_2_inst_io_res_im)
  );
  ComplexSub_1 io_out_2_inst_1 ( // @[Modules.scala 57:22]
    .io_op1_re(io_out_2_inst_1_io_op1_re),
    .io_op1_im(io_out_2_inst_1_io_op1_im),
    .io_op2_re(io_out_2_inst_1_io_op2_re),
    .io_op2_im(io_out_2_inst_1_io_op2_im),
    .io_res_re(io_out_2_inst_1_io_res_re),
    .io_res_im(io_out_2_inst_1_io_res_im)
  );
  ComplexTran io_out_2_inst_2 ( // @[Modules.scala 75:22]
    .io_in_re(io_out_2_inst_2_io_in_re),
    .io_in_im(io_out_2_inst_2_io_in_im),
    .io_out_re(io_out_2_inst_2_io_out_re),
    .io_out_im(io_out_2_inst_2_io_out_im)
  );
  ComplexAdd_2 io_out_2_inst_3 ( // @[Modules.scala 41:22]
    .io_op1_re(io_out_2_inst_3_io_op1_re),
    .io_op1_im(io_out_2_inst_3_io_op1_im),
    .io_op2_re(io_out_2_inst_3_io_op2_re),
    .io_op2_im(io_out_2_inst_3_io_op2_im),
    .io_res_re(io_out_2_inst_3_io_res_re),
    .io_res_im(io_out_2_inst_3_io_res_im)
  );
  ComplexSub_1 io_out_3_inst ( // @[Modules.scala 57:22]
    .io_op1_re(io_out_3_inst_io_op1_re),
    .io_op1_im(io_out_3_inst_io_op1_im),
    .io_op2_re(io_out_3_inst_io_op2_re),
    .io_op2_im(io_out_3_inst_io_op2_im),
    .io_res_re(io_out_3_inst_io_res_re),
    .io_res_im(io_out_3_inst_io_res_im)
  );
  ComplexSub_1 io_out_3_inst_1 ( // @[Modules.scala 57:22]
    .io_op1_re(io_out_3_inst_1_io_op1_re),
    .io_op1_im(io_out_3_inst_1_io_op1_im),
    .io_op2_re(io_out_3_inst_1_io_op2_re),
    .io_op2_im(io_out_3_inst_1_io_op2_im),
    .io_res_re(io_out_3_inst_1_io_res_re),
    .io_res_im(io_out_3_inst_1_io_res_im)
  );
  ComplexTran io_out_3_inst_2 ( // @[Modules.scala 75:22]
    .io_in_re(io_out_3_inst_2_io_in_re),
    .io_in_im(io_out_3_inst_2_io_in_im),
    .io_out_re(io_out_3_inst_2_io_out_re),
    .io_out_im(io_out_3_inst_2_io_out_im)
  );
  ComplexSub io_out_3_inst_3 ( // @[Modules.scala 57:22]
    .io_op1_re(io_out_3_inst_3_io_op1_re),
    .io_op1_im(io_out_3_inst_3_io_op1_im),
    .io_op2_re(io_out_3_inst_3_io_op2_re),
    .io_op2_im(io_out_3_inst_3_io_op2_im),
    .io_res_re(io_out_3_inst_3_io_res_re),
    .io_res_im(io_out_3_inst_3_io_res_im)
  );
  assign io_out_0_re = io_out_0_inst_2_io_res_re; // @[Modules.scala 112:15]
  assign io_out_0_im = io_out_0_inst_2_io_res_im; // @[Modules.scala 112:15]
  assign io_out_1_re = io_out_1_inst_2_io_res_re; // @[Modules.scala 113:15]
  assign io_out_1_im = io_out_1_inst_2_io_res_im; // @[Modules.scala 113:15]
  assign io_out_2_re = io_out_2_inst_3_io_res_re; // @[Modules.scala 114:15]
  assign io_out_2_im = io_out_2_inst_3_io_res_im; // @[Modules.scala 114:15]
  assign io_out_3_re = io_out_3_inst_3_io_res_re; // @[Modules.scala 115:15]
  assign io_out_3_im = io_out_3_inst_3_io_res_im; // @[Modules.scala 115:15]
  assign io_out_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 42:17]
  assign io_out_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 42:17]
  assign io_out_0_inst_io_op2_re = io_in_2_re; // @[Modules.scala 43:17]
  assign io_out_0_inst_io_op2_im = io_in_2_im; // @[Modules.scala 43:17]
  assign io_out_0_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 42:17]
  assign io_out_0_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 42:17]
  assign io_out_0_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 43:17]
  assign io_out_0_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 43:17]
  assign io_out_0_inst_2_io_op1_re = io_out_0_inst_io_res_re; // @[Modules.scala 42:17]
  assign io_out_0_inst_2_io_op1_im = io_out_0_inst_io_res_im; // @[Modules.scala 42:17]
  assign io_out_0_inst_2_io_op2_re = io_out_0_inst_1_io_res_re; // @[Modules.scala 43:17]
  assign io_out_0_inst_2_io_op2_im = io_out_0_inst_1_io_res_im; // @[Modules.scala 43:17]
  assign io_out_1_inst_io_op1_re = io_in_0_re; // @[Modules.scala 42:17]
  assign io_out_1_inst_io_op1_im = io_in_0_im; // @[Modules.scala 42:17]
  assign io_out_1_inst_io_op2_re = io_in_2_re; // @[Modules.scala 43:17]
  assign io_out_1_inst_io_op2_im = io_in_2_im; // @[Modules.scala 43:17]
  assign io_out_1_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 42:17]
  assign io_out_1_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 42:17]
  assign io_out_1_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 43:17]
  assign io_out_1_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 43:17]
  assign io_out_1_inst_2_io_op1_re = io_out_1_inst_io_res_re; // @[Modules.scala 58:17]
  assign io_out_1_inst_2_io_op1_im = io_out_1_inst_io_res_im; // @[Modules.scala 58:17]
  assign io_out_1_inst_2_io_op2_re = io_out_1_inst_1_io_res_re; // @[Modules.scala 59:17]
  assign io_out_1_inst_2_io_op2_im = io_out_1_inst_1_io_res_im; // @[Modules.scala 59:17]
  assign io_out_2_inst_io_op1_re = io_in_0_re; // @[Modules.scala 58:17]
  assign io_out_2_inst_io_op1_im = io_in_0_im; // @[Modules.scala 58:17]
  assign io_out_2_inst_io_op2_re = io_in_2_re; // @[Modules.scala 59:17]
  assign io_out_2_inst_io_op2_im = io_in_2_im; // @[Modules.scala 59:17]
  assign io_out_2_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 58:17]
  assign io_out_2_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 58:17]
  assign io_out_2_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 59:17]
  assign io_out_2_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 59:17]
  assign io_out_2_inst_2_io_in_re = io_out_2_inst_1_io_res_re; // @[Modules.scala 76:16]
  assign io_out_2_inst_2_io_in_im = io_out_2_inst_1_io_res_im; // @[Modules.scala 76:16]
  assign io_out_2_inst_3_io_op1_re = io_out_2_inst_io_res_re; // @[Modules.scala 42:17]
  assign io_out_2_inst_3_io_op1_im = io_out_2_inst_io_res_im; // @[Modules.scala 42:17]
  assign io_out_2_inst_3_io_op2_re = io_out_2_inst_2_io_out_re; // @[Modules.scala 43:17]
  assign io_out_2_inst_3_io_op2_im = io_out_2_inst_2_io_out_im; // @[Modules.scala 43:17]
  assign io_out_3_inst_io_op1_re = io_in_0_re; // @[Modules.scala 58:17]
  assign io_out_3_inst_io_op1_im = io_in_0_im; // @[Modules.scala 58:17]
  assign io_out_3_inst_io_op2_re = io_in_2_re; // @[Modules.scala 59:17]
  assign io_out_3_inst_io_op2_im = io_in_2_im; // @[Modules.scala 59:17]
  assign io_out_3_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 58:17]
  assign io_out_3_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 58:17]
  assign io_out_3_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 59:17]
  assign io_out_3_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 59:17]
  assign io_out_3_inst_2_io_in_re = io_out_3_inst_1_io_res_re; // @[Modules.scala 76:16]
  assign io_out_3_inst_2_io_in_im = io_out_3_inst_1_io_res_im; // @[Modules.scala 76:16]
  assign io_out_3_inst_3_io_op1_re = io_out_3_inst_io_res_re; // @[Modules.scala 58:17]
  assign io_out_3_inst_3_io_op1_im = io_out_3_inst_io_res_im; // @[Modules.scala 58:17]
  assign io_out_3_inst_3_io_op2_re = io_out_3_inst_2_io_out_re; // @[Modules.scala 59:17]
  assign io_out_3_inst_3_io_op2_im = io_out_3_inst_2_io_out_im; // @[Modules.scala 59:17]
endmodule
module Exchange(
  input  [9:0] io_in_0_0_re,
  input  [9:0] io_in_0_0_im,
  input  [9:0] io_in_0_1_re,
  input  [9:0] io_in_0_1_im,
  input  [9:0] io_in_0_2_re,
  input  [9:0] io_in_0_2_im,
  input  [9:0] io_in_0_3_re,
  input  [9:0] io_in_0_3_im,
  input  [9:0] io_in_1_0_re,
  input  [9:0] io_in_1_0_im,
  input  [9:0] io_in_1_1_re,
  input  [9:0] io_in_1_1_im,
  input  [9:0] io_in_1_2_re,
  input  [9:0] io_in_1_2_im,
  input  [9:0] io_in_1_3_re,
  input  [9:0] io_in_1_3_im,
  input  [9:0] io_in_2_0_re,
  input  [9:0] io_in_2_0_im,
  input  [9:0] io_in_2_1_re,
  input  [9:0] io_in_2_1_im,
  input  [9:0] io_in_2_2_re,
  input  [9:0] io_in_2_2_im,
  input  [9:0] io_in_2_3_re,
  input  [9:0] io_in_2_3_im,
  input  [9:0] io_in_3_0_re,
  input  [9:0] io_in_3_0_im,
  input  [9:0] io_in_3_1_re,
  input  [9:0] io_in_3_1_im,
  input  [9:0] io_in_3_2_re,
  input  [9:0] io_in_3_2_im,
  input  [9:0] io_in_3_3_re,
  input  [9:0] io_in_3_3_im,
  output [9:0] io_out_0_0_re,
  output [9:0] io_out_0_0_im,
  output [9:0] io_out_0_1_re,
  output [9:0] io_out_0_1_im,
  output [9:0] io_out_0_2_re,
  output [9:0] io_out_0_2_im,
  output [9:0] io_out_0_3_re,
  output [9:0] io_out_0_3_im,
  output [9:0] io_out_1_0_re,
  output [9:0] io_out_1_0_im,
  output [9:0] io_out_1_1_re,
  output [9:0] io_out_1_1_im,
  output [9:0] io_out_1_2_re,
  output [9:0] io_out_1_2_im,
  output [9:0] io_out_1_3_re,
  output [9:0] io_out_1_3_im,
  output [9:0] io_out_2_0_re,
  output [9:0] io_out_2_0_im,
  output [9:0] io_out_2_1_re,
  output [9:0] io_out_2_1_im,
  output [9:0] io_out_2_2_re,
  output [9:0] io_out_2_2_im,
  output [9:0] io_out_2_3_re,
  output [9:0] io_out_2_3_im,
  output [9:0] io_out_3_0_re,
  output [9:0] io_out_3_0_im,
  output [9:0] io_out_3_1_re,
  output [9:0] io_out_3_1_im,
  output [9:0] io_out_3_2_re,
  output [9:0] io_out_3_2_im,
  output [9:0] io_out_3_3_re,
  output [9:0] io_out_3_3_im
);
  assign io_out_0_0_re = io_in_0_0_re; // @[Modules.scala 247:20]
  assign io_out_0_0_im = io_in_0_0_im; // @[Modules.scala 247:20]
  assign io_out_0_1_re = io_in_1_0_re; // @[Modules.scala 247:20]
  assign io_out_0_1_im = io_in_1_0_im; // @[Modules.scala 247:20]
  assign io_out_0_2_re = io_in_2_0_re; // @[Modules.scala 247:20]
  assign io_out_0_2_im = io_in_2_0_im; // @[Modules.scala 247:20]
  assign io_out_0_3_re = io_in_3_0_re; // @[Modules.scala 247:20]
  assign io_out_0_3_im = io_in_3_0_im; // @[Modules.scala 247:20]
  assign io_out_1_0_re = io_in_0_1_re; // @[Modules.scala 247:20]
  assign io_out_1_0_im = io_in_0_1_im; // @[Modules.scala 247:20]
  assign io_out_1_1_re = io_in_1_1_re; // @[Modules.scala 247:20]
  assign io_out_1_1_im = io_in_1_1_im; // @[Modules.scala 247:20]
  assign io_out_1_2_re = io_in_2_1_re; // @[Modules.scala 247:20]
  assign io_out_1_2_im = io_in_2_1_im; // @[Modules.scala 247:20]
  assign io_out_1_3_re = io_in_3_1_re; // @[Modules.scala 247:20]
  assign io_out_1_3_im = io_in_3_1_im; // @[Modules.scala 247:20]
  assign io_out_2_0_re = io_in_0_2_re; // @[Modules.scala 247:20]
  assign io_out_2_0_im = io_in_0_2_im; // @[Modules.scala 247:20]
  assign io_out_2_1_re = io_in_1_2_re; // @[Modules.scala 247:20]
  assign io_out_2_1_im = io_in_1_2_im; // @[Modules.scala 247:20]
  assign io_out_2_2_re = io_in_2_2_re; // @[Modules.scala 247:20]
  assign io_out_2_2_im = io_in_2_2_im; // @[Modules.scala 247:20]
  assign io_out_2_3_re = io_in_3_2_re; // @[Modules.scala 247:20]
  assign io_out_2_3_im = io_in_3_2_im; // @[Modules.scala 247:20]
  assign io_out_3_0_re = io_in_0_3_re; // @[Modules.scala 247:20]
  assign io_out_3_0_im = io_in_0_3_im; // @[Modules.scala 247:20]
  assign io_out_3_1_re = io_in_1_3_re; // @[Modules.scala 247:20]
  assign io_out_3_1_im = io_in_1_3_im; // @[Modules.scala 247:20]
  assign io_out_3_2_re = io_in_2_3_re; // @[Modules.scala 247:20]
  assign io_out_3_2_im = io_in_2_3_im; // @[Modules.scala 247:20]
  assign io_out_3_3_re = io_in_3_3_re; // @[Modules.scala 247:20]
  assign io_out_3_3_im = io_in_3_3_im; // @[Modules.scala 247:20]
endmodule
module Switch(
  input        clock,
  input  [9:0] io_in_0_re,
  input  [9:0] io_in_0_im,
  input  [9:0] io_in_1_re,
  input  [9:0] io_in_1_im,
  input  [9:0] io_in_2_re,
  input  [9:0] io_in_2_im,
  input  [9:0] io_in_3_re,
  input  [9:0] io_in_3_im,
  output [9:0] io_out_0_re,
  output [9:0] io_out_0_im,
  output [9:0] io_out_1_re,
  output [9:0] io_out_1_im,
  output [9:0] io_out_2_re,
  output [9:0] io_out_2_im,
  output [9:0] io_out_3_re,
  output [9:0] io_out_3_im,
  input  [1:0] io_sel
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
`endif // RANDOMIZE_REG_INIT
  reg [9:0] swdata_1_r_re; // @[Reg.scala 19:16]
  reg [9:0] swdata_1_r_im; // @[Reg.scala 19:16]
  reg [9:0] swdata_2_r_re; // @[Reg.scala 19:16]
  reg [9:0] swdata_2_r_im; // @[Reg.scala 19:16]
  reg [9:0] swdata_2_r_1_re; // @[Reg.scala 19:16]
  reg [9:0] swdata_2_r_1_im; // @[Reg.scala 19:16]
  reg [9:0] swdata_3_r_re; // @[Reg.scala 19:16]
  reg [9:0] swdata_3_r_im; // @[Reg.scala 19:16]
  reg [9:0] swdata_3_r_1_re; // @[Reg.scala 19:16]
  reg [9:0] swdata_3_r_1_im; // @[Reg.scala 19:16]
  reg [9:0] swdata_3_r_2_re; // @[Reg.scala 19:16]
  reg [9:0] swdata_3_r_2_im; // @[Reg.scala 19:16]
  reg [9:0] io_out_0_r_re; // @[Reg.scala 19:16]
  reg [9:0] io_out_0_r_im; // @[Reg.scala 19:16]
  reg [9:0] io_out_0_r_1_re; // @[Reg.scala 19:16]
  reg [9:0] io_out_0_r_1_im; // @[Reg.scala 19:16]
  reg [9:0] io_out_0_r_2_re; // @[Reg.scala 19:16]
  reg [9:0] io_out_0_r_2_im; // @[Reg.scala 19:16]
  reg [9:0] io_out_1_r_re; // @[Reg.scala 19:16]
  reg [9:0] io_out_1_r_im; // @[Reg.scala 19:16]
  reg [9:0] io_out_1_r_1_re; // @[Reg.scala 19:16]
  reg [9:0] io_out_1_r_1_im; // @[Reg.scala 19:16]
  reg [9:0] io_out_2_r_re; // @[Reg.scala 19:16]
  reg [9:0] io_out_2_r_im; // @[Reg.scala 19:16]
  wire [9:0] _GEN_49 = 2'h1 == io_sel ? $signed(swdata_2_r_1_re) : $signed(swdata_1_r_re); // @[Modules.scala 229:{38,38}]
  wire [9:0] _GEN_50 = 2'h2 == io_sel ? $signed(swdata_3_r_2_re) : $signed(_GEN_49); // @[Modules.scala 229:{38,38}]
  wire [9:0] _GEN_53 = 2'h1 == io_sel ? $signed(swdata_2_r_1_im) : $signed(swdata_1_r_im); // @[Modules.scala 229:{38,38}]
  wire [9:0] _GEN_54 = 2'h2 == io_sel ? $signed(swdata_3_r_2_im) : $signed(_GEN_53); // @[Modules.scala 229:{38,38}]
  assign io_out_0_re = io_out_0_r_2_re; // @[Modules.scala 229:38]
  assign io_out_0_im = io_out_0_r_2_im; // @[Modules.scala 229:38]
  assign io_out_1_re = io_out_1_r_1_re; // @[Modules.scala 229:38]
  assign io_out_1_im = io_out_1_r_1_im; // @[Modules.scala 229:38]
  assign io_out_2_re = io_out_2_r_re; // @[Modules.scala 229:38]
  assign io_out_2_im = io_out_2_r_im; // @[Modules.scala 229:38]
  assign io_out_3_re = 2'h3 == io_sel ? $signed(io_in_0_re) : $signed(_GEN_50); // @[Modules.scala 229:{38,38}]
  assign io_out_3_im = 2'h3 == io_sel ? $signed(io_in_0_im) : $signed(_GEN_54); // @[Modules.scala 229:{38,38}]
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
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_3_r_2_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_2_r_1_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_re <= io_in_0_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_3_r_2_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_2_r_1_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_im <= io_in_0_im;
    end
    io_out_0_r_1_re <= io_out_0_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_1_im <= io_out_0_r_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_2_re <= io_out_0_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_2_im <= io_out_0_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_2_r_1_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else begin
      io_out_1_r_re <= swdata_3_r_2_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_2_r_1_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else begin
      io_out_1_r_im <= swdata_3_r_2_im;
    end
    io_out_1_r_1_re <= io_out_1_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_1_im <= io_out_1_r_im; // @[Reg.scala 19:16 20:{18,22}]
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_3_r_2_re; // @[Reg.scala 20:22]
    end else begin
      io_out_2_r_re <= swdata_2_r_1_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_3_r_2_im; // @[Reg.scala 20:22]
    end else begin
      io_out_2_r_im <= swdata_2_r_1_im;
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
  swdata_1_r_re = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  swdata_1_r_im = _RAND_1[9:0];
  _RAND_2 = {1{`RANDOM}};
  swdata_2_r_re = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  swdata_2_r_im = _RAND_3[9:0];
  _RAND_4 = {1{`RANDOM}};
  swdata_2_r_1_re = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  swdata_2_r_1_im = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  swdata_3_r_re = _RAND_6[9:0];
  _RAND_7 = {1{`RANDOM}};
  swdata_3_r_im = _RAND_7[9:0];
  _RAND_8 = {1{`RANDOM}};
  swdata_3_r_1_re = _RAND_8[9:0];
  _RAND_9 = {1{`RANDOM}};
  swdata_3_r_1_im = _RAND_9[9:0];
  _RAND_10 = {1{`RANDOM}};
  swdata_3_r_2_re = _RAND_10[9:0];
  _RAND_11 = {1{`RANDOM}};
  swdata_3_r_2_im = _RAND_11[9:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_0_r_re = _RAND_12[9:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_13[9:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_0_r_1_re = _RAND_14[9:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_0_r_1_im = _RAND_15[9:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_0_r_2_re = _RAND_16[9:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_0_r_2_im = _RAND_17[9:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_1_r_re = _RAND_18[9:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_1_r_im = _RAND_19[9:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_1_r_1_re = _RAND_20[9:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_1_r_1_im = _RAND_21[9:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_2_r_re = _RAND_22[9:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_2_r_im = _RAND_23[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FFT(
  input        clock,
  input        reset,
  input  [9:0] io_dIn_0_re,
  input  [9:0] io_dIn_0_im,
  input  [9:0] io_dIn_1_re,
  input  [9:0] io_dIn_1_im,
  input  [9:0] io_dIn_2_re,
  input  [9:0] io_dIn_2_im,
  input  [9:0] io_dIn_3_re,
  input  [9:0] io_dIn_3_im,
  input  [9:0] io_dIn_4_re,
  input  [9:0] io_dIn_4_im,
  input  [9:0] io_dIn_5_re,
  input  [9:0] io_dIn_5_im,
  input  [9:0] io_dIn_6_re,
  input  [9:0] io_dIn_6_im,
  input  [9:0] io_dIn_7_re,
  input  [9:0] io_dIn_7_im,
  input  [9:0] io_dIn_8_re,
  input  [9:0] io_dIn_8_im,
  input  [9:0] io_dIn_9_re,
  input  [9:0] io_dIn_9_im,
  input  [9:0] io_dIn_10_re,
  input  [9:0] io_dIn_10_im,
  input  [9:0] io_dIn_11_re,
  input  [9:0] io_dIn_11_im,
  input  [9:0] io_dIn_12_re,
  input  [9:0] io_dIn_12_im,
  input  [9:0] io_dIn_13_re,
  input  [9:0] io_dIn_13_im,
  input  [9:0] io_dIn_14_re,
  input  [9:0] io_dIn_14_im,
  input  [9:0] io_dIn_15_re,
  input  [9:0] io_dIn_15_im,
  output [9:0] io_dOut_0_re,
  output [9:0] io_dOut_0_im,
  output [9:0] io_dOut_1_re,
  output [9:0] io_dOut_1_im,
  output [9:0] io_dOut_2_re,
  output [9:0] io_dOut_2_im,
  output [9:0] io_dOut_3_re,
  output [9:0] io_dOut_3_im,
  output [9:0] io_dOut_4_re,
  output [9:0] io_dOut_4_im,
  output [9:0] io_dOut_5_re,
  output [9:0] io_dOut_5_im,
  output [9:0] io_dOut_6_re,
  output [9:0] io_dOut_6_im,
  output [9:0] io_dOut_7_re,
  output [9:0] io_dOut_7_im,
  output [9:0] io_dOut_8_re,
  output [9:0] io_dOut_8_im,
  output [9:0] io_dOut_9_re,
  output [9:0] io_dOut_9_im,
  output [9:0] io_dOut_10_re,
  output [9:0] io_dOut_10_im,
  output [9:0] io_dOut_11_re,
  output [9:0] io_dOut_11_im,
  output [9:0] io_dOut_12_re,
  output [9:0] io_dOut_12_im,
  output [9:0] io_dOut_13_re,
  output [9:0] io_dOut_13_im,
  output [9:0] io_dOut_14_re,
  output [9:0] io_dOut_14_im,
  output [9:0] io_dOut_15_re,
  output [9:0] io_dOut_15_im,
  input        io_din_valid,
  output       io_dout_valid,
  output       io_busy
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
`endif // RANDOMIZE_REG_INIT
  wire [9:0] inst_io_in_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_in_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_in_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_in_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_in_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_in_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_in_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_in_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_out_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_out_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_out_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_out_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_out_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_out_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_out_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_out_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_wn_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_wn_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_wn_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_wn_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_io_wn_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_io_wn_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_in_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_in_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_in_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_in_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_in_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_in_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_in_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_in_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_out_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_out_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_out_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_out_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_out_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_out_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_out_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_out_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_wn_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_wn_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_wn_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_wn_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_wn_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_1_io_wn_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_in_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_in_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_in_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_in_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_in_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_in_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_in_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_in_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_out_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_out_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_out_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_out_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_out_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_out_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_out_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_out_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_wn_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_wn_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_wn_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_wn_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_wn_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_2_io_wn_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_in_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_in_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_in_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_in_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_in_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_in_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_in_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_in_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_out_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_out_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_out_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_out_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_out_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_out_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_out_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_out_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_wn_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_wn_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_wn_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_wn_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_wn_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_3_io_wn_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_in_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_in_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_in_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_in_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_in_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_in_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_in_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_in_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_out_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_out_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_out_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_out_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_out_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_out_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_out_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_out_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_wn_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_wn_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_wn_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_wn_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_wn_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_4_io_wn_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_in_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_in_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_in_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_in_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_in_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_in_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_in_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_in_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_out_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_out_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_out_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_out_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_out_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_out_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_out_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_out_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_wn_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_wn_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_wn_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_wn_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_wn_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_5_io_wn_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_in_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_in_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_in_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_in_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_in_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_in_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_in_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_in_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_out_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_out_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_out_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_out_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_out_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_out_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_out_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_out_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_wn_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_wn_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_wn_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_wn_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_wn_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_6_io_wn_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_in_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_in_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_in_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_in_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_in_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_in_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_in_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_in_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_out_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_out_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_out_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_out_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_out_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_out_2_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_out_3_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_out_3_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_wn_0_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_wn_0_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_wn_1_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_wn_1_im; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_wn_2_re; // @[Modules.scala 210:22]
  wire [9:0] inst_7_io_wn_2_im; // @[Modules.scala 210:22]
  wire [9:0] dataotemp_inst_io_in_0_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_in_0_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_in_1_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_in_1_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_in_2_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_in_2_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_in_3_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_in_3_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_out_0_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_out_0_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_out_1_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_out_1_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_out_2_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_out_2_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_out_3_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_io_out_3_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_in_0_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_in_0_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_in_1_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_in_1_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_in_2_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_in_2_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_in_3_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_in_3_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_out_0_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_out_0_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_out_1_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_out_1_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_out_2_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_out_2_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_out_3_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_1_io_out_3_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_in_0_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_in_0_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_in_1_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_in_1_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_in_2_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_in_2_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_in_3_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_in_3_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_out_0_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_out_0_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_out_1_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_out_1_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_out_2_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_out_2_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_out_3_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_2_io_out_3_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_in_0_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_in_0_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_in_1_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_in_1_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_in_2_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_in_2_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_in_3_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_in_3_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_out_0_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_out_0_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_out_1_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_out_1_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_out_2_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_out_2_im; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_out_3_re; // @[Modules.scala 144:22]
  wire [9:0] dataotemp_inst_3_io_out_3_im; // @[Modules.scala 144:22]
  wire [9:0] exdata_inst_io_in_0_0_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_0_0_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_0_1_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_0_1_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_0_2_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_0_2_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_0_3_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_0_3_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_1_0_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_1_0_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_1_1_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_1_1_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_1_2_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_1_2_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_1_3_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_1_3_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_2_0_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_2_0_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_2_1_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_2_1_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_2_2_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_2_2_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_2_3_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_2_3_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_3_0_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_3_0_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_3_1_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_3_1_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_3_2_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_3_2_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_3_3_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_in_3_3_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_0_0_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_0_0_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_0_1_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_0_1_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_0_2_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_0_2_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_0_3_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_0_3_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_1_0_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_1_0_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_1_1_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_1_1_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_1_2_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_1_2_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_1_3_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_1_3_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_2_0_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_2_0_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_2_1_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_2_1_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_2_2_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_2_2_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_2_3_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_2_3_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_3_0_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_3_0_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_3_1_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_3_1_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_3_2_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_3_2_im; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_3_3_re; // @[Modules.scala 254:22]
  wire [9:0] exdata_inst_io_out_3_3_im; // @[Modules.scala 254:22]
  wire  inst_8_clock; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_in_0_re; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_in_0_im; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_in_1_re; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_in_1_im; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_in_2_re; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_in_2_im; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_in_3_re; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_in_3_im; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_out_0_re; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_out_0_im; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_out_1_re; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_out_1_im; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_out_2_re; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_out_2_im; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_out_3_re; // @[Modules.scala 234:22]
  wire [9:0] inst_8_io_out_3_im; // @[Modules.scala 234:22]
  wire [1:0] inst_8_io_sel; // @[Modules.scala 234:22]
  wire  inst_9_clock; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_in_0_re; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_in_0_im; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_in_1_re; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_in_1_im; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_in_2_re; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_in_2_im; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_in_3_re; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_in_3_im; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_out_0_re; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_out_0_im; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_out_1_re; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_out_1_im; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_out_2_re; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_out_2_im; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_out_3_re; // @[Modules.scala 234:22]
  wire [9:0] inst_9_io_out_3_im; // @[Modules.scala 234:22]
  wire [1:0] inst_9_io_sel; // @[Modules.scala 234:22]
  wire  inst_10_clock; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_in_0_re; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_in_0_im; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_in_1_re; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_in_1_im; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_in_2_re; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_in_2_im; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_in_3_re; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_in_3_im; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_out_0_re; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_out_0_im; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_out_1_re; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_out_1_im; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_out_2_re; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_out_2_im; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_out_3_re; // @[Modules.scala 234:22]
  wire [9:0] inst_10_io_out_3_im; // @[Modules.scala 234:22]
  wire [1:0] inst_10_io_sel; // @[Modules.scala 234:22]
  wire  inst_11_clock; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_in_0_re; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_in_0_im; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_in_1_re; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_in_1_im; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_in_2_re; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_in_2_im; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_in_3_re; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_in_3_im; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_out_0_re; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_out_0_im; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_out_1_re; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_out_1_im; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_out_2_re; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_out_2_im; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_out_3_re; // @[Modules.scala 234:22]
  wire [9:0] inst_11_io_out_3_im; // @[Modules.scala 234:22]
  wire [1:0] inst_11_io_sel; // @[Modules.scala 234:22]
  reg [4:0] cnt_0; // @[FFT.scala 39:46]
  reg [4:0] cnt_1; // @[FFT.scala 39:46]
  wire  busy = cnt_0 != 5'h0; // @[FFT.scala 43:21]
  wire [4:0] _cnt_0_T_2 = cnt_0 + 5'h1; // @[FFT.scala 45:85]
  wire [5:0] _wnList_T = {{1'd0}, cnt_0}; // @[FFT.scala 64:83]
  wire [9:0] _GEN_3 = 4'h2 == _wnList_T[3:0] ? $signed(10'sh1f) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_4 = 4'h3 == _wnList_T[3:0] ? $signed(10'sh1f) : $signed(_GEN_3); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_5 = 4'h4 == _wnList_T[3:0] ? $signed(10'sh1e) : $signed(_GEN_4); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_6 = 4'h5 == _wnList_T[3:0] ? $signed(10'sh1c) : $signed(_GEN_5); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_7 = 4'h6 == _wnList_T[3:0] ? $signed(10'sh1b) : $signed(_GEN_6); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_8 = 4'h7 == _wnList_T[3:0] ? $signed(10'sh19) : $signed(_GEN_7); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_9 = 4'h8 == _wnList_T[3:0] ? $signed(10'sh17) : $signed(_GEN_8); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_10 = 4'h9 == _wnList_T[3:0] ? $signed(10'sh14) : $signed(_GEN_9); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_11 = 4'ha == _wnList_T[3:0] ? $signed(10'sh12) : $signed(_GEN_10); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_12 = 4'hb == _wnList_T[3:0] ? $signed(10'shf) : $signed(_GEN_11); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_13 = 4'hc == _wnList_T[3:0] ? $signed(10'shc) : $signed(_GEN_12); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_14 = 4'hd == _wnList_T[3:0] ? $signed(10'sh9) : $signed(_GEN_13); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_15 = 4'he == _wnList_T[3:0] ? $signed(10'sh6) : $signed(_GEN_14); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_18 = 4'h1 == _wnList_T[3:0] ? $signed(-10'sh3) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_19 = 4'h2 == _wnList_T[3:0] ? $signed(-10'sh6) : $signed(_GEN_18); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_20 = 4'h3 == _wnList_T[3:0] ? $signed(-10'sh9) : $signed(_GEN_19); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_21 = 4'h4 == _wnList_T[3:0] ? $signed(-10'shc) : $signed(_GEN_20); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_22 = 4'h5 == _wnList_T[3:0] ? $signed(-10'shf) : $signed(_GEN_21); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_23 = 4'h6 == _wnList_T[3:0] ? $signed(-10'sh12) : $signed(_GEN_22); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_24 = 4'h7 == _wnList_T[3:0] ? $signed(-10'sh14) : $signed(_GEN_23); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_25 = 4'h8 == _wnList_T[3:0] ? $signed(-10'sh17) : $signed(_GEN_24); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_26 = 4'h9 == _wnList_T[3:0] ? $signed(-10'sh19) : $signed(_GEN_25); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_27 = 4'ha == _wnList_T[3:0] ? $signed(-10'sh1b) : $signed(_GEN_26); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_28 = 4'hb == _wnList_T[3:0] ? $signed(-10'sh1c) : $signed(_GEN_27); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_29 = 4'hc == _wnList_T[3:0] ? $signed(-10'sh1e) : $signed(_GEN_28); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_30 = 4'hd == _wnList_T[3:0] ? $signed(-10'sh1f) : $signed(_GEN_29); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_31 = 4'he == _wnList_T[3:0] ? $signed(-10'sh1f) : $signed(_GEN_30); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_34 = 4'h1 == _wnList_T[3:0] ? $signed(10'sh1f) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_35 = 4'h2 == _wnList_T[3:0] ? $signed(10'sh1e) : $signed(_GEN_34); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_36 = 4'h3 == _wnList_T[3:0] ? $signed(10'sh1b) : $signed(_GEN_35); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_37 = 4'h4 == _wnList_T[3:0] ? $signed(10'sh17) : $signed(_GEN_36); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_38 = 4'h5 == _wnList_T[3:0] ? $signed(10'sh12) : $signed(_GEN_37); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_39 = 4'h6 == _wnList_T[3:0] ? $signed(10'shc) : $signed(_GEN_38); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_40 = 4'h7 == _wnList_T[3:0] ? $signed(10'sh6) : $signed(_GEN_39); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_41 = 4'h8 == _wnList_T[3:0] ? $signed(10'sh0) : $signed(_GEN_40); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_42 = 4'h9 == _wnList_T[3:0] ? $signed(-10'sh6) : $signed(_GEN_41); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_43 = 4'ha == _wnList_T[3:0] ? $signed(-10'shc) : $signed(_GEN_42); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_44 = 4'hb == _wnList_T[3:0] ? $signed(-10'sh12) : $signed(_GEN_43); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_45 = 4'hc == _wnList_T[3:0] ? $signed(-10'sh17) : $signed(_GEN_44); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_46 = 4'hd == _wnList_T[3:0] ? $signed(-10'sh1b) : $signed(_GEN_45); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_47 = 4'he == _wnList_T[3:0] ? $signed(-10'sh1e) : $signed(_GEN_46); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_50 = 4'h1 == _wnList_T[3:0] ? $signed(-10'sh6) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_51 = 4'h2 == _wnList_T[3:0] ? $signed(-10'shc) : $signed(_GEN_50); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_52 = 4'h3 == _wnList_T[3:0] ? $signed(-10'sh12) : $signed(_GEN_51); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_53 = 4'h4 == _wnList_T[3:0] ? $signed(-10'sh17) : $signed(_GEN_52); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_54 = 4'h5 == _wnList_T[3:0] ? $signed(-10'sh1b) : $signed(_GEN_53); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_55 = 4'h6 == _wnList_T[3:0] ? $signed(-10'sh1e) : $signed(_GEN_54); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_56 = 4'h7 == _wnList_T[3:0] ? $signed(-10'sh1f) : $signed(_GEN_55); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_57 = 4'h8 == _wnList_T[3:0] ? $signed(-10'sh20) : $signed(_GEN_56); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_58 = 4'h9 == _wnList_T[3:0] ? $signed(-10'sh1f) : $signed(_GEN_57); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_59 = 4'ha == _wnList_T[3:0] ? $signed(-10'sh1e) : $signed(_GEN_58); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_60 = 4'hb == _wnList_T[3:0] ? $signed(-10'sh1b) : $signed(_GEN_59); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_61 = 4'hc == _wnList_T[3:0] ? $signed(-10'sh17) : $signed(_GEN_60); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_62 = 4'hd == _wnList_T[3:0] ? $signed(-10'sh12) : $signed(_GEN_61); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_63 = 4'he == _wnList_T[3:0] ? $signed(-10'shc) : $signed(_GEN_62); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_67 = 4'h2 == _wnList_T[3:0] ? $signed(10'sh1b) : $signed(_GEN_34); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_68 = 4'h3 == _wnList_T[3:0] ? $signed(10'sh14) : $signed(_GEN_67); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_69 = 4'h4 == _wnList_T[3:0] ? $signed(10'shc) : $signed(_GEN_68); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_70 = 4'h5 == _wnList_T[3:0] ? $signed(10'sh3) : $signed(_GEN_69); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_71 = 4'h6 == _wnList_T[3:0] ? $signed(-10'sh6) : $signed(_GEN_70); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_72 = 4'h7 == _wnList_T[3:0] ? $signed(-10'shf) : $signed(_GEN_71); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_73 = 4'h8 == _wnList_T[3:0] ? $signed(-10'sh17) : $signed(_GEN_72); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_74 = 4'h9 == _wnList_T[3:0] ? $signed(-10'sh1c) : $signed(_GEN_73); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_75 = 4'ha == _wnList_T[3:0] ? $signed(-10'sh1f) : $signed(_GEN_74); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_76 = 4'hb == _wnList_T[3:0] ? $signed(-10'sh20) : $signed(_GEN_75); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_77 = 4'hc == _wnList_T[3:0] ? $signed(-10'sh1e) : $signed(_GEN_76); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_78 = 4'hd == _wnList_T[3:0] ? $signed(-10'sh19) : $signed(_GEN_77); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_79 = 4'he == _wnList_T[3:0] ? $signed(-10'sh12) : $signed(_GEN_78); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_82 = 4'h1 == _wnList_T[3:0] ? $signed(-10'sh9) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_83 = 4'h2 == _wnList_T[3:0] ? $signed(-10'sh12) : $signed(_GEN_82); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_84 = 4'h3 == _wnList_T[3:0] ? $signed(-10'sh19) : $signed(_GEN_83); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_85 = 4'h4 == _wnList_T[3:0] ? $signed(-10'sh1e) : $signed(_GEN_84); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_86 = 4'h5 == _wnList_T[3:0] ? $signed(-10'sh20) : $signed(_GEN_85); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_87 = 4'h6 == _wnList_T[3:0] ? $signed(-10'sh1f) : $signed(_GEN_86); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_88 = 4'h7 == _wnList_T[3:0] ? $signed(-10'sh1c) : $signed(_GEN_87); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_89 = 4'h8 == _wnList_T[3:0] ? $signed(-10'sh17) : $signed(_GEN_88); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_90 = 4'h9 == _wnList_T[3:0] ? $signed(-10'shf) : $signed(_GEN_89); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_91 = 4'ha == _wnList_T[3:0] ? $signed(-10'sh6) : $signed(_GEN_90); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_92 = 4'hb == _wnList_T[3:0] ? $signed(10'sh3) : $signed(_GEN_91); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_93 = 4'hc == _wnList_T[3:0] ? $signed(10'shc) : $signed(_GEN_92); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_94 = 4'hd == _wnList_T[3:0] ? $signed(10'sh14) : $signed(_GEN_93); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_95 = 4'he == _wnList_T[3:0] ? $signed(10'sh1b) : $signed(_GEN_94); // @[FFT.scala 33:{12,12}]
  wire [4:0] _wnList_T_7 = 5'h4 + cnt_0; // @[FFT.scala 64:83]
  wire [9:0] _GEN_99 = 4'h2 == _wnList_T_7[3:0] ? $signed(10'sh1f) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_100 = 4'h3 == _wnList_T_7[3:0] ? $signed(10'sh1f) : $signed(_GEN_99); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_101 = 4'h4 == _wnList_T_7[3:0] ? $signed(10'sh1e) : $signed(_GEN_100); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_102 = 4'h5 == _wnList_T_7[3:0] ? $signed(10'sh1c) : $signed(_GEN_101); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_103 = 4'h6 == _wnList_T_7[3:0] ? $signed(10'sh1b) : $signed(_GEN_102); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_104 = 4'h7 == _wnList_T_7[3:0] ? $signed(10'sh19) : $signed(_GEN_103); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_105 = 4'h8 == _wnList_T_7[3:0] ? $signed(10'sh17) : $signed(_GEN_104); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_106 = 4'h9 == _wnList_T_7[3:0] ? $signed(10'sh14) : $signed(_GEN_105); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_107 = 4'ha == _wnList_T_7[3:0] ? $signed(10'sh12) : $signed(_GEN_106); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_108 = 4'hb == _wnList_T_7[3:0] ? $signed(10'shf) : $signed(_GEN_107); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_109 = 4'hc == _wnList_T_7[3:0] ? $signed(10'shc) : $signed(_GEN_108); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_110 = 4'hd == _wnList_T_7[3:0] ? $signed(10'sh9) : $signed(_GEN_109); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_111 = 4'he == _wnList_T_7[3:0] ? $signed(10'sh6) : $signed(_GEN_110); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_114 = 4'h1 == _wnList_T_7[3:0] ? $signed(-10'sh3) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_115 = 4'h2 == _wnList_T_7[3:0] ? $signed(-10'sh6) : $signed(_GEN_114); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_116 = 4'h3 == _wnList_T_7[3:0] ? $signed(-10'sh9) : $signed(_GEN_115); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_117 = 4'h4 == _wnList_T_7[3:0] ? $signed(-10'shc) : $signed(_GEN_116); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_118 = 4'h5 == _wnList_T_7[3:0] ? $signed(-10'shf) : $signed(_GEN_117); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_119 = 4'h6 == _wnList_T_7[3:0] ? $signed(-10'sh12) : $signed(_GEN_118); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_120 = 4'h7 == _wnList_T_7[3:0] ? $signed(-10'sh14) : $signed(_GEN_119); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_121 = 4'h8 == _wnList_T_7[3:0] ? $signed(-10'sh17) : $signed(_GEN_120); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_122 = 4'h9 == _wnList_T_7[3:0] ? $signed(-10'sh19) : $signed(_GEN_121); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_123 = 4'ha == _wnList_T_7[3:0] ? $signed(-10'sh1b) : $signed(_GEN_122); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_124 = 4'hb == _wnList_T_7[3:0] ? $signed(-10'sh1c) : $signed(_GEN_123); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_125 = 4'hc == _wnList_T_7[3:0] ? $signed(-10'sh1e) : $signed(_GEN_124); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_126 = 4'hd == _wnList_T_7[3:0] ? $signed(-10'sh1f) : $signed(_GEN_125); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_127 = 4'he == _wnList_T_7[3:0] ? $signed(-10'sh1f) : $signed(_GEN_126); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_130 = 4'h1 == _wnList_T_7[3:0] ? $signed(10'sh1f) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_131 = 4'h2 == _wnList_T_7[3:0] ? $signed(10'sh1e) : $signed(_GEN_130); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_132 = 4'h3 == _wnList_T_7[3:0] ? $signed(10'sh1b) : $signed(_GEN_131); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_133 = 4'h4 == _wnList_T_7[3:0] ? $signed(10'sh17) : $signed(_GEN_132); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_134 = 4'h5 == _wnList_T_7[3:0] ? $signed(10'sh12) : $signed(_GEN_133); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_135 = 4'h6 == _wnList_T_7[3:0] ? $signed(10'shc) : $signed(_GEN_134); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_136 = 4'h7 == _wnList_T_7[3:0] ? $signed(10'sh6) : $signed(_GEN_135); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_137 = 4'h8 == _wnList_T_7[3:0] ? $signed(10'sh0) : $signed(_GEN_136); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_138 = 4'h9 == _wnList_T_7[3:0] ? $signed(-10'sh6) : $signed(_GEN_137); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_139 = 4'ha == _wnList_T_7[3:0] ? $signed(-10'shc) : $signed(_GEN_138); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_140 = 4'hb == _wnList_T_7[3:0] ? $signed(-10'sh12) : $signed(_GEN_139); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_141 = 4'hc == _wnList_T_7[3:0] ? $signed(-10'sh17) : $signed(_GEN_140); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_142 = 4'hd == _wnList_T_7[3:0] ? $signed(-10'sh1b) : $signed(_GEN_141); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_143 = 4'he == _wnList_T_7[3:0] ? $signed(-10'sh1e) : $signed(_GEN_142); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_146 = 4'h1 == _wnList_T_7[3:0] ? $signed(-10'sh6) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_147 = 4'h2 == _wnList_T_7[3:0] ? $signed(-10'shc) : $signed(_GEN_146); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_148 = 4'h3 == _wnList_T_7[3:0] ? $signed(-10'sh12) : $signed(_GEN_147); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_149 = 4'h4 == _wnList_T_7[3:0] ? $signed(-10'sh17) : $signed(_GEN_148); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_150 = 4'h5 == _wnList_T_7[3:0] ? $signed(-10'sh1b) : $signed(_GEN_149); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_151 = 4'h6 == _wnList_T_7[3:0] ? $signed(-10'sh1e) : $signed(_GEN_150); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_152 = 4'h7 == _wnList_T_7[3:0] ? $signed(-10'sh1f) : $signed(_GEN_151); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_153 = 4'h8 == _wnList_T_7[3:0] ? $signed(-10'sh20) : $signed(_GEN_152); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_154 = 4'h9 == _wnList_T_7[3:0] ? $signed(-10'sh1f) : $signed(_GEN_153); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_155 = 4'ha == _wnList_T_7[3:0] ? $signed(-10'sh1e) : $signed(_GEN_154); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_156 = 4'hb == _wnList_T_7[3:0] ? $signed(-10'sh1b) : $signed(_GEN_155); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_157 = 4'hc == _wnList_T_7[3:0] ? $signed(-10'sh17) : $signed(_GEN_156); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_158 = 4'hd == _wnList_T_7[3:0] ? $signed(-10'sh12) : $signed(_GEN_157); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_159 = 4'he == _wnList_T_7[3:0] ? $signed(-10'shc) : $signed(_GEN_158); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_163 = 4'h2 == _wnList_T_7[3:0] ? $signed(10'sh1b) : $signed(_GEN_130); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_164 = 4'h3 == _wnList_T_7[3:0] ? $signed(10'sh14) : $signed(_GEN_163); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_165 = 4'h4 == _wnList_T_7[3:0] ? $signed(10'shc) : $signed(_GEN_164); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_166 = 4'h5 == _wnList_T_7[3:0] ? $signed(10'sh3) : $signed(_GEN_165); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_167 = 4'h6 == _wnList_T_7[3:0] ? $signed(-10'sh6) : $signed(_GEN_166); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_168 = 4'h7 == _wnList_T_7[3:0] ? $signed(-10'shf) : $signed(_GEN_167); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_169 = 4'h8 == _wnList_T_7[3:0] ? $signed(-10'sh17) : $signed(_GEN_168); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_170 = 4'h9 == _wnList_T_7[3:0] ? $signed(-10'sh1c) : $signed(_GEN_169); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_171 = 4'ha == _wnList_T_7[3:0] ? $signed(-10'sh1f) : $signed(_GEN_170); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_172 = 4'hb == _wnList_T_7[3:0] ? $signed(-10'sh20) : $signed(_GEN_171); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_173 = 4'hc == _wnList_T_7[3:0] ? $signed(-10'sh1e) : $signed(_GEN_172); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_174 = 4'hd == _wnList_T_7[3:0] ? $signed(-10'sh19) : $signed(_GEN_173); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_175 = 4'he == _wnList_T_7[3:0] ? $signed(-10'sh12) : $signed(_GEN_174); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_178 = 4'h1 == _wnList_T_7[3:0] ? $signed(-10'sh9) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_179 = 4'h2 == _wnList_T_7[3:0] ? $signed(-10'sh12) : $signed(_GEN_178); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_180 = 4'h3 == _wnList_T_7[3:0] ? $signed(-10'sh19) : $signed(_GEN_179); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_181 = 4'h4 == _wnList_T_7[3:0] ? $signed(-10'sh1e) : $signed(_GEN_180); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_182 = 4'h5 == _wnList_T_7[3:0] ? $signed(-10'sh20) : $signed(_GEN_181); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_183 = 4'h6 == _wnList_T_7[3:0] ? $signed(-10'sh1f) : $signed(_GEN_182); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_184 = 4'h7 == _wnList_T_7[3:0] ? $signed(-10'sh1c) : $signed(_GEN_183); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_185 = 4'h8 == _wnList_T_7[3:0] ? $signed(-10'sh17) : $signed(_GEN_184); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_186 = 4'h9 == _wnList_T_7[3:0] ? $signed(-10'shf) : $signed(_GEN_185); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_187 = 4'ha == _wnList_T_7[3:0] ? $signed(-10'sh6) : $signed(_GEN_186); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_188 = 4'hb == _wnList_T_7[3:0] ? $signed(10'sh3) : $signed(_GEN_187); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_189 = 4'hc == _wnList_T_7[3:0] ? $signed(10'shc) : $signed(_GEN_188); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_190 = 4'hd == _wnList_T_7[3:0] ? $signed(10'sh14) : $signed(_GEN_189); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_191 = 4'he == _wnList_T_7[3:0] ? $signed(10'sh1b) : $signed(_GEN_190); // @[FFT.scala 33:{12,12}]
  wire [4:0] _wnList_T_13 = 5'h8 + cnt_0; // @[FFT.scala 64:83]
  wire [9:0] _GEN_195 = 4'h2 == _wnList_T_13[3:0] ? $signed(10'sh1f) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_196 = 4'h3 == _wnList_T_13[3:0] ? $signed(10'sh1f) : $signed(_GEN_195); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_197 = 4'h4 == _wnList_T_13[3:0] ? $signed(10'sh1e) : $signed(_GEN_196); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_198 = 4'h5 == _wnList_T_13[3:0] ? $signed(10'sh1c) : $signed(_GEN_197); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_199 = 4'h6 == _wnList_T_13[3:0] ? $signed(10'sh1b) : $signed(_GEN_198); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_200 = 4'h7 == _wnList_T_13[3:0] ? $signed(10'sh19) : $signed(_GEN_199); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_201 = 4'h8 == _wnList_T_13[3:0] ? $signed(10'sh17) : $signed(_GEN_200); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_202 = 4'h9 == _wnList_T_13[3:0] ? $signed(10'sh14) : $signed(_GEN_201); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_203 = 4'ha == _wnList_T_13[3:0] ? $signed(10'sh12) : $signed(_GEN_202); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_204 = 4'hb == _wnList_T_13[3:0] ? $signed(10'shf) : $signed(_GEN_203); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_205 = 4'hc == _wnList_T_13[3:0] ? $signed(10'shc) : $signed(_GEN_204); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_206 = 4'hd == _wnList_T_13[3:0] ? $signed(10'sh9) : $signed(_GEN_205); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_207 = 4'he == _wnList_T_13[3:0] ? $signed(10'sh6) : $signed(_GEN_206); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_210 = 4'h1 == _wnList_T_13[3:0] ? $signed(-10'sh3) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_211 = 4'h2 == _wnList_T_13[3:0] ? $signed(-10'sh6) : $signed(_GEN_210); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_212 = 4'h3 == _wnList_T_13[3:0] ? $signed(-10'sh9) : $signed(_GEN_211); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_213 = 4'h4 == _wnList_T_13[3:0] ? $signed(-10'shc) : $signed(_GEN_212); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_214 = 4'h5 == _wnList_T_13[3:0] ? $signed(-10'shf) : $signed(_GEN_213); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_215 = 4'h6 == _wnList_T_13[3:0] ? $signed(-10'sh12) : $signed(_GEN_214); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_216 = 4'h7 == _wnList_T_13[3:0] ? $signed(-10'sh14) : $signed(_GEN_215); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_217 = 4'h8 == _wnList_T_13[3:0] ? $signed(-10'sh17) : $signed(_GEN_216); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_218 = 4'h9 == _wnList_T_13[3:0] ? $signed(-10'sh19) : $signed(_GEN_217); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_219 = 4'ha == _wnList_T_13[3:0] ? $signed(-10'sh1b) : $signed(_GEN_218); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_220 = 4'hb == _wnList_T_13[3:0] ? $signed(-10'sh1c) : $signed(_GEN_219); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_221 = 4'hc == _wnList_T_13[3:0] ? $signed(-10'sh1e) : $signed(_GEN_220); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_222 = 4'hd == _wnList_T_13[3:0] ? $signed(-10'sh1f) : $signed(_GEN_221); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_223 = 4'he == _wnList_T_13[3:0] ? $signed(-10'sh1f) : $signed(_GEN_222); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_226 = 4'h1 == _wnList_T_13[3:0] ? $signed(10'sh1f) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_227 = 4'h2 == _wnList_T_13[3:0] ? $signed(10'sh1e) : $signed(_GEN_226); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_228 = 4'h3 == _wnList_T_13[3:0] ? $signed(10'sh1b) : $signed(_GEN_227); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_229 = 4'h4 == _wnList_T_13[3:0] ? $signed(10'sh17) : $signed(_GEN_228); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_230 = 4'h5 == _wnList_T_13[3:0] ? $signed(10'sh12) : $signed(_GEN_229); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_231 = 4'h6 == _wnList_T_13[3:0] ? $signed(10'shc) : $signed(_GEN_230); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_232 = 4'h7 == _wnList_T_13[3:0] ? $signed(10'sh6) : $signed(_GEN_231); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_233 = 4'h8 == _wnList_T_13[3:0] ? $signed(10'sh0) : $signed(_GEN_232); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_234 = 4'h9 == _wnList_T_13[3:0] ? $signed(-10'sh6) : $signed(_GEN_233); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_235 = 4'ha == _wnList_T_13[3:0] ? $signed(-10'shc) : $signed(_GEN_234); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_236 = 4'hb == _wnList_T_13[3:0] ? $signed(-10'sh12) : $signed(_GEN_235); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_237 = 4'hc == _wnList_T_13[3:0] ? $signed(-10'sh17) : $signed(_GEN_236); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_238 = 4'hd == _wnList_T_13[3:0] ? $signed(-10'sh1b) : $signed(_GEN_237); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_239 = 4'he == _wnList_T_13[3:0] ? $signed(-10'sh1e) : $signed(_GEN_238); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_242 = 4'h1 == _wnList_T_13[3:0] ? $signed(-10'sh6) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_243 = 4'h2 == _wnList_T_13[3:0] ? $signed(-10'shc) : $signed(_GEN_242); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_244 = 4'h3 == _wnList_T_13[3:0] ? $signed(-10'sh12) : $signed(_GEN_243); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_245 = 4'h4 == _wnList_T_13[3:0] ? $signed(-10'sh17) : $signed(_GEN_244); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_246 = 4'h5 == _wnList_T_13[3:0] ? $signed(-10'sh1b) : $signed(_GEN_245); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_247 = 4'h6 == _wnList_T_13[3:0] ? $signed(-10'sh1e) : $signed(_GEN_246); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_248 = 4'h7 == _wnList_T_13[3:0] ? $signed(-10'sh1f) : $signed(_GEN_247); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_249 = 4'h8 == _wnList_T_13[3:0] ? $signed(-10'sh20) : $signed(_GEN_248); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_250 = 4'h9 == _wnList_T_13[3:0] ? $signed(-10'sh1f) : $signed(_GEN_249); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_251 = 4'ha == _wnList_T_13[3:0] ? $signed(-10'sh1e) : $signed(_GEN_250); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_252 = 4'hb == _wnList_T_13[3:0] ? $signed(-10'sh1b) : $signed(_GEN_251); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_253 = 4'hc == _wnList_T_13[3:0] ? $signed(-10'sh17) : $signed(_GEN_252); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_254 = 4'hd == _wnList_T_13[3:0] ? $signed(-10'sh12) : $signed(_GEN_253); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_255 = 4'he == _wnList_T_13[3:0] ? $signed(-10'shc) : $signed(_GEN_254); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_259 = 4'h2 == _wnList_T_13[3:0] ? $signed(10'sh1b) : $signed(_GEN_226); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_260 = 4'h3 == _wnList_T_13[3:0] ? $signed(10'sh14) : $signed(_GEN_259); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_261 = 4'h4 == _wnList_T_13[3:0] ? $signed(10'shc) : $signed(_GEN_260); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_262 = 4'h5 == _wnList_T_13[3:0] ? $signed(10'sh3) : $signed(_GEN_261); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_263 = 4'h6 == _wnList_T_13[3:0] ? $signed(-10'sh6) : $signed(_GEN_262); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_264 = 4'h7 == _wnList_T_13[3:0] ? $signed(-10'shf) : $signed(_GEN_263); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_265 = 4'h8 == _wnList_T_13[3:0] ? $signed(-10'sh17) : $signed(_GEN_264); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_266 = 4'h9 == _wnList_T_13[3:0] ? $signed(-10'sh1c) : $signed(_GEN_265); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_267 = 4'ha == _wnList_T_13[3:0] ? $signed(-10'sh1f) : $signed(_GEN_266); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_268 = 4'hb == _wnList_T_13[3:0] ? $signed(-10'sh20) : $signed(_GEN_267); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_269 = 4'hc == _wnList_T_13[3:0] ? $signed(-10'sh1e) : $signed(_GEN_268); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_270 = 4'hd == _wnList_T_13[3:0] ? $signed(-10'sh19) : $signed(_GEN_269); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_271 = 4'he == _wnList_T_13[3:0] ? $signed(-10'sh12) : $signed(_GEN_270); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_274 = 4'h1 == _wnList_T_13[3:0] ? $signed(-10'sh9) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_275 = 4'h2 == _wnList_T_13[3:0] ? $signed(-10'sh12) : $signed(_GEN_274); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_276 = 4'h3 == _wnList_T_13[3:0] ? $signed(-10'sh19) : $signed(_GEN_275); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_277 = 4'h4 == _wnList_T_13[3:0] ? $signed(-10'sh1e) : $signed(_GEN_276); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_278 = 4'h5 == _wnList_T_13[3:0] ? $signed(-10'sh20) : $signed(_GEN_277); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_279 = 4'h6 == _wnList_T_13[3:0] ? $signed(-10'sh1f) : $signed(_GEN_278); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_280 = 4'h7 == _wnList_T_13[3:0] ? $signed(-10'sh1c) : $signed(_GEN_279); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_281 = 4'h8 == _wnList_T_13[3:0] ? $signed(-10'sh17) : $signed(_GEN_280); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_282 = 4'h9 == _wnList_T_13[3:0] ? $signed(-10'shf) : $signed(_GEN_281); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_283 = 4'ha == _wnList_T_13[3:0] ? $signed(-10'sh6) : $signed(_GEN_282); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_284 = 4'hb == _wnList_T_13[3:0] ? $signed(10'sh3) : $signed(_GEN_283); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_285 = 4'hc == _wnList_T_13[3:0] ? $signed(10'shc) : $signed(_GEN_284); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_286 = 4'hd == _wnList_T_13[3:0] ? $signed(10'sh14) : $signed(_GEN_285); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_287 = 4'he == _wnList_T_13[3:0] ? $signed(10'sh1b) : $signed(_GEN_286); // @[FFT.scala 33:{12,12}]
  wire [4:0] _wnList_T_19 = 5'hc + cnt_0; // @[FFT.scala 64:83]
  wire [9:0] _GEN_291 = 4'h2 == _wnList_T_19[3:0] ? $signed(10'sh1f) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_292 = 4'h3 == _wnList_T_19[3:0] ? $signed(10'sh1f) : $signed(_GEN_291); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_293 = 4'h4 == _wnList_T_19[3:0] ? $signed(10'sh1e) : $signed(_GEN_292); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_294 = 4'h5 == _wnList_T_19[3:0] ? $signed(10'sh1c) : $signed(_GEN_293); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_295 = 4'h6 == _wnList_T_19[3:0] ? $signed(10'sh1b) : $signed(_GEN_294); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_296 = 4'h7 == _wnList_T_19[3:0] ? $signed(10'sh19) : $signed(_GEN_295); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_297 = 4'h8 == _wnList_T_19[3:0] ? $signed(10'sh17) : $signed(_GEN_296); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_298 = 4'h9 == _wnList_T_19[3:0] ? $signed(10'sh14) : $signed(_GEN_297); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_299 = 4'ha == _wnList_T_19[3:0] ? $signed(10'sh12) : $signed(_GEN_298); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_300 = 4'hb == _wnList_T_19[3:0] ? $signed(10'shf) : $signed(_GEN_299); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_301 = 4'hc == _wnList_T_19[3:0] ? $signed(10'shc) : $signed(_GEN_300); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_302 = 4'hd == _wnList_T_19[3:0] ? $signed(10'sh9) : $signed(_GEN_301); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_303 = 4'he == _wnList_T_19[3:0] ? $signed(10'sh6) : $signed(_GEN_302); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_306 = 4'h1 == _wnList_T_19[3:0] ? $signed(-10'sh3) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_307 = 4'h2 == _wnList_T_19[3:0] ? $signed(-10'sh6) : $signed(_GEN_306); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_308 = 4'h3 == _wnList_T_19[3:0] ? $signed(-10'sh9) : $signed(_GEN_307); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_309 = 4'h4 == _wnList_T_19[3:0] ? $signed(-10'shc) : $signed(_GEN_308); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_310 = 4'h5 == _wnList_T_19[3:0] ? $signed(-10'shf) : $signed(_GEN_309); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_311 = 4'h6 == _wnList_T_19[3:0] ? $signed(-10'sh12) : $signed(_GEN_310); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_312 = 4'h7 == _wnList_T_19[3:0] ? $signed(-10'sh14) : $signed(_GEN_311); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_313 = 4'h8 == _wnList_T_19[3:0] ? $signed(-10'sh17) : $signed(_GEN_312); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_314 = 4'h9 == _wnList_T_19[3:0] ? $signed(-10'sh19) : $signed(_GEN_313); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_315 = 4'ha == _wnList_T_19[3:0] ? $signed(-10'sh1b) : $signed(_GEN_314); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_316 = 4'hb == _wnList_T_19[3:0] ? $signed(-10'sh1c) : $signed(_GEN_315); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_317 = 4'hc == _wnList_T_19[3:0] ? $signed(-10'sh1e) : $signed(_GEN_316); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_318 = 4'hd == _wnList_T_19[3:0] ? $signed(-10'sh1f) : $signed(_GEN_317); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_319 = 4'he == _wnList_T_19[3:0] ? $signed(-10'sh1f) : $signed(_GEN_318); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_322 = 4'h1 == _wnList_T_19[3:0] ? $signed(10'sh1f) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_323 = 4'h2 == _wnList_T_19[3:0] ? $signed(10'sh1e) : $signed(_GEN_322); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_324 = 4'h3 == _wnList_T_19[3:0] ? $signed(10'sh1b) : $signed(_GEN_323); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_325 = 4'h4 == _wnList_T_19[3:0] ? $signed(10'sh17) : $signed(_GEN_324); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_326 = 4'h5 == _wnList_T_19[3:0] ? $signed(10'sh12) : $signed(_GEN_325); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_327 = 4'h6 == _wnList_T_19[3:0] ? $signed(10'shc) : $signed(_GEN_326); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_328 = 4'h7 == _wnList_T_19[3:0] ? $signed(10'sh6) : $signed(_GEN_327); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_329 = 4'h8 == _wnList_T_19[3:0] ? $signed(10'sh0) : $signed(_GEN_328); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_330 = 4'h9 == _wnList_T_19[3:0] ? $signed(-10'sh6) : $signed(_GEN_329); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_331 = 4'ha == _wnList_T_19[3:0] ? $signed(-10'shc) : $signed(_GEN_330); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_332 = 4'hb == _wnList_T_19[3:0] ? $signed(-10'sh12) : $signed(_GEN_331); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_333 = 4'hc == _wnList_T_19[3:0] ? $signed(-10'sh17) : $signed(_GEN_332); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_334 = 4'hd == _wnList_T_19[3:0] ? $signed(-10'sh1b) : $signed(_GEN_333); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_335 = 4'he == _wnList_T_19[3:0] ? $signed(-10'sh1e) : $signed(_GEN_334); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_338 = 4'h1 == _wnList_T_19[3:0] ? $signed(-10'sh6) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_339 = 4'h2 == _wnList_T_19[3:0] ? $signed(-10'shc) : $signed(_GEN_338); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_340 = 4'h3 == _wnList_T_19[3:0] ? $signed(-10'sh12) : $signed(_GEN_339); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_341 = 4'h4 == _wnList_T_19[3:0] ? $signed(-10'sh17) : $signed(_GEN_340); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_342 = 4'h5 == _wnList_T_19[3:0] ? $signed(-10'sh1b) : $signed(_GEN_341); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_343 = 4'h6 == _wnList_T_19[3:0] ? $signed(-10'sh1e) : $signed(_GEN_342); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_344 = 4'h7 == _wnList_T_19[3:0] ? $signed(-10'sh1f) : $signed(_GEN_343); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_345 = 4'h8 == _wnList_T_19[3:0] ? $signed(-10'sh20) : $signed(_GEN_344); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_346 = 4'h9 == _wnList_T_19[3:0] ? $signed(-10'sh1f) : $signed(_GEN_345); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_347 = 4'ha == _wnList_T_19[3:0] ? $signed(-10'sh1e) : $signed(_GEN_346); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_348 = 4'hb == _wnList_T_19[3:0] ? $signed(-10'sh1b) : $signed(_GEN_347); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_349 = 4'hc == _wnList_T_19[3:0] ? $signed(-10'sh17) : $signed(_GEN_348); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_350 = 4'hd == _wnList_T_19[3:0] ? $signed(-10'sh12) : $signed(_GEN_349); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_351 = 4'he == _wnList_T_19[3:0] ? $signed(-10'shc) : $signed(_GEN_350); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_355 = 4'h2 == _wnList_T_19[3:0] ? $signed(10'sh1b) : $signed(_GEN_322); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_356 = 4'h3 == _wnList_T_19[3:0] ? $signed(10'sh14) : $signed(_GEN_355); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_357 = 4'h4 == _wnList_T_19[3:0] ? $signed(10'shc) : $signed(_GEN_356); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_358 = 4'h5 == _wnList_T_19[3:0] ? $signed(10'sh3) : $signed(_GEN_357); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_359 = 4'h6 == _wnList_T_19[3:0] ? $signed(-10'sh6) : $signed(_GEN_358); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_360 = 4'h7 == _wnList_T_19[3:0] ? $signed(-10'shf) : $signed(_GEN_359); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_361 = 4'h8 == _wnList_T_19[3:0] ? $signed(-10'sh17) : $signed(_GEN_360); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_362 = 4'h9 == _wnList_T_19[3:0] ? $signed(-10'sh1c) : $signed(_GEN_361); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_363 = 4'ha == _wnList_T_19[3:0] ? $signed(-10'sh1f) : $signed(_GEN_362); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_364 = 4'hb == _wnList_T_19[3:0] ? $signed(-10'sh20) : $signed(_GEN_363); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_365 = 4'hc == _wnList_T_19[3:0] ? $signed(-10'sh1e) : $signed(_GEN_364); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_366 = 4'hd == _wnList_T_19[3:0] ? $signed(-10'sh19) : $signed(_GEN_365); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_367 = 4'he == _wnList_T_19[3:0] ? $signed(-10'sh12) : $signed(_GEN_366); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_370 = 4'h1 == _wnList_T_19[3:0] ? $signed(-10'sh9) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_371 = 4'h2 == _wnList_T_19[3:0] ? $signed(-10'sh12) : $signed(_GEN_370); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_372 = 4'h3 == _wnList_T_19[3:0] ? $signed(-10'sh19) : $signed(_GEN_371); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_373 = 4'h4 == _wnList_T_19[3:0] ? $signed(-10'sh1e) : $signed(_GEN_372); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_374 = 4'h5 == _wnList_T_19[3:0] ? $signed(-10'sh20) : $signed(_GEN_373); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_375 = 4'h6 == _wnList_T_19[3:0] ? $signed(-10'sh1f) : $signed(_GEN_374); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_376 = 4'h7 == _wnList_T_19[3:0] ? $signed(-10'sh1c) : $signed(_GEN_375); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_377 = 4'h8 == _wnList_T_19[3:0] ? $signed(-10'sh17) : $signed(_GEN_376); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_378 = 4'h9 == _wnList_T_19[3:0] ? $signed(-10'shf) : $signed(_GEN_377); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_379 = 4'ha == _wnList_T_19[3:0] ? $signed(-10'sh6) : $signed(_GEN_378); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_380 = 4'hb == _wnList_T_19[3:0] ? $signed(10'sh3) : $signed(_GEN_379); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_381 = 4'hc == _wnList_T_19[3:0] ? $signed(10'shc) : $signed(_GEN_380); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_382 = 4'hd == _wnList_T_19[3:0] ? $signed(10'sh14) : $signed(_GEN_381); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_383 = 4'he == _wnList_T_19[3:0] ? $signed(10'sh1b) : $signed(_GEN_382); // @[FFT.scala 33:{12,12}]
  wire [1:0] wnCtrl = cnt_1[1:0]; // @[FFT.scala 60:23]
  wire [2:0] _wnList_T_24 = {{1'd0}, wnCtrl}; // @[FFT.scala 64:83]
  wire [9:0] _GEN_386 = 2'h1 == _wnList_T_24[1:0] ? $signed(10'sh1e) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_387 = 2'h2 == _wnList_T_24[1:0] ? $signed(10'sh17) : $signed(_GEN_386); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_390 = 2'h1 == _wnList_T_24[1:0] ? $signed(-10'shc) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_391 = 2'h2 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_390); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_394 = 2'h1 == _wnList_T_24[1:0] ? $signed(10'sh17) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_395 = 2'h2 == _wnList_T_24[1:0] ? $signed(10'sh0) : $signed(_GEN_394); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_398 = 2'h1 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_399 = 2'h2 == _wnList_T_24[1:0] ? $signed(-10'sh20) : $signed(_GEN_398); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_402 = 2'h1 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(10'sh20); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_403 = 2'h2 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_402); // @[FFT.scala 32:{12,12}]
  wire [9:0] _GEN_406 = 2'h1 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(10'sh0); // @[FFT.scala 33:{12,12}]
  wire [9:0] _GEN_407 = 2'h2 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_406); // @[FFT.scala 33:{12,12}]
  reg [9:0] REG__0_re; // @[FFT.scala 87:72]
  reg [9:0] REG__0_im; // @[FFT.scala 87:72]
  reg [9:0] REG__1_re; // @[FFT.scala 87:72]
  reg [9:0] REG__1_im; // @[FFT.scala 87:72]
  reg [9:0] REG__2_re; // @[FFT.scala 87:72]
  reg [9:0] REG__2_im; // @[FFT.scala 87:72]
  reg [9:0] REG__3_re; // @[FFT.scala 87:72]
  reg [9:0] REG__3_im; // @[FFT.scala 87:72]
  reg [9:0] REG_1_0_re; // @[FFT.scala 87:72]
  reg [9:0] REG_1_0_im; // @[FFT.scala 87:72]
  reg [9:0] REG_1_1_re; // @[FFT.scala 87:72]
  reg [9:0] REG_1_1_im; // @[FFT.scala 87:72]
  reg [9:0] REG_1_2_re; // @[FFT.scala 87:72]
  reg [9:0] REG_1_2_im; // @[FFT.scala 87:72]
  reg [9:0] REG_1_3_re; // @[FFT.scala 87:72]
  reg [9:0] REG_1_3_im; // @[FFT.scala 87:72]
  reg [9:0] REG_2_0_re; // @[FFT.scala 87:72]
  reg [9:0] REG_2_0_im; // @[FFT.scala 87:72]
  reg [9:0] REG_2_1_re; // @[FFT.scala 87:72]
  reg [9:0] REG_2_1_im; // @[FFT.scala 87:72]
  reg [9:0] REG_2_2_re; // @[FFT.scala 87:72]
  reg [9:0] REG_2_2_im; // @[FFT.scala 87:72]
  reg [9:0] REG_2_3_re; // @[FFT.scala 87:72]
  reg [9:0] REG_2_3_im; // @[FFT.scala 87:72]
  reg [9:0] REG_3_0_re; // @[FFT.scala 87:72]
  reg [9:0] REG_3_0_im; // @[FFT.scala 87:72]
  reg [9:0] REG_3_1_re; // @[FFT.scala 87:72]
  reg [9:0] REG_3_1_im; // @[FFT.scala 87:72]
  reg [9:0] REG_3_2_re; // @[FFT.scala 87:72]
  reg [9:0] REG_3_2_im; // @[FFT.scala 87:72]
  reg [9:0] REG_3_3_re; // @[FFT.scala 87:72]
  reg [9:0] REG_3_3_im; // @[FFT.scala 87:72]
  reg [4:0] io_dout_valid_REG; // @[FFT.scala 103:27]
  reg [9:0] REG_4_0_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_0_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_1_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_1_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_2_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_2_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_3_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_3_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_4_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_4_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_5_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_5_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_6_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_6_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_7_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_7_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_8_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_8_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_9_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_9_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_10_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_10_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_11_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_11_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_12_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_12_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_13_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_13_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_14_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_14_im; // @[FFT.scala 104:21]
  reg [9:0] REG_4_15_re; // @[FFT.scala 104:21]
  reg [9:0] REG_4_15_im; // @[FFT.scala 104:21]
  ButterflyMul inst ( // @[Modules.scala 210:22]
    .io_in_0_re(inst_io_in_0_re),
    .io_in_0_im(inst_io_in_0_im),
    .io_in_1_re(inst_io_in_1_re),
    .io_in_1_im(inst_io_in_1_im),
    .io_in_2_re(inst_io_in_2_re),
    .io_in_2_im(inst_io_in_2_im),
    .io_in_3_re(inst_io_in_3_re),
    .io_in_3_im(inst_io_in_3_im),
    .io_out_0_re(inst_io_out_0_re),
    .io_out_0_im(inst_io_out_0_im),
    .io_out_1_re(inst_io_out_1_re),
    .io_out_1_im(inst_io_out_1_im),
    .io_out_2_re(inst_io_out_2_re),
    .io_out_2_im(inst_io_out_2_im),
    .io_out_3_re(inst_io_out_3_re),
    .io_out_3_im(inst_io_out_3_im),
    .io_wn_0_re(inst_io_wn_0_re),
    .io_wn_0_im(inst_io_wn_0_im),
    .io_wn_1_re(inst_io_wn_1_re),
    .io_wn_1_im(inst_io_wn_1_im),
    .io_wn_2_re(inst_io_wn_2_re),
    .io_wn_2_im(inst_io_wn_2_im)
  );
  ButterflyMul inst_1 ( // @[Modules.scala 210:22]
    .io_in_0_re(inst_1_io_in_0_re),
    .io_in_0_im(inst_1_io_in_0_im),
    .io_in_1_re(inst_1_io_in_1_re),
    .io_in_1_im(inst_1_io_in_1_im),
    .io_in_2_re(inst_1_io_in_2_re),
    .io_in_2_im(inst_1_io_in_2_im),
    .io_in_3_re(inst_1_io_in_3_re),
    .io_in_3_im(inst_1_io_in_3_im),
    .io_out_0_re(inst_1_io_out_0_re),
    .io_out_0_im(inst_1_io_out_0_im),
    .io_out_1_re(inst_1_io_out_1_re),
    .io_out_1_im(inst_1_io_out_1_im),
    .io_out_2_re(inst_1_io_out_2_re),
    .io_out_2_im(inst_1_io_out_2_im),
    .io_out_3_re(inst_1_io_out_3_re),
    .io_out_3_im(inst_1_io_out_3_im),
    .io_wn_0_re(inst_1_io_wn_0_re),
    .io_wn_0_im(inst_1_io_wn_0_im),
    .io_wn_1_re(inst_1_io_wn_1_re),
    .io_wn_1_im(inst_1_io_wn_1_im),
    .io_wn_2_re(inst_1_io_wn_2_re),
    .io_wn_2_im(inst_1_io_wn_2_im)
  );
  ButterflyMul inst_2 ( // @[Modules.scala 210:22]
    .io_in_0_re(inst_2_io_in_0_re),
    .io_in_0_im(inst_2_io_in_0_im),
    .io_in_1_re(inst_2_io_in_1_re),
    .io_in_1_im(inst_2_io_in_1_im),
    .io_in_2_re(inst_2_io_in_2_re),
    .io_in_2_im(inst_2_io_in_2_im),
    .io_in_3_re(inst_2_io_in_3_re),
    .io_in_3_im(inst_2_io_in_3_im),
    .io_out_0_re(inst_2_io_out_0_re),
    .io_out_0_im(inst_2_io_out_0_im),
    .io_out_1_re(inst_2_io_out_1_re),
    .io_out_1_im(inst_2_io_out_1_im),
    .io_out_2_re(inst_2_io_out_2_re),
    .io_out_2_im(inst_2_io_out_2_im),
    .io_out_3_re(inst_2_io_out_3_re),
    .io_out_3_im(inst_2_io_out_3_im),
    .io_wn_0_re(inst_2_io_wn_0_re),
    .io_wn_0_im(inst_2_io_wn_0_im),
    .io_wn_1_re(inst_2_io_wn_1_re),
    .io_wn_1_im(inst_2_io_wn_1_im),
    .io_wn_2_re(inst_2_io_wn_2_re),
    .io_wn_2_im(inst_2_io_wn_2_im)
  );
  ButterflyMul inst_3 ( // @[Modules.scala 210:22]
    .io_in_0_re(inst_3_io_in_0_re),
    .io_in_0_im(inst_3_io_in_0_im),
    .io_in_1_re(inst_3_io_in_1_re),
    .io_in_1_im(inst_3_io_in_1_im),
    .io_in_2_re(inst_3_io_in_2_re),
    .io_in_2_im(inst_3_io_in_2_im),
    .io_in_3_re(inst_3_io_in_3_re),
    .io_in_3_im(inst_3_io_in_3_im),
    .io_out_0_re(inst_3_io_out_0_re),
    .io_out_0_im(inst_3_io_out_0_im),
    .io_out_1_re(inst_3_io_out_1_re),
    .io_out_1_im(inst_3_io_out_1_im),
    .io_out_2_re(inst_3_io_out_2_re),
    .io_out_2_im(inst_3_io_out_2_im),
    .io_out_3_re(inst_3_io_out_3_re),
    .io_out_3_im(inst_3_io_out_3_im),
    .io_wn_0_re(inst_3_io_wn_0_re),
    .io_wn_0_im(inst_3_io_wn_0_im),
    .io_wn_1_re(inst_3_io_wn_1_re),
    .io_wn_1_im(inst_3_io_wn_1_im),
    .io_wn_2_re(inst_3_io_wn_2_re),
    .io_wn_2_im(inst_3_io_wn_2_im)
  );
  ButterflyMul inst_4 ( // @[Modules.scala 210:22]
    .io_in_0_re(inst_4_io_in_0_re),
    .io_in_0_im(inst_4_io_in_0_im),
    .io_in_1_re(inst_4_io_in_1_re),
    .io_in_1_im(inst_4_io_in_1_im),
    .io_in_2_re(inst_4_io_in_2_re),
    .io_in_2_im(inst_4_io_in_2_im),
    .io_in_3_re(inst_4_io_in_3_re),
    .io_in_3_im(inst_4_io_in_3_im),
    .io_out_0_re(inst_4_io_out_0_re),
    .io_out_0_im(inst_4_io_out_0_im),
    .io_out_1_re(inst_4_io_out_1_re),
    .io_out_1_im(inst_4_io_out_1_im),
    .io_out_2_re(inst_4_io_out_2_re),
    .io_out_2_im(inst_4_io_out_2_im),
    .io_out_3_re(inst_4_io_out_3_re),
    .io_out_3_im(inst_4_io_out_3_im),
    .io_wn_0_re(inst_4_io_wn_0_re),
    .io_wn_0_im(inst_4_io_wn_0_im),
    .io_wn_1_re(inst_4_io_wn_1_re),
    .io_wn_1_im(inst_4_io_wn_1_im),
    .io_wn_2_re(inst_4_io_wn_2_re),
    .io_wn_2_im(inst_4_io_wn_2_im)
  );
  ButterflyMul inst_5 ( // @[Modules.scala 210:22]
    .io_in_0_re(inst_5_io_in_0_re),
    .io_in_0_im(inst_5_io_in_0_im),
    .io_in_1_re(inst_5_io_in_1_re),
    .io_in_1_im(inst_5_io_in_1_im),
    .io_in_2_re(inst_5_io_in_2_re),
    .io_in_2_im(inst_5_io_in_2_im),
    .io_in_3_re(inst_5_io_in_3_re),
    .io_in_3_im(inst_5_io_in_3_im),
    .io_out_0_re(inst_5_io_out_0_re),
    .io_out_0_im(inst_5_io_out_0_im),
    .io_out_1_re(inst_5_io_out_1_re),
    .io_out_1_im(inst_5_io_out_1_im),
    .io_out_2_re(inst_5_io_out_2_re),
    .io_out_2_im(inst_5_io_out_2_im),
    .io_out_3_re(inst_5_io_out_3_re),
    .io_out_3_im(inst_5_io_out_3_im),
    .io_wn_0_re(inst_5_io_wn_0_re),
    .io_wn_0_im(inst_5_io_wn_0_im),
    .io_wn_1_re(inst_5_io_wn_1_re),
    .io_wn_1_im(inst_5_io_wn_1_im),
    .io_wn_2_re(inst_5_io_wn_2_re),
    .io_wn_2_im(inst_5_io_wn_2_im)
  );
  ButterflyMul inst_6 ( // @[Modules.scala 210:22]
    .io_in_0_re(inst_6_io_in_0_re),
    .io_in_0_im(inst_6_io_in_0_im),
    .io_in_1_re(inst_6_io_in_1_re),
    .io_in_1_im(inst_6_io_in_1_im),
    .io_in_2_re(inst_6_io_in_2_re),
    .io_in_2_im(inst_6_io_in_2_im),
    .io_in_3_re(inst_6_io_in_3_re),
    .io_in_3_im(inst_6_io_in_3_im),
    .io_out_0_re(inst_6_io_out_0_re),
    .io_out_0_im(inst_6_io_out_0_im),
    .io_out_1_re(inst_6_io_out_1_re),
    .io_out_1_im(inst_6_io_out_1_im),
    .io_out_2_re(inst_6_io_out_2_re),
    .io_out_2_im(inst_6_io_out_2_im),
    .io_out_3_re(inst_6_io_out_3_re),
    .io_out_3_im(inst_6_io_out_3_im),
    .io_wn_0_re(inst_6_io_wn_0_re),
    .io_wn_0_im(inst_6_io_wn_0_im),
    .io_wn_1_re(inst_6_io_wn_1_re),
    .io_wn_1_im(inst_6_io_wn_1_im),
    .io_wn_2_re(inst_6_io_wn_2_re),
    .io_wn_2_im(inst_6_io_wn_2_im)
  );
  ButterflyMul inst_7 ( // @[Modules.scala 210:22]
    .io_in_0_re(inst_7_io_in_0_re),
    .io_in_0_im(inst_7_io_in_0_im),
    .io_in_1_re(inst_7_io_in_1_re),
    .io_in_1_im(inst_7_io_in_1_im),
    .io_in_2_re(inst_7_io_in_2_re),
    .io_in_2_im(inst_7_io_in_2_im),
    .io_in_3_re(inst_7_io_in_3_re),
    .io_in_3_im(inst_7_io_in_3_im),
    .io_out_0_re(inst_7_io_out_0_re),
    .io_out_0_im(inst_7_io_out_0_im),
    .io_out_1_re(inst_7_io_out_1_re),
    .io_out_1_im(inst_7_io_out_1_im),
    .io_out_2_re(inst_7_io_out_2_re),
    .io_out_2_im(inst_7_io_out_2_im),
    .io_out_3_re(inst_7_io_out_3_re),
    .io_out_3_im(inst_7_io_out_3_im),
    .io_wn_0_re(inst_7_io_wn_0_re),
    .io_wn_0_im(inst_7_io_wn_0_im),
    .io_wn_1_re(inst_7_io_wn_1_re),
    .io_wn_1_im(inst_7_io_wn_1_im),
    .io_wn_2_re(inst_7_io_wn_2_re),
    .io_wn_2_im(inst_7_io_wn_2_im)
  );
  ButterflyAdd dataotemp_inst ( // @[Modules.scala 144:22]
    .io_in_0_re(dataotemp_inst_io_in_0_re),
    .io_in_0_im(dataotemp_inst_io_in_0_im),
    .io_in_1_re(dataotemp_inst_io_in_1_re),
    .io_in_1_im(dataotemp_inst_io_in_1_im),
    .io_in_2_re(dataotemp_inst_io_in_2_re),
    .io_in_2_im(dataotemp_inst_io_in_2_im),
    .io_in_3_re(dataotemp_inst_io_in_3_re),
    .io_in_3_im(dataotemp_inst_io_in_3_im),
    .io_out_0_re(dataotemp_inst_io_out_0_re),
    .io_out_0_im(dataotemp_inst_io_out_0_im),
    .io_out_1_re(dataotemp_inst_io_out_1_re),
    .io_out_1_im(dataotemp_inst_io_out_1_im),
    .io_out_2_re(dataotemp_inst_io_out_2_re),
    .io_out_2_im(dataotemp_inst_io_out_2_im),
    .io_out_3_re(dataotemp_inst_io_out_3_re),
    .io_out_3_im(dataotemp_inst_io_out_3_im)
  );
  ButterflyAdd dataotemp_inst_1 ( // @[Modules.scala 144:22]
    .io_in_0_re(dataotemp_inst_1_io_in_0_re),
    .io_in_0_im(dataotemp_inst_1_io_in_0_im),
    .io_in_1_re(dataotemp_inst_1_io_in_1_re),
    .io_in_1_im(dataotemp_inst_1_io_in_1_im),
    .io_in_2_re(dataotemp_inst_1_io_in_2_re),
    .io_in_2_im(dataotemp_inst_1_io_in_2_im),
    .io_in_3_re(dataotemp_inst_1_io_in_3_re),
    .io_in_3_im(dataotemp_inst_1_io_in_3_im),
    .io_out_0_re(dataotemp_inst_1_io_out_0_re),
    .io_out_0_im(dataotemp_inst_1_io_out_0_im),
    .io_out_1_re(dataotemp_inst_1_io_out_1_re),
    .io_out_1_im(dataotemp_inst_1_io_out_1_im),
    .io_out_2_re(dataotemp_inst_1_io_out_2_re),
    .io_out_2_im(dataotemp_inst_1_io_out_2_im),
    .io_out_3_re(dataotemp_inst_1_io_out_3_re),
    .io_out_3_im(dataotemp_inst_1_io_out_3_im)
  );
  ButterflyAdd dataotemp_inst_2 ( // @[Modules.scala 144:22]
    .io_in_0_re(dataotemp_inst_2_io_in_0_re),
    .io_in_0_im(dataotemp_inst_2_io_in_0_im),
    .io_in_1_re(dataotemp_inst_2_io_in_1_re),
    .io_in_1_im(dataotemp_inst_2_io_in_1_im),
    .io_in_2_re(dataotemp_inst_2_io_in_2_re),
    .io_in_2_im(dataotemp_inst_2_io_in_2_im),
    .io_in_3_re(dataotemp_inst_2_io_in_3_re),
    .io_in_3_im(dataotemp_inst_2_io_in_3_im),
    .io_out_0_re(dataotemp_inst_2_io_out_0_re),
    .io_out_0_im(dataotemp_inst_2_io_out_0_im),
    .io_out_1_re(dataotemp_inst_2_io_out_1_re),
    .io_out_1_im(dataotemp_inst_2_io_out_1_im),
    .io_out_2_re(dataotemp_inst_2_io_out_2_re),
    .io_out_2_im(dataotemp_inst_2_io_out_2_im),
    .io_out_3_re(dataotemp_inst_2_io_out_3_re),
    .io_out_3_im(dataotemp_inst_2_io_out_3_im)
  );
  ButterflyAdd dataotemp_inst_3 ( // @[Modules.scala 144:22]
    .io_in_0_re(dataotemp_inst_3_io_in_0_re),
    .io_in_0_im(dataotemp_inst_3_io_in_0_im),
    .io_in_1_re(dataotemp_inst_3_io_in_1_re),
    .io_in_1_im(dataotemp_inst_3_io_in_1_im),
    .io_in_2_re(dataotemp_inst_3_io_in_2_re),
    .io_in_2_im(dataotemp_inst_3_io_in_2_im),
    .io_in_3_re(dataotemp_inst_3_io_in_3_re),
    .io_in_3_im(dataotemp_inst_3_io_in_3_im),
    .io_out_0_re(dataotemp_inst_3_io_out_0_re),
    .io_out_0_im(dataotemp_inst_3_io_out_0_im),
    .io_out_1_re(dataotemp_inst_3_io_out_1_re),
    .io_out_1_im(dataotemp_inst_3_io_out_1_im),
    .io_out_2_re(dataotemp_inst_3_io_out_2_re),
    .io_out_2_im(dataotemp_inst_3_io_out_2_im),
    .io_out_3_re(dataotemp_inst_3_io_out_3_re),
    .io_out_3_im(dataotemp_inst_3_io_out_3_im)
  );
  Exchange exdata_inst ( // @[Modules.scala 254:22]
    .io_in_0_0_re(exdata_inst_io_in_0_0_re),
    .io_in_0_0_im(exdata_inst_io_in_0_0_im),
    .io_in_0_1_re(exdata_inst_io_in_0_1_re),
    .io_in_0_1_im(exdata_inst_io_in_0_1_im),
    .io_in_0_2_re(exdata_inst_io_in_0_2_re),
    .io_in_0_2_im(exdata_inst_io_in_0_2_im),
    .io_in_0_3_re(exdata_inst_io_in_0_3_re),
    .io_in_0_3_im(exdata_inst_io_in_0_3_im),
    .io_in_1_0_re(exdata_inst_io_in_1_0_re),
    .io_in_1_0_im(exdata_inst_io_in_1_0_im),
    .io_in_1_1_re(exdata_inst_io_in_1_1_re),
    .io_in_1_1_im(exdata_inst_io_in_1_1_im),
    .io_in_1_2_re(exdata_inst_io_in_1_2_re),
    .io_in_1_2_im(exdata_inst_io_in_1_2_im),
    .io_in_1_3_re(exdata_inst_io_in_1_3_re),
    .io_in_1_3_im(exdata_inst_io_in_1_3_im),
    .io_in_2_0_re(exdata_inst_io_in_2_0_re),
    .io_in_2_0_im(exdata_inst_io_in_2_0_im),
    .io_in_2_1_re(exdata_inst_io_in_2_1_re),
    .io_in_2_1_im(exdata_inst_io_in_2_1_im),
    .io_in_2_2_re(exdata_inst_io_in_2_2_re),
    .io_in_2_2_im(exdata_inst_io_in_2_2_im),
    .io_in_2_3_re(exdata_inst_io_in_2_3_re),
    .io_in_2_3_im(exdata_inst_io_in_2_3_im),
    .io_in_3_0_re(exdata_inst_io_in_3_0_re),
    .io_in_3_0_im(exdata_inst_io_in_3_0_im),
    .io_in_3_1_re(exdata_inst_io_in_3_1_re),
    .io_in_3_1_im(exdata_inst_io_in_3_1_im),
    .io_in_3_2_re(exdata_inst_io_in_3_2_re),
    .io_in_3_2_im(exdata_inst_io_in_3_2_im),
    .io_in_3_3_re(exdata_inst_io_in_3_3_re),
    .io_in_3_3_im(exdata_inst_io_in_3_3_im),
    .io_out_0_0_re(exdata_inst_io_out_0_0_re),
    .io_out_0_0_im(exdata_inst_io_out_0_0_im),
    .io_out_0_1_re(exdata_inst_io_out_0_1_re),
    .io_out_0_1_im(exdata_inst_io_out_0_1_im),
    .io_out_0_2_re(exdata_inst_io_out_0_2_re),
    .io_out_0_2_im(exdata_inst_io_out_0_2_im),
    .io_out_0_3_re(exdata_inst_io_out_0_3_re),
    .io_out_0_3_im(exdata_inst_io_out_0_3_im),
    .io_out_1_0_re(exdata_inst_io_out_1_0_re),
    .io_out_1_0_im(exdata_inst_io_out_1_0_im),
    .io_out_1_1_re(exdata_inst_io_out_1_1_re),
    .io_out_1_1_im(exdata_inst_io_out_1_1_im),
    .io_out_1_2_re(exdata_inst_io_out_1_2_re),
    .io_out_1_2_im(exdata_inst_io_out_1_2_im),
    .io_out_1_3_re(exdata_inst_io_out_1_3_re),
    .io_out_1_3_im(exdata_inst_io_out_1_3_im),
    .io_out_2_0_re(exdata_inst_io_out_2_0_re),
    .io_out_2_0_im(exdata_inst_io_out_2_0_im),
    .io_out_2_1_re(exdata_inst_io_out_2_1_re),
    .io_out_2_1_im(exdata_inst_io_out_2_1_im),
    .io_out_2_2_re(exdata_inst_io_out_2_2_re),
    .io_out_2_2_im(exdata_inst_io_out_2_2_im),
    .io_out_2_3_re(exdata_inst_io_out_2_3_re),
    .io_out_2_3_im(exdata_inst_io_out_2_3_im),
    .io_out_3_0_re(exdata_inst_io_out_3_0_re),
    .io_out_3_0_im(exdata_inst_io_out_3_0_im),
    .io_out_3_1_re(exdata_inst_io_out_3_1_re),
    .io_out_3_1_im(exdata_inst_io_out_3_1_im),
    .io_out_3_2_re(exdata_inst_io_out_3_2_re),
    .io_out_3_2_im(exdata_inst_io_out_3_2_im),
    .io_out_3_3_re(exdata_inst_io_out_3_3_re),
    .io_out_3_3_im(exdata_inst_io_out_3_3_im)
  );
  Switch inst_8 ( // @[Modules.scala 234:22]
    .clock(inst_8_clock),
    .io_in_0_re(inst_8_io_in_0_re),
    .io_in_0_im(inst_8_io_in_0_im),
    .io_in_1_re(inst_8_io_in_1_re),
    .io_in_1_im(inst_8_io_in_1_im),
    .io_in_2_re(inst_8_io_in_2_re),
    .io_in_2_im(inst_8_io_in_2_im),
    .io_in_3_re(inst_8_io_in_3_re),
    .io_in_3_im(inst_8_io_in_3_im),
    .io_out_0_re(inst_8_io_out_0_re),
    .io_out_0_im(inst_8_io_out_0_im),
    .io_out_1_re(inst_8_io_out_1_re),
    .io_out_1_im(inst_8_io_out_1_im),
    .io_out_2_re(inst_8_io_out_2_re),
    .io_out_2_im(inst_8_io_out_2_im),
    .io_out_3_re(inst_8_io_out_3_re),
    .io_out_3_im(inst_8_io_out_3_im),
    .io_sel(inst_8_io_sel)
  );
  Switch inst_9 ( // @[Modules.scala 234:22]
    .clock(inst_9_clock),
    .io_in_0_re(inst_9_io_in_0_re),
    .io_in_0_im(inst_9_io_in_0_im),
    .io_in_1_re(inst_9_io_in_1_re),
    .io_in_1_im(inst_9_io_in_1_im),
    .io_in_2_re(inst_9_io_in_2_re),
    .io_in_2_im(inst_9_io_in_2_im),
    .io_in_3_re(inst_9_io_in_3_re),
    .io_in_3_im(inst_9_io_in_3_im),
    .io_out_0_re(inst_9_io_out_0_re),
    .io_out_0_im(inst_9_io_out_0_im),
    .io_out_1_re(inst_9_io_out_1_re),
    .io_out_1_im(inst_9_io_out_1_im),
    .io_out_2_re(inst_9_io_out_2_re),
    .io_out_2_im(inst_9_io_out_2_im),
    .io_out_3_re(inst_9_io_out_3_re),
    .io_out_3_im(inst_9_io_out_3_im),
    .io_sel(inst_9_io_sel)
  );
  Switch inst_10 ( // @[Modules.scala 234:22]
    .clock(inst_10_clock),
    .io_in_0_re(inst_10_io_in_0_re),
    .io_in_0_im(inst_10_io_in_0_im),
    .io_in_1_re(inst_10_io_in_1_re),
    .io_in_1_im(inst_10_io_in_1_im),
    .io_in_2_re(inst_10_io_in_2_re),
    .io_in_2_im(inst_10_io_in_2_im),
    .io_in_3_re(inst_10_io_in_3_re),
    .io_in_3_im(inst_10_io_in_3_im),
    .io_out_0_re(inst_10_io_out_0_re),
    .io_out_0_im(inst_10_io_out_0_im),
    .io_out_1_re(inst_10_io_out_1_re),
    .io_out_1_im(inst_10_io_out_1_im),
    .io_out_2_re(inst_10_io_out_2_re),
    .io_out_2_im(inst_10_io_out_2_im),
    .io_out_3_re(inst_10_io_out_3_re),
    .io_out_3_im(inst_10_io_out_3_im),
    .io_sel(inst_10_io_sel)
  );
  Switch inst_11 ( // @[Modules.scala 234:22]
    .clock(inst_11_clock),
    .io_in_0_re(inst_11_io_in_0_re),
    .io_in_0_im(inst_11_io_in_0_im),
    .io_in_1_re(inst_11_io_in_1_re),
    .io_in_1_im(inst_11_io_in_1_im),
    .io_in_2_re(inst_11_io_in_2_re),
    .io_in_2_im(inst_11_io_in_2_im),
    .io_in_3_re(inst_11_io_in_3_re),
    .io_in_3_im(inst_11_io_in_3_im),
    .io_out_0_re(inst_11_io_out_0_re),
    .io_out_0_im(inst_11_io_out_0_im),
    .io_out_1_re(inst_11_io_out_1_re),
    .io_out_1_im(inst_11_io_out_1_im),
    .io_out_2_re(inst_11_io_out_2_re),
    .io_out_2_im(inst_11_io_out_2_im),
    .io_out_3_re(inst_11_io_out_3_re),
    .io_out_3_im(inst_11_io_out_3_im),
    .io_sel(inst_11_io_sel)
  );
  assign io_dOut_0_re = REG_4_0_re; // @[FFT.scala 104:11]
  assign io_dOut_0_im = REG_4_0_im; // @[FFT.scala 104:11]
  assign io_dOut_1_re = REG_4_1_re; // @[FFT.scala 104:11]
  assign io_dOut_1_im = REG_4_1_im; // @[FFT.scala 104:11]
  assign io_dOut_2_re = REG_4_2_re; // @[FFT.scala 104:11]
  assign io_dOut_2_im = REG_4_2_im; // @[FFT.scala 104:11]
  assign io_dOut_3_re = REG_4_3_re; // @[FFT.scala 104:11]
  assign io_dOut_3_im = REG_4_3_im; // @[FFT.scala 104:11]
  assign io_dOut_4_re = REG_4_4_re; // @[FFT.scala 104:11]
  assign io_dOut_4_im = REG_4_4_im; // @[FFT.scala 104:11]
  assign io_dOut_5_re = REG_4_5_re; // @[FFT.scala 104:11]
  assign io_dOut_5_im = REG_4_5_im; // @[FFT.scala 104:11]
  assign io_dOut_6_re = REG_4_6_re; // @[FFT.scala 104:11]
  assign io_dOut_6_im = REG_4_6_im; // @[FFT.scala 104:11]
  assign io_dOut_7_re = REG_4_7_re; // @[FFT.scala 104:11]
  assign io_dOut_7_im = REG_4_7_im; // @[FFT.scala 104:11]
  assign io_dOut_8_re = REG_4_8_re; // @[FFT.scala 104:11]
  assign io_dOut_8_im = REG_4_8_im; // @[FFT.scala 104:11]
  assign io_dOut_9_re = REG_4_9_re; // @[FFT.scala 104:11]
  assign io_dOut_9_im = REG_4_9_im; // @[FFT.scala 104:11]
  assign io_dOut_10_re = REG_4_10_re; // @[FFT.scala 104:11]
  assign io_dOut_10_im = REG_4_10_im; // @[FFT.scala 104:11]
  assign io_dOut_11_re = REG_4_11_re; // @[FFT.scala 104:11]
  assign io_dOut_11_im = REG_4_11_im; // @[FFT.scala 104:11]
  assign io_dOut_12_re = REG_4_12_re; // @[FFT.scala 104:11]
  assign io_dOut_12_im = REG_4_12_im; // @[FFT.scala 104:11]
  assign io_dOut_13_re = REG_4_13_re; // @[FFT.scala 104:11]
  assign io_dOut_13_im = REG_4_13_im; // @[FFT.scala 104:11]
  assign io_dOut_14_re = REG_4_14_re; // @[FFT.scala 104:11]
  assign io_dOut_14_im = REG_4_14_im; // @[FFT.scala 104:11]
  assign io_dOut_15_re = REG_4_15_re; // @[FFT.scala 104:11]
  assign io_dOut_15_im = REG_4_15_im; // @[FFT.scala 104:11]
  assign io_dout_valid = io_dout_valid_REG == 5'h4; // @[FFT.scala 103:36]
  assign io_busy = cnt_0 != 5'h0; // @[FFT.scala 43:21]
  assign inst_io_in_0_re = io_dIn_0_re; // @[FFT.scala 51:70 99:22]
  assign inst_io_in_0_im = io_dIn_0_im; // @[FFT.scala 51:70 99:22]
  assign inst_io_in_1_re = io_dIn_1_re; // @[FFT.scala 51:70 99:22]
  assign inst_io_in_1_im = io_dIn_1_im; // @[FFT.scala 51:70 99:22]
  assign inst_io_in_2_re = io_dIn_2_re; // @[FFT.scala 51:70 99:22]
  assign inst_io_in_2_im = io_dIn_2_im; // @[FFT.scala 51:70 99:22]
  assign inst_io_in_3_re = io_dIn_3_re; // @[FFT.scala 51:70 99:22]
  assign inst_io_in_3_im = io_dIn_3_im; // @[FFT.scala 51:70 99:22]
  assign inst_io_wn_0_re = 4'hf == _wnList_T[3:0] ? $signed(10'sh3) : $signed(_GEN_15); // @[FFT.scala 32:{12,12}]
  assign inst_io_wn_0_im = 4'hf == _wnList_T[3:0] ? $signed(-10'sh20) : $signed(_GEN_31); // @[FFT.scala 33:{12,12}]
  assign inst_io_wn_1_re = 4'hf == _wnList_T[3:0] ? $signed(-10'sh1f) : $signed(_GEN_47); // @[FFT.scala 32:{12,12}]
  assign inst_io_wn_1_im = 4'hf == _wnList_T[3:0] ? $signed(-10'sh6) : $signed(_GEN_63); // @[FFT.scala 33:{12,12}]
  assign inst_io_wn_2_re = 4'hf == _wnList_T[3:0] ? $signed(-10'sh9) : $signed(_GEN_79); // @[FFT.scala 32:{12,12}]
  assign inst_io_wn_2_im = 4'hf == _wnList_T[3:0] ? $signed(10'sh1f) : $signed(_GEN_95); // @[FFT.scala 33:{12,12}]
  assign inst_1_io_in_0_re = io_dIn_4_re; // @[FFT.scala 51:70 99:22]
  assign inst_1_io_in_0_im = io_dIn_4_im; // @[FFT.scala 51:70 99:22]
  assign inst_1_io_in_1_re = io_dIn_5_re; // @[FFT.scala 51:70 99:22]
  assign inst_1_io_in_1_im = io_dIn_5_im; // @[FFT.scala 51:70 99:22]
  assign inst_1_io_in_2_re = io_dIn_6_re; // @[FFT.scala 51:70 99:22]
  assign inst_1_io_in_2_im = io_dIn_6_im; // @[FFT.scala 51:70 99:22]
  assign inst_1_io_in_3_re = io_dIn_7_re; // @[FFT.scala 51:70 99:22]
  assign inst_1_io_in_3_im = io_dIn_7_im; // @[FFT.scala 51:70 99:22]
  assign inst_1_io_wn_0_re = 4'hf == _wnList_T_7[3:0] ? $signed(10'sh3) : $signed(_GEN_111); // @[FFT.scala 32:{12,12}]
  assign inst_1_io_wn_0_im = 4'hf == _wnList_T_7[3:0] ? $signed(-10'sh20) : $signed(_GEN_127); // @[FFT.scala 33:{12,12}]
  assign inst_1_io_wn_1_re = 4'hf == _wnList_T_7[3:0] ? $signed(-10'sh1f) : $signed(_GEN_143); // @[FFT.scala 32:{12,12}]
  assign inst_1_io_wn_1_im = 4'hf == _wnList_T_7[3:0] ? $signed(-10'sh6) : $signed(_GEN_159); // @[FFT.scala 33:{12,12}]
  assign inst_1_io_wn_2_re = 4'hf == _wnList_T_7[3:0] ? $signed(-10'sh9) : $signed(_GEN_175); // @[FFT.scala 32:{12,12}]
  assign inst_1_io_wn_2_im = 4'hf == _wnList_T_7[3:0] ? $signed(10'sh1f) : $signed(_GEN_191); // @[FFT.scala 33:{12,12}]
  assign inst_2_io_in_0_re = io_dIn_8_re; // @[FFT.scala 51:70 99:22]
  assign inst_2_io_in_0_im = io_dIn_8_im; // @[FFT.scala 51:70 99:22]
  assign inst_2_io_in_1_re = io_dIn_9_re; // @[FFT.scala 51:70 99:22]
  assign inst_2_io_in_1_im = io_dIn_9_im; // @[FFT.scala 51:70 99:22]
  assign inst_2_io_in_2_re = io_dIn_10_re; // @[FFT.scala 51:70 99:22]
  assign inst_2_io_in_2_im = io_dIn_10_im; // @[FFT.scala 51:70 99:22]
  assign inst_2_io_in_3_re = io_dIn_11_re; // @[FFT.scala 51:70 99:22]
  assign inst_2_io_in_3_im = io_dIn_11_im; // @[FFT.scala 51:70 99:22]
  assign inst_2_io_wn_0_re = 4'hf == _wnList_T_13[3:0] ? $signed(10'sh3) : $signed(_GEN_207); // @[FFT.scala 32:{12,12}]
  assign inst_2_io_wn_0_im = 4'hf == _wnList_T_13[3:0] ? $signed(-10'sh20) : $signed(_GEN_223); // @[FFT.scala 33:{12,12}]
  assign inst_2_io_wn_1_re = 4'hf == _wnList_T_13[3:0] ? $signed(-10'sh1f) : $signed(_GEN_239); // @[FFT.scala 32:{12,12}]
  assign inst_2_io_wn_1_im = 4'hf == _wnList_T_13[3:0] ? $signed(-10'sh6) : $signed(_GEN_255); // @[FFT.scala 33:{12,12}]
  assign inst_2_io_wn_2_re = 4'hf == _wnList_T_13[3:0] ? $signed(-10'sh9) : $signed(_GEN_271); // @[FFT.scala 32:{12,12}]
  assign inst_2_io_wn_2_im = 4'hf == _wnList_T_13[3:0] ? $signed(10'sh1f) : $signed(_GEN_287); // @[FFT.scala 33:{12,12}]
  assign inst_3_io_in_0_re = io_dIn_12_re; // @[FFT.scala 51:70 99:22]
  assign inst_3_io_in_0_im = io_dIn_12_im; // @[FFT.scala 51:70 99:22]
  assign inst_3_io_in_1_re = io_dIn_13_re; // @[FFT.scala 51:70 99:22]
  assign inst_3_io_in_1_im = io_dIn_13_im; // @[FFT.scala 51:70 99:22]
  assign inst_3_io_in_2_re = io_dIn_14_re; // @[FFT.scala 51:70 99:22]
  assign inst_3_io_in_2_im = io_dIn_14_im; // @[FFT.scala 51:70 99:22]
  assign inst_3_io_in_3_re = io_dIn_15_re; // @[FFT.scala 51:70 99:22]
  assign inst_3_io_in_3_im = io_dIn_15_im; // @[FFT.scala 51:70 99:22]
  assign inst_3_io_wn_0_re = 4'hf == _wnList_T_19[3:0] ? $signed(10'sh3) : $signed(_GEN_303); // @[FFT.scala 32:{12,12}]
  assign inst_3_io_wn_0_im = 4'hf == _wnList_T_19[3:0] ? $signed(-10'sh20) : $signed(_GEN_319); // @[FFT.scala 33:{12,12}]
  assign inst_3_io_wn_1_re = 4'hf == _wnList_T_19[3:0] ? $signed(-10'sh1f) : $signed(_GEN_335); // @[FFT.scala 32:{12,12}]
  assign inst_3_io_wn_1_im = 4'hf == _wnList_T_19[3:0] ? $signed(-10'sh6) : $signed(_GEN_351); // @[FFT.scala 33:{12,12}]
  assign inst_3_io_wn_2_re = 4'hf == _wnList_T_19[3:0] ? $signed(-10'sh9) : $signed(_GEN_367); // @[FFT.scala 32:{12,12}]
  assign inst_3_io_wn_2_im = 4'hf == _wnList_T_19[3:0] ? $signed(10'sh1f) : $signed(_GEN_383); // @[FFT.scala 33:{12,12}]
  assign inst_4_io_in_0_re = REG__0_re; // @[FFT.scala 51:70 87:62]
  assign inst_4_io_in_0_im = REG__0_im; // @[FFT.scala 51:70 87:62]
  assign inst_4_io_in_1_re = REG__1_re; // @[FFT.scala 51:70 87:62]
  assign inst_4_io_in_1_im = REG__1_im; // @[FFT.scala 51:70 87:62]
  assign inst_4_io_in_2_re = REG__2_re; // @[FFT.scala 51:70 87:62]
  assign inst_4_io_in_2_im = REG__2_im; // @[FFT.scala 51:70 87:62]
  assign inst_4_io_in_3_re = REG__3_re; // @[FFT.scala 51:70 87:62]
  assign inst_4_io_in_3_im = REG__3_im; // @[FFT.scala 51:70 87:62]
  assign inst_4_io_wn_0_re = 2'h3 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(_GEN_387); // @[FFT.scala 32:{12,12}]
  assign inst_4_io_wn_0_im = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(_GEN_391); // @[FFT.scala 33:{12,12}]
  assign inst_4_io_wn_1_re = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_395); // @[FFT.scala 32:{12,12}]
  assign inst_4_io_wn_1_im = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_399); // @[FFT.scala 33:{12,12}]
  assign inst_4_io_wn_2_re = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(_GEN_403); // @[FFT.scala 32:{12,12}]
  assign inst_4_io_wn_2_im = 2'h3 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(_GEN_407); // @[FFT.scala 33:{12,12}]
  assign inst_5_io_in_0_re = REG_1_0_re; // @[FFT.scala 51:70 87:62]
  assign inst_5_io_in_0_im = REG_1_0_im; // @[FFT.scala 51:70 87:62]
  assign inst_5_io_in_1_re = REG_1_1_re; // @[FFT.scala 51:70 87:62]
  assign inst_5_io_in_1_im = REG_1_1_im; // @[FFT.scala 51:70 87:62]
  assign inst_5_io_in_2_re = REG_1_2_re; // @[FFT.scala 51:70 87:62]
  assign inst_5_io_in_2_im = REG_1_2_im; // @[FFT.scala 51:70 87:62]
  assign inst_5_io_in_3_re = REG_1_3_re; // @[FFT.scala 51:70 87:62]
  assign inst_5_io_in_3_im = REG_1_3_im; // @[FFT.scala 51:70 87:62]
  assign inst_5_io_wn_0_re = 2'h3 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(_GEN_387); // @[FFT.scala 32:{12,12}]
  assign inst_5_io_wn_0_im = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(_GEN_391); // @[FFT.scala 33:{12,12}]
  assign inst_5_io_wn_1_re = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_395); // @[FFT.scala 32:{12,12}]
  assign inst_5_io_wn_1_im = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_399); // @[FFT.scala 33:{12,12}]
  assign inst_5_io_wn_2_re = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(_GEN_403); // @[FFT.scala 32:{12,12}]
  assign inst_5_io_wn_2_im = 2'h3 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(_GEN_407); // @[FFT.scala 33:{12,12}]
  assign inst_6_io_in_0_re = REG_2_0_re; // @[FFT.scala 51:70 87:62]
  assign inst_6_io_in_0_im = REG_2_0_im; // @[FFT.scala 51:70 87:62]
  assign inst_6_io_in_1_re = REG_2_1_re; // @[FFT.scala 51:70 87:62]
  assign inst_6_io_in_1_im = REG_2_1_im; // @[FFT.scala 51:70 87:62]
  assign inst_6_io_in_2_re = REG_2_2_re; // @[FFT.scala 51:70 87:62]
  assign inst_6_io_in_2_im = REG_2_2_im; // @[FFT.scala 51:70 87:62]
  assign inst_6_io_in_3_re = REG_2_3_re; // @[FFT.scala 51:70 87:62]
  assign inst_6_io_in_3_im = REG_2_3_im; // @[FFT.scala 51:70 87:62]
  assign inst_6_io_wn_0_re = 2'h3 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(_GEN_387); // @[FFT.scala 32:{12,12}]
  assign inst_6_io_wn_0_im = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(_GEN_391); // @[FFT.scala 33:{12,12}]
  assign inst_6_io_wn_1_re = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_395); // @[FFT.scala 32:{12,12}]
  assign inst_6_io_wn_1_im = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_399); // @[FFT.scala 33:{12,12}]
  assign inst_6_io_wn_2_re = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(_GEN_403); // @[FFT.scala 32:{12,12}]
  assign inst_6_io_wn_2_im = 2'h3 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(_GEN_407); // @[FFT.scala 33:{12,12}]
  assign inst_7_io_in_0_re = REG_3_0_re; // @[FFT.scala 51:70 87:62]
  assign inst_7_io_in_0_im = REG_3_0_im; // @[FFT.scala 51:70 87:62]
  assign inst_7_io_in_1_re = REG_3_1_re; // @[FFT.scala 51:70 87:62]
  assign inst_7_io_in_1_im = REG_3_1_im; // @[FFT.scala 51:70 87:62]
  assign inst_7_io_in_2_re = REG_3_2_re; // @[FFT.scala 51:70 87:62]
  assign inst_7_io_in_2_im = REG_3_2_im; // @[FFT.scala 51:70 87:62]
  assign inst_7_io_in_3_re = REG_3_3_re; // @[FFT.scala 51:70 87:62]
  assign inst_7_io_in_3_im = REG_3_3_im; // @[FFT.scala 51:70 87:62]
  assign inst_7_io_wn_0_re = 2'h3 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(_GEN_387); // @[FFT.scala 32:{12,12}]
  assign inst_7_io_wn_0_im = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(_GEN_391); // @[FFT.scala 33:{12,12}]
  assign inst_7_io_wn_1_re = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_395); // @[FFT.scala 32:{12,12}]
  assign inst_7_io_wn_1_im = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh17) : $signed(_GEN_399); // @[FFT.scala 33:{12,12}]
  assign inst_7_io_wn_2_re = 2'h3 == _wnList_T_24[1:0] ? $signed(-10'sh1e) : $signed(_GEN_403); // @[FFT.scala 32:{12,12}]
  assign inst_7_io_wn_2_im = 2'h3 == _wnList_T_24[1:0] ? $signed(10'shc) : $signed(_GEN_407); // @[FFT.scala 33:{12,12}]
  assign dataotemp_inst_io_in_0_re = inst_8_io_out_0_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_io_in_0_im = inst_8_io_out_0_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_io_in_1_re = inst_8_io_out_1_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_io_in_1_im = inst_8_io_out_1_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_io_in_2_re = inst_8_io_out_2_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_io_in_2_im = inst_8_io_out_2_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_io_in_3_re = inst_8_io_out_3_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_io_in_3_im = inst_8_io_out_3_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_1_io_in_0_re = inst_9_io_out_0_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_1_io_in_0_im = inst_9_io_out_0_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_1_io_in_1_re = inst_9_io_out_1_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_1_io_in_1_im = inst_9_io_out_1_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_1_io_in_2_re = inst_9_io_out_2_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_1_io_in_2_im = inst_9_io_out_2_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_1_io_in_3_re = inst_9_io_out_3_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_1_io_in_3_im = inst_9_io_out_3_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_2_io_in_0_re = inst_10_io_out_0_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_2_io_in_0_im = inst_10_io_out_0_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_2_io_in_1_re = inst_10_io_out_1_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_2_io_in_1_im = inst_10_io_out_1_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_2_io_in_2_re = inst_10_io_out_2_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_2_io_in_2_im = inst_10_io_out_2_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_2_io_in_3_re = inst_10_io_out_3_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_2_io_in_3_im = inst_10_io_out_3_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_3_io_in_0_re = inst_11_io_out_0_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_3_io_in_0_im = inst_11_io_out_0_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_3_io_in_1_re = inst_11_io_out_1_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_3_io_in_1_im = inst_11_io_out_1_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_3_io_in_2_re = inst_11_io_out_2_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_3_io_in_2_im = inst_11_io_out_2_im; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_3_io_in_3_re = inst_11_io_out_3_re; // @[FFT.scala 51:70 94:59]
  assign dataotemp_inst_3_io_in_3_im = inst_11_io_out_3_im; // @[FFT.scala 51:70 94:59]
  assign exdata_inst_io_in_0_0_re = inst_io_out_0_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_0_0_im = inst_io_out_0_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_0_1_re = inst_io_out_1_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_0_1_im = inst_io_out_1_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_0_2_re = inst_io_out_2_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_0_2_im = inst_io_out_2_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_0_3_re = inst_io_out_3_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_0_3_im = inst_io_out_3_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_1_0_re = inst_1_io_out_0_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_1_0_im = inst_1_io_out_0_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_1_1_re = inst_1_io_out_1_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_1_1_im = inst_1_io_out_1_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_1_2_re = inst_1_io_out_2_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_1_2_im = inst_1_io_out_2_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_1_3_re = inst_1_io_out_3_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_1_3_im = inst_1_io_out_3_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_2_0_re = inst_2_io_out_0_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_2_0_im = inst_2_io_out_0_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_2_1_re = inst_2_io_out_1_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_2_1_im = inst_2_io_out_1_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_2_2_re = inst_2_io_out_2_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_2_2_im = inst_2_io_out_2_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_2_3_re = inst_2_io_out_3_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_2_3_im = inst_2_io_out_3_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_3_0_re = inst_3_io_out_0_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_3_0_im = inst_3_io_out_0_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_3_1_re = inst_3_io_out_1_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_3_1_im = inst_3_io_out_1_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_3_2_re = inst_3_io_out_2_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_3_2_im = inst_3_io_out_2_im; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_3_3_re = inst_3_io_out_3_re; // @[FFT.scala 52:75 65:25]
  assign exdata_inst_io_in_3_3_im = inst_3_io_out_3_im; // @[FFT.scala 52:75 65:25]
  assign inst_8_clock = clock;
  assign inst_8_io_in_0_re = inst_4_io_out_0_re; // @[FFT.scala 52:75 65:25]
  assign inst_8_io_in_0_im = inst_4_io_out_0_im; // @[FFT.scala 52:75 65:25]
  assign inst_8_io_in_1_re = inst_4_io_out_1_re; // @[FFT.scala 52:75 65:25]
  assign inst_8_io_in_1_im = inst_4_io_out_1_im; // @[FFT.scala 52:75 65:25]
  assign inst_8_io_in_2_re = inst_4_io_out_2_re; // @[FFT.scala 52:75 65:25]
  assign inst_8_io_in_2_im = inst_4_io_out_2_im; // @[FFT.scala 52:75 65:25]
  assign inst_8_io_in_3_re = inst_4_io_out_3_re; // @[FFT.scala 52:75 65:25]
  assign inst_8_io_in_3_im = inst_4_io_out_3_im; // @[FFT.scala 52:75 65:25]
  assign inst_8_io_sel = cnt_1[1:0]; // @[FFT.scala 93:31]
  assign inst_9_clock = clock;
  assign inst_9_io_in_0_re = inst_5_io_out_0_re; // @[FFT.scala 52:75 65:25]
  assign inst_9_io_in_0_im = inst_5_io_out_0_im; // @[FFT.scala 52:75 65:25]
  assign inst_9_io_in_1_re = inst_5_io_out_1_re; // @[FFT.scala 52:75 65:25]
  assign inst_9_io_in_1_im = inst_5_io_out_1_im; // @[FFT.scala 52:75 65:25]
  assign inst_9_io_in_2_re = inst_5_io_out_2_re; // @[FFT.scala 52:75 65:25]
  assign inst_9_io_in_2_im = inst_5_io_out_2_im; // @[FFT.scala 52:75 65:25]
  assign inst_9_io_in_3_re = inst_5_io_out_3_re; // @[FFT.scala 52:75 65:25]
  assign inst_9_io_in_3_im = inst_5_io_out_3_im; // @[FFT.scala 52:75 65:25]
  assign inst_9_io_sel = cnt_1[1:0]; // @[FFT.scala 93:31]
  assign inst_10_clock = clock;
  assign inst_10_io_in_0_re = inst_6_io_out_0_re; // @[FFT.scala 52:75 65:25]
  assign inst_10_io_in_0_im = inst_6_io_out_0_im; // @[FFT.scala 52:75 65:25]
  assign inst_10_io_in_1_re = inst_6_io_out_1_re; // @[FFT.scala 52:75 65:25]
  assign inst_10_io_in_1_im = inst_6_io_out_1_im; // @[FFT.scala 52:75 65:25]
  assign inst_10_io_in_2_re = inst_6_io_out_2_re; // @[FFT.scala 52:75 65:25]
  assign inst_10_io_in_2_im = inst_6_io_out_2_im; // @[FFT.scala 52:75 65:25]
  assign inst_10_io_in_3_re = inst_6_io_out_3_re; // @[FFT.scala 52:75 65:25]
  assign inst_10_io_in_3_im = inst_6_io_out_3_im; // @[FFT.scala 52:75 65:25]
  assign inst_10_io_sel = cnt_1[1:0]; // @[FFT.scala 93:31]
  assign inst_11_clock = clock;
  assign inst_11_io_in_0_re = inst_7_io_out_0_re; // @[FFT.scala 52:75 65:25]
  assign inst_11_io_in_0_im = inst_7_io_out_0_im; // @[FFT.scala 52:75 65:25]
  assign inst_11_io_in_1_re = inst_7_io_out_1_re; // @[FFT.scala 52:75 65:25]
  assign inst_11_io_in_1_im = inst_7_io_out_1_im; // @[FFT.scala 52:75 65:25]
  assign inst_11_io_in_2_re = inst_7_io_out_2_re; // @[FFT.scala 52:75 65:25]
  assign inst_11_io_in_2_im = inst_7_io_out_2_im; // @[FFT.scala 52:75 65:25]
  assign inst_11_io_in_3_re = inst_7_io_out_3_re; // @[FFT.scala 52:75 65:25]
  assign inst_11_io_in_3_im = inst_7_io_out_3_im; // @[FFT.scala 52:75 65:25]
  assign inst_11_io_sel = cnt_1[1:0]; // @[FFT.scala 93:31]
  always @(posedge clock) begin
    if (reset) begin // @[FFT.scala 39:46]
      cnt_0 <= 5'h0; // @[FFT.scala 39:46]
    end else if (io_din_valid | busy) begin // @[FFT.scala 44:30]
      if (cnt_0 == 5'h8) begin // @[FFT.scala 45:18]
        cnt_0 <= 5'h0;
      end else begin
        cnt_0 <= _cnt_0_T_2;
      end
    end
    if (reset) begin // @[FFT.scala 39:46]
      cnt_1 <= 5'h0; // @[FFT.scala 39:46]
    end else begin
      cnt_1 <= cnt_0; // @[FFT.scala 41:16]
    end
    REG__0_re <= exdata_inst_io_out_0_0_re; // @[FFT.scala 87:72]
    REG__0_im <= exdata_inst_io_out_0_0_im; // @[FFT.scala 87:72]
    REG__1_re <= exdata_inst_io_out_0_1_re; // @[FFT.scala 87:72]
    REG__1_im <= exdata_inst_io_out_0_1_im; // @[FFT.scala 87:72]
    REG__2_re <= exdata_inst_io_out_0_2_re; // @[FFT.scala 87:72]
    REG__2_im <= exdata_inst_io_out_0_2_im; // @[FFT.scala 87:72]
    REG__3_re <= exdata_inst_io_out_0_3_re; // @[FFT.scala 87:72]
    REG__3_im <= exdata_inst_io_out_0_3_im; // @[FFT.scala 87:72]
    REG_1_0_re <= exdata_inst_io_out_1_0_re; // @[FFT.scala 87:72]
    REG_1_0_im <= exdata_inst_io_out_1_0_im; // @[FFT.scala 87:72]
    REG_1_1_re <= exdata_inst_io_out_1_1_re; // @[FFT.scala 87:72]
    REG_1_1_im <= exdata_inst_io_out_1_1_im; // @[FFT.scala 87:72]
    REG_1_2_re <= exdata_inst_io_out_1_2_re; // @[FFT.scala 87:72]
    REG_1_2_im <= exdata_inst_io_out_1_2_im; // @[FFT.scala 87:72]
    REG_1_3_re <= exdata_inst_io_out_1_3_re; // @[FFT.scala 87:72]
    REG_1_3_im <= exdata_inst_io_out_1_3_im; // @[FFT.scala 87:72]
    REG_2_0_re <= exdata_inst_io_out_2_0_re; // @[FFT.scala 87:72]
    REG_2_0_im <= exdata_inst_io_out_2_0_im; // @[FFT.scala 87:72]
    REG_2_1_re <= exdata_inst_io_out_2_1_re; // @[FFT.scala 87:72]
    REG_2_1_im <= exdata_inst_io_out_2_1_im; // @[FFT.scala 87:72]
    REG_2_2_re <= exdata_inst_io_out_2_2_re; // @[FFT.scala 87:72]
    REG_2_2_im <= exdata_inst_io_out_2_2_im; // @[FFT.scala 87:72]
    REG_2_3_re <= exdata_inst_io_out_2_3_re; // @[FFT.scala 87:72]
    REG_2_3_im <= exdata_inst_io_out_2_3_im; // @[FFT.scala 87:72]
    REG_3_0_re <= exdata_inst_io_out_3_0_re; // @[FFT.scala 87:72]
    REG_3_0_im <= exdata_inst_io_out_3_0_im; // @[FFT.scala 87:72]
    REG_3_1_re <= exdata_inst_io_out_3_1_re; // @[FFT.scala 87:72]
    REG_3_1_im <= exdata_inst_io_out_3_1_im; // @[FFT.scala 87:72]
    REG_3_2_re <= exdata_inst_io_out_3_2_re; // @[FFT.scala 87:72]
    REG_3_2_im <= exdata_inst_io_out_3_2_im; // @[FFT.scala 87:72]
    REG_3_3_re <= exdata_inst_io_out_3_3_re; // @[FFT.scala 87:72]
    REG_3_3_im <= exdata_inst_io_out_3_3_im; // @[FFT.scala 87:72]
    io_dout_valid_REG <= cnt_0; // @[FFT.scala 103:27]
    REG_4_0_re <= dataotemp_inst_io_out_0_re; // @[FFT.scala 53:22 70:9]
    REG_4_0_im <= dataotemp_inst_io_out_0_im; // @[FFT.scala 53:22 70:9]
    REG_4_1_re <= dataotemp_inst_io_out_1_re; // @[FFT.scala 53:22 70:9]
    REG_4_1_im <= dataotemp_inst_io_out_1_im; // @[FFT.scala 53:22 70:9]
    REG_4_2_re <= dataotemp_inst_io_out_2_re; // @[FFT.scala 53:22 70:9]
    REG_4_2_im <= dataotemp_inst_io_out_2_im; // @[FFT.scala 53:22 70:9]
    REG_4_3_re <= dataotemp_inst_io_out_3_re; // @[FFT.scala 53:22 70:9]
    REG_4_3_im <= dataotemp_inst_io_out_3_im; // @[FFT.scala 53:22 70:9]
    REG_4_4_re <= dataotemp_inst_1_io_out_0_re; // @[FFT.scala 53:22 70:9]
    REG_4_4_im <= dataotemp_inst_1_io_out_0_im; // @[FFT.scala 53:22 70:9]
    REG_4_5_re <= dataotemp_inst_1_io_out_1_re; // @[FFT.scala 53:22 70:9]
    REG_4_5_im <= dataotemp_inst_1_io_out_1_im; // @[FFT.scala 53:22 70:9]
    REG_4_6_re <= dataotemp_inst_1_io_out_2_re; // @[FFT.scala 53:22 70:9]
    REG_4_6_im <= dataotemp_inst_1_io_out_2_im; // @[FFT.scala 53:22 70:9]
    REG_4_7_re <= dataotemp_inst_1_io_out_3_re; // @[FFT.scala 53:22 70:9]
    REG_4_7_im <= dataotemp_inst_1_io_out_3_im; // @[FFT.scala 53:22 70:9]
    REG_4_8_re <= dataotemp_inst_2_io_out_0_re; // @[FFT.scala 53:22 70:9]
    REG_4_8_im <= dataotemp_inst_2_io_out_0_im; // @[FFT.scala 53:22 70:9]
    REG_4_9_re <= dataotemp_inst_2_io_out_1_re; // @[FFT.scala 53:22 70:9]
    REG_4_9_im <= dataotemp_inst_2_io_out_1_im; // @[FFT.scala 53:22 70:9]
    REG_4_10_re <= dataotemp_inst_2_io_out_2_re; // @[FFT.scala 53:22 70:9]
    REG_4_10_im <= dataotemp_inst_2_io_out_2_im; // @[FFT.scala 53:22 70:9]
    REG_4_11_re <= dataotemp_inst_2_io_out_3_re; // @[FFT.scala 53:22 70:9]
    REG_4_11_im <= dataotemp_inst_2_io_out_3_im; // @[FFT.scala 53:22 70:9]
    REG_4_12_re <= dataotemp_inst_3_io_out_0_re; // @[FFT.scala 53:22 70:9]
    REG_4_12_im <= dataotemp_inst_3_io_out_0_im; // @[FFT.scala 53:22 70:9]
    REG_4_13_re <= dataotemp_inst_3_io_out_1_re; // @[FFT.scala 53:22 70:9]
    REG_4_13_im <= dataotemp_inst_3_io_out_1_im; // @[FFT.scala 53:22 70:9]
    REG_4_14_re <= dataotemp_inst_3_io_out_2_re; // @[FFT.scala 53:22 70:9]
    REG_4_14_im <= dataotemp_inst_3_io_out_2_im; // @[FFT.scala 53:22 70:9]
    REG_4_15_re <= dataotemp_inst_3_io_out_3_re; // @[FFT.scala 53:22 70:9]
    REG_4_15_im <= dataotemp_inst_3_io_out_3_im; // @[FFT.scala 53:22 70:9]
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
  cnt_0 = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  cnt_1 = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  REG__0_re = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  REG__0_im = _RAND_3[9:0];
  _RAND_4 = {1{`RANDOM}};
  REG__1_re = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  REG__1_im = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  REG__2_re = _RAND_6[9:0];
  _RAND_7 = {1{`RANDOM}};
  REG__2_im = _RAND_7[9:0];
  _RAND_8 = {1{`RANDOM}};
  REG__3_re = _RAND_8[9:0];
  _RAND_9 = {1{`RANDOM}};
  REG__3_im = _RAND_9[9:0];
  _RAND_10 = {1{`RANDOM}};
  REG_1_0_re = _RAND_10[9:0];
  _RAND_11 = {1{`RANDOM}};
  REG_1_0_im = _RAND_11[9:0];
  _RAND_12 = {1{`RANDOM}};
  REG_1_1_re = _RAND_12[9:0];
  _RAND_13 = {1{`RANDOM}};
  REG_1_1_im = _RAND_13[9:0];
  _RAND_14 = {1{`RANDOM}};
  REG_1_2_re = _RAND_14[9:0];
  _RAND_15 = {1{`RANDOM}};
  REG_1_2_im = _RAND_15[9:0];
  _RAND_16 = {1{`RANDOM}};
  REG_1_3_re = _RAND_16[9:0];
  _RAND_17 = {1{`RANDOM}};
  REG_1_3_im = _RAND_17[9:0];
  _RAND_18 = {1{`RANDOM}};
  REG_2_0_re = _RAND_18[9:0];
  _RAND_19 = {1{`RANDOM}};
  REG_2_0_im = _RAND_19[9:0];
  _RAND_20 = {1{`RANDOM}};
  REG_2_1_re = _RAND_20[9:0];
  _RAND_21 = {1{`RANDOM}};
  REG_2_1_im = _RAND_21[9:0];
  _RAND_22 = {1{`RANDOM}};
  REG_2_2_re = _RAND_22[9:0];
  _RAND_23 = {1{`RANDOM}};
  REG_2_2_im = _RAND_23[9:0];
  _RAND_24 = {1{`RANDOM}};
  REG_2_3_re = _RAND_24[9:0];
  _RAND_25 = {1{`RANDOM}};
  REG_2_3_im = _RAND_25[9:0];
  _RAND_26 = {1{`RANDOM}};
  REG_3_0_re = _RAND_26[9:0];
  _RAND_27 = {1{`RANDOM}};
  REG_3_0_im = _RAND_27[9:0];
  _RAND_28 = {1{`RANDOM}};
  REG_3_1_re = _RAND_28[9:0];
  _RAND_29 = {1{`RANDOM}};
  REG_3_1_im = _RAND_29[9:0];
  _RAND_30 = {1{`RANDOM}};
  REG_3_2_re = _RAND_30[9:0];
  _RAND_31 = {1{`RANDOM}};
  REG_3_2_im = _RAND_31[9:0];
  _RAND_32 = {1{`RANDOM}};
  REG_3_3_re = _RAND_32[9:0];
  _RAND_33 = {1{`RANDOM}};
  REG_3_3_im = _RAND_33[9:0];
  _RAND_34 = {1{`RANDOM}};
  io_dout_valid_REG = _RAND_34[4:0];
  _RAND_35 = {1{`RANDOM}};
  REG_4_0_re = _RAND_35[9:0];
  _RAND_36 = {1{`RANDOM}};
  REG_4_0_im = _RAND_36[9:0];
  _RAND_37 = {1{`RANDOM}};
  REG_4_1_re = _RAND_37[9:0];
  _RAND_38 = {1{`RANDOM}};
  REG_4_1_im = _RAND_38[9:0];
  _RAND_39 = {1{`RANDOM}};
  REG_4_2_re = _RAND_39[9:0];
  _RAND_40 = {1{`RANDOM}};
  REG_4_2_im = _RAND_40[9:0];
  _RAND_41 = {1{`RANDOM}};
  REG_4_3_re = _RAND_41[9:0];
  _RAND_42 = {1{`RANDOM}};
  REG_4_3_im = _RAND_42[9:0];
  _RAND_43 = {1{`RANDOM}};
  REG_4_4_re = _RAND_43[9:0];
  _RAND_44 = {1{`RANDOM}};
  REG_4_4_im = _RAND_44[9:0];
  _RAND_45 = {1{`RANDOM}};
  REG_4_5_re = _RAND_45[9:0];
  _RAND_46 = {1{`RANDOM}};
  REG_4_5_im = _RAND_46[9:0];
  _RAND_47 = {1{`RANDOM}};
  REG_4_6_re = _RAND_47[9:0];
  _RAND_48 = {1{`RANDOM}};
  REG_4_6_im = _RAND_48[9:0];
  _RAND_49 = {1{`RANDOM}};
  REG_4_7_re = _RAND_49[9:0];
  _RAND_50 = {1{`RANDOM}};
  REG_4_7_im = _RAND_50[9:0];
  _RAND_51 = {1{`RANDOM}};
  REG_4_8_re = _RAND_51[9:0];
  _RAND_52 = {1{`RANDOM}};
  REG_4_8_im = _RAND_52[9:0];
  _RAND_53 = {1{`RANDOM}};
  REG_4_9_re = _RAND_53[9:0];
  _RAND_54 = {1{`RANDOM}};
  REG_4_9_im = _RAND_54[9:0];
  _RAND_55 = {1{`RANDOM}};
  REG_4_10_re = _RAND_55[9:0];
  _RAND_56 = {1{`RANDOM}};
  REG_4_10_im = _RAND_56[9:0];
  _RAND_57 = {1{`RANDOM}};
  REG_4_11_re = _RAND_57[9:0];
  _RAND_58 = {1{`RANDOM}};
  REG_4_11_im = _RAND_58[9:0];
  _RAND_59 = {1{`RANDOM}};
  REG_4_12_re = _RAND_59[9:0];
  _RAND_60 = {1{`RANDOM}};
  REG_4_12_im = _RAND_60[9:0];
  _RAND_61 = {1{`RANDOM}};
  REG_4_13_re = _RAND_61[9:0];
  _RAND_62 = {1{`RANDOM}};
  REG_4_13_im = _RAND_62[9:0];
  _RAND_63 = {1{`RANDOM}};
  REG_4_14_re = _RAND_63[9:0];
  _RAND_64 = {1{`RANDOM}};
  REG_4_14_im = _RAND_64[9:0];
  _RAND_65 = {1{`RANDOM}};
  REG_4_15_re = _RAND_65[9:0];
  _RAND_66 = {1{`RANDOM}};
  REG_4_15_im = _RAND_66[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FFTtop(
  input        clock,
  input        reset,
  input  [9:0] io_dIn_0_re,
  input  [9:0] io_dIn_0_im,
  input  [9:0] io_dIn_1_re,
  input  [9:0] io_dIn_1_im,
  input  [9:0] io_dIn_2_re,
  input  [9:0] io_dIn_2_im,
  input  [9:0] io_dIn_3_re,
  input  [9:0] io_dIn_3_im,
  input  [9:0] io_dIn_4_re,
  input  [9:0] io_dIn_4_im,
  input  [9:0] io_dIn_5_re,
  input  [9:0] io_dIn_5_im,
  input  [9:0] io_dIn_6_re,
  input  [9:0] io_dIn_6_im,
  input  [9:0] io_dIn_7_re,
  input  [9:0] io_dIn_7_im,
  input  [9:0] io_dIn_8_re,
  input  [9:0] io_dIn_8_im,
  input  [9:0] io_dIn_9_re,
  input  [9:0] io_dIn_9_im,
  input  [9:0] io_dIn_10_re,
  input  [9:0] io_dIn_10_im,
  input  [9:0] io_dIn_11_re,
  input  [9:0] io_dIn_11_im,
  input  [9:0] io_dIn_12_re,
  input  [9:0] io_dIn_12_im,
  input  [9:0] io_dIn_13_re,
  input  [9:0] io_dIn_13_im,
  input  [9:0] io_dIn_14_re,
  input  [9:0] io_dIn_14_im,
  input  [9:0] io_dIn_15_re,
  input  [9:0] io_dIn_15_im,
  output [9:0] io_dOut_0_re,
  output [9:0] io_dOut_0_im,
  output [9:0] io_dOut_1_re,
  output [9:0] io_dOut_1_im,
  output [9:0] io_dOut_2_re,
  output [9:0] io_dOut_2_im,
  output [9:0] io_dOut_3_re,
  output [9:0] io_dOut_3_im,
  output [9:0] io_dOut_4_re,
  output [9:0] io_dOut_4_im,
  output [9:0] io_dOut_5_re,
  output [9:0] io_dOut_5_im,
  output [9:0] io_dOut_6_re,
  output [9:0] io_dOut_6_im,
  output [9:0] io_dOut_7_re,
  output [9:0] io_dOut_7_im,
  output [9:0] io_dOut_8_re,
  output [9:0] io_dOut_8_im,
  output [9:0] io_dOut_9_re,
  output [9:0] io_dOut_9_im,
  output [9:0] io_dOut_10_re,
  output [9:0] io_dOut_10_im,
  output [9:0] io_dOut_11_re,
  output [9:0] io_dOut_11_im,
  output [9:0] io_dOut_12_re,
  output [9:0] io_dOut_12_im,
  output [9:0] io_dOut_13_re,
  output [9:0] io_dOut_13_im,
  output [9:0] io_dOut_14_re,
  output [9:0] io_dOut_14_im,
  output [9:0] io_dOut_15_re,
  output [9:0] io_dOut_15_im,
  input        io_din_valid,
  output       io_dout_valid,
  output       io_busy
);
  wire  fft_clock; // @[Top.scala 15:19]
  wire  fft_reset; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_0_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_0_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_1_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_1_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_2_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_2_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_3_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_3_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_4_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_4_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_5_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_5_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_6_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_6_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_7_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_7_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_8_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_8_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_9_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_9_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_10_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_10_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_11_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_11_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_12_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_12_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_13_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_13_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_14_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_14_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_15_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dIn_15_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_0_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_0_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_1_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_1_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_2_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_2_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_3_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_3_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_4_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_4_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_5_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_5_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_6_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_6_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_7_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_7_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_8_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_8_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_9_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_9_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_10_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_10_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_11_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_11_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_12_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_12_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_13_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_13_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_14_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_14_im; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_15_re; // @[Top.scala 15:19]
  wire [9:0] fft_io_dOut_15_im; // @[Top.scala 15:19]
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
    .io_dIn_8_re(fft_io_dIn_8_re),
    .io_dIn_8_im(fft_io_dIn_8_im),
    .io_dIn_9_re(fft_io_dIn_9_re),
    .io_dIn_9_im(fft_io_dIn_9_im),
    .io_dIn_10_re(fft_io_dIn_10_re),
    .io_dIn_10_im(fft_io_dIn_10_im),
    .io_dIn_11_re(fft_io_dIn_11_re),
    .io_dIn_11_im(fft_io_dIn_11_im),
    .io_dIn_12_re(fft_io_dIn_12_re),
    .io_dIn_12_im(fft_io_dIn_12_im),
    .io_dIn_13_re(fft_io_dIn_13_re),
    .io_dIn_13_im(fft_io_dIn_13_im),
    .io_dIn_14_re(fft_io_dIn_14_re),
    .io_dIn_14_im(fft_io_dIn_14_im),
    .io_dIn_15_re(fft_io_dIn_15_re),
    .io_dIn_15_im(fft_io_dIn_15_im),
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
    .io_dOut_8_re(fft_io_dOut_8_re),
    .io_dOut_8_im(fft_io_dOut_8_im),
    .io_dOut_9_re(fft_io_dOut_9_re),
    .io_dOut_9_im(fft_io_dOut_9_im),
    .io_dOut_10_re(fft_io_dOut_10_re),
    .io_dOut_10_im(fft_io_dOut_10_im),
    .io_dOut_11_re(fft_io_dOut_11_re),
    .io_dOut_11_im(fft_io_dOut_11_im),
    .io_dOut_12_re(fft_io_dOut_12_re),
    .io_dOut_12_im(fft_io_dOut_12_im),
    .io_dOut_13_re(fft_io_dOut_13_re),
    .io_dOut_13_im(fft_io_dOut_13_im),
    .io_dOut_14_re(fft_io_dOut_14_re),
    .io_dOut_14_im(fft_io_dOut_14_im),
    .io_dOut_15_re(fft_io_dOut_15_re),
    .io_dOut_15_im(fft_io_dOut_15_im),
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
  assign io_dOut_8_re = fft_io_dOut_8_re; // @[Top.scala 27:13]
  assign io_dOut_8_im = fft_io_dOut_8_im; // @[Top.scala 27:13]
  assign io_dOut_9_re = fft_io_dOut_9_re; // @[Top.scala 27:13]
  assign io_dOut_9_im = fft_io_dOut_9_im; // @[Top.scala 27:13]
  assign io_dOut_10_re = fft_io_dOut_10_re; // @[Top.scala 27:13]
  assign io_dOut_10_im = fft_io_dOut_10_im; // @[Top.scala 27:13]
  assign io_dOut_11_re = fft_io_dOut_11_re; // @[Top.scala 27:13]
  assign io_dOut_11_im = fft_io_dOut_11_im; // @[Top.scala 27:13]
  assign io_dOut_12_re = fft_io_dOut_12_re; // @[Top.scala 27:13]
  assign io_dOut_12_im = fft_io_dOut_12_im; // @[Top.scala 27:13]
  assign io_dOut_13_re = fft_io_dOut_13_re; // @[Top.scala 27:13]
  assign io_dOut_13_im = fft_io_dOut_13_im; // @[Top.scala 27:13]
  assign io_dOut_14_re = fft_io_dOut_14_re; // @[Top.scala 27:13]
  assign io_dOut_14_im = fft_io_dOut_14_im; // @[Top.scala 27:13]
  assign io_dOut_15_re = fft_io_dOut_15_re; // @[Top.scala 27:13]
  assign io_dOut_15_im = fft_io_dOut_15_im; // @[Top.scala 27:13]
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
  assign fft_io_dIn_8_re = io_dIn_8_re; // @[Top.scala 16:14]
  assign fft_io_dIn_8_im = io_dIn_8_im; // @[Top.scala 16:14]
  assign fft_io_dIn_9_re = io_dIn_9_re; // @[Top.scala 16:14]
  assign fft_io_dIn_9_im = io_dIn_9_im; // @[Top.scala 16:14]
  assign fft_io_dIn_10_re = io_dIn_10_re; // @[Top.scala 16:14]
  assign fft_io_dIn_10_im = io_dIn_10_im; // @[Top.scala 16:14]
  assign fft_io_dIn_11_re = io_dIn_11_re; // @[Top.scala 16:14]
  assign fft_io_dIn_11_im = io_dIn_11_im; // @[Top.scala 16:14]
  assign fft_io_dIn_12_re = io_dIn_12_re; // @[Top.scala 16:14]
  assign fft_io_dIn_12_im = io_dIn_12_im; // @[Top.scala 16:14]
  assign fft_io_dIn_13_re = io_dIn_13_re; // @[Top.scala 16:14]
  assign fft_io_dIn_13_im = io_dIn_13_im; // @[Top.scala 16:14]
  assign fft_io_dIn_14_re = io_dIn_14_re; // @[Top.scala 16:14]
  assign fft_io_dIn_14_im = io_dIn_14_im; // @[Top.scala 16:14]
  assign fft_io_dIn_15_re = io_dIn_15_re; // @[Top.scala 16:14]
  assign fft_io_dIn_15_im = io_dIn_15_im; // @[Top.scala 16:14]
  assign fft_io_din_valid = io_din_valid; // @[Top.scala 17:20]
endmodule
