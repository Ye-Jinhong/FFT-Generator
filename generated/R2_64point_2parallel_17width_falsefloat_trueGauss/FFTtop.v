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
module ComplexMul(
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
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  input  [16:0] io_wn_0_re,
  input  [16:0] io_wn_0_im
);
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
  wire [16:0] io_out_1_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_res_im; // @[Modules.scala 158:22]
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
  ComplexMul io_out_1_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  assign io_out_0_re = temp_0_inst_io_res_re; // @[Modules.scala 224:21 226:13]
  assign io_out_0_im = temp_0_inst_io_res_im; // @[Modules.scala 224:21 226:13]
  assign io_out_1_re = io_out_1_inst_io_res_re; // @[Modules.scala 267:15]
  assign io_out_1_im = io_out_1_inst_io_res_im; // @[Modules.scala 267:15]
  assign temp_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign temp_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign temp_0_inst_io_op2_re = io_in_1_re; // @[Modules.scala 83:17]
  assign temp_0_inst_io_op2_im = io_in_1_im; // @[Modules.scala 83:17]
  assign temp_1_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign temp_1_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign temp_1_inst_io_op2_re = io_in_1_re; // @[Modules.scala 102:17]
  assign temp_1_inst_io_op2_im = io_in_1_im; // @[Modules.scala 102:17]
  assign io_out_1_inst_io_op1_re = temp_1_inst_io_res_re; // @[Modules.scala 224:21 227:13]
  assign io_out_1_inst_io_op1_im = temp_1_inst_io_res_im; // @[Modules.scala 224:21 227:13]
  assign io_out_1_inst_io_op2_re = io_wn_0_re; // @[Modules.scala 160:17]
  assign io_out_1_inst_io_op2_im = io_wn_0_im; // @[Modules.scala 160:17]
endmodule
module ButterflyAdd(
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im
);
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
  assign io_out_0_re = io_out_0_inst_io_res_re; // @[Modules.scala 170:15]
  assign io_out_0_im = io_out_0_inst_io_res_im; // @[Modules.scala 170:15]
  assign io_out_1_re = io_out_1_inst_io_res_re; // @[Modules.scala 171:15]
  assign io_out_1_im = io_out_1_inst_io_res_im; // @[Modules.scala 171:15]
  assign io_out_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign io_out_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign io_out_0_inst_io_op2_re = io_in_1_re; // @[Modules.scala 83:17]
  assign io_out_0_inst_io_op2_im = io_in_1_im; // @[Modules.scala 83:17]
  assign io_out_1_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign io_out_1_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign io_out_1_inst_io_op2_re = io_in_1_re; // @[Modules.scala 102:17]
  assign io_out_1_inst_io_op2_im = io_in_1_im; // @[Modules.scala 102:17]
endmodule
module Exchange(
  input  [16:0] io_in_0_0_re,
  input  [16:0] io_in_0_0_im,
  input  [16:0] io_in_0_1_re,
  input  [16:0] io_in_0_1_im,
  input  [16:0] io_in_1_0_re,
  input  [16:0] io_in_1_0_im,
  input  [16:0] io_in_1_1_re,
  input  [16:0] io_in_1_1_im,
  output [16:0] io_out_0_0_re,
  output [16:0] io_out_0_0_im,
  output [16:0] io_out_0_1_re,
  output [16:0] io_out_0_1_im,
  output [16:0] io_out_1_0_re,
  output [16:0] io_out_1_0_im,
  output [16:0] io_out_1_1_re,
  output [16:0] io_out_1_1_im
);
  assign io_out_0_0_re = io_in_0_0_re; // @[Modules.scala 324:20]
  assign io_out_0_0_im = io_in_0_0_im; // @[Modules.scala 324:20]
  assign io_out_0_1_re = io_in_1_0_re; // @[Modules.scala 324:20]
  assign io_out_0_1_im = io_in_1_0_im; // @[Modules.scala 324:20]
  assign io_out_1_0_re = io_in_0_1_re; // @[Modules.scala 324:20]
  assign io_out_1_0_im = io_in_0_1_im; // @[Modules.scala 324:20]
  assign io_out_1_1_re = io_in_1_1_re; // @[Modules.scala 324:20]
  assign io_out_1_1_im = io_in_1_1_im; // @[Modules.scala 324:20]
endmodule
module Switch(
  input         clock,
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  input         io_sel
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
`endif // RANDOMIZE_REG_INIT
  reg [16:0] swdata_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_4_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_4_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_5_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_5_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_6_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_6_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_7_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_7_im; // @[Reg.scala 19:16]
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
  assign io_out_0_re = io_out_0_r_7_re; // @[Modules.scala 306:38]
  assign io_out_0_im = io_out_0_r_7_im; // @[Modules.scala 306:38]
  assign io_out_1_re = io_sel ? $signed(io_in_0_re) : $signed(swdata_1_r_7_re); // @[Modules.scala 306:{38,38}]
  assign io_out_1_im = io_sel ? $signed(io_in_0_im) : $signed(swdata_1_r_7_im); // @[Modules.scala 306:{38,38}]
  always @(posedge clock) begin
    swdata_1_r_re <= io_in_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_im <= io_in_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_1_re <= swdata_1_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_1_im <= swdata_1_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_2_re <= swdata_1_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_2_im <= swdata_1_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_3_re <= swdata_1_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_3_im <= swdata_1_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_4_re <= swdata_1_r_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_4_im <= swdata_1_r_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_5_re <= swdata_1_r_4_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_5_im <= swdata_1_r_4_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_6_re <= swdata_1_r_5_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_6_im <= swdata_1_r_5_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_7_re <= swdata_1_r_6_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_7_im <= swdata_1_r_6_im; // @[Reg.scala 19:16 20:{18,22}]
    if (io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_1_r_7_re; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_re <= io_in_0_re;
    end
    if (io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_1_r_7_im; // @[Reg.scala 20:22]
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
  swdata_1_r_4_re = _RAND_8[16:0];
  _RAND_9 = {1{`RANDOM}};
  swdata_1_r_4_im = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  swdata_1_r_5_re = _RAND_10[16:0];
  _RAND_11 = {1{`RANDOM}};
  swdata_1_r_5_im = _RAND_11[16:0];
  _RAND_12 = {1{`RANDOM}};
  swdata_1_r_6_re = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  swdata_1_r_6_im = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  swdata_1_r_7_re = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  swdata_1_r_7_im = _RAND_15[16:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_0_r_re = _RAND_16[16:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_17[16:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_0_r_1_re = _RAND_18[16:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_0_r_1_im = _RAND_19[16:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_0_r_2_re = _RAND_20[16:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_0_r_2_im = _RAND_21[16:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_0_r_3_re = _RAND_22[16:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_0_r_3_im = _RAND_23[16:0];
  _RAND_24 = {1{`RANDOM}};
  io_out_0_r_4_re = _RAND_24[16:0];
  _RAND_25 = {1{`RANDOM}};
  io_out_0_r_4_im = _RAND_25[16:0];
  _RAND_26 = {1{`RANDOM}};
  io_out_0_r_5_re = _RAND_26[16:0];
  _RAND_27 = {1{`RANDOM}};
  io_out_0_r_5_im = _RAND_27[16:0];
  _RAND_28 = {1{`RANDOM}};
  io_out_0_r_6_re = _RAND_28[16:0];
  _RAND_29 = {1{`RANDOM}};
  io_out_0_r_6_im = _RAND_29[16:0];
  _RAND_30 = {1{`RANDOM}};
  io_out_0_r_7_re = _RAND_30[16:0];
  _RAND_31 = {1{`RANDOM}};
  io_out_0_r_7_im = _RAND_31[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Switch_2(
  input         clock,
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  input         io_sel
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
`endif // RANDOMIZE_REG_INIT
  reg [16:0] swdata_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_3_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_3_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_3_im; // @[Reg.scala 19:16]
  assign io_out_0_re = io_out_0_r_3_re; // @[Modules.scala 306:38]
  assign io_out_0_im = io_out_0_r_3_im; // @[Modules.scala 306:38]
  assign io_out_1_re = io_sel ? $signed(io_in_0_re) : $signed(swdata_1_r_3_re); // @[Modules.scala 306:{38,38}]
  assign io_out_1_im = io_sel ? $signed(io_in_0_im) : $signed(swdata_1_r_3_im); // @[Modules.scala 306:{38,38}]
  always @(posedge clock) begin
    swdata_1_r_re <= io_in_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_im <= io_in_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_1_re <= swdata_1_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_1_im <= swdata_1_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_2_re <= swdata_1_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_2_im <= swdata_1_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_3_re <= swdata_1_r_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_3_im <= swdata_1_r_2_im; // @[Reg.scala 19:16 20:{18,22}]
    if (io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_1_r_3_re; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_re <= io_in_0_re;
    end
    if (io_sel) begin // @[Reg.scala 20:22]
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
  io_out_0_r_re = _RAND_8[16:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_0_r_1_re = _RAND_10[16:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_0_r_1_im = _RAND_11[16:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_0_r_2_re = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_0_r_2_im = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_0_r_3_re = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_0_r_3_im = _RAND_15[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Switch_4(
  input         clock,
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  input         io_sel
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
`endif // RANDOMIZE_REG_INIT
  reg [16:0] swdata_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_im; // @[Reg.scala 19:16]
  assign io_out_0_re = io_out_0_r_1_re; // @[Modules.scala 306:38]
  assign io_out_0_im = io_out_0_r_1_im; // @[Modules.scala 306:38]
  assign io_out_1_re = io_sel ? $signed(io_in_0_re) : $signed(swdata_1_r_1_re); // @[Modules.scala 306:{38,38}]
  assign io_out_1_im = io_sel ? $signed(io_in_0_im) : $signed(swdata_1_r_1_im); // @[Modules.scala 306:{38,38}]
  always @(posedge clock) begin
    swdata_1_r_re <= io_in_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_im <= io_in_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_1_re <= swdata_1_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_1_im <= swdata_1_r_im; // @[Reg.scala 19:16 20:{18,22}]
    if (io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_1_r_1_re; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_re <= io_in_0_re;
    end
    if (io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_1_r_1_im; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_im <= io_in_0_im;
    end
    io_out_0_r_1_re <= io_out_0_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_1_im <= io_out_0_r_im; // @[Reg.scala 19:16 20:{18,22}]
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
  io_out_0_r_re = _RAND_4[16:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_0_r_1_re = _RAND_6[16:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_0_r_1_im = _RAND_7[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Switch_6(
  input         clock,
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  input         io_sel
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [16:0] swdata_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_im; // @[Reg.scala 19:16]
  assign io_out_0_re = io_out_0_r_re; // @[Modules.scala 306:38]
  assign io_out_0_im = io_out_0_r_im; // @[Modules.scala 306:38]
  assign io_out_1_re = io_sel ? $signed(io_in_0_re) : $signed(swdata_1_r_re); // @[Modules.scala 306:{38,38}]
  assign io_out_1_im = io_sel ? $signed(io_in_0_im) : $signed(swdata_1_r_im); // @[Modules.scala 306:{38,38}]
  always @(posedge clock) begin
    swdata_1_r_re <= io_in_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_im <= io_in_1_im; // @[Reg.scala 19:16 20:{18,22}]
    if (io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_re <= io_in_0_re;
    end
    if (io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_im <= io_in_0_im;
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
  io_out_0_r_re = _RAND_2[16:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_3[16:0];
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
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire [16:0] inst_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_8_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_9_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] dataotemp_inst_io_in_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_1_im; // @[Modules.scala 213:22]
  wire [16:0] exdata_inst_io_in_0_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_1_im; // @[Modules.scala 331:22]
  wire  inst_10_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_1_im; // @[Modules.scala 311:22]
  wire  inst_10_io_sel; // @[Modules.scala 311:22]
  wire  inst_11_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_1_im; // @[Modules.scala 311:22]
  wire  inst_11_io_sel; // @[Modules.scala 311:22]
  wire  inst_12_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_12_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_12_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_12_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_12_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_12_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_12_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_12_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_12_io_out_1_im; // @[Modules.scala 311:22]
  wire  inst_12_io_sel; // @[Modules.scala 311:22]
  wire  inst_13_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_13_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_13_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_13_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_13_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_13_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_13_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_13_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_13_io_out_1_im; // @[Modules.scala 311:22]
  wire  inst_13_io_sel; // @[Modules.scala 311:22]
  wire  inst_14_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_14_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_14_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_14_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_14_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_14_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_14_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_14_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_14_io_out_1_im; // @[Modules.scala 311:22]
  wire  inst_14_io_sel; // @[Modules.scala 311:22]
  wire  inst_15_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_15_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_15_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_15_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_15_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_15_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_15_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_15_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_15_io_out_1_im; // @[Modules.scala 311:22]
  wire  inst_15_io_sel; // @[Modules.scala 311:22]
  wire  inst_16_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_16_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_16_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_16_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_16_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_16_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_16_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_16_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_16_io_out_1_im; // @[Modules.scala 311:22]
  wire  inst_16_io_sel; // @[Modules.scala 311:22]
  wire  inst_17_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_17_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_17_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_17_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_17_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_17_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_17_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_17_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_17_io_out_1_im; // @[Modules.scala 311:22]
  wire  inst_17_io_sel; // @[Modules.scala 311:22]
  reg [5:0] cnt_0; // @[FFT.scala 110:46]
  reg [5:0] cnt_1; // @[FFT.scala 110:46]
  wire  busy = cnt_0 != 6'h0; // @[FFT.scala 114:21]
  wire [5:0] _cnt_0_T_2 = cnt_0 + 6'h1; // @[FFT.scala 116:87]
  wire [6:0] _wnList_T = {{1'd0}, cnt_0}; // @[FFT.scala 135:148]
  wire [16:0] _GEN_2 = 5'h1 == _wnList_T[4:0] ? $signed(17'shfec) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_3 = 5'h2 == _wnList_T[4:0] ? $signed(17'shfb1) : $signed(_GEN_2); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_4 = 5'h3 == _wnList_T[4:0] ? $signed(17'shf50) : $signed(_GEN_3); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_5 = 5'h4 == _wnList_T[4:0] ? $signed(17'shec8) : $signed(_GEN_4); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_6 = 5'h5 == _wnList_T[4:0] ? $signed(17'she1c) : $signed(_GEN_5); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_7 = 5'h6 == _wnList_T[4:0] ? $signed(17'shd4e) : $signed(_GEN_6); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_8 = 5'h7 == _wnList_T[4:0] ? $signed(17'shc5e) : $signed(_GEN_7); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_9 = 5'h8 == _wnList_T[4:0] ? $signed(17'shb50) : $signed(_GEN_8); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_10 = 5'h9 == _wnList_T[4:0] ? $signed(17'sha26) : $signed(_GEN_9); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_11 = 5'ha == _wnList_T[4:0] ? $signed(17'sh8e4) : $signed(_GEN_10); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_12 = 5'hb == _wnList_T[4:0] ? $signed(17'sh78b) : $signed(_GEN_11); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_13 = 5'hc == _wnList_T[4:0] ? $signed(17'sh61f) : $signed(_GEN_12); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_14 = 5'hd == _wnList_T[4:0] ? $signed(17'sh4a5) : $signed(_GEN_13); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_15 = 5'he == _wnList_T[4:0] ? $signed(17'sh31f) : $signed(_GEN_14); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_16 = 5'hf == _wnList_T[4:0] ? $signed(17'sh191) : $signed(_GEN_15); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_17 = 5'h10 == _wnList_T[4:0] ? $signed(17'sh0) : $signed(_GEN_16); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_18 = 5'h11 == _wnList_T[4:0] ? $signed(-17'sh191) : $signed(_GEN_17); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_19 = 5'h12 == _wnList_T[4:0] ? $signed(-17'sh31f) : $signed(_GEN_18); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_20 = 5'h13 == _wnList_T[4:0] ? $signed(-17'sh4a5) : $signed(_GEN_19); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_21 = 5'h14 == _wnList_T[4:0] ? $signed(-17'sh61f) : $signed(_GEN_20); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_22 = 5'h15 == _wnList_T[4:0] ? $signed(-17'sh78b) : $signed(_GEN_21); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_23 = 5'h16 == _wnList_T[4:0] ? $signed(-17'sh8e4) : $signed(_GEN_22); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_24 = 5'h17 == _wnList_T[4:0] ? $signed(-17'sha26) : $signed(_GEN_23); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_25 = 5'h18 == _wnList_T[4:0] ? $signed(-17'shb50) : $signed(_GEN_24); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_26 = 5'h19 == _wnList_T[4:0] ? $signed(-17'shc5e) : $signed(_GEN_25); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_27 = 5'h1a == _wnList_T[4:0] ? $signed(-17'shd4e) : $signed(_GEN_26); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_28 = 5'h1b == _wnList_T[4:0] ? $signed(-17'she1c) : $signed(_GEN_27); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_29 = 5'h1c == _wnList_T[4:0] ? $signed(-17'shec8) : $signed(_GEN_28); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_30 = 5'h1d == _wnList_T[4:0] ? $signed(-17'shf50) : $signed(_GEN_29); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_31 = 5'h1e == _wnList_T[4:0] ? $signed(-17'shfb1) : $signed(_GEN_30); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_34 = 5'h1 == _wnList_T[4:0] ? $signed(-17'sh191) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_35 = 5'h2 == _wnList_T[4:0] ? $signed(-17'sh31f) : $signed(_GEN_34); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_36 = 5'h3 == _wnList_T[4:0] ? $signed(-17'sh4a5) : $signed(_GEN_35); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_37 = 5'h4 == _wnList_T[4:0] ? $signed(-17'sh61f) : $signed(_GEN_36); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_38 = 5'h5 == _wnList_T[4:0] ? $signed(-17'sh78b) : $signed(_GEN_37); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_39 = 5'h6 == _wnList_T[4:0] ? $signed(-17'sh8e4) : $signed(_GEN_38); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_40 = 5'h7 == _wnList_T[4:0] ? $signed(-17'sha26) : $signed(_GEN_39); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_41 = 5'h8 == _wnList_T[4:0] ? $signed(-17'shb50) : $signed(_GEN_40); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_42 = 5'h9 == _wnList_T[4:0] ? $signed(-17'shc5e) : $signed(_GEN_41); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_43 = 5'ha == _wnList_T[4:0] ? $signed(-17'shd4e) : $signed(_GEN_42); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_44 = 5'hb == _wnList_T[4:0] ? $signed(-17'she1c) : $signed(_GEN_43); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_45 = 5'hc == _wnList_T[4:0] ? $signed(-17'shec8) : $signed(_GEN_44); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_46 = 5'hd == _wnList_T[4:0] ? $signed(-17'shf50) : $signed(_GEN_45); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_47 = 5'he == _wnList_T[4:0] ? $signed(-17'shfb1) : $signed(_GEN_46); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_48 = 5'hf == _wnList_T[4:0] ? $signed(-17'shfec) : $signed(_GEN_47); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_49 = 5'h10 == _wnList_T[4:0] ? $signed(-17'sh1000) : $signed(_GEN_48); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_50 = 5'h11 == _wnList_T[4:0] ? $signed(-17'shfec) : $signed(_GEN_49); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_51 = 5'h12 == _wnList_T[4:0] ? $signed(-17'shfb1) : $signed(_GEN_50); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_52 = 5'h13 == _wnList_T[4:0] ? $signed(-17'shf50) : $signed(_GEN_51); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_53 = 5'h14 == _wnList_T[4:0] ? $signed(-17'shec8) : $signed(_GEN_52); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_54 = 5'h15 == _wnList_T[4:0] ? $signed(-17'she1c) : $signed(_GEN_53); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_55 = 5'h16 == _wnList_T[4:0] ? $signed(-17'shd4e) : $signed(_GEN_54); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_56 = 5'h17 == _wnList_T[4:0] ? $signed(-17'shc5e) : $signed(_GEN_55); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_57 = 5'h18 == _wnList_T[4:0] ? $signed(-17'shb50) : $signed(_GEN_56); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_58 = 5'h19 == _wnList_T[4:0] ? $signed(-17'sha26) : $signed(_GEN_57); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_59 = 5'h1a == _wnList_T[4:0] ? $signed(-17'sh8e4) : $signed(_GEN_58); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_60 = 5'h1b == _wnList_T[4:0] ? $signed(-17'sh78b) : $signed(_GEN_59); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_61 = 5'h1c == _wnList_T[4:0] ? $signed(-17'sh61f) : $signed(_GEN_60); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_62 = 5'h1d == _wnList_T[4:0] ? $signed(-17'sh4a5) : $signed(_GEN_61); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_63 = 5'h1e == _wnList_T[4:0] ? $signed(-17'sh31f) : $signed(_GEN_62); // @[FFT.scala 73:{12,12}]
  wire [5:0] _wnList_T_3 = 6'h10 + cnt_0; // @[FFT.scala 135:148]
  wire [16:0] _GEN_66 = 5'h1 == _wnList_T_3[4:0] ? $signed(17'shfec) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_67 = 5'h2 == _wnList_T_3[4:0] ? $signed(17'shfb1) : $signed(_GEN_66); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_68 = 5'h3 == _wnList_T_3[4:0] ? $signed(17'shf50) : $signed(_GEN_67); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_69 = 5'h4 == _wnList_T_3[4:0] ? $signed(17'shec8) : $signed(_GEN_68); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_70 = 5'h5 == _wnList_T_3[4:0] ? $signed(17'she1c) : $signed(_GEN_69); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_71 = 5'h6 == _wnList_T_3[4:0] ? $signed(17'shd4e) : $signed(_GEN_70); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_72 = 5'h7 == _wnList_T_3[4:0] ? $signed(17'shc5e) : $signed(_GEN_71); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_73 = 5'h8 == _wnList_T_3[4:0] ? $signed(17'shb50) : $signed(_GEN_72); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_74 = 5'h9 == _wnList_T_3[4:0] ? $signed(17'sha26) : $signed(_GEN_73); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_75 = 5'ha == _wnList_T_3[4:0] ? $signed(17'sh8e4) : $signed(_GEN_74); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_76 = 5'hb == _wnList_T_3[4:0] ? $signed(17'sh78b) : $signed(_GEN_75); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_77 = 5'hc == _wnList_T_3[4:0] ? $signed(17'sh61f) : $signed(_GEN_76); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_78 = 5'hd == _wnList_T_3[4:0] ? $signed(17'sh4a5) : $signed(_GEN_77); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_79 = 5'he == _wnList_T_3[4:0] ? $signed(17'sh31f) : $signed(_GEN_78); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_80 = 5'hf == _wnList_T_3[4:0] ? $signed(17'sh191) : $signed(_GEN_79); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_81 = 5'h10 == _wnList_T_3[4:0] ? $signed(17'sh0) : $signed(_GEN_80); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_82 = 5'h11 == _wnList_T_3[4:0] ? $signed(-17'sh191) : $signed(_GEN_81); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_83 = 5'h12 == _wnList_T_3[4:0] ? $signed(-17'sh31f) : $signed(_GEN_82); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_84 = 5'h13 == _wnList_T_3[4:0] ? $signed(-17'sh4a5) : $signed(_GEN_83); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_85 = 5'h14 == _wnList_T_3[4:0] ? $signed(-17'sh61f) : $signed(_GEN_84); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_86 = 5'h15 == _wnList_T_3[4:0] ? $signed(-17'sh78b) : $signed(_GEN_85); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_87 = 5'h16 == _wnList_T_3[4:0] ? $signed(-17'sh8e4) : $signed(_GEN_86); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_88 = 5'h17 == _wnList_T_3[4:0] ? $signed(-17'sha26) : $signed(_GEN_87); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_89 = 5'h18 == _wnList_T_3[4:0] ? $signed(-17'shb50) : $signed(_GEN_88); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_90 = 5'h19 == _wnList_T_3[4:0] ? $signed(-17'shc5e) : $signed(_GEN_89); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_91 = 5'h1a == _wnList_T_3[4:0] ? $signed(-17'shd4e) : $signed(_GEN_90); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_92 = 5'h1b == _wnList_T_3[4:0] ? $signed(-17'she1c) : $signed(_GEN_91); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_93 = 5'h1c == _wnList_T_3[4:0] ? $signed(-17'shec8) : $signed(_GEN_92); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_94 = 5'h1d == _wnList_T_3[4:0] ? $signed(-17'shf50) : $signed(_GEN_93); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_95 = 5'h1e == _wnList_T_3[4:0] ? $signed(-17'shfb1) : $signed(_GEN_94); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_98 = 5'h1 == _wnList_T_3[4:0] ? $signed(-17'sh191) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_99 = 5'h2 == _wnList_T_3[4:0] ? $signed(-17'sh31f) : $signed(_GEN_98); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_100 = 5'h3 == _wnList_T_3[4:0] ? $signed(-17'sh4a5) : $signed(_GEN_99); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_101 = 5'h4 == _wnList_T_3[4:0] ? $signed(-17'sh61f) : $signed(_GEN_100); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_102 = 5'h5 == _wnList_T_3[4:0] ? $signed(-17'sh78b) : $signed(_GEN_101); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_103 = 5'h6 == _wnList_T_3[4:0] ? $signed(-17'sh8e4) : $signed(_GEN_102); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_104 = 5'h7 == _wnList_T_3[4:0] ? $signed(-17'sha26) : $signed(_GEN_103); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_105 = 5'h8 == _wnList_T_3[4:0] ? $signed(-17'shb50) : $signed(_GEN_104); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_106 = 5'h9 == _wnList_T_3[4:0] ? $signed(-17'shc5e) : $signed(_GEN_105); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_107 = 5'ha == _wnList_T_3[4:0] ? $signed(-17'shd4e) : $signed(_GEN_106); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_108 = 5'hb == _wnList_T_3[4:0] ? $signed(-17'she1c) : $signed(_GEN_107); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_109 = 5'hc == _wnList_T_3[4:0] ? $signed(-17'shec8) : $signed(_GEN_108); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_110 = 5'hd == _wnList_T_3[4:0] ? $signed(-17'shf50) : $signed(_GEN_109); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_111 = 5'he == _wnList_T_3[4:0] ? $signed(-17'shfb1) : $signed(_GEN_110); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_112 = 5'hf == _wnList_T_3[4:0] ? $signed(-17'shfec) : $signed(_GEN_111); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_113 = 5'h10 == _wnList_T_3[4:0] ? $signed(-17'sh1000) : $signed(_GEN_112); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_114 = 5'h11 == _wnList_T_3[4:0] ? $signed(-17'shfec) : $signed(_GEN_113); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_115 = 5'h12 == _wnList_T_3[4:0] ? $signed(-17'shfb1) : $signed(_GEN_114); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_116 = 5'h13 == _wnList_T_3[4:0] ? $signed(-17'shf50) : $signed(_GEN_115); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_117 = 5'h14 == _wnList_T_3[4:0] ? $signed(-17'shec8) : $signed(_GEN_116); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_118 = 5'h15 == _wnList_T_3[4:0] ? $signed(-17'she1c) : $signed(_GEN_117); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_119 = 5'h16 == _wnList_T_3[4:0] ? $signed(-17'shd4e) : $signed(_GEN_118); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_120 = 5'h17 == _wnList_T_3[4:0] ? $signed(-17'shc5e) : $signed(_GEN_119); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_121 = 5'h18 == _wnList_T_3[4:0] ? $signed(-17'shb50) : $signed(_GEN_120); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_122 = 5'h19 == _wnList_T_3[4:0] ? $signed(-17'sha26) : $signed(_GEN_121); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_123 = 5'h1a == _wnList_T_3[4:0] ? $signed(-17'sh8e4) : $signed(_GEN_122); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_124 = 5'h1b == _wnList_T_3[4:0] ? $signed(-17'sh78b) : $signed(_GEN_123); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_125 = 5'h1c == _wnList_T_3[4:0] ? $signed(-17'sh61f) : $signed(_GEN_124); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_126 = 5'h1d == _wnList_T_3[4:0] ? $signed(-17'sh4a5) : $signed(_GEN_125); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_127 = 5'h1e == _wnList_T_3[4:0] ? $signed(-17'sh31f) : $signed(_GEN_126); // @[FFT.scala 73:{12,12}]
  wire [3:0] wnCtrl = cnt_1[3:0]; // @[FFT.scala 131:23]
  wire [4:0] _wnList_T_4 = {{1'd0}, wnCtrl}; // @[FFT.scala 135:148]
  wire [16:0] _GEN_130 = 4'h1 == _wnList_T_4[3:0] ? $signed(17'shfb1) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_131 = 4'h2 == _wnList_T_4[3:0] ? $signed(17'shec8) : $signed(_GEN_130); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_132 = 4'h3 == _wnList_T_4[3:0] ? $signed(17'shd4e) : $signed(_GEN_131); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_133 = 4'h4 == _wnList_T_4[3:0] ? $signed(17'shb50) : $signed(_GEN_132); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_134 = 4'h5 == _wnList_T_4[3:0] ? $signed(17'sh8e4) : $signed(_GEN_133); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_135 = 4'h6 == _wnList_T_4[3:0] ? $signed(17'sh61f) : $signed(_GEN_134); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_136 = 4'h7 == _wnList_T_4[3:0] ? $signed(17'sh31f) : $signed(_GEN_135); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_137 = 4'h8 == _wnList_T_4[3:0] ? $signed(17'sh0) : $signed(_GEN_136); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_138 = 4'h9 == _wnList_T_4[3:0] ? $signed(-17'sh31f) : $signed(_GEN_137); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_139 = 4'ha == _wnList_T_4[3:0] ? $signed(-17'sh61f) : $signed(_GEN_138); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_140 = 4'hb == _wnList_T_4[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_139); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_141 = 4'hc == _wnList_T_4[3:0] ? $signed(-17'shb50) : $signed(_GEN_140); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_142 = 4'hd == _wnList_T_4[3:0] ? $signed(-17'shd4e) : $signed(_GEN_141); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_143 = 4'he == _wnList_T_4[3:0] ? $signed(-17'shec8) : $signed(_GEN_142); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_146 = 4'h1 == _wnList_T_4[3:0] ? $signed(-17'sh31f) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_147 = 4'h2 == _wnList_T_4[3:0] ? $signed(-17'sh61f) : $signed(_GEN_146); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_148 = 4'h3 == _wnList_T_4[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_147); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_149 = 4'h4 == _wnList_T_4[3:0] ? $signed(-17'shb50) : $signed(_GEN_148); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_150 = 4'h5 == _wnList_T_4[3:0] ? $signed(-17'shd4e) : $signed(_GEN_149); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_151 = 4'h6 == _wnList_T_4[3:0] ? $signed(-17'shec8) : $signed(_GEN_150); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_152 = 4'h7 == _wnList_T_4[3:0] ? $signed(-17'shfb1) : $signed(_GEN_151); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_153 = 4'h8 == _wnList_T_4[3:0] ? $signed(-17'sh1000) : $signed(_GEN_152); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_154 = 4'h9 == _wnList_T_4[3:0] ? $signed(-17'shfb1) : $signed(_GEN_153); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_155 = 4'ha == _wnList_T_4[3:0] ? $signed(-17'shec8) : $signed(_GEN_154); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_156 = 4'hb == _wnList_T_4[3:0] ? $signed(-17'shd4e) : $signed(_GEN_155); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_157 = 4'hc == _wnList_T_4[3:0] ? $signed(-17'shb50) : $signed(_GEN_156); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_158 = 4'hd == _wnList_T_4[3:0] ? $signed(-17'sh8e4) : $signed(_GEN_157); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_159 = 4'he == _wnList_T_4[3:0] ? $signed(-17'sh61f) : $signed(_GEN_158); // @[FFT.scala 73:{12,12}]
  wire [2:0] wnCtrl_1 = cnt_1[2:0]; // @[FFT.scala 131:23]
  wire [3:0] _wnList_T_8 = {{1'd0}, wnCtrl_1}; // @[FFT.scala 135:148]
  wire [16:0] _GEN_194 = 3'h1 == _wnList_T_8[2:0] ? $signed(17'shec8) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_195 = 3'h2 == _wnList_T_8[2:0] ? $signed(17'shb50) : $signed(_GEN_194); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_196 = 3'h3 == _wnList_T_8[2:0] ? $signed(17'sh61f) : $signed(_GEN_195); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_197 = 3'h4 == _wnList_T_8[2:0] ? $signed(17'sh0) : $signed(_GEN_196); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_198 = 3'h5 == _wnList_T_8[2:0] ? $signed(-17'sh61f) : $signed(_GEN_197); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_199 = 3'h6 == _wnList_T_8[2:0] ? $signed(-17'shb50) : $signed(_GEN_198); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_202 = 3'h1 == _wnList_T_8[2:0] ? $signed(-17'sh61f) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_203 = 3'h2 == _wnList_T_8[2:0] ? $signed(-17'shb50) : $signed(_GEN_202); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_204 = 3'h3 == _wnList_T_8[2:0] ? $signed(-17'shec8) : $signed(_GEN_203); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_205 = 3'h4 == _wnList_T_8[2:0] ? $signed(-17'sh1000) : $signed(_GEN_204); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_206 = 3'h5 == _wnList_T_8[2:0] ? $signed(-17'shec8) : $signed(_GEN_205); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_207 = 3'h6 == _wnList_T_8[2:0] ? $signed(-17'shb50) : $signed(_GEN_206); // @[FFT.scala 73:{12,12}]
  wire [1:0] wnCtrl_2 = cnt_1[1:0]; // @[FFT.scala 131:23]
  wire [2:0] _wnList_T_12 = {{1'd0}, wnCtrl_2}; // @[FFT.scala 135:148]
  wire [16:0] _GEN_226 = 2'h1 == _wnList_T_12[1:0] ? $signed(17'shb50) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_227 = 2'h2 == _wnList_T_12[1:0] ? $signed(17'sh0) : $signed(_GEN_226); // @[FFT.scala 72:{12,12}]
  wire [16:0] _GEN_230 = 2'h1 == _wnList_T_12[1:0] ? $signed(-17'shb50) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  wire [16:0] _GEN_231 = 2'h2 == _wnList_T_12[1:0] ? $signed(-17'sh1000) : $signed(_GEN_230); // @[FFT.scala 73:{12,12}]
  wire  wnCtrl_3 = cnt_1[0]; // @[FFT.scala 131:23]
  wire [1:0] _wnList_T_16 = {{1'd0}, wnCtrl_3}; // @[FFT.scala 135:148]
  reg [16:0] REG__0_re; // @[FFT.scala 157:67]
  reg [16:0] REG__0_im; // @[FFT.scala 157:67]
  reg [16:0] REG__1_re; // @[FFT.scala 157:67]
  reg [16:0] REG__1_im; // @[FFT.scala 157:67]
  reg [16:0] REG_1_0_re; // @[FFT.scala 157:67]
  reg [16:0] REG_1_0_im; // @[FFT.scala 157:67]
  reg [16:0] REG_1_1_re; // @[FFT.scala 157:67]
  reg [16:0] REG_1_1_im; // @[FFT.scala 157:67]
  reg [5:0] io_dout_valid_REG; // @[FFT.scala 179:27]
  reg [16:0] REG_2_0_re; // @[FFT.scala 184:23]
  reg [16:0] REG_2_0_im; // @[FFT.scala 184:23]
  reg [16:0] REG_2_1_re; // @[FFT.scala 184:23]
  reg [16:0] REG_2_1_im; // @[FFT.scala 184:23]
  reg [16:0] REG_2_2_re; // @[FFT.scala 184:23]
  reg [16:0] REG_2_2_im; // @[FFT.scala 184:23]
  reg [16:0] REG_2_3_re; // @[FFT.scala 184:23]
  reg [16:0] REG_2_3_im; // @[FFT.scala 184:23]
  ButterflyMul inst ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_io_in_0_re),
    .io_in_0_im(inst_io_in_0_im),
    .io_in_1_re(inst_io_in_1_re),
    .io_in_1_im(inst_io_in_1_im),
    .io_out_0_re(inst_io_out_0_re),
    .io_out_0_im(inst_io_out_0_im),
    .io_out_1_re(inst_io_out_1_re),
    .io_out_1_im(inst_io_out_1_im),
    .io_wn_0_re(inst_io_wn_0_re),
    .io_wn_0_im(inst_io_wn_0_im)
  );
  ButterflyMul inst_1 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_1_io_in_0_re),
    .io_in_0_im(inst_1_io_in_0_im),
    .io_in_1_re(inst_1_io_in_1_re),
    .io_in_1_im(inst_1_io_in_1_im),
    .io_out_0_re(inst_1_io_out_0_re),
    .io_out_0_im(inst_1_io_out_0_im),
    .io_out_1_re(inst_1_io_out_1_re),
    .io_out_1_im(inst_1_io_out_1_im),
    .io_wn_0_re(inst_1_io_wn_0_re),
    .io_wn_0_im(inst_1_io_wn_0_im)
  );
  ButterflyMul inst_2 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_2_io_in_0_re),
    .io_in_0_im(inst_2_io_in_0_im),
    .io_in_1_re(inst_2_io_in_1_re),
    .io_in_1_im(inst_2_io_in_1_im),
    .io_out_0_re(inst_2_io_out_0_re),
    .io_out_0_im(inst_2_io_out_0_im),
    .io_out_1_re(inst_2_io_out_1_re),
    .io_out_1_im(inst_2_io_out_1_im),
    .io_wn_0_re(inst_2_io_wn_0_re),
    .io_wn_0_im(inst_2_io_wn_0_im)
  );
  ButterflyMul inst_3 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_3_io_in_0_re),
    .io_in_0_im(inst_3_io_in_0_im),
    .io_in_1_re(inst_3_io_in_1_re),
    .io_in_1_im(inst_3_io_in_1_im),
    .io_out_0_re(inst_3_io_out_0_re),
    .io_out_0_im(inst_3_io_out_0_im),
    .io_out_1_re(inst_3_io_out_1_re),
    .io_out_1_im(inst_3_io_out_1_im),
    .io_wn_0_re(inst_3_io_wn_0_re),
    .io_wn_0_im(inst_3_io_wn_0_im)
  );
  ButterflyMul inst_4 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_4_io_in_0_re),
    .io_in_0_im(inst_4_io_in_0_im),
    .io_in_1_re(inst_4_io_in_1_re),
    .io_in_1_im(inst_4_io_in_1_im),
    .io_out_0_re(inst_4_io_out_0_re),
    .io_out_0_im(inst_4_io_out_0_im),
    .io_out_1_re(inst_4_io_out_1_re),
    .io_out_1_im(inst_4_io_out_1_im),
    .io_wn_0_re(inst_4_io_wn_0_re),
    .io_wn_0_im(inst_4_io_wn_0_im)
  );
  ButterflyMul inst_5 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_5_io_in_0_re),
    .io_in_0_im(inst_5_io_in_0_im),
    .io_in_1_re(inst_5_io_in_1_re),
    .io_in_1_im(inst_5_io_in_1_im),
    .io_out_0_re(inst_5_io_out_0_re),
    .io_out_0_im(inst_5_io_out_0_im),
    .io_out_1_re(inst_5_io_out_1_re),
    .io_out_1_im(inst_5_io_out_1_im),
    .io_wn_0_re(inst_5_io_wn_0_re),
    .io_wn_0_im(inst_5_io_wn_0_im)
  );
  ButterflyMul inst_6 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_6_io_in_0_re),
    .io_in_0_im(inst_6_io_in_0_im),
    .io_in_1_re(inst_6_io_in_1_re),
    .io_in_1_im(inst_6_io_in_1_im),
    .io_out_0_re(inst_6_io_out_0_re),
    .io_out_0_im(inst_6_io_out_0_im),
    .io_out_1_re(inst_6_io_out_1_re),
    .io_out_1_im(inst_6_io_out_1_im),
    .io_wn_0_re(inst_6_io_wn_0_re),
    .io_wn_0_im(inst_6_io_wn_0_im)
  );
  ButterflyMul inst_7 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_7_io_in_0_re),
    .io_in_0_im(inst_7_io_in_0_im),
    .io_in_1_re(inst_7_io_in_1_re),
    .io_in_1_im(inst_7_io_in_1_im),
    .io_out_0_re(inst_7_io_out_0_re),
    .io_out_0_im(inst_7_io_out_0_im),
    .io_out_1_re(inst_7_io_out_1_re),
    .io_out_1_im(inst_7_io_out_1_im),
    .io_wn_0_re(inst_7_io_wn_0_re),
    .io_wn_0_im(inst_7_io_wn_0_im)
  );
  ButterflyMul inst_8 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_8_io_in_0_re),
    .io_in_0_im(inst_8_io_in_0_im),
    .io_in_1_re(inst_8_io_in_1_re),
    .io_in_1_im(inst_8_io_in_1_im),
    .io_out_0_re(inst_8_io_out_0_re),
    .io_out_0_im(inst_8_io_out_0_im),
    .io_out_1_re(inst_8_io_out_1_re),
    .io_out_1_im(inst_8_io_out_1_im),
    .io_wn_0_re(inst_8_io_wn_0_re),
    .io_wn_0_im(inst_8_io_wn_0_im)
  );
  ButterflyMul inst_9 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_9_io_in_0_re),
    .io_in_0_im(inst_9_io_in_0_im),
    .io_in_1_re(inst_9_io_in_1_re),
    .io_in_1_im(inst_9_io_in_1_im),
    .io_out_0_re(inst_9_io_out_0_re),
    .io_out_0_im(inst_9_io_out_0_im),
    .io_out_1_re(inst_9_io_out_1_re),
    .io_out_1_im(inst_9_io_out_1_im),
    .io_wn_0_re(inst_9_io_wn_0_re),
    .io_wn_0_im(inst_9_io_wn_0_im)
  );
  ButterflyAdd dataotemp_inst ( // @[Modules.scala 213:22]
    .io_in_0_re(dataotemp_inst_io_in_0_re),
    .io_in_0_im(dataotemp_inst_io_in_0_im),
    .io_in_1_re(dataotemp_inst_io_in_1_re),
    .io_in_1_im(dataotemp_inst_io_in_1_im),
    .io_out_0_re(dataotemp_inst_io_out_0_re),
    .io_out_0_im(dataotemp_inst_io_out_0_im),
    .io_out_1_re(dataotemp_inst_io_out_1_re),
    .io_out_1_im(dataotemp_inst_io_out_1_im)
  );
  ButterflyAdd dataotemp_inst_1 ( // @[Modules.scala 213:22]
    .io_in_0_re(dataotemp_inst_1_io_in_0_re),
    .io_in_0_im(dataotemp_inst_1_io_in_0_im),
    .io_in_1_re(dataotemp_inst_1_io_in_1_re),
    .io_in_1_im(dataotemp_inst_1_io_in_1_im),
    .io_out_0_re(dataotemp_inst_1_io_out_0_re),
    .io_out_0_im(dataotemp_inst_1_io_out_0_im),
    .io_out_1_re(dataotemp_inst_1_io_out_1_re),
    .io_out_1_im(dataotemp_inst_1_io_out_1_im)
  );
  Exchange exdata_inst ( // @[Modules.scala 331:22]
    .io_in_0_0_re(exdata_inst_io_in_0_0_re),
    .io_in_0_0_im(exdata_inst_io_in_0_0_im),
    .io_in_0_1_re(exdata_inst_io_in_0_1_re),
    .io_in_0_1_im(exdata_inst_io_in_0_1_im),
    .io_in_1_0_re(exdata_inst_io_in_1_0_re),
    .io_in_1_0_im(exdata_inst_io_in_1_0_im),
    .io_in_1_1_re(exdata_inst_io_in_1_1_re),
    .io_in_1_1_im(exdata_inst_io_in_1_1_im),
    .io_out_0_0_re(exdata_inst_io_out_0_0_re),
    .io_out_0_0_im(exdata_inst_io_out_0_0_im),
    .io_out_0_1_re(exdata_inst_io_out_0_1_re),
    .io_out_0_1_im(exdata_inst_io_out_0_1_im),
    .io_out_1_0_re(exdata_inst_io_out_1_0_re),
    .io_out_1_0_im(exdata_inst_io_out_1_0_im),
    .io_out_1_1_re(exdata_inst_io_out_1_1_re),
    .io_out_1_1_im(exdata_inst_io_out_1_1_im)
  );
  Switch inst_10 ( // @[Modules.scala 311:22]
    .clock(inst_10_clock),
    .io_in_0_re(inst_10_io_in_0_re),
    .io_in_0_im(inst_10_io_in_0_im),
    .io_in_1_re(inst_10_io_in_1_re),
    .io_in_1_im(inst_10_io_in_1_im),
    .io_out_0_re(inst_10_io_out_0_re),
    .io_out_0_im(inst_10_io_out_0_im),
    .io_out_1_re(inst_10_io_out_1_re),
    .io_out_1_im(inst_10_io_out_1_im),
    .io_sel(inst_10_io_sel)
  );
  Switch inst_11 ( // @[Modules.scala 311:22]
    .clock(inst_11_clock),
    .io_in_0_re(inst_11_io_in_0_re),
    .io_in_0_im(inst_11_io_in_0_im),
    .io_in_1_re(inst_11_io_in_1_re),
    .io_in_1_im(inst_11_io_in_1_im),
    .io_out_0_re(inst_11_io_out_0_re),
    .io_out_0_im(inst_11_io_out_0_im),
    .io_out_1_re(inst_11_io_out_1_re),
    .io_out_1_im(inst_11_io_out_1_im),
    .io_sel(inst_11_io_sel)
  );
  Switch_2 inst_12 ( // @[Modules.scala 311:22]
    .clock(inst_12_clock),
    .io_in_0_re(inst_12_io_in_0_re),
    .io_in_0_im(inst_12_io_in_0_im),
    .io_in_1_re(inst_12_io_in_1_re),
    .io_in_1_im(inst_12_io_in_1_im),
    .io_out_0_re(inst_12_io_out_0_re),
    .io_out_0_im(inst_12_io_out_0_im),
    .io_out_1_re(inst_12_io_out_1_re),
    .io_out_1_im(inst_12_io_out_1_im),
    .io_sel(inst_12_io_sel)
  );
  Switch_2 inst_13 ( // @[Modules.scala 311:22]
    .clock(inst_13_clock),
    .io_in_0_re(inst_13_io_in_0_re),
    .io_in_0_im(inst_13_io_in_0_im),
    .io_in_1_re(inst_13_io_in_1_re),
    .io_in_1_im(inst_13_io_in_1_im),
    .io_out_0_re(inst_13_io_out_0_re),
    .io_out_0_im(inst_13_io_out_0_im),
    .io_out_1_re(inst_13_io_out_1_re),
    .io_out_1_im(inst_13_io_out_1_im),
    .io_sel(inst_13_io_sel)
  );
  Switch_4 inst_14 ( // @[Modules.scala 311:22]
    .clock(inst_14_clock),
    .io_in_0_re(inst_14_io_in_0_re),
    .io_in_0_im(inst_14_io_in_0_im),
    .io_in_1_re(inst_14_io_in_1_re),
    .io_in_1_im(inst_14_io_in_1_im),
    .io_out_0_re(inst_14_io_out_0_re),
    .io_out_0_im(inst_14_io_out_0_im),
    .io_out_1_re(inst_14_io_out_1_re),
    .io_out_1_im(inst_14_io_out_1_im),
    .io_sel(inst_14_io_sel)
  );
  Switch_4 inst_15 ( // @[Modules.scala 311:22]
    .clock(inst_15_clock),
    .io_in_0_re(inst_15_io_in_0_re),
    .io_in_0_im(inst_15_io_in_0_im),
    .io_in_1_re(inst_15_io_in_1_re),
    .io_in_1_im(inst_15_io_in_1_im),
    .io_out_0_re(inst_15_io_out_0_re),
    .io_out_0_im(inst_15_io_out_0_im),
    .io_out_1_re(inst_15_io_out_1_re),
    .io_out_1_im(inst_15_io_out_1_im),
    .io_sel(inst_15_io_sel)
  );
  Switch_6 inst_16 ( // @[Modules.scala 311:22]
    .clock(inst_16_clock),
    .io_in_0_re(inst_16_io_in_0_re),
    .io_in_0_im(inst_16_io_in_0_im),
    .io_in_1_re(inst_16_io_in_1_re),
    .io_in_1_im(inst_16_io_in_1_im),
    .io_out_0_re(inst_16_io_out_0_re),
    .io_out_0_im(inst_16_io_out_0_im),
    .io_out_1_re(inst_16_io_out_1_re),
    .io_out_1_im(inst_16_io_out_1_im),
    .io_sel(inst_16_io_sel)
  );
  Switch_6 inst_17 ( // @[Modules.scala 311:22]
    .clock(inst_17_clock),
    .io_in_0_re(inst_17_io_in_0_re),
    .io_in_0_im(inst_17_io_in_0_im),
    .io_in_1_re(inst_17_io_in_1_re),
    .io_in_1_im(inst_17_io_in_1_im),
    .io_out_0_re(inst_17_io_out_0_re),
    .io_out_0_im(inst_17_io_out_0_im),
    .io_out_1_re(inst_17_io_out_1_re),
    .io_out_1_im(inst_17_io_out_1_im),
    .io_sel(inst_17_io_sel)
  );
  assign io_dOut_0_re = REG_2_0_re; // @[FFT.scala 184:13]
  assign io_dOut_0_im = REG_2_0_im; // @[FFT.scala 184:13]
  assign io_dOut_1_re = REG_2_1_re; // @[FFT.scala 184:13]
  assign io_dOut_1_im = REG_2_1_im; // @[FFT.scala 184:13]
  assign io_dOut_2_re = REG_2_2_re; // @[FFT.scala 184:13]
  assign io_dOut_2_im = REG_2_2_im; // @[FFT.scala 184:13]
  assign io_dOut_3_re = REG_2_3_re; // @[FFT.scala 184:13]
  assign io_dOut_3_im = REG_2_3_im; // @[FFT.scala 184:13]
  assign io_dout_valid = io_dout_valid_REG == 6'h10; // @[FFT.scala 179:36]
  assign io_busy = cnt_0 != 6'h0; // @[FFT.scala 114:21]
  assign inst_io_in_0_re = io_dIn_0_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_0_im = io_dIn_0_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_1_re = io_dIn_1_re; // @[FFT.scala 122:65 175:19]
  assign inst_io_in_1_im = io_dIn_1_im; // @[FFT.scala 122:65 175:19]
  assign inst_io_wn_0_re = 5'h1f == _wnList_T[4:0] ? $signed(-17'shfec) : $signed(_GEN_31); // @[FFT.scala 72:{12,12}]
  assign inst_io_wn_0_im = 5'h1f == _wnList_T[4:0] ? $signed(-17'sh191) : $signed(_GEN_63); // @[FFT.scala 73:{12,12}]
  assign inst_1_io_in_0_re = io_dIn_2_re; // @[FFT.scala 122:65 175:19]
  assign inst_1_io_in_0_im = io_dIn_2_im; // @[FFT.scala 122:65 175:19]
  assign inst_1_io_in_1_re = io_dIn_3_re; // @[FFT.scala 122:65 175:19]
  assign inst_1_io_in_1_im = io_dIn_3_im; // @[FFT.scala 122:65 175:19]
  assign inst_1_io_wn_0_re = 5'h1f == _wnList_T_3[4:0] ? $signed(-17'shfec) : $signed(_GEN_95); // @[FFT.scala 72:{12,12}]
  assign inst_1_io_wn_0_im = 5'h1f == _wnList_T_3[4:0] ? $signed(-17'sh191) : $signed(_GEN_127); // @[FFT.scala 73:{12,12}]
  assign inst_2_io_in_0_re = REG__0_re; // @[FFT.scala 122:65 157:57]
  assign inst_2_io_in_0_im = REG__0_im; // @[FFT.scala 122:65 157:57]
  assign inst_2_io_in_1_re = REG__1_re; // @[FFT.scala 122:65 157:57]
  assign inst_2_io_in_1_im = REG__1_im; // @[FFT.scala 122:65 157:57]
  assign inst_2_io_wn_0_re = 4'hf == _wnList_T_4[3:0] ? $signed(-17'shfb1) : $signed(_GEN_143); // @[FFT.scala 72:{12,12}]
  assign inst_2_io_wn_0_im = 4'hf == _wnList_T_4[3:0] ? $signed(-17'sh31f) : $signed(_GEN_159); // @[FFT.scala 73:{12,12}]
  assign inst_3_io_in_0_re = REG_1_0_re; // @[FFT.scala 122:65 157:57]
  assign inst_3_io_in_0_im = REG_1_0_im; // @[FFT.scala 122:65 157:57]
  assign inst_3_io_in_1_re = REG_1_1_re; // @[FFT.scala 122:65 157:57]
  assign inst_3_io_in_1_im = REG_1_1_im; // @[FFT.scala 122:65 157:57]
  assign inst_3_io_wn_0_re = 4'hf == _wnList_T_4[3:0] ? $signed(-17'shfb1) : $signed(_GEN_143); // @[FFT.scala 72:{12,12}]
  assign inst_3_io_wn_0_im = 4'hf == _wnList_T_4[3:0] ? $signed(-17'sh31f) : $signed(_GEN_159); // @[FFT.scala 73:{12,12}]
  assign inst_4_io_in_0_re = inst_10_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign inst_4_io_in_0_im = inst_10_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign inst_4_io_in_1_re = inst_10_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign inst_4_io_in_1_im = inst_10_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign inst_4_io_wn_0_re = 3'h7 == _wnList_T_8[2:0] ? $signed(-17'shec8) : $signed(_GEN_199); // @[FFT.scala 72:{12,12}]
  assign inst_4_io_wn_0_im = 3'h7 == _wnList_T_8[2:0] ? $signed(-17'sh61f) : $signed(_GEN_207); // @[FFT.scala 73:{12,12}]
  assign inst_5_io_in_0_re = inst_11_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign inst_5_io_in_0_im = inst_11_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign inst_5_io_in_1_re = inst_11_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign inst_5_io_in_1_im = inst_11_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign inst_5_io_wn_0_re = 3'h7 == _wnList_T_8[2:0] ? $signed(-17'shec8) : $signed(_GEN_199); // @[FFT.scala 72:{12,12}]
  assign inst_5_io_wn_0_im = 3'h7 == _wnList_T_8[2:0] ? $signed(-17'sh61f) : $signed(_GEN_207); // @[FFT.scala 73:{12,12}]
  assign inst_6_io_in_0_re = inst_12_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign inst_6_io_in_0_im = inst_12_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign inst_6_io_in_1_re = inst_12_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign inst_6_io_in_1_im = inst_12_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign inst_6_io_wn_0_re = 2'h3 == _wnList_T_12[1:0] ? $signed(-17'shb50) : $signed(_GEN_227); // @[FFT.scala 72:{12,12}]
  assign inst_6_io_wn_0_im = 2'h3 == _wnList_T_12[1:0] ? $signed(-17'shb50) : $signed(_GEN_231); // @[FFT.scala 73:{12,12}]
  assign inst_7_io_in_0_re = inst_13_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign inst_7_io_in_0_im = inst_13_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign inst_7_io_in_1_re = inst_13_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign inst_7_io_in_1_im = inst_13_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign inst_7_io_wn_0_re = 2'h3 == _wnList_T_12[1:0] ? $signed(-17'shb50) : $signed(_GEN_227); // @[FFT.scala 72:{12,12}]
  assign inst_7_io_wn_0_im = 2'h3 == _wnList_T_12[1:0] ? $signed(-17'shb50) : $signed(_GEN_231); // @[FFT.scala 73:{12,12}]
  assign inst_8_io_in_0_re = inst_14_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign inst_8_io_in_0_im = inst_14_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign inst_8_io_in_1_re = inst_14_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign inst_8_io_in_1_im = inst_14_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign inst_8_io_wn_0_re = _wnList_T_16[0] ? $signed(17'sh0) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  assign inst_8_io_wn_0_im = _wnList_T_16[0] ? $signed(-17'sh1000) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  assign inst_9_io_in_0_re = inst_15_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign inst_9_io_in_0_im = inst_15_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign inst_9_io_in_1_re = inst_15_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign inst_9_io_in_1_im = inst_15_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign inst_9_io_wn_0_re = _wnList_T_16[0] ? $signed(17'sh0) : $signed(17'sh1000); // @[FFT.scala 72:{12,12}]
  assign inst_9_io_wn_0_im = _wnList_T_16[0] ? $signed(-17'sh1000) : $signed(17'sh0); // @[FFT.scala 73:{12,12}]
  assign dataotemp_inst_io_in_0_re = inst_16_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_0_im = inst_16_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_1_re = inst_16_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_1_im = inst_16_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_0_re = inst_17_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_0_im = inst_17_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_1_re = inst_17_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_1_im = inst_17_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign exdata_inst_io_in_0_0_re = inst_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_0_im = inst_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_1_re = inst_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_1_im = inst_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_0_re = inst_1_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_0_im = inst_1_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_1_re = inst_1_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_1_im = inst_1_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_10_clock = clock;
  assign inst_10_io_in_0_re = inst_2_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_0_im = inst_2_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_1_re = inst_2_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_1_im = inst_2_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_sel = cnt_1[3]; // @[FFT.scala 163:31]
  assign inst_11_clock = clock;
  assign inst_11_io_in_0_re = inst_3_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_0_im = inst_3_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_1_re = inst_3_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_1_im = inst_3_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_sel = cnt_1[3]; // @[FFT.scala 163:31]
  assign inst_12_clock = clock;
  assign inst_12_io_in_0_re = inst_4_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_12_io_in_0_im = inst_4_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_12_io_in_1_re = inst_4_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_12_io_in_1_im = inst_4_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_12_io_sel = cnt_1[2]; // @[FFT.scala 163:31]
  assign inst_13_clock = clock;
  assign inst_13_io_in_0_re = inst_5_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_13_io_in_0_im = inst_5_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_13_io_in_1_re = inst_5_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_13_io_in_1_im = inst_5_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_13_io_sel = cnt_1[2]; // @[FFT.scala 163:31]
  assign inst_14_clock = clock;
  assign inst_14_io_in_0_re = inst_6_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_14_io_in_0_im = inst_6_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_14_io_in_1_re = inst_6_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_14_io_in_1_im = inst_6_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_14_io_sel = cnt_1[1]; // @[FFT.scala 163:31]
  assign inst_15_clock = clock;
  assign inst_15_io_in_0_re = inst_7_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_15_io_in_0_im = inst_7_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_15_io_in_1_re = inst_7_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_15_io_in_1_im = inst_7_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_15_io_sel = cnt_1[1]; // @[FFT.scala 163:31]
  assign inst_16_clock = clock;
  assign inst_16_io_in_0_re = inst_8_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_16_io_in_0_im = inst_8_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_16_io_in_1_re = inst_8_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_16_io_in_1_im = inst_8_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_16_io_sel = cnt_1[0]; // @[FFT.scala 163:31]
  assign inst_17_clock = clock;
  assign inst_17_io_in_0_re = inst_9_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_17_io_in_0_im = inst_9_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_17_io_in_1_re = inst_9_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_17_io_in_1_im = inst_9_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_17_io_sel = cnt_1[0]; // @[FFT.scala 163:31]
  always @(posedge clock) begin
    if (reset) begin // @[FFT.scala 110:46]
      cnt_0 <= 6'h0; // @[FFT.scala 110:46]
    end else if (io_din_valid | busy) begin // @[FFT.scala 115:30]
      if (cnt_0 == 6'h20) begin // @[FFT.scala 116:18]
        cnt_0 <= 6'h0;
      end else begin
        cnt_0 <= _cnt_0_T_2;
      end
    end
    if (reset) begin // @[FFT.scala 110:46]
      cnt_1 <= 6'h0; // @[FFT.scala 110:46]
    end else begin
      cnt_1 <= cnt_0; // @[FFT.scala 112:16]
    end
    REG__0_re <= exdata_inst_io_out_0_0_re; // @[FFT.scala 157:67]
    REG__0_im <= exdata_inst_io_out_0_0_im; // @[FFT.scala 157:67]
    REG__1_re <= exdata_inst_io_out_0_1_re; // @[FFT.scala 157:67]
    REG__1_im <= exdata_inst_io_out_0_1_im; // @[FFT.scala 157:67]
    REG_1_0_re <= exdata_inst_io_out_1_0_re; // @[FFT.scala 157:67]
    REG_1_0_im <= exdata_inst_io_out_1_0_im; // @[FFT.scala 157:67]
    REG_1_1_re <= exdata_inst_io_out_1_1_re; // @[FFT.scala 157:67]
    REG_1_1_im <= exdata_inst_io_out_1_1_im; // @[FFT.scala 157:67]
    io_dout_valid_REG <= cnt_0; // @[FFT.scala 179:27]
    REG_2_0_re <= dataotemp_inst_io_out_0_re; // @[FFT.scala 124:22 141:9]
    REG_2_0_im <= dataotemp_inst_io_out_0_im; // @[FFT.scala 124:22 141:9]
    REG_2_1_re <= dataotemp_inst_io_out_1_re; // @[FFT.scala 124:22 141:9]
    REG_2_1_im <= dataotemp_inst_io_out_1_im; // @[FFT.scala 124:22 141:9]
    REG_2_2_re <= dataotemp_inst_1_io_out_0_re; // @[FFT.scala 124:22 141:9]
    REG_2_2_im <= dataotemp_inst_1_io_out_0_im; // @[FFT.scala 124:22 141:9]
    REG_2_3_re <= dataotemp_inst_1_io_out_1_re; // @[FFT.scala 124:22 141:9]
    REG_2_3_im <= dataotemp_inst_1_io_out_1_im; // @[FFT.scala 124:22 141:9]
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
  cnt_0 = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  cnt_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  REG__0_re = _RAND_2[16:0];
  _RAND_3 = {1{`RANDOM}};
  REG__0_im = _RAND_3[16:0];
  _RAND_4 = {1{`RANDOM}};
  REG__1_re = _RAND_4[16:0];
  _RAND_5 = {1{`RANDOM}};
  REG__1_im = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  REG_1_0_re = _RAND_6[16:0];
  _RAND_7 = {1{`RANDOM}};
  REG_1_0_im = _RAND_7[16:0];
  _RAND_8 = {1{`RANDOM}};
  REG_1_1_re = _RAND_8[16:0];
  _RAND_9 = {1{`RANDOM}};
  REG_1_1_im = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  io_dout_valid_REG = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  REG_2_0_re = _RAND_11[16:0];
  _RAND_12 = {1{`RANDOM}};
  REG_2_0_im = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  REG_2_1_re = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  REG_2_1_im = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  REG_2_2_re = _RAND_15[16:0];
  _RAND_16 = {1{`RANDOM}};
  REG_2_2_im = _RAND_16[16:0];
  _RAND_17 = {1{`RANDOM}};
  REG_2_3_re = _RAND_17[16:0];
  _RAND_18 = {1{`RANDOM}};
  REG_2_3_im = _RAND_18[16:0];
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
