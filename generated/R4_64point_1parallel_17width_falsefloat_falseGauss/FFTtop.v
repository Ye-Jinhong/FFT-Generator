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
module ComplexAdd_2(
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
module ComplexSub_1(
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
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  wire [33:0] _io_res_re_T_2 = $signed(io_op1_re) * $signed(io_op2_re); // @[Modules.scala 150:59]
  wire [33:0] _io_res_re_T_5 = $signed(io_op1_im) * $signed(io_op2_im); // @[Modules.scala 150:141]
  wire [33:0] _io_res_re_T_8 = $signed(_io_res_re_T_2) - $signed(_io_res_re_T_5); // @[Modules.scala 150:100]
  wire [33:0] _io_res_im_T_2 = $signed(io_op1_re) * $signed(io_op2_im); // @[Modules.scala 151:59]
  wire [33:0] _io_res_im_T_5 = $signed(io_op1_im) * $signed(io_op2_re); // @[Modules.scala 151:141]
  wire [33:0] _io_res_im_T_8 = $signed(_io_res_im_T_2) + $signed(_io_res_im_T_5); // @[Modules.scala 151:100]
  wire [21:0] _GEN_0 = _io_res_re_T_8[33:12]; // @[Modules.scala 150:17]
  wire [21:0] _GEN_2 = _io_res_im_T_8[33:12]; // @[Modules.scala 151:17]
  assign io_res_re = _GEN_0[16:0]; // @[Modules.scala 150:17]
  assign io_res_im = _GEN_2[16:0]; // @[Modules.scala 151:17]
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
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im,
  input  [16:0] io_wn_0_re,
  input  [16:0] io_wn_0_im,
  input  [16:0] io_wn_1_re,
  input  [16:0] io_wn_1_im,
  input  [16:0] io_wn_2_re,
  input  [16:0] io_wn_2_im
);
  wire [16:0] temp_0_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_2_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_2_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_2_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_2_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_2_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_3_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_3_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_2_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_2_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_2_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_2_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_3_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_res_im; // @[Modules.scala 100:22]
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
  ComplexAdd temp_0_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_0_inst_io_op1_re),
    .io_op1_im(temp_0_inst_io_op1_im),
    .io_op2_re(temp_0_inst_io_op2_re),
    .io_op2_im(temp_0_inst_io_op2_im),
    .io_res_re(temp_0_inst_io_res_re),
    .io_res_im(temp_0_inst_io_res_im)
  );
  ComplexAdd temp_0_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_0_inst_1_io_op1_re),
    .io_op1_im(temp_0_inst_1_io_op1_im),
    .io_op2_re(temp_0_inst_1_io_op2_re),
    .io_op2_im(temp_0_inst_1_io_op2_im),
    .io_res_re(temp_0_inst_1_io_res_re),
    .io_res_im(temp_0_inst_1_io_res_im)
  );
  ComplexAdd_2 temp_0_inst_2 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_0_inst_2_io_op1_re),
    .io_op1_im(temp_0_inst_2_io_op1_im),
    .io_op2_re(temp_0_inst_2_io_op2_re),
    .io_op2_im(temp_0_inst_2_io_op2_im),
    .io_res_re(temp_0_inst_2_io_res_re),
    .io_res_im(temp_0_inst_2_io_res_im)
  );
  ComplexAdd temp_1_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_1_inst_io_op1_re),
    .io_op1_im(temp_1_inst_io_op1_im),
    .io_op2_re(temp_1_inst_io_op2_re),
    .io_op2_im(temp_1_inst_io_op2_im),
    .io_res_re(temp_1_inst_io_res_re),
    .io_res_im(temp_1_inst_io_res_im)
  );
  ComplexAdd temp_1_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_1_inst_1_io_op1_re),
    .io_op1_im(temp_1_inst_1_io_op1_im),
    .io_op2_re(temp_1_inst_1_io_op2_re),
    .io_op2_im(temp_1_inst_1_io_op2_im),
    .io_res_re(temp_1_inst_1_io_res_re),
    .io_res_im(temp_1_inst_1_io_res_im)
  );
  ComplexSub temp_1_inst_2 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_1_inst_2_io_op1_re),
    .io_op1_im(temp_1_inst_2_io_op1_im),
    .io_op2_re(temp_1_inst_2_io_op2_re),
    .io_op2_im(temp_1_inst_2_io_op2_im),
    .io_res_re(temp_1_inst_2_io_res_re),
    .io_res_im(temp_1_inst_2_io_res_im)
  );
  ComplexSub_1 temp_2_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_2_inst_io_op1_re),
    .io_op1_im(temp_2_inst_io_op1_im),
    .io_op2_re(temp_2_inst_io_op2_re),
    .io_op2_im(temp_2_inst_io_op2_im),
    .io_res_re(temp_2_inst_io_res_re),
    .io_res_im(temp_2_inst_io_res_im)
  );
  ComplexSub_1 temp_2_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_2_inst_1_io_op1_re),
    .io_op1_im(temp_2_inst_1_io_op1_im),
    .io_op2_re(temp_2_inst_1_io_op2_re),
    .io_op2_im(temp_2_inst_1_io_op2_im),
    .io_res_re(temp_2_inst_1_io_res_re),
    .io_res_im(temp_2_inst_1_io_res_im)
  );
  ComplexTran temp_2_inst_2 ( // @[Modules.scala 123:22]
    .io_in_re(temp_2_inst_2_io_in_re),
    .io_in_im(temp_2_inst_2_io_in_im),
    .io_out_re(temp_2_inst_2_io_out_re),
    .io_out_im(temp_2_inst_2_io_out_im)
  );
  ComplexAdd_2 temp_2_inst_3 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_2_inst_3_io_op1_re),
    .io_op1_im(temp_2_inst_3_io_op1_im),
    .io_op2_re(temp_2_inst_3_io_op2_re),
    .io_op2_im(temp_2_inst_3_io_op2_im),
    .io_res_re(temp_2_inst_3_io_res_re),
    .io_res_im(temp_2_inst_3_io_res_im)
  );
  ComplexSub_1 temp_3_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_3_inst_io_op1_re),
    .io_op1_im(temp_3_inst_io_op1_im),
    .io_op2_re(temp_3_inst_io_op2_re),
    .io_op2_im(temp_3_inst_io_op2_im),
    .io_res_re(temp_3_inst_io_res_re),
    .io_res_im(temp_3_inst_io_res_im)
  );
  ComplexSub_1 temp_3_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_3_inst_1_io_op1_re),
    .io_op1_im(temp_3_inst_1_io_op1_im),
    .io_op2_re(temp_3_inst_1_io_op2_re),
    .io_op2_im(temp_3_inst_1_io_op2_im),
    .io_res_re(temp_3_inst_1_io_res_re),
    .io_res_im(temp_3_inst_1_io_res_im)
  );
  ComplexTran temp_3_inst_2 ( // @[Modules.scala 123:22]
    .io_in_re(temp_3_inst_2_io_in_re),
    .io_in_im(temp_3_inst_2_io_in_im),
    .io_out_re(temp_3_inst_2_io_out_re),
    .io_out_im(temp_3_inst_2_io_out_im)
  );
  ComplexSub temp_3_inst_3 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_3_inst_3_io_op1_re),
    .io_op1_im(temp_3_inst_3_io_op1_im),
    .io_op2_re(temp_3_inst_3_io_op2_re),
    .io_op2_im(temp_3_inst_3_io_op2_im),
    .io_res_re(temp_3_inst_3_io_res_re),
    .io_res_im(temp_3_inst_3_io_res_im)
  );
  ComplexMul io_out_1_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  ComplexMul io_out_2_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_2_inst_io_op1_re),
    .io_op1_im(io_out_2_inst_io_op1_im),
    .io_op2_re(io_out_2_inst_io_op2_re),
    .io_op2_im(io_out_2_inst_io_op2_im),
    .io_res_re(io_out_2_inst_io_res_re),
    .io_res_im(io_out_2_inst_io_res_im)
  );
  ComplexMul io_out_3_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_3_inst_io_op1_re),
    .io_op1_im(io_out_3_inst_io_op1_im),
    .io_op2_re(io_out_3_inst_io_op2_re),
    .io_op2_im(io_out_3_inst_io_op2_im),
    .io_res_re(io_out_3_inst_io_res_re),
    .io_res_im(io_out_3_inst_io_res_im)
  );
  assign io_out_0_re = temp_0_inst_2_io_res_re; // @[Modules.scala 224:21 229:13]
  assign io_out_0_im = temp_0_inst_2_io_res_im; // @[Modules.scala 224:21 229:13]
  assign io_out_1_re = io_out_1_inst_io_res_re; // @[Modules.scala 270:15]
  assign io_out_1_im = io_out_1_inst_io_res_im; // @[Modules.scala 270:15]
  assign io_out_2_re = io_out_2_inst_io_res_re; // @[Modules.scala 271:15]
  assign io_out_2_im = io_out_2_inst_io_res_im; // @[Modules.scala 271:15]
  assign io_out_3_re = io_out_3_inst_io_res_re; // @[Modules.scala 272:15]
  assign io_out_3_im = io_out_3_inst_io_res_im; // @[Modules.scala 272:15]
  assign temp_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign temp_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign temp_0_inst_io_op2_re = io_in_2_re; // @[Modules.scala 83:17]
  assign temp_0_inst_io_op2_im = io_in_2_im; // @[Modules.scala 83:17]
  assign temp_0_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign temp_0_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign temp_0_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 83:17]
  assign temp_0_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 83:17]
  assign temp_0_inst_2_io_op1_re = temp_0_inst_io_res_re; // @[Modules.scala 82:17]
  assign temp_0_inst_2_io_op1_im = temp_0_inst_io_res_im; // @[Modules.scala 82:17]
  assign temp_0_inst_2_io_op2_re = temp_0_inst_1_io_res_re; // @[Modules.scala 83:17]
  assign temp_0_inst_2_io_op2_im = temp_0_inst_1_io_res_im; // @[Modules.scala 83:17]
  assign temp_1_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign temp_1_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign temp_1_inst_io_op2_re = io_in_2_re; // @[Modules.scala 83:17]
  assign temp_1_inst_io_op2_im = io_in_2_im; // @[Modules.scala 83:17]
  assign temp_1_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign temp_1_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign temp_1_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 83:17]
  assign temp_1_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 83:17]
  assign temp_1_inst_2_io_op1_re = temp_1_inst_io_res_re; // @[Modules.scala 101:17]
  assign temp_1_inst_2_io_op1_im = temp_1_inst_io_res_im; // @[Modules.scala 101:17]
  assign temp_1_inst_2_io_op2_re = temp_1_inst_1_io_res_re; // @[Modules.scala 102:17]
  assign temp_1_inst_2_io_op2_im = temp_1_inst_1_io_res_im; // @[Modules.scala 102:17]
  assign temp_2_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign temp_2_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign temp_2_inst_io_op2_re = io_in_2_re; // @[Modules.scala 102:17]
  assign temp_2_inst_io_op2_im = io_in_2_im; // @[Modules.scala 102:17]
  assign temp_2_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign temp_2_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign temp_2_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 102:17]
  assign temp_2_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 102:17]
  assign temp_2_inst_2_io_in_re = temp_2_inst_1_io_res_re; // @[Modules.scala 124:16]
  assign temp_2_inst_2_io_in_im = temp_2_inst_1_io_res_im; // @[Modules.scala 124:16]
  assign temp_2_inst_3_io_op1_re = temp_2_inst_io_res_re; // @[Modules.scala 82:17]
  assign temp_2_inst_3_io_op1_im = temp_2_inst_io_res_im; // @[Modules.scala 82:17]
  assign temp_2_inst_3_io_op2_re = temp_2_inst_2_io_out_re; // @[Modules.scala 83:17]
  assign temp_2_inst_3_io_op2_im = temp_2_inst_2_io_out_im; // @[Modules.scala 83:17]
  assign temp_3_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign temp_3_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign temp_3_inst_io_op2_re = io_in_2_re; // @[Modules.scala 102:17]
  assign temp_3_inst_io_op2_im = io_in_2_im; // @[Modules.scala 102:17]
  assign temp_3_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign temp_3_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign temp_3_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 102:17]
  assign temp_3_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 102:17]
  assign temp_3_inst_2_io_in_re = temp_3_inst_1_io_res_re; // @[Modules.scala 124:16]
  assign temp_3_inst_2_io_in_im = temp_3_inst_1_io_res_im; // @[Modules.scala 124:16]
  assign temp_3_inst_3_io_op1_re = temp_3_inst_io_res_re; // @[Modules.scala 101:17]
  assign temp_3_inst_3_io_op1_im = temp_3_inst_io_res_im; // @[Modules.scala 101:17]
  assign temp_3_inst_3_io_op2_re = temp_3_inst_2_io_out_re; // @[Modules.scala 102:17]
  assign temp_3_inst_3_io_op2_im = temp_3_inst_2_io_out_im; // @[Modules.scala 102:17]
  assign io_out_1_inst_io_op1_re = temp_1_inst_2_io_res_re; // @[Modules.scala 224:21 230:13]
  assign io_out_1_inst_io_op1_im = temp_1_inst_2_io_res_im; // @[Modules.scala 224:21 230:13]
  assign io_out_1_inst_io_op2_re = io_wn_1_re; // @[Modules.scala 160:17]
  assign io_out_1_inst_io_op2_im = io_wn_1_im; // @[Modules.scala 160:17]
  assign io_out_2_inst_io_op1_re = temp_2_inst_3_io_res_re; // @[Modules.scala 224:21 231:13]
  assign io_out_2_inst_io_op1_im = temp_2_inst_3_io_res_im; // @[Modules.scala 224:21 231:13]
  assign io_out_2_inst_io_op2_re = io_wn_0_re; // @[Modules.scala 160:17]
  assign io_out_2_inst_io_op2_im = io_wn_0_im; // @[Modules.scala 160:17]
  assign io_out_3_inst_io_op1_re = temp_3_inst_3_io_res_re; // @[Modules.scala 224:21 232:13]
  assign io_out_3_inst_io_op1_im = temp_3_inst_3_io_res_im; // @[Modules.scala 224:21 232:13]
  assign io_out_3_inst_io_op2_re = io_wn_2_re; // @[Modules.scala 160:17]
  assign io_out_3_inst_io_op2_im = io_wn_2_im; // @[Modules.scala 160:17]
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
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im
);
  wire [16:0] io_out_0_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_2_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_2_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_2_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_2_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_2_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_3_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_3_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_2_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_2_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_2_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_2_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_3_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_res_im; // @[Modules.scala 100:22]
  ComplexAdd io_out_0_inst ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_0_inst_io_op1_re),
    .io_op1_im(io_out_0_inst_io_op1_im),
    .io_op2_re(io_out_0_inst_io_op2_re),
    .io_op2_im(io_out_0_inst_io_op2_im),
    .io_res_re(io_out_0_inst_io_res_re),
    .io_res_im(io_out_0_inst_io_res_im)
  );
  ComplexAdd io_out_0_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_0_inst_1_io_op1_re),
    .io_op1_im(io_out_0_inst_1_io_op1_im),
    .io_op2_re(io_out_0_inst_1_io_op2_re),
    .io_op2_im(io_out_0_inst_1_io_op2_im),
    .io_res_re(io_out_0_inst_1_io_res_re),
    .io_res_im(io_out_0_inst_1_io_res_im)
  );
  ComplexAdd_2 io_out_0_inst_2 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_0_inst_2_io_op1_re),
    .io_op1_im(io_out_0_inst_2_io_op1_im),
    .io_op2_re(io_out_0_inst_2_io_op2_re),
    .io_op2_im(io_out_0_inst_2_io_op2_im),
    .io_res_re(io_out_0_inst_2_io_res_re),
    .io_res_im(io_out_0_inst_2_io_res_im)
  );
  ComplexAdd io_out_1_inst ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  ComplexAdd io_out_1_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_1_inst_1_io_op1_re),
    .io_op1_im(io_out_1_inst_1_io_op1_im),
    .io_op2_re(io_out_1_inst_1_io_op2_re),
    .io_op2_im(io_out_1_inst_1_io_op2_im),
    .io_res_re(io_out_1_inst_1_io_res_re),
    .io_res_im(io_out_1_inst_1_io_res_im)
  );
  ComplexSub io_out_1_inst_2 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_1_inst_2_io_op1_re),
    .io_op1_im(io_out_1_inst_2_io_op1_im),
    .io_op2_re(io_out_1_inst_2_io_op2_re),
    .io_op2_im(io_out_1_inst_2_io_op2_im),
    .io_res_re(io_out_1_inst_2_io_res_re),
    .io_res_im(io_out_1_inst_2_io_res_im)
  );
  ComplexSub_1 io_out_2_inst ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_2_inst_io_op1_re),
    .io_op1_im(io_out_2_inst_io_op1_im),
    .io_op2_re(io_out_2_inst_io_op2_re),
    .io_op2_im(io_out_2_inst_io_op2_im),
    .io_res_re(io_out_2_inst_io_res_re),
    .io_res_im(io_out_2_inst_io_res_im)
  );
  ComplexSub_1 io_out_2_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_2_inst_1_io_op1_re),
    .io_op1_im(io_out_2_inst_1_io_op1_im),
    .io_op2_re(io_out_2_inst_1_io_op2_re),
    .io_op2_im(io_out_2_inst_1_io_op2_im),
    .io_res_re(io_out_2_inst_1_io_res_re),
    .io_res_im(io_out_2_inst_1_io_res_im)
  );
  ComplexTran io_out_2_inst_2 ( // @[Modules.scala 123:22]
    .io_in_re(io_out_2_inst_2_io_in_re),
    .io_in_im(io_out_2_inst_2_io_in_im),
    .io_out_re(io_out_2_inst_2_io_out_re),
    .io_out_im(io_out_2_inst_2_io_out_im)
  );
  ComplexAdd_2 io_out_2_inst_3 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_2_inst_3_io_op1_re),
    .io_op1_im(io_out_2_inst_3_io_op1_im),
    .io_op2_re(io_out_2_inst_3_io_op2_re),
    .io_op2_im(io_out_2_inst_3_io_op2_im),
    .io_res_re(io_out_2_inst_3_io_res_re),
    .io_res_im(io_out_2_inst_3_io_res_im)
  );
  ComplexSub_1 io_out_3_inst ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_3_inst_io_op1_re),
    .io_op1_im(io_out_3_inst_io_op1_im),
    .io_op2_re(io_out_3_inst_io_op2_re),
    .io_op2_im(io_out_3_inst_io_op2_im),
    .io_res_re(io_out_3_inst_io_res_re),
    .io_res_im(io_out_3_inst_io_res_im)
  );
  ComplexSub_1 io_out_3_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_3_inst_1_io_op1_re),
    .io_op1_im(io_out_3_inst_1_io_op1_im),
    .io_op2_re(io_out_3_inst_1_io_op2_re),
    .io_op2_im(io_out_3_inst_1_io_op2_im),
    .io_res_re(io_out_3_inst_1_io_res_re),
    .io_res_im(io_out_3_inst_1_io_res_im)
  );
  ComplexTran io_out_3_inst_2 ( // @[Modules.scala 123:22]
    .io_in_re(io_out_3_inst_2_io_in_re),
    .io_in_im(io_out_3_inst_2_io_in_im),
    .io_out_re(io_out_3_inst_2_io_out_re),
    .io_out_im(io_out_3_inst_2_io_out_im)
  );
  ComplexSub io_out_3_inst_3 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_3_inst_3_io_op1_re),
    .io_op1_im(io_out_3_inst_3_io_op1_im),
    .io_op2_re(io_out_3_inst_3_io_op2_re),
    .io_op2_im(io_out_3_inst_3_io_op2_im),
    .io_res_re(io_out_3_inst_3_io_res_re),
    .io_res_im(io_out_3_inst_3_io_res_im)
  );
  assign io_out_0_re = io_out_0_inst_2_io_res_re; // @[Modules.scala 173:15]
  assign io_out_0_im = io_out_0_inst_2_io_res_im; // @[Modules.scala 173:15]
  assign io_out_1_re = io_out_1_inst_2_io_res_re; // @[Modules.scala 174:15]
  assign io_out_1_im = io_out_1_inst_2_io_res_im; // @[Modules.scala 174:15]
  assign io_out_2_re = io_out_2_inst_3_io_res_re; // @[Modules.scala 175:15]
  assign io_out_2_im = io_out_2_inst_3_io_res_im; // @[Modules.scala 175:15]
  assign io_out_3_re = io_out_3_inst_3_io_res_re; // @[Modules.scala 176:15]
  assign io_out_3_im = io_out_3_inst_3_io_res_im; // @[Modules.scala 176:15]
  assign io_out_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign io_out_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign io_out_0_inst_io_op2_re = io_in_2_re; // @[Modules.scala 83:17]
  assign io_out_0_inst_io_op2_im = io_in_2_im; // @[Modules.scala 83:17]
  assign io_out_0_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign io_out_0_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign io_out_0_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 83:17]
  assign io_out_0_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 83:17]
  assign io_out_0_inst_2_io_op1_re = io_out_0_inst_io_res_re; // @[Modules.scala 82:17]
  assign io_out_0_inst_2_io_op1_im = io_out_0_inst_io_res_im; // @[Modules.scala 82:17]
  assign io_out_0_inst_2_io_op2_re = io_out_0_inst_1_io_res_re; // @[Modules.scala 83:17]
  assign io_out_0_inst_2_io_op2_im = io_out_0_inst_1_io_res_im; // @[Modules.scala 83:17]
  assign io_out_1_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign io_out_1_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign io_out_1_inst_io_op2_re = io_in_2_re; // @[Modules.scala 83:17]
  assign io_out_1_inst_io_op2_im = io_in_2_im; // @[Modules.scala 83:17]
  assign io_out_1_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign io_out_1_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign io_out_1_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 83:17]
  assign io_out_1_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 83:17]
  assign io_out_1_inst_2_io_op1_re = io_out_1_inst_io_res_re; // @[Modules.scala 101:17]
  assign io_out_1_inst_2_io_op1_im = io_out_1_inst_io_res_im; // @[Modules.scala 101:17]
  assign io_out_1_inst_2_io_op2_re = io_out_1_inst_1_io_res_re; // @[Modules.scala 102:17]
  assign io_out_1_inst_2_io_op2_im = io_out_1_inst_1_io_res_im; // @[Modules.scala 102:17]
  assign io_out_2_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign io_out_2_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign io_out_2_inst_io_op2_re = io_in_2_re; // @[Modules.scala 102:17]
  assign io_out_2_inst_io_op2_im = io_in_2_im; // @[Modules.scala 102:17]
  assign io_out_2_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign io_out_2_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign io_out_2_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 102:17]
  assign io_out_2_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 102:17]
  assign io_out_2_inst_2_io_in_re = io_out_2_inst_1_io_res_re; // @[Modules.scala 124:16]
  assign io_out_2_inst_2_io_in_im = io_out_2_inst_1_io_res_im; // @[Modules.scala 124:16]
  assign io_out_2_inst_3_io_op1_re = io_out_2_inst_io_res_re; // @[Modules.scala 82:17]
  assign io_out_2_inst_3_io_op1_im = io_out_2_inst_io_res_im; // @[Modules.scala 82:17]
  assign io_out_2_inst_3_io_op2_re = io_out_2_inst_2_io_out_re; // @[Modules.scala 83:17]
  assign io_out_2_inst_3_io_op2_im = io_out_2_inst_2_io_out_im; // @[Modules.scala 83:17]
  assign io_out_3_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign io_out_3_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign io_out_3_inst_io_op2_re = io_in_2_re; // @[Modules.scala 102:17]
  assign io_out_3_inst_io_op2_im = io_in_2_im; // @[Modules.scala 102:17]
  assign io_out_3_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign io_out_3_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign io_out_3_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 102:17]
  assign io_out_3_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 102:17]
  assign io_out_3_inst_2_io_in_re = io_out_3_inst_1_io_res_re; // @[Modules.scala 124:16]
  assign io_out_3_inst_2_io_in_im = io_out_3_inst_1_io_res_im; // @[Modules.scala 124:16]
  assign io_out_3_inst_3_io_op1_re = io_out_3_inst_io_res_re; // @[Modules.scala 101:17]
  assign io_out_3_inst_3_io_op1_im = io_out_3_inst_io_res_im; // @[Modules.scala 101:17]
  assign io_out_3_inst_3_io_op2_re = io_out_3_inst_2_io_out_re; // @[Modules.scala 102:17]
  assign io_out_3_inst_3_io_op2_im = io_out_3_inst_2_io_out_im; // @[Modules.scala 102:17]
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
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im,
  input  [1:0]  io_sel
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
`endif // RANDOMIZE_REG_INIT
  reg [16:0] swdata_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_5_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_5_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_6_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_6_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_7_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_7_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_5_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_5_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_6_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_6_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_7_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_7_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_8_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_8_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_9_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_9_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_10_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_10_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_11_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_11_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_im; // @[Reg.scala 19:16]
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
  reg [16:0] io_out_0_r_7_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_7_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_8_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_8_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_9_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_9_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_10_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_10_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_11_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_11_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_im; // @[Reg.scala 19:16]
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
  reg [16:0] io_out_1_r_6_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_6_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_7_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_7_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_3_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_121 = 2'h1 == io_sel ? $signed(swdata_2_r_7_re) : $signed(swdata_1_r_3_re); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_122 = 2'h2 == io_sel ? $signed(swdata_3_r_11_re) : $signed(_GEN_121); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_125 = 2'h1 == io_sel ? $signed(swdata_2_r_7_im) : $signed(swdata_1_r_3_im); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_126 = 2'h2 == io_sel ? $signed(swdata_3_r_11_im) : $signed(_GEN_125); // @[Modules.scala 306:{38,38}]
  assign io_out_0_re = io_out_0_r_11_re; // @[Modules.scala 306:38]
  assign io_out_0_im = io_out_0_r_11_im; // @[Modules.scala 306:38]
  assign io_out_1_re = io_out_1_r_7_re; // @[Modules.scala 306:38]
  assign io_out_1_im = io_out_1_r_7_im; // @[Modules.scala 306:38]
  assign io_out_2_re = io_out_2_r_3_re; // @[Modules.scala 306:38]
  assign io_out_2_im = io_out_2_r_3_im; // @[Modules.scala 306:38]
  assign io_out_3_re = 2'h3 == io_sel ? $signed(io_in_0_re) : $signed(_GEN_122); // @[Modules.scala 306:{38,38}]
  assign io_out_3_im = 2'h3 == io_sel ? $signed(io_in_0_im) : $signed(_GEN_126); // @[Modules.scala 306:{38,38}]
  always @(posedge clock) begin
    swdata_1_r_re <= io_in_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_im <= io_in_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_1_re <= swdata_1_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_1_im <= swdata_1_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_2_re <= swdata_1_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_2_im <= swdata_1_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_3_re <= swdata_1_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_3_im <= swdata_1_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_re <= io_in_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_im <= io_in_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_1_re <= swdata_2_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_1_im <= swdata_2_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_2_re <= swdata_2_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_2_im <= swdata_2_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_3_re <= swdata_2_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_3_im <= swdata_2_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_4_re <= swdata_2_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_4_im <= swdata_2_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_5_re <= swdata_2_r_4_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_5_im <= swdata_2_r_4_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_6_re <= swdata_2_r_5_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_6_im <= swdata_2_r_5_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_7_re <= swdata_2_r_6_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_7_im <= swdata_2_r_6_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_re <= io_in_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_im <= io_in_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_1_re <= swdata_3_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_1_im <= swdata_3_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_2_re <= swdata_3_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_2_im <= swdata_3_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_3_re <= swdata_3_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_3_im <= swdata_3_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_4_re <= swdata_3_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_4_im <= swdata_3_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_5_re <= swdata_3_r_4_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_5_im <= swdata_3_r_4_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_6_re <= swdata_3_r_5_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_6_im <= swdata_3_r_5_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_7_re <= swdata_3_r_6_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_7_im <= swdata_3_r_6_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_8_re <= swdata_3_r_7_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_8_im <= swdata_3_r_7_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_9_re <= swdata_3_r_8_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_9_im <= swdata_3_r_8_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_10_re <= swdata_3_r_9_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_10_im <= swdata_3_r_9_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_11_re <= swdata_3_r_10_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_11_im <= swdata_3_r_10_im; // @[Reg.scala 19:16 20:{18,22}]
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_3_r_11_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_2_r_7_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_1_r_3_re; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_re <= io_in_0_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_3_r_11_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_2_r_7_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_1_r_3_im; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_im <= io_in_0_im;
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
    io_out_0_r_7_re <= io_out_0_r_6_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_7_im <= io_out_0_r_6_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_8_re <= io_out_0_r_7_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_8_im <= io_out_0_r_7_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_9_re <= io_out_0_r_8_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_9_im <= io_out_0_r_8_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_10_re <= io_out_0_r_9_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_10_im <= io_out_0_r_9_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_11_re <= io_out_0_r_10_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_11_im <= io_out_0_r_10_im; // @[Reg.scala 19:16 20:{18,22}]
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_2_r_7_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_1_r_3_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else begin
      io_out_1_r_re <= swdata_3_r_11_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_2_r_7_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_1_r_3_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else begin
      io_out_1_r_im <= swdata_3_r_11_im;
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
    io_out_1_r_6_re <= io_out_1_r_5_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_6_im <= io_out_1_r_5_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_7_re <= io_out_1_r_6_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_7_im <= io_out_1_r_6_im; // @[Reg.scala 19:16 20:{18,22}]
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_1_r_3_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_3_r_11_re; // @[Reg.scala 20:22]
    end else begin
      io_out_2_r_re <= swdata_2_r_7_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_1_r_3_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_3_r_11_im; // @[Reg.scala 20:22]
    end else begin
      io_out_2_r_im <= swdata_2_r_7_im;
    end
    io_out_2_r_1_re <= io_out_2_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_1_im <= io_out_2_r_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_2_re <= io_out_2_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_2_im <= io_out_2_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_3_re <= io_out_2_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_2_r_3_im <= io_out_2_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
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
  swdata_1_r_1_re = _RAND_2[16:0];
  _RAND_3 = {1{`RANDOM}};
  swdata_1_r_1_im = _RAND_3[16:0];
  _RAND_4 = {1{`RANDOM}};
  swdata_1_r_2_re = _RAND_4[16:0];
  _RAND_5 = {1{`RANDOM}};
  swdata_1_r_2_im = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  swdata_1_r_3_re = _RAND_6[16:0];
  _RAND_7 = {1{`RANDOM}};
  swdata_1_r_3_im = _RAND_7[16:0];
  _RAND_8 = {1{`RANDOM}};
  swdata_2_r_re = _RAND_8[16:0];
  _RAND_9 = {1{`RANDOM}};
  swdata_2_r_im = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  swdata_2_r_1_re = _RAND_10[16:0];
  _RAND_11 = {1{`RANDOM}};
  swdata_2_r_1_im = _RAND_11[16:0];
  _RAND_12 = {1{`RANDOM}};
  swdata_2_r_2_re = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  swdata_2_r_2_im = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  swdata_2_r_3_re = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  swdata_2_r_3_im = _RAND_15[16:0];
  _RAND_16 = {1{`RANDOM}};
  swdata_2_r_4_re = _RAND_16[16:0];
  _RAND_17 = {1{`RANDOM}};
  swdata_2_r_4_im = _RAND_17[16:0];
  _RAND_18 = {1{`RANDOM}};
  swdata_2_r_5_re = _RAND_18[16:0];
  _RAND_19 = {1{`RANDOM}};
  swdata_2_r_5_im = _RAND_19[16:0];
  _RAND_20 = {1{`RANDOM}};
  swdata_2_r_6_re = _RAND_20[16:0];
  _RAND_21 = {1{`RANDOM}};
  swdata_2_r_6_im = _RAND_21[16:0];
  _RAND_22 = {1{`RANDOM}};
  swdata_2_r_7_re = _RAND_22[16:0];
  _RAND_23 = {1{`RANDOM}};
  swdata_2_r_7_im = _RAND_23[16:0];
  _RAND_24 = {1{`RANDOM}};
  swdata_3_r_re = _RAND_24[16:0];
  _RAND_25 = {1{`RANDOM}};
  swdata_3_r_im = _RAND_25[16:0];
  _RAND_26 = {1{`RANDOM}};
  swdata_3_r_1_re = _RAND_26[16:0];
  _RAND_27 = {1{`RANDOM}};
  swdata_3_r_1_im = _RAND_27[16:0];
  _RAND_28 = {1{`RANDOM}};
  swdata_3_r_2_re = _RAND_28[16:0];
  _RAND_29 = {1{`RANDOM}};
  swdata_3_r_2_im = _RAND_29[16:0];
  _RAND_30 = {1{`RANDOM}};
  swdata_3_r_3_re = _RAND_30[16:0];
  _RAND_31 = {1{`RANDOM}};
  swdata_3_r_3_im = _RAND_31[16:0];
  _RAND_32 = {1{`RANDOM}};
  swdata_3_r_4_re = _RAND_32[16:0];
  _RAND_33 = {1{`RANDOM}};
  swdata_3_r_4_im = _RAND_33[16:0];
  _RAND_34 = {1{`RANDOM}};
  swdata_3_r_5_re = _RAND_34[16:0];
  _RAND_35 = {1{`RANDOM}};
  swdata_3_r_5_im = _RAND_35[16:0];
  _RAND_36 = {1{`RANDOM}};
  swdata_3_r_6_re = _RAND_36[16:0];
  _RAND_37 = {1{`RANDOM}};
  swdata_3_r_6_im = _RAND_37[16:0];
  _RAND_38 = {1{`RANDOM}};
  swdata_3_r_7_re = _RAND_38[16:0];
  _RAND_39 = {1{`RANDOM}};
  swdata_3_r_7_im = _RAND_39[16:0];
  _RAND_40 = {1{`RANDOM}};
  swdata_3_r_8_re = _RAND_40[16:0];
  _RAND_41 = {1{`RANDOM}};
  swdata_3_r_8_im = _RAND_41[16:0];
  _RAND_42 = {1{`RANDOM}};
  swdata_3_r_9_re = _RAND_42[16:0];
  _RAND_43 = {1{`RANDOM}};
  swdata_3_r_9_im = _RAND_43[16:0];
  _RAND_44 = {1{`RANDOM}};
  swdata_3_r_10_re = _RAND_44[16:0];
  _RAND_45 = {1{`RANDOM}};
  swdata_3_r_10_im = _RAND_45[16:0];
  _RAND_46 = {1{`RANDOM}};
  swdata_3_r_11_re = _RAND_46[16:0];
  _RAND_47 = {1{`RANDOM}};
  swdata_3_r_11_im = _RAND_47[16:0];
  _RAND_48 = {1{`RANDOM}};
  io_out_0_r_re = _RAND_48[16:0];
  _RAND_49 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_49[16:0];
  _RAND_50 = {1{`RANDOM}};
  io_out_0_r_1_re = _RAND_50[16:0];
  _RAND_51 = {1{`RANDOM}};
  io_out_0_r_1_im = _RAND_51[16:0];
  _RAND_52 = {1{`RANDOM}};
  io_out_0_r_2_re = _RAND_52[16:0];
  _RAND_53 = {1{`RANDOM}};
  io_out_0_r_2_im = _RAND_53[16:0];
  _RAND_54 = {1{`RANDOM}};
  io_out_0_r_3_re = _RAND_54[16:0];
  _RAND_55 = {1{`RANDOM}};
  io_out_0_r_3_im = _RAND_55[16:0];
  _RAND_56 = {1{`RANDOM}};
  io_out_0_r_4_re = _RAND_56[16:0];
  _RAND_57 = {1{`RANDOM}};
  io_out_0_r_4_im = _RAND_57[16:0];
  _RAND_58 = {1{`RANDOM}};
  io_out_0_r_5_re = _RAND_58[16:0];
  _RAND_59 = {1{`RANDOM}};
  io_out_0_r_5_im = _RAND_59[16:0];
  _RAND_60 = {1{`RANDOM}};
  io_out_0_r_6_re = _RAND_60[16:0];
  _RAND_61 = {1{`RANDOM}};
  io_out_0_r_6_im = _RAND_61[16:0];
  _RAND_62 = {1{`RANDOM}};
  io_out_0_r_7_re = _RAND_62[16:0];
  _RAND_63 = {1{`RANDOM}};
  io_out_0_r_7_im = _RAND_63[16:0];
  _RAND_64 = {1{`RANDOM}};
  io_out_0_r_8_re = _RAND_64[16:0];
  _RAND_65 = {1{`RANDOM}};
  io_out_0_r_8_im = _RAND_65[16:0];
  _RAND_66 = {1{`RANDOM}};
  io_out_0_r_9_re = _RAND_66[16:0];
  _RAND_67 = {1{`RANDOM}};
  io_out_0_r_9_im = _RAND_67[16:0];
  _RAND_68 = {1{`RANDOM}};
  io_out_0_r_10_re = _RAND_68[16:0];
  _RAND_69 = {1{`RANDOM}};
  io_out_0_r_10_im = _RAND_69[16:0];
  _RAND_70 = {1{`RANDOM}};
  io_out_0_r_11_re = _RAND_70[16:0];
  _RAND_71 = {1{`RANDOM}};
  io_out_0_r_11_im = _RAND_71[16:0];
  _RAND_72 = {1{`RANDOM}};
  io_out_1_r_re = _RAND_72[16:0];
  _RAND_73 = {1{`RANDOM}};
  io_out_1_r_im = _RAND_73[16:0];
  _RAND_74 = {1{`RANDOM}};
  io_out_1_r_1_re = _RAND_74[16:0];
  _RAND_75 = {1{`RANDOM}};
  io_out_1_r_1_im = _RAND_75[16:0];
  _RAND_76 = {1{`RANDOM}};
  io_out_1_r_2_re = _RAND_76[16:0];
  _RAND_77 = {1{`RANDOM}};
  io_out_1_r_2_im = _RAND_77[16:0];
  _RAND_78 = {1{`RANDOM}};
  io_out_1_r_3_re = _RAND_78[16:0];
  _RAND_79 = {1{`RANDOM}};
  io_out_1_r_3_im = _RAND_79[16:0];
  _RAND_80 = {1{`RANDOM}};
  io_out_1_r_4_re = _RAND_80[16:0];
  _RAND_81 = {1{`RANDOM}};
  io_out_1_r_4_im = _RAND_81[16:0];
  _RAND_82 = {1{`RANDOM}};
  io_out_1_r_5_re = _RAND_82[16:0];
  _RAND_83 = {1{`RANDOM}};
  io_out_1_r_5_im = _RAND_83[16:0];
  _RAND_84 = {1{`RANDOM}};
  io_out_1_r_6_re = _RAND_84[16:0];
  _RAND_85 = {1{`RANDOM}};
  io_out_1_r_6_im = _RAND_85[16:0];
  _RAND_86 = {1{`RANDOM}};
  io_out_1_r_7_re = _RAND_86[16:0];
  _RAND_87 = {1{`RANDOM}};
  io_out_1_r_7_im = _RAND_87[16:0];
  _RAND_88 = {1{`RANDOM}};
  io_out_2_r_re = _RAND_88[16:0];
  _RAND_89 = {1{`RANDOM}};
  io_out_2_r_im = _RAND_89[16:0];
  _RAND_90 = {1{`RANDOM}};
  io_out_2_r_1_re = _RAND_90[16:0];
  _RAND_91 = {1{`RANDOM}};
  io_out_2_r_1_im = _RAND_91[16:0];
  _RAND_92 = {1{`RANDOM}};
  io_out_2_r_2_re = _RAND_92[16:0];
  _RAND_93 = {1{`RANDOM}};
  io_out_2_r_2_im = _RAND_93[16:0];
  _RAND_94 = {1{`RANDOM}};
  io_out_2_r_3_re = _RAND_94[16:0];
  _RAND_95 = {1{`RANDOM}};
  io_out_2_r_3_im = _RAND_95[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Switch_1(
  input         clock,
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  input  [16:0] io_in_2_re,
  input  [16:0] io_in_2_im,
  input  [16:0] io_in_3_re,
  input  [16:0] io_in_3_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im,
  input  [1:0]  io_sel
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
  reg [16:0] io_out_0_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_49 = 2'h1 == io_sel ? $signed(swdata_2_r_1_re) : $signed(swdata_1_r_re); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_50 = 2'h2 == io_sel ? $signed(swdata_3_r_2_re) : $signed(_GEN_49); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_53 = 2'h1 == io_sel ? $signed(swdata_2_r_1_im) : $signed(swdata_1_r_im); // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_54 = 2'h2 == io_sel ? $signed(swdata_3_r_2_im) : $signed(_GEN_53); // @[Modules.scala 306:{38,38}]
  assign io_out_0_re = io_out_0_r_2_re; // @[Modules.scala 306:38]
  assign io_out_0_im = io_out_0_r_2_im; // @[Modules.scala 306:38]
  assign io_out_1_re = io_out_1_r_1_re; // @[Modules.scala 306:38]
  assign io_out_1_im = io_out_1_r_1_im; // @[Modules.scala 306:38]
  assign io_out_2_re = io_out_2_r_re; // @[Modules.scala 306:38]
  assign io_out_2_im = io_out_2_r_im; // @[Modules.scala 306:38]
  assign io_out_3_re = 2'h3 == io_sel ? $signed(io_in_0_re) : $signed(_GEN_50); // @[Modules.scala 306:{38,38}]
  assign io_out_3_im = 2'h3 == io_sel ? $signed(io_in_0_im) : $signed(_GEN_54); // @[Modules.scala 306:{38,38}]
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
  io_out_0_r_re = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_0_r_1_re = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_0_r_1_im = _RAND_15[16:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_0_r_2_re = _RAND_16[16:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_0_r_2_im = _RAND_17[16:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_1_r_re = _RAND_18[16:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_1_r_im = _RAND_19[16:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_1_r_1_re = _RAND_20[16:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_1_r_1_im = _RAND_21[16:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_2_r_re = _RAND_22[16:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_2_r_im = _RAND_23[16:0];
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
  output [16:0] io_dOut_0_re,
  output [16:0] io_dOut_0_im,
  output [16:0] io_dOut_1_re,
  output [16:0] io_dOut_1_im,
  output [16:0] io_dOut_2_re,
  output [16:0] io_dOut_2_im,
  output [16:0] io_dOut_3_re,
  output [16:0] io_dOut_3_im,
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
`endif // RANDOMIZE_REG_INIT
  wire [16:0] inst_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] dataotemp_inst_io_in_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_3_im; // @[Modules.scala 213:22]
  wire  inst_2_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_in_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_in_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_in_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_in_3_im; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_out_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_out_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_out_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_out_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_2_io_out_3_im; // @[Modules.scala 311:22]
  wire [1:0] inst_2_io_sel; // @[Modules.scala 311:22]
  wire  inst_3_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_in_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_in_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_in_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_in_3_im; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_out_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_out_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_out_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_out_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_3_io_out_3_im; // @[Modules.scala 311:22]
  wire [1:0] inst_3_io_sel; // @[Modules.scala 311:22]
  reg [6:0] cnt_0; // @[FFT.scala 110:46]
  wire  busy = cnt_0 != 7'h0; // @[FFT.scala 114:21]
  wire [6:0] _cnt_0_T_2 = cnt_0 + 7'h1; // @[FFT.scala 116:87]
  wire [3:0] wnCtrl = cnt_0[3:0]; // @[FFT.scala 131:23]
  wire [4:0] _wnList_T = {{1'd0}, wnCtrl}; // @[FFT.scala 135:148]
  wire [16:0] _GEN_2 = 4'h1 == _wnList_T[3:0] ? $signed(17'shfec) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_3 = 4'h2 == _wnList_T[3:0] ? $signed(17'shfb1) : $signed(_GEN_2); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_4 = 4'h3 == _wnList_T[3:0] ? $signed(17'shf50) : $signed(_GEN_3); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_5 = 4'h4 == _wnList_T[3:0] ? $signed(17'shec8) : $signed(_GEN_4); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_6 = 4'h5 == _wnList_T[3:0] ? $signed(17'she1c) : $signed(_GEN_5); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_7 = 4'h6 == _wnList_T[3:0] ? $signed(17'shd4e) : $signed(_GEN_6); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_8 = 4'h7 == _wnList_T[3:0] ? $signed(17'shc5e) : $signed(_GEN_7); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_9 = 4'h8 == _wnList_T[3:0] ? $signed(17'shb50) : $signed(_GEN_8); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_10 = 4'h9 == _wnList_T[3:0] ? $signed(17'sha26) : $signed(_GEN_9); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_11 = 4'ha == _wnList_T[3:0] ? $signed(17'sh8e4) : $signed(_GEN_10); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_12 = 4'hb == _wnList_T[3:0] ? $signed(17'sh78b) : $signed(_GEN_11); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_13 = 4'hc == _wnList_T[3:0] ? $signed(17'sh61f) : $signed(_GEN_12); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_14 = 4'hd == _wnList_T[3:0] ? $signed(17'sh4a5) : $signed(_GEN_13); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_15 = 4'he == _wnList_T[3:0] ? $signed(17'sh31f) : $signed(_GEN_14); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_18 = 4'h1 == _wnList_T[3:0] ? $signed(-17'sh191) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_19 = 4'h2 == _wnList_T[3:0] ? $signed(-17'sh31f) : $signed(_GEN_18); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_20 = 4'h3 == _wnList_T[3:0] ? $signed(-17'sh4a5) : $signed(_GEN_19); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_21 = 4'h4 == _wnList_T[3:0] ? $signed(-17'sh61f) : $signed(_GEN_20); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_22 = 4'h5 == _wnList_T[3:0] ? $signed(-17'sh78b) : $signed(_GEN_21); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_23 = 4'h6 == _wnList_T[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_22); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_24 = 4'h7 == _wnList_T[3:0] ? $signed(-17'sha26) : $signed(_GEN_23); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_25 = 4'h8 == _wnList_T[3:0] ? $signed(-17'shb50) : $signed(_GEN_24); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_26 = 4'h9 == _wnList_T[3:0] ? $signed(-17'shc5e) : $signed(_GEN_25); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_27 = 4'ha == _wnList_T[3:0] ? $signed(-17'shd4e) : $signed(_GEN_26); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_28 = 4'hb == _wnList_T[3:0] ? $signed(-17'she1c) : $signed(_GEN_27); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_29 = 4'hc == _wnList_T[3:0] ? $signed(-17'shec8) : $signed(_GEN_28); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_30 = 4'hd == _wnList_T[3:0] ? $signed(-17'shf50) : $signed(_GEN_29); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_31 = 4'he == _wnList_T[3:0] ? $signed(-17'shfb1) : $signed(_GEN_30); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_34 = 4'h1 == _wnList_T[3:0] ? $signed(17'shfb1) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_35 = 4'h2 == _wnList_T[3:0] ? $signed(17'shec8) : $signed(_GEN_34); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_36 = 4'h3 == _wnList_T[3:0] ? $signed(17'shd4e) : $signed(_GEN_35); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_37 = 4'h4 == _wnList_T[3:0] ? $signed(17'shb50) : $signed(_GEN_36); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_38 = 4'h5 == _wnList_T[3:0] ? $signed(17'sh8e4) : $signed(_GEN_37); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_39 = 4'h6 == _wnList_T[3:0] ? $signed(17'sh61f) : $signed(_GEN_38); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_40 = 4'h7 == _wnList_T[3:0] ? $signed(17'sh31f) : $signed(_GEN_39); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_41 = 4'h8 == _wnList_T[3:0] ? $signed(17'sh0) : $signed(_GEN_40); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_42 = 4'h9 == _wnList_T[3:0] ? $signed(-17'sh31f) : $signed(_GEN_41); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_43 = 4'ha == _wnList_T[3:0] ? $signed(-17'sh61f) : $signed(_GEN_42); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_44 = 4'hb == _wnList_T[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_43); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_45 = 4'hc == _wnList_T[3:0] ? $signed(-17'shb50) : $signed(_GEN_44); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_46 = 4'hd == _wnList_T[3:0] ? $signed(-17'shd4e) : $signed(_GEN_45); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_47 = 4'he == _wnList_T[3:0] ? $signed(-17'shec8) : $signed(_GEN_46); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_50 = 4'h1 == _wnList_T[3:0] ? $signed(-17'sh31f) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_51 = 4'h2 == _wnList_T[3:0] ? $signed(-17'sh61f) : $signed(_GEN_50); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_52 = 4'h3 == _wnList_T[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_51); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_53 = 4'h4 == _wnList_T[3:0] ? $signed(-17'shb50) : $signed(_GEN_52); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_54 = 4'h5 == _wnList_T[3:0] ? $signed(-17'shd4e) : $signed(_GEN_53); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_55 = 4'h6 == _wnList_T[3:0] ? $signed(-17'shec8) : $signed(_GEN_54); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_56 = 4'h7 == _wnList_T[3:0] ? $signed(-17'shfb1) : $signed(_GEN_55); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_57 = 4'h8 == _wnList_T[3:0] ? $signed(-17'sh1000) : $signed(_GEN_56); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_58 = 4'h9 == _wnList_T[3:0] ? $signed(-17'shfb1) : $signed(_GEN_57); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_59 = 4'ha == _wnList_T[3:0] ? $signed(-17'shec8) : $signed(_GEN_58); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_60 = 4'hb == _wnList_T[3:0] ? $signed(-17'shd4e) : $signed(_GEN_59); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_61 = 4'hc == _wnList_T[3:0] ? $signed(-17'shb50) : $signed(_GEN_60); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_62 = 4'hd == _wnList_T[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_61); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_63 = 4'he == _wnList_T[3:0] ? $signed(-17'sh61f) : $signed(_GEN_62); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_66 = 4'h1 == _wnList_T[3:0] ? $signed(17'shf50) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_67 = 4'h2 == _wnList_T[3:0] ? $signed(17'shd4e) : $signed(_GEN_66); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_68 = 4'h3 == _wnList_T[3:0] ? $signed(17'sha26) : $signed(_GEN_67); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_69 = 4'h4 == _wnList_T[3:0] ? $signed(17'sh61f) : $signed(_GEN_68); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_70 = 4'h5 == _wnList_T[3:0] ? $signed(17'sh191) : $signed(_GEN_69); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_71 = 4'h6 == _wnList_T[3:0] ? $signed(-17'sh31f) : $signed(_GEN_70); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_72 = 4'h7 == _wnList_T[3:0] ? $signed(-17'sh78b) : $signed(_GEN_71); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_73 = 4'h8 == _wnList_T[3:0] ? $signed(-17'shb50) : $signed(_GEN_72); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_74 = 4'h9 == _wnList_T[3:0] ? $signed(-17'she1c) : $signed(_GEN_73); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_75 = 4'ha == _wnList_T[3:0] ? $signed(-17'shfb1) : $signed(_GEN_74); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_76 = 4'hb == _wnList_T[3:0] ? $signed(-17'shfec) : $signed(_GEN_75); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_77 = 4'hc == _wnList_T[3:0] ? $signed(-17'shec8) : $signed(_GEN_76); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_78 = 4'hd == _wnList_T[3:0] ? $signed(-17'shc5e) : $signed(_GEN_77); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_79 = 4'he == _wnList_T[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_78); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_82 = 4'h1 == _wnList_T[3:0] ? $signed(-17'sh4a5) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_83 = 4'h2 == _wnList_T[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_82); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_84 = 4'h3 == _wnList_T[3:0] ? $signed(-17'shc5e) : $signed(_GEN_83); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_85 = 4'h4 == _wnList_T[3:0] ? $signed(-17'shec8) : $signed(_GEN_84); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_86 = 4'h5 == _wnList_T[3:0] ? $signed(-17'shfec) : $signed(_GEN_85); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_87 = 4'h6 == _wnList_T[3:0] ? $signed(-17'shfb1) : $signed(_GEN_86); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_88 = 4'h7 == _wnList_T[3:0] ? $signed(-17'she1c) : $signed(_GEN_87); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_89 = 4'h8 == _wnList_T[3:0] ? $signed(-17'shb50) : $signed(_GEN_88); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_90 = 4'h9 == _wnList_T[3:0] ? $signed(-17'sh78b) : $signed(_GEN_89); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_91 = 4'ha == _wnList_T[3:0] ? $signed(-17'sh31f) : $signed(_GEN_90); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_92 = 4'hb == _wnList_T[3:0] ? $signed(17'sh191) : $signed(_GEN_91); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_93 = 4'hc == _wnList_T[3:0] ? $signed(17'sh61f) : $signed(_GEN_92); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_94 = 4'hd == _wnList_T[3:0] ? $signed(17'sha26) : $signed(_GEN_93); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_95 = 4'he == _wnList_T[3:0] ? $signed(17'shd4e) : $signed(_GEN_94); // @[FFT.scala 73:{12,12}]
  wire [1:0] wnCtrl_1 = cnt_0[1:0]; // @[FFT.scala 131:23]
  wire [2:0] _wnList_T_6 = {{1'd0}, wnCtrl_1}; // @[FFT.scala 135:148]
  wire [16:0] _GEN_98 = 2'h1 == _wnList_T_6[1:0] ? $signed(17'shec8) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_99 = 2'h2 == _wnList_T_6[1:0] ? $signed(17'shb50) : $signed(_GEN_98); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_102 = 2'h1 == _wnList_T_6[1:0] ? $signed(-17'sh61f) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_103 = 2'h2 == _wnList_T_6[1:0] ? $signed(-17'shb50) : $signed(_GEN_102); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_106 = 2'h1 == _wnList_T_6[1:0] ? $signed(17'shb50) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_107 = 2'h2 == _wnList_T_6[1:0] ? $signed(17'sh0) : $signed(_GEN_106); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_110 = 2'h1 == _wnList_T_6[1:0] ? $signed(-17'shb50) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_111 = 2'h2 == _wnList_T_6[1:0] ? $signed(-17'sh1000) : $signed(_GEN_110); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_114 = 2'h1 == _wnList_T_6[1:0] ? $signed(17'sh61f) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_115 = 2'h2 == _wnList_T_6[1:0] ? $signed(-17'shb50) : $signed(_GEN_114); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_118 = 2'h1 == _wnList_T_6[1:0] ? $signed(-17'shec8) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_119 = 2'h2 == _wnList_T_6[1:0] ? $signed(-17'shb50) : $signed(_GEN_118); // @[FFT.scala 73:{12,12}]
  reg [6:0] io_dout_valid_REG; // @[FFT.scala 179:27]
  reg [16:0] REG_0_re; // @[FFT.scala 184:23]
  reg [16:0] REG_0_im; // @[FFT.scala 184:23]
  reg [16:0] REG_1_re; // @[FFT.scala 184:23]
  reg [16:0] REG_1_im; // @[FFT.scala 184:23]
  reg [16:0] REG_2_re; // @[FFT.scala 184:23]
  reg [16:0] REG_2_im; // @[FFT.scala 184:23]
  reg [16:0] REG_3_re; // @[FFT.scala 184:23]
  reg [16:0] REG_3_im; // @[FFT.scala 184:23]
  ButterflyMul inst ( // @[Modules.scala 287:22]
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
  ButterflyMul inst_1 ( // @[Modules.scala 287:22]
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
  ButterflyAdd dataotemp_inst ( // @[Modules.scala 213:22]
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
  Switch inst_2 ( // @[Modules.scala 311:22]
    .clock(inst_2_clock),
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
    .io_sel(inst_2_io_sel)
  );
  Switch_1 inst_3 ( // @[Modules.scala 311:22]
    .clock(inst_3_clock),
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
    .io_sel(inst_3_io_sel)
  );
  assign io_dOut_0_re = REG_0_re; // @[FFT.scala 184:13]
  assign io_dOut_0_im = REG_0_im; // @[FFT.scala 184:13]
  assign io_dOut_1_re = REG_1_re; // @[FFT.scala 184:13]
  assign io_dOut_1_im = REG_1_im; // @[FFT.scala 184:13]
  assign io_dOut_2_re = REG_2_re; // @[FFT.scala 184:13]
  assign io_dOut_2_im = REG_2_im; // @[FFT.scala 184:13]
  assign io_dOut_3_re = REG_3_re; // @[FFT.scala 184:13]
  assign io_dOut_3_im = REG_3_im; // @[FFT.scala 184:13]
  assign io_dout_valid = io_dout_valid_REG == 7'hf; // @[FFT.scala 179:36]
  assign io_busy = cnt_0 != 7'h0; // @[FFT.scala 114:21]
  assign inst_io_in_0_re = io_dIn_0_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_0_im = io_dIn_0_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_1_re = io_dIn_1_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_1_im = io_dIn_1_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_2_re = io_dIn_2_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_2_im = io_dIn_2_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_3_re = io_dIn_3_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_3_im = io_dIn_3_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_wn_0_re = 4'hf == _wnList_T[3:0] ? $signed(17'sh191) : $signed(_GEN_15); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_0_im = 4'hf == _wnList_T[3:0] ? $signed(-17'shfec) : $signed(_GEN_31); // @[FFT.scala 73:{12,12}]
  assign inst_io_wn_1_re = 4'hf == _wnList_T[3:0] ? $signed(-17'shfb1) : $signed(_GEN_47); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_1_im = 4'hf == _wnList_T[3:0] ? $signed(-17'sh31f) : $signed(_GEN_63); // @[FFT.scala 73:{12,12}]
  assign inst_io_wn_2_re = 4'hf == _wnList_T[3:0] ? $signed(-17'sh4a5) : $signed(_GEN_79); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_2_im = 4'hf == _wnList_T[3:0] ? $signed(17'shf50) : $signed(_GEN_95); // @[FFT.scala 73:{12,12}]
  assign inst_1_io_in_0_re = inst_2_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign inst_1_io_in_0_im = inst_2_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign inst_1_io_in_1_re = inst_2_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign inst_1_io_in_1_im = inst_2_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign inst_1_io_in_2_re = inst_2_io_out_2_re; // @[FFT.scala 122:65 164:54]
  assign inst_1_io_in_2_im = inst_2_io_out_2_im; // @[FFT.scala 122:65 164:54]
  assign inst_1_io_in_3_re = inst_2_io_out_3_re; // @[FFT.scala 122:65 164:54]
  assign inst_1_io_in_3_im = inst_2_io_out_3_im; // @[FFT.scala 122:65 164:54]
  assign inst_1_io_wn_0_re = 2'h3 == _wnList_T_6[1:0] ? $signed(17'sh61f) : $signed(_GEN_99); // @[FFT.scala 72:{12,12}]
  assign inst_1_io_wn_0_im = 2'h3 == _wnList_T_6[1:0] ? $signed(-17'shec8) : $signed(_GEN_103); // @[FFT.scala 73:{12,12}]
  assign inst_1_io_wn_1_re = 2'h3 == _wnList_T_6[1:0] ? $signed(-17'shb50) : $signed(_GEN_107); // @[FFT.scala 72:{12,12}]
  assign inst_1_io_wn_1_im = 2'h3 == _wnList_T_6[1:0] ? $signed(-17'shb50) : $signed(_GEN_111); // @[FFT.scala 73:{12,12}]
  assign inst_1_io_wn_2_re = 2'h3 == _wnList_T_6[1:0] ? $signed(-17'shec8) : $signed(_GEN_115); // @[FFT.scala 72:{12,12}]
  assign inst_1_io_wn_2_im = 2'h3 == _wnList_T_6[1:0] ? $signed(17'sh61f) : $signed(_GEN_119); // @[FFT.scala 73:{12,12}]
  assign dataotemp_inst_io_in_0_re = inst_3_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_0_im = inst_3_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_1_re = inst_3_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_1_im = inst_3_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_2_re = inst_3_io_out_2_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_2_im = inst_3_io_out_2_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_3_re = inst_3_io_out_3_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_3_im = inst_3_io_out_3_im; // @[FFT.scala 122:65 164:54]
  assign inst_2_clock = clock;
  assign inst_2_io_in_0_re = inst_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_2_io_in_0_im = inst_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_2_io_in_1_re = inst_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_2_io_in_1_im = inst_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_2_io_in_2_re = inst_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign inst_2_io_in_2_im = inst_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign inst_2_io_in_3_re = inst_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign inst_2_io_in_3_im = inst_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign inst_2_io_sel = cnt_0[3:2]; // @[FFT.scala 163:31]
  assign inst_3_clock = clock;
  assign inst_3_io_in_0_re = inst_1_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_3_io_in_0_im = inst_1_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_3_io_in_1_re = inst_1_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_3_io_in_1_im = inst_1_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_3_io_in_2_re = inst_1_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign inst_3_io_in_2_im = inst_1_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign inst_3_io_in_3_re = inst_1_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign inst_3_io_in_3_im = inst_1_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign inst_3_io_sel = cnt_0[1:0]; // @[FFT.scala 163:31]
  always @(posedge clock) begin
    if (reset) begin // @[FFT.scala 110:46]
      cnt_0 <= 7'h0; // @[FFT.scala 110:46]
    end else if (io_din_valid | busy) begin // @[FFT.scala 115:30]
      if (cnt_0 == 7'h1f) begin // @[FFT.scala 116:18]
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
  output [16:0] io_dOut_0_re,
  output [16:0] io_dOut_0_im,
  output [16:0] io_dOut_1_re,
  output [16:0] io_dOut_1_im,
  output [16:0] io_dOut_2_re,
  output [16:0] io_dOut_2_im,
  output [16:0] io_dOut_3_re,
  output [16:0] io_dOut_3_im,
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
  wire [16:0] fft_io_dOut_0_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_0_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_1_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_1_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_2_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_2_im; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_3_re; // @[Top.scala 15:19]
  wire [16:0] fft_io_dOut_3_im; // @[Top.scala 15:19]
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
    .io_dOut_0_re(fft_io_dOut_0_re),
    .io_dOut_0_im(fft_io_dOut_0_im),
    .io_dOut_1_re(fft_io_dOut_1_re),
    .io_dOut_1_im(fft_io_dOut_1_im),
    .io_dOut_2_re(fft_io_dOut_2_re),
    .io_dOut_2_im(fft_io_dOut_2_im),
    .io_dOut_3_re(fft_io_dOut_3_re),
    .io_dOut_3_im(fft_io_dOut_3_im),
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
  assign fft_io_din_valid = io_din_valid; // @[Top.scala 17:20]
endmodule
