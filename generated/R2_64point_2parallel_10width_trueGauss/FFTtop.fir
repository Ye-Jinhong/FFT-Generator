circuit FFTtop :
  module ComplexAdd :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_1 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_1 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_1 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_2 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_2 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_2 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_3 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_3 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_3 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_4 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_4 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_4 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_5 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_5 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_5 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_6 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_6 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_6 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_7 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_7 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_7 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_8 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_8 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_8 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ComplexMul_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _k1_T = asFixedPoint(io.op2.re, 5) @[Modules.scala 83:36]
    node _k1_T_1 = asFixedPoint(io.op1.re, 5) @[Modules.scala 83:78]
    node _k1_T_2 = asFixedPoint(io.op1.im, 5) @[Modules.scala 83:119]
    node _k1_T_3 = add(_k1_T_1, _k1_T_2) @[Modules.scala 83:95]
    node _k1_T_4 = tail(_k1_T_3, 1) @[Modules.scala 83:95]
    node _k1_T_5 = asFixedPoint(_k1_T_4, 5) @[Modules.scala 83:95]
    node k1 = mul(_k1_T, _k1_T_5) @[Modules.scala 83:53]
    node _k2_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 84:36]
    node _k2_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 84:78]
    node _k2_T_2 = asFixedPoint(io.op2.re, 5) @[Modules.scala 84:119]
    node _k2_T_3 = sub(_k2_T_1, _k2_T_2) @[Modules.scala 84:95]
    node _k2_T_4 = tail(_k2_T_3, 1) @[Modules.scala 84:95]
    node _k2_T_5 = asFixedPoint(_k2_T_4, 5) @[Modules.scala 84:95]
    node k2 = mul(_k2_T, _k2_T_5) @[Modules.scala 84:53]
    node _k3_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 85:36]
    node _k3_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 85:78]
    node _k3_T_2 = asFixedPoint(io.op2.im, 5) @[Modules.scala 85:119]
    node _k3_T_3 = add(_k3_T_1, _k3_T_2) @[Modules.scala 85:95]
    node _k3_T_4 = tail(_k3_T_3, 1) @[Modules.scala 85:95]
    node _k3_T_5 = asFixedPoint(_k3_T_4, 5) @[Modules.scala 85:95]
    node k3 = mul(_k3_T, _k3_T_5) @[Modules.scala 85:53]
    node _io_res_re_T = sub(k1, k3) @[Modules.scala 86:21]
    node _io_res_re_T_1 = tail(_io_res_re_T, 1) @[Modules.scala 86:21]
    node _io_res_re_T_2 = asFixedPoint(_io_res_re_T_1, 10) @[Modules.scala 86:21]
    io.res.re <= _io_res_re_T_2 @[Modules.scala 86:15]
    node _io_res_im_T = add(k1, k2) @[Modules.scala 87:21]
    node _io_res_im_T_1 = tail(_io_res_im_T, 1) @[Modules.scala 87:21]
    node _io_res_im_T_2 = asFixedPoint(_io_res_im_T_1, 10) @[Modules.scala 87:21]
    io.res.im <= _io_res_im_T_2 @[Modules.scala 87:15]

  module ButterflyMul_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[1]}

    wire _temp_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_1 : UInt<20>
    _temp_WIRE_1 <= _temp_T
    node _temp_T_1 = bits(_temp_WIRE_1, 9, 0) @[Modules.scala 155:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 5) @[Modules.scala 155:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 155:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 19, 10) @[Modules.scala 155:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 5) @[Modules.scala 155:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 155:50]
    wire _temp_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_3 : UInt<20>
    _temp_WIRE_3 <= _temp_T_5
    node _temp_T_6 = bits(_temp_WIRE_3, 9, 0) @[Modules.scala 155:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 155:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 19, 10) @[Modules.scala 155:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 5) @[Modules.scala 155:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_9 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_9 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_9 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ButterflyAdd :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2]}

    inst io_out_0_inst of ComplexAdd_10 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 109:15]
    inst io_out_1_inst of ComplexSub_10 @[Modules.scala 57:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    io_out_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 110:15]

  module ComplexAdd_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 34:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 34:79]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 34:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 34:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 34:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 34:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 35:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 35:79]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 35:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 35:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 35:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 35:13]

  module ComplexSub_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, flip op2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, res : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 50:38]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 50:79]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 50:55]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 50:55]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 5) @[Modules.scala 50:55]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 50:13]
    node _io_res_im_T = asFixedPoint(io.op1.im, 5) @[Modules.scala 51:38]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 51:79]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 51:55]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 51:55]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 5) @[Modules.scala 51:55]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 51:13]

  module ButterflyAdd_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2]}

    inst io_out_0_inst of ComplexAdd_11 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 109:15]
    inst io_out_1_inst of ComplexSub_11 @[Modules.scala 57:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    io_out_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 110:15]

  module Exchange :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2][2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2][2]}

    io.out[0][0] <= io.in[0][0] @[Modules.scala 247:20]
    io.out[0][1] <= io.in[1][0] @[Modules.scala 247:20]
    io.out[1][0] <= io.in[0][1] @[Modules.scala 247:20]
    io.out[1][1] <= io.in[1][1] @[Modules.scala 247:20]

  module Switch :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip sel : UInt<1>}

    wire _swdata_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_1 : UInt<20>
    _swdata_WIRE_1 <= _swdata_T
    node _swdata_T_1 = bits(_swdata_WIRE_1, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 5) @[Modules.scala 227:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 227:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 5) @[Modules.scala 227:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 227:71]
    wire _swdata_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_3 : UInt<20>
    _swdata_WIRE_3 <= _swdata_T_5
    node _swdata_T_6 = bits(_swdata_WIRE_3, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 227:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    reg swdata_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_1 <= swdata_1_r @[Reg.scala 20:22]
    reg swdata_1_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_2 <= swdata_1_r_1 @[Reg.scala 20:22]
    reg swdata_1_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_3 <= swdata_1_r_2 @[Reg.scala 20:22]
    reg swdata_1_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_4 <= swdata_1_r_3 @[Reg.scala 20:22]
    reg swdata_1_r_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_5 <= swdata_1_r_4 @[Reg.scala 20:22]
    reg swdata_1_r_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_6) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_6 <= swdata_1_r_5 @[Reg.scala 20:22]
    reg swdata_1_r_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_7) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_7 <= swdata_1_r_6 @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r_7 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_0_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_0_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_1 <= io_out_0_r @[Reg.scala 20:22]
    reg io_out_0_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_2 <= io_out_0_r_1 @[Reg.scala 20:22]
    reg io_out_0_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_3 <= io_out_0_r_2 @[Reg.scala 20:22]
    reg io_out_0_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_4 <= io_out_0_r_3 @[Reg.scala 20:22]
    reg io_out_0_r_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_5 <= io_out_0_r_4 @[Reg.scala 20:22]
    reg io_out_0_r_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_6) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_6 <= io_out_0_r_5 @[Reg.scala 20:22]
    reg io_out_0_r_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_7) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_7 <= io_out_0_r_6 @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r_7 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    io.out[1] <= _io_out_1_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip sel : UInt<1>}

    wire _swdata_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_1 : UInt<20>
    _swdata_WIRE_1 <= _swdata_T
    node _swdata_T_1 = bits(_swdata_WIRE_1, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 5) @[Modules.scala 227:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 227:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 5) @[Modules.scala 227:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 227:71]
    wire _swdata_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_3 : UInt<20>
    _swdata_WIRE_3 <= _swdata_T_5
    node _swdata_T_6 = bits(_swdata_WIRE_3, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 227:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    reg swdata_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_1 <= swdata_1_r @[Reg.scala 20:22]
    reg swdata_1_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_2 <= swdata_1_r_1 @[Reg.scala 20:22]
    reg swdata_1_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_3 <= swdata_1_r_2 @[Reg.scala 20:22]
    reg swdata_1_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_4 <= swdata_1_r_3 @[Reg.scala 20:22]
    reg swdata_1_r_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_5 <= swdata_1_r_4 @[Reg.scala 20:22]
    reg swdata_1_r_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_6) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_6 <= swdata_1_r_5 @[Reg.scala 20:22]
    reg swdata_1_r_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_7) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_7 <= swdata_1_r_6 @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r_7 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_0_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_0_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_1 <= io_out_0_r @[Reg.scala 20:22]
    reg io_out_0_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_2 <= io_out_0_r_1 @[Reg.scala 20:22]
    reg io_out_0_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_3 <= io_out_0_r_2 @[Reg.scala 20:22]
    reg io_out_0_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_4 <= io_out_0_r_3 @[Reg.scala 20:22]
    reg io_out_0_r_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_5 <= io_out_0_r_4 @[Reg.scala 20:22]
    reg io_out_0_r_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_6) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_6 <= io_out_0_r_5 @[Reg.scala 20:22]
    reg io_out_0_r_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_7) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_7 <= io_out_0_r_6 @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r_7 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    io.out[1] <= _io_out_1_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip sel : UInt<1>}

    wire _swdata_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_1 : UInt<20>
    _swdata_WIRE_1 <= _swdata_T
    node _swdata_T_1 = bits(_swdata_WIRE_1, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 5) @[Modules.scala 227:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 227:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 5) @[Modules.scala 227:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 227:71]
    wire _swdata_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_3 : UInt<20>
    _swdata_WIRE_3 <= _swdata_T_5
    node _swdata_T_6 = bits(_swdata_WIRE_3, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 227:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    reg swdata_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_1 <= swdata_1_r @[Reg.scala 20:22]
    reg swdata_1_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_2 <= swdata_1_r_1 @[Reg.scala 20:22]
    reg swdata_1_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_3 <= swdata_1_r_2 @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r_3 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_0_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_0_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_1 <= io_out_0_r @[Reg.scala 20:22]
    reg io_out_0_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_2 <= io_out_0_r_1 @[Reg.scala 20:22]
    reg io_out_0_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_3 <= io_out_0_r_2 @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r_3 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    io.out[1] <= _io_out_1_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip sel : UInt<1>}

    wire _swdata_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_1 : UInt<20>
    _swdata_WIRE_1 <= _swdata_T
    node _swdata_T_1 = bits(_swdata_WIRE_1, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 5) @[Modules.scala 227:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 227:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 5) @[Modules.scala 227:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 227:71]
    wire _swdata_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_3 : UInt<20>
    _swdata_WIRE_3 <= _swdata_T_5
    node _swdata_T_6 = bits(_swdata_WIRE_3, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 227:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    reg swdata_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_1 <= swdata_1_r @[Reg.scala 20:22]
    reg swdata_1_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_2 <= swdata_1_r_1 @[Reg.scala 20:22]
    reg swdata_1_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_3 <= swdata_1_r_2 @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r_3 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_0_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_0_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_1 <= io_out_0_r @[Reg.scala 20:22]
    reg io_out_0_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_2 <= io_out_0_r_1 @[Reg.scala 20:22]
    reg io_out_0_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_3 <= io_out_0_r_2 @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r_3 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    io.out[1] <= _io_out_1_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip sel : UInt<1>}

    wire _swdata_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_1 : UInt<20>
    _swdata_WIRE_1 <= _swdata_T
    node _swdata_T_1 = bits(_swdata_WIRE_1, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 5) @[Modules.scala 227:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 227:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 5) @[Modules.scala 227:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 227:71]
    wire _swdata_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_3 : UInt<20>
    _swdata_WIRE_3 <= _swdata_T_5
    node _swdata_T_6 = bits(_swdata_WIRE_3, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 227:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    reg swdata_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_1 <= swdata_1_r @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r_1 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_0_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_0_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_1 <= io_out_0_r @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r_1 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    io.out[1] <= _io_out_1_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip sel : UInt<1>}

    wire _swdata_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_1 : UInt<20>
    _swdata_WIRE_1 <= _swdata_T
    node _swdata_T_1 = bits(_swdata_WIRE_1, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 5) @[Modules.scala 227:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 227:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 5) @[Modules.scala 227:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 227:71]
    wire _swdata_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_3 : UInt<20>
    _swdata_WIRE_3 <= _swdata_T_5
    node _swdata_T_6 = bits(_swdata_WIRE_3, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 227:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    reg swdata_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_1 <= swdata_1_r @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r_1 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_0_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_0_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_1 <= io_out_0_r @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r_1 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    io.out[1] <= _io_out_1_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip sel : UInt<1>}

    wire _swdata_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_1 : UInt<20>
    _swdata_WIRE_1 <= _swdata_T
    node _swdata_T_1 = bits(_swdata_WIRE_1, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 5) @[Modules.scala 227:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 227:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 5) @[Modules.scala 227:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 227:71]
    wire _swdata_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_3 : UInt<20>
    _swdata_WIRE_3 <= _swdata_T_5
    node _swdata_T_6 = bits(_swdata_WIRE_3, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 227:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_0_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    io.out[1] <= _io_out_1_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip sel : UInt<1>}

    wire _swdata_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_1 : UInt<20>
    _swdata_WIRE_1 <= _swdata_T
    node _swdata_T_1 = bits(_swdata_WIRE_1, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 5) @[Modules.scala 227:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 227:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 5) @[Modules.scala 227:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 227:71]
    wire _swdata_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_3 : UInt<20>
    _swdata_WIRE_3 <= _swdata_T_5
    node _swdata_T_6 = bits(_swdata_WIRE_3, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 227:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 5) @[Modules.scala 227:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_0_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    io.out[1] <= _io_out_1_WIRE[io.sel] @[Modules.scala 229:38]

  module FFT :
    input clock : Clock
    input reset : Reset
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

    reg cnt_0 : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[FFT.scala 39:46]
    reg cnt_1 : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[FFT.scala 39:46]
    cnt_1 <= cnt_0 @[FFT.scala 41:16]
    node busy = neq(cnt_0, UInt<1>("h0")) @[FFT.scala 43:21]
    node _T = or(io.din_valid, busy) @[FFT.scala 44:21]
    when _T : @[FFT.scala 44:30]
      node _cnt_0_T = eq(cnt_0, UInt<6>("h20")) @[FFT.scala 45:26]
      node _cnt_0_T_1 = add(cnt_0, UInt<1>("h1")) @[FFT.scala 45:85]
      node _cnt_0_T_2 = tail(_cnt_0_T_1, 1) @[FFT.scala 45:85]
      node _cnt_0_T_3 = mux(_cnt_0_T, UInt<1>("h0"), _cnt_0_T_2) @[FFT.scala 45:18]
      cnt_0 <= _cnt_0_T_3 @[FFT.scala 45:12]
    wire _unitDataIn_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_1 : UInt<20>
    _unitDataIn_WIRE_1 <= _unitDataIn_T
    node _unitDataIn_T_1 = bits(_unitDataIn_WIRE_1, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_2 = asFixedPoint(_unitDataIn_T_1, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE.im <= _unitDataIn_T_2 @[FFT.scala 51:118]
    node _unitDataIn_T_3 = bits(_unitDataIn_WIRE_1, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_4 = asFixedPoint(_unitDataIn_T_3, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE.re <= _unitDataIn_T_4 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_3 : UInt<20>
    _unitDataIn_WIRE_3 <= _unitDataIn_T_5
    node _unitDataIn_T_6 = bits(_unitDataIn_WIRE_3, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_7 = asFixedPoint(_unitDataIn_T_6, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_2.im <= _unitDataIn_T_7 @[FFT.scala 51:118]
    node _unitDataIn_T_8 = bits(_unitDataIn_WIRE_3, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_9 = asFixedPoint(_unitDataIn_T_8, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_2.re <= _unitDataIn_T_9 @[FFT.scala 51:118]
    wire unitDataIn_0_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_0_0[0] <= _unitDataIn_WIRE @[FFT.scala 51:70]
    unitDataIn_0_0[1] <= _unitDataIn_WIRE_2 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_10 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_5 : UInt<20>
    _unitDataIn_WIRE_5 <= _unitDataIn_T_10
    node _unitDataIn_T_11 = bits(_unitDataIn_WIRE_5, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_12 = asFixedPoint(_unitDataIn_T_11, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_4.im <= _unitDataIn_T_12 @[FFT.scala 51:118]
    node _unitDataIn_T_13 = bits(_unitDataIn_WIRE_5, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_14 = asFixedPoint(_unitDataIn_T_13, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_4.re <= _unitDataIn_T_14 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_15 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_7 : UInt<20>
    _unitDataIn_WIRE_7 <= _unitDataIn_T_15
    node _unitDataIn_T_16 = bits(_unitDataIn_WIRE_7, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_17 = asFixedPoint(_unitDataIn_T_16, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_6.im <= _unitDataIn_T_17 @[FFT.scala 51:118]
    node _unitDataIn_T_18 = bits(_unitDataIn_WIRE_7, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_19 = asFixedPoint(_unitDataIn_T_18, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_6.re <= _unitDataIn_T_19 @[FFT.scala 51:118]
    wire unitDataIn_0_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_0_1[0] <= _unitDataIn_WIRE_4 @[FFT.scala 51:70]
    unitDataIn_0_1[1] <= _unitDataIn_WIRE_6 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_20 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_9 : UInt<20>
    _unitDataIn_WIRE_9 <= _unitDataIn_T_20
    node _unitDataIn_T_21 = bits(_unitDataIn_WIRE_9, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_22 = asFixedPoint(_unitDataIn_T_21, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_8.im <= _unitDataIn_T_22 @[FFT.scala 51:118]
    node _unitDataIn_T_23 = bits(_unitDataIn_WIRE_9, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_24 = asFixedPoint(_unitDataIn_T_23, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_8.re <= _unitDataIn_T_24 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_25 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_11 : UInt<20>
    _unitDataIn_WIRE_11 <= _unitDataIn_T_25
    node _unitDataIn_T_26 = bits(_unitDataIn_WIRE_11, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_27 = asFixedPoint(_unitDataIn_T_26, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_10.im <= _unitDataIn_T_27 @[FFT.scala 51:118]
    node _unitDataIn_T_28 = bits(_unitDataIn_WIRE_11, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_29 = asFixedPoint(_unitDataIn_T_28, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_10.re <= _unitDataIn_T_29 @[FFT.scala 51:118]
    wire unitDataIn_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_1_0[0] <= _unitDataIn_WIRE_8 @[FFT.scala 51:70]
    unitDataIn_1_0[1] <= _unitDataIn_WIRE_10 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_30 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_13 : UInt<20>
    _unitDataIn_WIRE_13 <= _unitDataIn_T_30
    node _unitDataIn_T_31 = bits(_unitDataIn_WIRE_13, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_32 = asFixedPoint(_unitDataIn_T_31, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_12.im <= _unitDataIn_T_32 @[FFT.scala 51:118]
    node _unitDataIn_T_33 = bits(_unitDataIn_WIRE_13, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_34 = asFixedPoint(_unitDataIn_T_33, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_12.re <= _unitDataIn_T_34 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_35 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_15 : UInt<20>
    _unitDataIn_WIRE_15 <= _unitDataIn_T_35
    node _unitDataIn_T_36 = bits(_unitDataIn_WIRE_15, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_37 = asFixedPoint(_unitDataIn_T_36, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_14.im <= _unitDataIn_T_37 @[FFT.scala 51:118]
    node _unitDataIn_T_38 = bits(_unitDataIn_WIRE_15, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_39 = asFixedPoint(_unitDataIn_T_38, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_14.re <= _unitDataIn_T_39 @[FFT.scala 51:118]
    wire unitDataIn_1_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_1_1[0] <= _unitDataIn_WIRE_12 @[FFT.scala 51:70]
    unitDataIn_1_1[1] <= _unitDataIn_WIRE_14 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_16 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_40 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_17 : UInt<20>
    _unitDataIn_WIRE_17 <= _unitDataIn_T_40
    node _unitDataIn_T_41 = bits(_unitDataIn_WIRE_17, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_42 = asFixedPoint(_unitDataIn_T_41, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_16.im <= _unitDataIn_T_42 @[FFT.scala 51:118]
    node _unitDataIn_T_43 = bits(_unitDataIn_WIRE_17, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_44 = asFixedPoint(_unitDataIn_T_43, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_16.re <= _unitDataIn_T_44 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_18 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_45 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_19 : UInt<20>
    _unitDataIn_WIRE_19 <= _unitDataIn_T_45
    node _unitDataIn_T_46 = bits(_unitDataIn_WIRE_19, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_47 = asFixedPoint(_unitDataIn_T_46, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_18.im <= _unitDataIn_T_47 @[FFT.scala 51:118]
    node _unitDataIn_T_48 = bits(_unitDataIn_WIRE_19, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_49 = asFixedPoint(_unitDataIn_T_48, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_18.re <= _unitDataIn_T_49 @[FFT.scala 51:118]
    wire unitDataIn_2_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_2_0[0] <= _unitDataIn_WIRE_16 @[FFT.scala 51:70]
    unitDataIn_2_0[1] <= _unitDataIn_WIRE_18 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_20 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_50 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_21 : UInt<20>
    _unitDataIn_WIRE_21 <= _unitDataIn_T_50
    node _unitDataIn_T_51 = bits(_unitDataIn_WIRE_21, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_52 = asFixedPoint(_unitDataIn_T_51, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_20.im <= _unitDataIn_T_52 @[FFT.scala 51:118]
    node _unitDataIn_T_53 = bits(_unitDataIn_WIRE_21, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_54 = asFixedPoint(_unitDataIn_T_53, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_20.re <= _unitDataIn_T_54 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_22 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_55 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_23 : UInt<20>
    _unitDataIn_WIRE_23 <= _unitDataIn_T_55
    node _unitDataIn_T_56 = bits(_unitDataIn_WIRE_23, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_57 = asFixedPoint(_unitDataIn_T_56, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_22.im <= _unitDataIn_T_57 @[FFT.scala 51:118]
    node _unitDataIn_T_58 = bits(_unitDataIn_WIRE_23, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_59 = asFixedPoint(_unitDataIn_T_58, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_22.re <= _unitDataIn_T_59 @[FFT.scala 51:118]
    wire unitDataIn_2_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_2_1[0] <= _unitDataIn_WIRE_20 @[FFT.scala 51:70]
    unitDataIn_2_1[1] <= _unitDataIn_WIRE_22 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_24 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_60 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_25 : UInt<20>
    _unitDataIn_WIRE_25 <= _unitDataIn_T_60
    node _unitDataIn_T_61 = bits(_unitDataIn_WIRE_25, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_62 = asFixedPoint(_unitDataIn_T_61, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_24.im <= _unitDataIn_T_62 @[FFT.scala 51:118]
    node _unitDataIn_T_63 = bits(_unitDataIn_WIRE_25, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_64 = asFixedPoint(_unitDataIn_T_63, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_24.re <= _unitDataIn_T_64 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_26 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_65 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_27 : UInt<20>
    _unitDataIn_WIRE_27 <= _unitDataIn_T_65
    node _unitDataIn_T_66 = bits(_unitDataIn_WIRE_27, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_67 = asFixedPoint(_unitDataIn_T_66, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_26.im <= _unitDataIn_T_67 @[FFT.scala 51:118]
    node _unitDataIn_T_68 = bits(_unitDataIn_WIRE_27, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_69 = asFixedPoint(_unitDataIn_T_68, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_26.re <= _unitDataIn_T_69 @[FFT.scala 51:118]
    wire unitDataIn_3_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_3_0[0] <= _unitDataIn_WIRE_24 @[FFT.scala 51:70]
    unitDataIn_3_0[1] <= _unitDataIn_WIRE_26 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_28 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_70 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_29 : UInt<20>
    _unitDataIn_WIRE_29 <= _unitDataIn_T_70
    node _unitDataIn_T_71 = bits(_unitDataIn_WIRE_29, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_72 = asFixedPoint(_unitDataIn_T_71, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_28.im <= _unitDataIn_T_72 @[FFT.scala 51:118]
    node _unitDataIn_T_73 = bits(_unitDataIn_WIRE_29, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_74 = asFixedPoint(_unitDataIn_T_73, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_28.re <= _unitDataIn_T_74 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_30 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_75 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_31 : UInt<20>
    _unitDataIn_WIRE_31 <= _unitDataIn_T_75
    node _unitDataIn_T_76 = bits(_unitDataIn_WIRE_31, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_77 = asFixedPoint(_unitDataIn_T_76, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_30.im <= _unitDataIn_T_77 @[FFT.scala 51:118]
    node _unitDataIn_T_78 = bits(_unitDataIn_WIRE_31, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_79 = asFixedPoint(_unitDataIn_T_78, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_30.re <= _unitDataIn_T_79 @[FFT.scala 51:118]
    wire unitDataIn_3_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_3_1[0] <= _unitDataIn_WIRE_28 @[FFT.scala 51:70]
    unitDataIn_3_1[1] <= _unitDataIn_WIRE_30 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_32 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_80 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_33 : UInt<20>
    _unitDataIn_WIRE_33 <= _unitDataIn_T_80
    node _unitDataIn_T_81 = bits(_unitDataIn_WIRE_33, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_82 = asFixedPoint(_unitDataIn_T_81, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_32.im <= _unitDataIn_T_82 @[FFT.scala 51:118]
    node _unitDataIn_T_83 = bits(_unitDataIn_WIRE_33, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_84 = asFixedPoint(_unitDataIn_T_83, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_32.re <= _unitDataIn_T_84 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_34 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_85 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_35 : UInt<20>
    _unitDataIn_WIRE_35 <= _unitDataIn_T_85
    node _unitDataIn_T_86 = bits(_unitDataIn_WIRE_35, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_87 = asFixedPoint(_unitDataIn_T_86, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_34.im <= _unitDataIn_T_87 @[FFT.scala 51:118]
    node _unitDataIn_T_88 = bits(_unitDataIn_WIRE_35, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_89 = asFixedPoint(_unitDataIn_T_88, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_34.re <= _unitDataIn_T_89 @[FFT.scala 51:118]
    wire unitDataIn_4_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_4_0[0] <= _unitDataIn_WIRE_32 @[FFT.scala 51:70]
    unitDataIn_4_0[1] <= _unitDataIn_WIRE_34 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_36 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_90 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_37 : UInt<20>
    _unitDataIn_WIRE_37 <= _unitDataIn_T_90
    node _unitDataIn_T_91 = bits(_unitDataIn_WIRE_37, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_92 = asFixedPoint(_unitDataIn_T_91, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_36.im <= _unitDataIn_T_92 @[FFT.scala 51:118]
    node _unitDataIn_T_93 = bits(_unitDataIn_WIRE_37, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_94 = asFixedPoint(_unitDataIn_T_93, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_36.re <= _unitDataIn_T_94 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_38 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_95 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_39 : UInt<20>
    _unitDataIn_WIRE_39 <= _unitDataIn_T_95
    node _unitDataIn_T_96 = bits(_unitDataIn_WIRE_39, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_97 = asFixedPoint(_unitDataIn_T_96, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_38.im <= _unitDataIn_T_97 @[FFT.scala 51:118]
    node _unitDataIn_T_98 = bits(_unitDataIn_WIRE_39, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_99 = asFixedPoint(_unitDataIn_T_98, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_38.re <= _unitDataIn_T_99 @[FFT.scala 51:118]
    wire unitDataIn_4_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_4_1[0] <= _unitDataIn_WIRE_36 @[FFT.scala 51:70]
    unitDataIn_4_1[1] <= _unitDataIn_WIRE_38 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_40 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_100 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_41 : UInt<20>
    _unitDataIn_WIRE_41 <= _unitDataIn_T_100
    node _unitDataIn_T_101 = bits(_unitDataIn_WIRE_41, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_102 = asFixedPoint(_unitDataIn_T_101, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_40.im <= _unitDataIn_T_102 @[FFT.scala 51:118]
    node _unitDataIn_T_103 = bits(_unitDataIn_WIRE_41, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_104 = asFixedPoint(_unitDataIn_T_103, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_40.re <= _unitDataIn_T_104 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_42 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_105 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_43 : UInt<20>
    _unitDataIn_WIRE_43 <= _unitDataIn_T_105
    node _unitDataIn_T_106 = bits(_unitDataIn_WIRE_43, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_107 = asFixedPoint(_unitDataIn_T_106, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_42.im <= _unitDataIn_T_107 @[FFT.scala 51:118]
    node _unitDataIn_T_108 = bits(_unitDataIn_WIRE_43, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_109 = asFixedPoint(_unitDataIn_T_108, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_42.re <= _unitDataIn_T_109 @[FFT.scala 51:118]
    wire unitDataIn_5_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_5_0[0] <= _unitDataIn_WIRE_40 @[FFT.scala 51:70]
    unitDataIn_5_0[1] <= _unitDataIn_WIRE_42 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_44 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_110 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_45 : UInt<20>
    _unitDataIn_WIRE_45 <= _unitDataIn_T_110
    node _unitDataIn_T_111 = bits(_unitDataIn_WIRE_45, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_112 = asFixedPoint(_unitDataIn_T_111, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_44.im <= _unitDataIn_T_112 @[FFT.scala 51:118]
    node _unitDataIn_T_113 = bits(_unitDataIn_WIRE_45, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_114 = asFixedPoint(_unitDataIn_T_113, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_44.re <= _unitDataIn_T_114 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_46 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_115 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_47 : UInt<20>
    _unitDataIn_WIRE_47 <= _unitDataIn_T_115
    node _unitDataIn_T_116 = bits(_unitDataIn_WIRE_47, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_117 = asFixedPoint(_unitDataIn_T_116, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_46.im <= _unitDataIn_T_117 @[FFT.scala 51:118]
    node _unitDataIn_T_118 = bits(_unitDataIn_WIRE_47, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_119 = asFixedPoint(_unitDataIn_T_118, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_46.re <= _unitDataIn_T_119 @[FFT.scala 51:118]
    wire unitDataIn_5_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_5_1[0] <= _unitDataIn_WIRE_44 @[FFT.scala 51:70]
    unitDataIn_5_1[1] <= _unitDataIn_WIRE_46 @[FFT.scala 51:70]
    wire _unitDataOut_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_1 : UInt<20>
    _unitDataOut_WIRE_1 <= _unitDataOut_T
    node _unitDataOut_T_1 = bits(_unitDataOut_WIRE_1, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_2 = asFixedPoint(_unitDataOut_T_1, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE.im <= _unitDataOut_T_2 @[FFT.scala 52:123]
    node _unitDataOut_T_3 = bits(_unitDataOut_WIRE_1, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_4 = asFixedPoint(_unitDataOut_T_3, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE.re <= _unitDataOut_T_4 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_3 : UInt<20>
    _unitDataOut_WIRE_3 <= _unitDataOut_T_5
    node _unitDataOut_T_6 = bits(_unitDataOut_WIRE_3, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_7 = asFixedPoint(_unitDataOut_T_6, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_2.im <= _unitDataOut_T_7 @[FFT.scala 52:123]
    node _unitDataOut_T_8 = bits(_unitDataOut_WIRE_3, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_9 = asFixedPoint(_unitDataOut_T_8, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_2.re <= _unitDataOut_T_9 @[FFT.scala 52:123]
    wire unitDataOut_0_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_0_0[0] <= _unitDataOut_WIRE @[FFT.scala 52:75]
    unitDataOut_0_0[1] <= _unitDataOut_WIRE_2 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_10 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_5 : UInt<20>
    _unitDataOut_WIRE_5 <= _unitDataOut_T_10
    node _unitDataOut_T_11 = bits(_unitDataOut_WIRE_5, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_12 = asFixedPoint(_unitDataOut_T_11, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_4.im <= _unitDataOut_T_12 @[FFT.scala 52:123]
    node _unitDataOut_T_13 = bits(_unitDataOut_WIRE_5, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_14 = asFixedPoint(_unitDataOut_T_13, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_4.re <= _unitDataOut_T_14 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_15 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_7 : UInt<20>
    _unitDataOut_WIRE_7 <= _unitDataOut_T_15
    node _unitDataOut_T_16 = bits(_unitDataOut_WIRE_7, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_17 = asFixedPoint(_unitDataOut_T_16, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_6.im <= _unitDataOut_T_17 @[FFT.scala 52:123]
    node _unitDataOut_T_18 = bits(_unitDataOut_WIRE_7, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_19 = asFixedPoint(_unitDataOut_T_18, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_6.re <= _unitDataOut_T_19 @[FFT.scala 52:123]
    wire unitDataOut_0_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_0_1[0] <= _unitDataOut_WIRE_4 @[FFT.scala 52:75]
    unitDataOut_0_1[1] <= _unitDataOut_WIRE_6 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_20 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_9 : UInt<20>
    _unitDataOut_WIRE_9 <= _unitDataOut_T_20
    node _unitDataOut_T_21 = bits(_unitDataOut_WIRE_9, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_22 = asFixedPoint(_unitDataOut_T_21, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_8.im <= _unitDataOut_T_22 @[FFT.scala 52:123]
    node _unitDataOut_T_23 = bits(_unitDataOut_WIRE_9, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_24 = asFixedPoint(_unitDataOut_T_23, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_8.re <= _unitDataOut_T_24 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_25 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_11 : UInt<20>
    _unitDataOut_WIRE_11 <= _unitDataOut_T_25
    node _unitDataOut_T_26 = bits(_unitDataOut_WIRE_11, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_27 = asFixedPoint(_unitDataOut_T_26, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_10.im <= _unitDataOut_T_27 @[FFT.scala 52:123]
    node _unitDataOut_T_28 = bits(_unitDataOut_WIRE_11, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_29 = asFixedPoint(_unitDataOut_T_28, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_10.re <= _unitDataOut_T_29 @[FFT.scala 52:123]
    wire unitDataOut_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_1_0[0] <= _unitDataOut_WIRE_8 @[FFT.scala 52:75]
    unitDataOut_1_0[1] <= _unitDataOut_WIRE_10 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_30 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_13 : UInt<20>
    _unitDataOut_WIRE_13 <= _unitDataOut_T_30
    node _unitDataOut_T_31 = bits(_unitDataOut_WIRE_13, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_32 = asFixedPoint(_unitDataOut_T_31, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_12.im <= _unitDataOut_T_32 @[FFT.scala 52:123]
    node _unitDataOut_T_33 = bits(_unitDataOut_WIRE_13, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_34 = asFixedPoint(_unitDataOut_T_33, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_12.re <= _unitDataOut_T_34 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_35 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_15 : UInt<20>
    _unitDataOut_WIRE_15 <= _unitDataOut_T_35
    node _unitDataOut_T_36 = bits(_unitDataOut_WIRE_15, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_37 = asFixedPoint(_unitDataOut_T_36, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_14.im <= _unitDataOut_T_37 @[FFT.scala 52:123]
    node _unitDataOut_T_38 = bits(_unitDataOut_WIRE_15, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_39 = asFixedPoint(_unitDataOut_T_38, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_14.re <= _unitDataOut_T_39 @[FFT.scala 52:123]
    wire unitDataOut_1_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_1_1[0] <= _unitDataOut_WIRE_12 @[FFT.scala 52:75]
    unitDataOut_1_1[1] <= _unitDataOut_WIRE_14 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_16 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_40 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_17 : UInt<20>
    _unitDataOut_WIRE_17 <= _unitDataOut_T_40
    node _unitDataOut_T_41 = bits(_unitDataOut_WIRE_17, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_42 = asFixedPoint(_unitDataOut_T_41, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_16.im <= _unitDataOut_T_42 @[FFT.scala 52:123]
    node _unitDataOut_T_43 = bits(_unitDataOut_WIRE_17, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_44 = asFixedPoint(_unitDataOut_T_43, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_16.re <= _unitDataOut_T_44 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_18 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_45 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_19 : UInt<20>
    _unitDataOut_WIRE_19 <= _unitDataOut_T_45
    node _unitDataOut_T_46 = bits(_unitDataOut_WIRE_19, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_47 = asFixedPoint(_unitDataOut_T_46, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_18.im <= _unitDataOut_T_47 @[FFT.scala 52:123]
    node _unitDataOut_T_48 = bits(_unitDataOut_WIRE_19, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_49 = asFixedPoint(_unitDataOut_T_48, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_18.re <= _unitDataOut_T_49 @[FFT.scala 52:123]
    wire unitDataOut_2_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_2_0[0] <= _unitDataOut_WIRE_16 @[FFT.scala 52:75]
    unitDataOut_2_0[1] <= _unitDataOut_WIRE_18 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_20 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_50 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_21 : UInt<20>
    _unitDataOut_WIRE_21 <= _unitDataOut_T_50
    node _unitDataOut_T_51 = bits(_unitDataOut_WIRE_21, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_52 = asFixedPoint(_unitDataOut_T_51, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_20.im <= _unitDataOut_T_52 @[FFT.scala 52:123]
    node _unitDataOut_T_53 = bits(_unitDataOut_WIRE_21, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_54 = asFixedPoint(_unitDataOut_T_53, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_20.re <= _unitDataOut_T_54 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_22 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_55 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_23 : UInt<20>
    _unitDataOut_WIRE_23 <= _unitDataOut_T_55
    node _unitDataOut_T_56 = bits(_unitDataOut_WIRE_23, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_57 = asFixedPoint(_unitDataOut_T_56, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_22.im <= _unitDataOut_T_57 @[FFT.scala 52:123]
    node _unitDataOut_T_58 = bits(_unitDataOut_WIRE_23, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_59 = asFixedPoint(_unitDataOut_T_58, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_22.re <= _unitDataOut_T_59 @[FFT.scala 52:123]
    wire unitDataOut_2_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_2_1[0] <= _unitDataOut_WIRE_20 @[FFT.scala 52:75]
    unitDataOut_2_1[1] <= _unitDataOut_WIRE_22 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_24 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_60 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_25 : UInt<20>
    _unitDataOut_WIRE_25 <= _unitDataOut_T_60
    node _unitDataOut_T_61 = bits(_unitDataOut_WIRE_25, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_62 = asFixedPoint(_unitDataOut_T_61, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_24.im <= _unitDataOut_T_62 @[FFT.scala 52:123]
    node _unitDataOut_T_63 = bits(_unitDataOut_WIRE_25, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_64 = asFixedPoint(_unitDataOut_T_63, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_24.re <= _unitDataOut_T_64 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_26 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_65 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_27 : UInt<20>
    _unitDataOut_WIRE_27 <= _unitDataOut_T_65
    node _unitDataOut_T_66 = bits(_unitDataOut_WIRE_27, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_67 = asFixedPoint(_unitDataOut_T_66, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_26.im <= _unitDataOut_T_67 @[FFT.scala 52:123]
    node _unitDataOut_T_68 = bits(_unitDataOut_WIRE_27, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_69 = asFixedPoint(_unitDataOut_T_68, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_26.re <= _unitDataOut_T_69 @[FFT.scala 52:123]
    wire unitDataOut_3_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_3_0[0] <= _unitDataOut_WIRE_24 @[FFT.scala 52:75]
    unitDataOut_3_0[1] <= _unitDataOut_WIRE_26 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_28 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_70 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_29 : UInt<20>
    _unitDataOut_WIRE_29 <= _unitDataOut_T_70
    node _unitDataOut_T_71 = bits(_unitDataOut_WIRE_29, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_72 = asFixedPoint(_unitDataOut_T_71, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_28.im <= _unitDataOut_T_72 @[FFT.scala 52:123]
    node _unitDataOut_T_73 = bits(_unitDataOut_WIRE_29, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_74 = asFixedPoint(_unitDataOut_T_73, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_28.re <= _unitDataOut_T_74 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_30 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_75 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_31 : UInt<20>
    _unitDataOut_WIRE_31 <= _unitDataOut_T_75
    node _unitDataOut_T_76 = bits(_unitDataOut_WIRE_31, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_77 = asFixedPoint(_unitDataOut_T_76, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_30.im <= _unitDataOut_T_77 @[FFT.scala 52:123]
    node _unitDataOut_T_78 = bits(_unitDataOut_WIRE_31, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_79 = asFixedPoint(_unitDataOut_T_78, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_30.re <= _unitDataOut_T_79 @[FFT.scala 52:123]
    wire unitDataOut_3_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_3_1[0] <= _unitDataOut_WIRE_28 @[FFT.scala 52:75]
    unitDataOut_3_1[1] <= _unitDataOut_WIRE_30 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_32 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_80 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_33 : UInt<20>
    _unitDataOut_WIRE_33 <= _unitDataOut_T_80
    node _unitDataOut_T_81 = bits(_unitDataOut_WIRE_33, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_82 = asFixedPoint(_unitDataOut_T_81, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_32.im <= _unitDataOut_T_82 @[FFT.scala 52:123]
    node _unitDataOut_T_83 = bits(_unitDataOut_WIRE_33, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_84 = asFixedPoint(_unitDataOut_T_83, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_32.re <= _unitDataOut_T_84 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_34 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_85 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_35 : UInt<20>
    _unitDataOut_WIRE_35 <= _unitDataOut_T_85
    node _unitDataOut_T_86 = bits(_unitDataOut_WIRE_35, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_87 = asFixedPoint(_unitDataOut_T_86, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_34.im <= _unitDataOut_T_87 @[FFT.scala 52:123]
    node _unitDataOut_T_88 = bits(_unitDataOut_WIRE_35, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_89 = asFixedPoint(_unitDataOut_T_88, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_34.re <= _unitDataOut_T_89 @[FFT.scala 52:123]
    wire unitDataOut_4_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_4_0[0] <= _unitDataOut_WIRE_32 @[FFT.scala 52:75]
    unitDataOut_4_0[1] <= _unitDataOut_WIRE_34 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_36 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_90 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_37 : UInt<20>
    _unitDataOut_WIRE_37 <= _unitDataOut_T_90
    node _unitDataOut_T_91 = bits(_unitDataOut_WIRE_37, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_92 = asFixedPoint(_unitDataOut_T_91, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_36.im <= _unitDataOut_T_92 @[FFT.scala 52:123]
    node _unitDataOut_T_93 = bits(_unitDataOut_WIRE_37, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_94 = asFixedPoint(_unitDataOut_T_93, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_36.re <= _unitDataOut_T_94 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_38 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_95 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_39 : UInt<20>
    _unitDataOut_WIRE_39 <= _unitDataOut_T_95
    node _unitDataOut_T_96 = bits(_unitDataOut_WIRE_39, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_97 = asFixedPoint(_unitDataOut_T_96, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_38.im <= _unitDataOut_T_97 @[FFT.scala 52:123]
    node _unitDataOut_T_98 = bits(_unitDataOut_WIRE_39, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_99 = asFixedPoint(_unitDataOut_T_98, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_38.re <= _unitDataOut_T_99 @[FFT.scala 52:123]
    wire unitDataOut_4_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_4_1[0] <= _unitDataOut_WIRE_36 @[FFT.scala 52:75]
    unitDataOut_4_1[1] <= _unitDataOut_WIRE_38 @[FFT.scala 52:75]
    wire _datao_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_1 : UInt<20>
    _datao_WIRE_1 <= _datao_T
    node _datao_T_1 = bits(_datao_WIRE_1, 9, 0) @[FFT.scala 53:86]
    node _datao_T_2 = asFixedPoint(_datao_T_1, 5) @[FFT.scala 53:86]
    _datao_WIRE.im <= _datao_T_2 @[FFT.scala 53:86]
    node _datao_T_3 = bits(_datao_WIRE_1, 19, 10) @[FFT.scala 53:86]
    node _datao_T_4 = asFixedPoint(_datao_T_3, 5) @[FFT.scala 53:86]
    _datao_WIRE.re <= _datao_T_4 @[FFT.scala 53:86]
    wire _datao_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_5 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_3 : UInt<20>
    _datao_WIRE_3 <= _datao_T_5
    node _datao_T_6 = bits(_datao_WIRE_3, 9, 0) @[FFT.scala 53:86]
    node _datao_T_7 = asFixedPoint(_datao_T_6, 5) @[FFT.scala 53:86]
    _datao_WIRE_2.im <= _datao_T_7 @[FFT.scala 53:86]
    node _datao_T_8 = bits(_datao_WIRE_3, 19, 10) @[FFT.scala 53:86]
    node _datao_T_9 = asFixedPoint(_datao_T_8, 5) @[FFT.scala 53:86]
    _datao_WIRE_2.re <= _datao_T_9 @[FFT.scala 53:86]
    wire _datao_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_10 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_5 : UInt<20>
    _datao_WIRE_5 <= _datao_T_10
    node _datao_T_11 = bits(_datao_WIRE_5, 9, 0) @[FFT.scala 53:86]
    node _datao_T_12 = asFixedPoint(_datao_T_11, 5) @[FFT.scala 53:86]
    _datao_WIRE_4.im <= _datao_T_12 @[FFT.scala 53:86]
    node _datao_T_13 = bits(_datao_WIRE_5, 19, 10) @[FFT.scala 53:86]
    node _datao_T_14 = asFixedPoint(_datao_T_13, 5) @[FFT.scala 53:86]
    _datao_WIRE_4.re <= _datao_T_14 @[FFT.scala 53:86]
    wire _datao_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_15 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_7 : UInt<20>
    _datao_WIRE_7 <= _datao_T_15
    node _datao_T_16 = bits(_datao_WIRE_7, 9, 0) @[FFT.scala 53:86]
    node _datao_T_17 = asFixedPoint(_datao_T_16, 5) @[FFT.scala 53:86]
    _datao_WIRE_6.im <= _datao_T_17 @[FFT.scala 53:86]
    node _datao_T_18 = bits(_datao_WIRE_7, 19, 10) @[FFT.scala 53:86]
    node _datao_T_19 = asFixedPoint(_datao_T_18, 5) @[FFT.scala 53:86]
    _datao_WIRE_6.re <= _datao_T_19 @[FFT.scala 53:86]
    wire datao : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 53:22]
    datao[0] <= _datao_WIRE @[FFT.scala 53:22]
    datao[1] <= _datao_WIRE_2 @[FFT.scala 53:22]
    datao[2] <= _datao_WIRE_4 @[FFT.scala 53:22]
    datao[3] <= _datao_WIRE_6 @[FFT.scala 53:22]
    node _wnList_T = add(UInt<1>("h0"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_1 = tail(_wnList_T, 1) @[FFT.scala 64:83]
    wire wnList_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE : Fixed<10><<5>>[32] @[FFT.scala 28:12]
    _wnList_res_re_WIRE[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[1] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[2] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[3] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[4] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[5] <= asFixedPoint(UInt<10>("h1c"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[6] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[7] <= asFixedPoint(UInt<10>("h19"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[8] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[9] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[10] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[11] <= asFixedPoint(UInt<10>("hf"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[13] <= asFixedPoint(UInt<10>("h9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[14] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[15] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[16] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[17] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[18] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[19] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[20] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[21] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[22] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[23] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[24] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[25] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[26] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[27] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[28] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[29] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[30] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[31] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T = bits(_wnList_T_1, 4, 0)
    wnList_0.re <= _wnList_res_re_WIRE[_wnList_res_re_T] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE : Fixed<10><<5>>[32] @[FFT.scala 24:12]
    _wnList_res_im_WIRE[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[1] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[2] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[3] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[5] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[6] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[7] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[9] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[10] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[11] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[13] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[14] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[15] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[16] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[17] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[18] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[19] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[20] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[21] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[22] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[23] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[24] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[25] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[26] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[27] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[28] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[29] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[30] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[31] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T = bits(_wnList_T_1, 4, 0)
    wnList_0.im <= _wnList_res_im_WIRE[_wnList_res_im_T] @[FFT.scala 33:12]
    inst inst of ButterflyMul @[Modules.scala 210:22]
    inst.clock <= clock
    inst.reset <= reset
    inst.io.in[0].im <= unitDataIn_0_0[0].im @[Modules.scala 211:16]
    inst.io.in[0].re <= unitDataIn_0_0[0].re @[Modules.scala 211:16]
    inst.io.in[1].im <= unitDataIn_0_0[1].im @[Modules.scala 211:16]
    inst.io.in[1].re <= unitDataIn_0_0[1].re @[Modules.scala 211:16]
    inst.io.wn[0].im <= wnList_0.im @[Modules.scala 212:16]
    inst.io.wn[0].re <= wnList_0.re @[Modules.scala 212:16]
    unitDataOut_0_0 <= inst.io.out @[FFT.scala 65:25]
    node _wnList_T_2 = add(UInt<5>("h10"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_3 = tail(_wnList_T_2, 1) @[FFT.scala 64:83]
    wire wnList_0_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_1 : Fixed<10><<5>>[32] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[1] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[2] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[3] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[4] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[5] <= asFixedPoint(UInt<10>("h1c"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[6] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[7] <= asFixedPoint(UInt<10>("h19"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[8] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[9] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[10] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[11] <= asFixedPoint(UInt<10>("hf"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[13] <= asFixedPoint(UInt<10>("h9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[14] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[15] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[16] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[17] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[18] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[19] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[20] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[21] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[22] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[23] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[24] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[25] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[26] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[27] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[28] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[29] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[30] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[31] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_1 = bits(_wnList_T_3, 4, 0)
    wnList_0_1.re <= _wnList_res_re_WIRE_1[_wnList_res_re_T_1] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_1 : Fixed<10><<5>>[32] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[1] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[2] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[3] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[5] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[6] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[7] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[9] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[10] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[11] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[13] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[14] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[15] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[16] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[17] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[18] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[19] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[20] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[21] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[22] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[23] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[24] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[25] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[26] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[27] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[28] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[29] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[30] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[31] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_1 = bits(_wnList_T_3, 4, 0)
    wnList_0_1.im <= _wnList_res_im_WIRE_1[_wnList_res_im_T_1] @[FFT.scala 33:12]
    inst inst_1 of ButterflyMul_1 @[Modules.scala 210:22]
    inst_1.clock <= clock
    inst_1.reset <= reset
    inst_1.io.in[0].im <= unitDataIn_0_1[0].im @[Modules.scala 211:16]
    inst_1.io.in[0].re <= unitDataIn_0_1[0].re @[Modules.scala 211:16]
    inst_1.io.in[1].im <= unitDataIn_0_1[1].im @[Modules.scala 211:16]
    inst_1.io.in[1].re <= unitDataIn_0_1[1].re @[Modules.scala 211:16]
    inst_1.io.wn[0].im <= wnList_0_1.im @[Modules.scala 212:16]
    inst_1.io.wn[0].re <= wnList_0_1.re @[Modules.scala 212:16]
    unitDataOut_0_1 <= inst_1.io.out @[FFT.scala 65:25]
    node wnCtrl = bits(cnt_1, 3, 0) @[FFT.scala 60:23]
    node _wnList_T_4 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_5 = tail(_wnList_T_4, 1) @[FFT.scala 64:83]
    wire wnList_0_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_2 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[8] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[9] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[10] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[11] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[13] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[14] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[15] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    wnList_0_2.re <= _wnList_res_re_WIRE_2[_wnList_T_5] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_2 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[8] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[9] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[10] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[11] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[13] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[14] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[15] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    wnList_0_2.im <= _wnList_res_im_WIRE_2[_wnList_T_5] @[FFT.scala 33:12]
    inst inst_2 of ButterflyMul_2 @[Modules.scala 210:22]
    inst_2.clock <= clock
    inst_2.reset <= reset
    inst_2.io.in[0].im <= unitDataIn_1_0[0].im @[Modules.scala 211:16]
    inst_2.io.in[0].re <= unitDataIn_1_0[0].re @[Modules.scala 211:16]
    inst_2.io.in[1].im <= unitDataIn_1_0[1].im @[Modules.scala 211:16]
    inst_2.io.in[1].re <= unitDataIn_1_0[1].re @[Modules.scala 211:16]
    inst_2.io.wn[0].im <= wnList_0_2.im @[Modules.scala 212:16]
    inst_2.io.wn[0].re <= wnList_0_2.re @[Modules.scala 212:16]
    unitDataOut_1_0 <= inst_2.io.out @[FFT.scala 65:25]
    node _wnList_T_6 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_7 = tail(_wnList_T_6, 1) @[FFT.scala 64:83]
    wire wnList_0_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_3 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[8] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[9] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[10] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[11] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[13] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[14] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[15] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    wnList_0_3.re <= _wnList_res_re_WIRE_3[_wnList_T_7] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_3 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[8] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[9] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[10] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[11] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[13] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[14] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[15] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    wnList_0_3.im <= _wnList_res_im_WIRE_3[_wnList_T_7] @[FFT.scala 33:12]
    inst inst_3 of ButterflyMul_3 @[Modules.scala 210:22]
    inst_3.clock <= clock
    inst_3.reset <= reset
    inst_3.io.in[0].im <= unitDataIn_1_1[0].im @[Modules.scala 211:16]
    inst_3.io.in[0].re <= unitDataIn_1_1[0].re @[Modules.scala 211:16]
    inst_3.io.in[1].im <= unitDataIn_1_1[1].im @[Modules.scala 211:16]
    inst_3.io.in[1].re <= unitDataIn_1_1[1].re @[Modules.scala 211:16]
    inst_3.io.wn[0].im <= wnList_0_3.im @[Modules.scala 212:16]
    inst_3.io.wn[0].re <= wnList_0_3.re @[Modules.scala 212:16]
    unitDataOut_1_1 <= inst_3.io.out @[FFT.scala 65:25]
    node wnCtrl_1 = bits(cnt_1, 2, 0) @[FFT.scala 60:23]
    node _wnList_T_8 = add(UInt<1>("h0"), wnCtrl_1) @[FFT.scala 64:83]
    node _wnList_T_9 = tail(_wnList_T_8, 1) @[FFT.scala 64:83]
    wire wnList_0_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_4 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[4] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[5] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[7] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_0_4.re <= _wnList_res_re_WIRE_4[_wnList_T_9] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_4 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[4] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[5] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[7] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    wnList_0_4.im <= _wnList_res_im_WIRE_4[_wnList_T_9] @[FFT.scala 33:12]
    inst inst_4 of ButterflyMul_4 @[Modules.scala 210:22]
    inst_4.clock <= clock
    inst_4.reset <= reset
    inst_4.io.in[0].im <= unitDataIn_2_0[0].im @[Modules.scala 211:16]
    inst_4.io.in[0].re <= unitDataIn_2_0[0].re @[Modules.scala 211:16]
    inst_4.io.in[1].im <= unitDataIn_2_0[1].im @[Modules.scala 211:16]
    inst_4.io.in[1].re <= unitDataIn_2_0[1].re @[Modules.scala 211:16]
    inst_4.io.wn[0].im <= wnList_0_4.im @[Modules.scala 212:16]
    inst_4.io.wn[0].re <= wnList_0_4.re @[Modules.scala 212:16]
    unitDataOut_2_0 <= inst_4.io.out @[FFT.scala 65:25]
    node _wnList_T_10 = add(UInt<1>("h0"), wnCtrl_1) @[FFT.scala 64:83]
    node _wnList_T_11 = tail(_wnList_T_10, 1) @[FFT.scala 64:83]
    wire wnList_0_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_5 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[4] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[5] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[7] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_0_5.re <= _wnList_res_re_WIRE_5[_wnList_T_11] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_5 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[4] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[5] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[7] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    wnList_0_5.im <= _wnList_res_im_WIRE_5[_wnList_T_11] @[FFT.scala 33:12]
    inst inst_5 of ButterflyMul_5 @[Modules.scala 210:22]
    inst_5.clock <= clock
    inst_5.reset <= reset
    inst_5.io.in[0].im <= unitDataIn_2_1[0].im @[Modules.scala 211:16]
    inst_5.io.in[0].re <= unitDataIn_2_1[0].re @[Modules.scala 211:16]
    inst_5.io.in[1].im <= unitDataIn_2_1[1].im @[Modules.scala 211:16]
    inst_5.io.in[1].re <= unitDataIn_2_1[1].re @[Modules.scala 211:16]
    inst_5.io.wn[0].im <= wnList_0_5.im @[Modules.scala 212:16]
    inst_5.io.wn[0].re <= wnList_0_5.re @[Modules.scala 212:16]
    unitDataOut_2_1 <= inst_5.io.out @[FFT.scala 65:25]
    node wnCtrl_2 = bits(cnt_1, 1, 0) @[FFT.scala 60:23]
    node _wnList_T_12 = add(UInt<1>("h0"), wnCtrl_2) @[FFT.scala 64:83]
    node _wnList_T_13 = tail(_wnList_T_12, 1) @[FFT.scala 64:83]
    wire wnList_0_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_6 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_0_6.re <= _wnList_res_re_WIRE_6[_wnList_T_13] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_6 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_0_6.im <= _wnList_res_im_WIRE_6[_wnList_T_13] @[FFT.scala 33:12]
    inst inst_6 of ButterflyMul_6 @[Modules.scala 210:22]
    inst_6.clock <= clock
    inst_6.reset <= reset
    inst_6.io.in[0].im <= unitDataIn_3_0[0].im @[Modules.scala 211:16]
    inst_6.io.in[0].re <= unitDataIn_3_0[0].re @[Modules.scala 211:16]
    inst_6.io.in[1].im <= unitDataIn_3_0[1].im @[Modules.scala 211:16]
    inst_6.io.in[1].re <= unitDataIn_3_0[1].re @[Modules.scala 211:16]
    inst_6.io.wn[0].im <= wnList_0_6.im @[Modules.scala 212:16]
    inst_6.io.wn[0].re <= wnList_0_6.re @[Modules.scala 212:16]
    unitDataOut_3_0 <= inst_6.io.out @[FFT.scala 65:25]
    node _wnList_T_14 = add(UInt<1>("h0"), wnCtrl_2) @[FFT.scala 64:83]
    node _wnList_T_15 = tail(_wnList_T_14, 1) @[FFT.scala 64:83]
    wire wnList_0_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_7 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_0_7.re <= _wnList_res_re_WIRE_7[_wnList_T_15] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_7 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_0_7.im <= _wnList_res_im_WIRE_7[_wnList_T_15] @[FFT.scala 33:12]
    inst inst_7 of ButterflyMul_7 @[Modules.scala 210:22]
    inst_7.clock <= clock
    inst_7.reset <= reset
    inst_7.io.in[0].im <= unitDataIn_3_1[0].im @[Modules.scala 211:16]
    inst_7.io.in[0].re <= unitDataIn_3_1[0].re @[Modules.scala 211:16]
    inst_7.io.in[1].im <= unitDataIn_3_1[1].im @[Modules.scala 211:16]
    inst_7.io.in[1].re <= unitDataIn_3_1[1].re @[Modules.scala 211:16]
    inst_7.io.wn[0].im <= wnList_0_7.im @[Modules.scala 212:16]
    inst_7.io.wn[0].re <= wnList_0_7.re @[Modules.scala 212:16]
    unitDataOut_3_1 <= inst_7.io.out @[FFT.scala 65:25]
    node wnCtrl_3 = bits(cnt_1, 0, 0) @[FFT.scala 60:23]
    node _wnList_T_16 = add(UInt<1>("h0"), wnCtrl_3) @[FFT.scala 64:83]
    node _wnList_T_17 = tail(_wnList_T_16, 1) @[FFT.scala 64:83]
    wire wnList_0_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_8 : Fixed<10><<5>>[2] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[1] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    wnList_0_8.re <= _wnList_res_re_WIRE_8[_wnList_T_17] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_8 : Fixed<10><<5>>[2] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[1] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    wnList_0_8.im <= _wnList_res_im_WIRE_8[_wnList_T_17] @[FFT.scala 33:12]
    inst inst_8 of ButterflyMul_8 @[Modules.scala 210:22]
    inst_8.clock <= clock
    inst_8.reset <= reset
    inst_8.io.in[0].im <= unitDataIn_4_0[0].im @[Modules.scala 211:16]
    inst_8.io.in[0].re <= unitDataIn_4_0[0].re @[Modules.scala 211:16]
    inst_8.io.in[1].im <= unitDataIn_4_0[1].im @[Modules.scala 211:16]
    inst_8.io.in[1].re <= unitDataIn_4_0[1].re @[Modules.scala 211:16]
    inst_8.io.wn[0].im <= wnList_0_8.im @[Modules.scala 212:16]
    inst_8.io.wn[0].re <= wnList_0_8.re @[Modules.scala 212:16]
    unitDataOut_4_0 <= inst_8.io.out @[FFT.scala 65:25]
    node _wnList_T_18 = add(UInt<1>("h0"), wnCtrl_3) @[FFT.scala 64:83]
    node _wnList_T_19 = tail(_wnList_T_18, 1) @[FFT.scala 64:83]
    wire wnList_0_9 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_9 : Fixed<10><<5>>[2] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[1] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    wnList_0_9.re <= _wnList_res_re_WIRE_9[_wnList_T_19] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_9 : Fixed<10><<5>>[2] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[1] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    wnList_0_9.im <= _wnList_res_im_WIRE_9[_wnList_T_19] @[FFT.scala 33:12]
    inst inst_9 of ButterflyMul_9 @[Modules.scala 210:22]
    inst_9.clock <= clock
    inst_9.reset <= reset
    inst_9.io.in[0].im <= unitDataIn_4_1[0].im @[Modules.scala 211:16]
    inst_9.io.in[0].re <= unitDataIn_4_1[0].re @[Modules.scala 211:16]
    inst_9.io.in[1].im <= unitDataIn_4_1[1].im @[Modules.scala 211:16]
    inst_9.io.in[1].re <= unitDataIn_4_1[1].re @[Modules.scala 211:16]
    inst_9.io.wn[0].im <= wnList_0_9.im @[Modules.scala 212:16]
    inst_9.io.wn[0].re <= wnList_0_9.re @[Modules.scala 212:16]
    unitDataOut_4_1 <= inst_9.io.out @[FFT.scala 65:25]
    inst dataotemp_inst of ButterflyAdd @[Modules.scala 144:22]
    dataotemp_inst.clock <= clock
    dataotemp_inst.reset <= reset
    dataotemp_inst.io.in[0].im <= unitDataIn_5_0[0].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[0].re <= unitDataIn_5_0[0].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[1].im <= unitDataIn_5_0[1].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[1].re <= unitDataIn_5_0[1].re @[Modules.scala 145:16]
    inst dataotemp_inst_1 of ButterflyAdd_1 @[Modules.scala 144:22]
    dataotemp_inst_1.clock <= clock
    dataotemp_inst_1.reset <= reset
    dataotemp_inst_1.io.in[0].im <= unitDataIn_5_1[0].im @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[0].re <= unitDataIn_5_1[0].re @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[1].im <= unitDataIn_5_1[1].im @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[1].re <= unitDataIn_5_1[1].re @[Modules.scala 145:16]
    datao[0] <= dataotemp_inst.io.out[0] @[FFT.scala 70:9]
    datao[1] <= dataotemp_inst.io.out[1] @[FFT.scala 70:9]
    datao[2] <= dataotemp_inst_1.io.out[0] @[FFT.scala 70:9]
    datao[3] <= dataotemp_inst_1.io.out[1] @[FFT.scala 70:9]
    inst exdata_inst of Exchange @[Modules.scala 254:22]
    exdata_inst.clock <= clock
    exdata_inst.reset <= reset
    exdata_inst.io.in[0][0].im <= unitDataOut_0_0[0].im @[Modules.scala 255:16]
    exdata_inst.io.in[0][0].re <= unitDataOut_0_0[0].re @[Modules.scala 255:16]
    exdata_inst.io.in[0][1].im <= unitDataOut_0_0[1].im @[Modules.scala 255:16]
    exdata_inst.io.in[0][1].re <= unitDataOut_0_0[1].re @[Modules.scala 255:16]
    exdata_inst.io.in[1][0].im <= unitDataOut_0_1[0].im @[Modules.scala 255:16]
    exdata_inst.io.in[1][0].re <= unitDataOut_0_1[0].re @[Modules.scala 255:16]
    exdata_inst.io.in[1][1].im <= unitDataOut_0_1[1].im @[Modules.scala 255:16]
    exdata_inst.io.in[1][1].re <= unitDataOut_0_1[1].re @[Modules.scala 255:16]
    reg REG : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG) @[FFT.scala 87:72]
    REG <= exdata_inst.io.out[0] @[FFT.scala 87:72]
    unitDataIn_1_0 <= REG @[FFT.scala 87:62]
    reg REG_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[FFT.scala 87:72]
    REG_1 <= exdata_inst.io.out[1] @[FFT.scala 87:72]
    unitDataIn_1_1 <= REG_1 @[FFT.scala 87:62]
    node sel = bits(cnt_1, 3, 3) @[FFT.scala 93:31]
    inst inst_10 of Switch @[Modules.scala 234:22]
    inst_10.clock <= clock
    inst_10.reset <= reset
    inst_10.io.in[0].im <= unitDataOut_1_0[0].im @[Modules.scala 235:16]
    inst_10.io.in[0].re <= unitDataOut_1_0[0].re @[Modules.scala 235:16]
    inst_10.io.in[1].im <= unitDataOut_1_0[1].im @[Modules.scala 235:16]
    inst_10.io.in[1].re <= unitDataOut_1_0[1].re @[Modules.scala 235:16]
    inst_10.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_2_0 <= inst_10.io.out @[FFT.scala 94:59]
    inst inst_11 of Switch_1 @[Modules.scala 234:22]
    inst_11.clock <= clock
    inst_11.reset <= reset
    inst_11.io.in[0].im <= unitDataOut_1_1[0].im @[Modules.scala 235:16]
    inst_11.io.in[0].re <= unitDataOut_1_1[0].re @[Modules.scala 235:16]
    inst_11.io.in[1].im <= unitDataOut_1_1[1].im @[Modules.scala 235:16]
    inst_11.io.in[1].re <= unitDataOut_1_1[1].re @[Modules.scala 235:16]
    inst_11.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_2_1 <= inst_11.io.out @[FFT.scala 94:59]
    node sel_1 = bits(cnt_1, 2, 2) @[FFT.scala 93:31]
    inst inst_12 of Switch_2 @[Modules.scala 234:22]
    inst_12.clock <= clock
    inst_12.reset <= reset
    inst_12.io.in[0].im <= unitDataOut_2_0[0].im @[Modules.scala 235:16]
    inst_12.io.in[0].re <= unitDataOut_2_0[0].re @[Modules.scala 235:16]
    inst_12.io.in[1].im <= unitDataOut_2_0[1].im @[Modules.scala 235:16]
    inst_12.io.in[1].re <= unitDataOut_2_0[1].re @[Modules.scala 235:16]
    inst_12.io.sel <= sel_1 @[Modules.scala 236:17]
    unitDataIn_3_0 <= inst_12.io.out @[FFT.scala 94:59]
    inst inst_13 of Switch_3 @[Modules.scala 234:22]
    inst_13.clock <= clock
    inst_13.reset <= reset
    inst_13.io.in[0].im <= unitDataOut_2_1[0].im @[Modules.scala 235:16]
    inst_13.io.in[0].re <= unitDataOut_2_1[0].re @[Modules.scala 235:16]
    inst_13.io.in[1].im <= unitDataOut_2_1[1].im @[Modules.scala 235:16]
    inst_13.io.in[1].re <= unitDataOut_2_1[1].re @[Modules.scala 235:16]
    inst_13.io.sel <= sel_1 @[Modules.scala 236:17]
    unitDataIn_3_1 <= inst_13.io.out @[FFT.scala 94:59]
    node sel_2 = bits(cnt_1, 1, 1) @[FFT.scala 93:31]
    inst inst_14 of Switch_4 @[Modules.scala 234:22]
    inst_14.clock <= clock
    inst_14.reset <= reset
    inst_14.io.in[0].im <= unitDataOut_3_0[0].im @[Modules.scala 235:16]
    inst_14.io.in[0].re <= unitDataOut_3_0[0].re @[Modules.scala 235:16]
    inst_14.io.in[1].im <= unitDataOut_3_0[1].im @[Modules.scala 235:16]
    inst_14.io.in[1].re <= unitDataOut_3_0[1].re @[Modules.scala 235:16]
    inst_14.io.sel <= sel_2 @[Modules.scala 236:17]
    unitDataIn_4_0 <= inst_14.io.out @[FFT.scala 94:59]
    inst inst_15 of Switch_5 @[Modules.scala 234:22]
    inst_15.clock <= clock
    inst_15.reset <= reset
    inst_15.io.in[0].im <= unitDataOut_3_1[0].im @[Modules.scala 235:16]
    inst_15.io.in[0].re <= unitDataOut_3_1[0].re @[Modules.scala 235:16]
    inst_15.io.in[1].im <= unitDataOut_3_1[1].im @[Modules.scala 235:16]
    inst_15.io.in[1].re <= unitDataOut_3_1[1].re @[Modules.scala 235:16]
    inst_15.io.sel <= sel_2 @[Modules.scala 236:17]
    unitDataIn_4_1 <= inst_15.io.out @[FFT.scala 94:59]
    node sel_3 = bits(cnt_1, 0, 0) @[FFT.scala 93:31]
    inst inst_16 of Switch_6 @[Modules.scala 234:22]
    inst_16.clock <= clock
    inst_16.reset <= reset
    inst_16.io.in[0].im <= unitDataOut_4_0[0].im @[Modules.scala 235:16]
    inst_16.io.in[0].re <= unitDataOut_4_0[0].re @[Modules.scala 235:16]
    inst_16.io.in[1].im <= unitDataOut_4_0[1].im @[Modules.scala 235:16]
    inst_16.io.in[1].re <= unitDataOut_4_0[1].re @[Modules.scala 235:16]
    inst_16.io.sel <= sel_3 @[Modules.scala 236:17]
    unitDataIn_5_0 <= inst_16.io.out @[FFT.scala 94:59]
    inst inst_17 of Switch_7 @[Modules.scala 234:22]
    inst_17.clock <= clock
    inst_17.reset <= reset
    inst_17.io.in[0].im <= unitDataOut_4_1[0].im @[Modules.scala 235:16]
    inst_17.io.in[0].re <= unitDataOut_4_1[0].re @[Modules.scala 235:16]
    inst_17.io.in[1].im <= unitDataOut_4_1[1].im @[Modules.scala 235:16]
    inst_17.io.in[1].re <= unitDataOut_4_1[1].re @[Modules.scala 235:16]
    inst_17.io.sel <= sel_3 @[Modules.scala 236:17]
    unitDataIn_5_1 <= inst_17.io.out @[FFT.scala 94:59]
    unitDataIn_0_0[0] <= io.dIn[0] @[FFT.scala 99:22]
    unitDataIn_0_0[1] <= io.dIn[1] @[FFT.scala 99:22]
    unitDataIn_0_1[0] <= io.dIn[2] @[FFT.scala 99:22]
    unitDataIn_0_1[1] <= io.dIn[3] @[FFT.scala 99:22]
    io.busy <= busy @[FFT.scala 102:11]
    reg io_dout_valid_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_dout_valid_REG) @[FFT.scala 103:27]
    io_dout_valid_REG <= cnt_0 @[FFT.scala 103:27]
    node _io_dout_valid_T = eq(io_dout_valid_REG, UInt<5>("h10")) @[FFT.scala 103:36]
    io.dout_valid <= _io_dout_valid_T @[FFT.scala 103:17]
    reg REG_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], clock with :
      reset => (UInt<1>("h0"), REG_2) @[FFT.scala 104:21]
    REG_2 <= datao @[FFT.scala 104:21]
    io.dOut <= REG_2 @[FFT.scala 104:11]

  module FFTtop :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

    inst fft of FFT @[Top.scala 15:19]
    fft.clock <= clock
    fft.reset <= reset
    fft.io.dIn[0].im <= io.dIn[0].im @[Top.scala 16:14]
    fft.io.dIn[0].re <= io.dIn[0].re @[Top.scala 16:14]
    fft.io.dIn[1].im <= io.dIn[1].im @[Top.scala 16:14]
    fft.io.dIn[1].re <= io.dIn[1].re @[Top.scala 16:14]
    fft.io.dIn[2].im <= io.dIn[2].im @[Top.scala 16:14]
    fft.io.dIn[2].re <= io.dIn[2].re @[Top.scala 16:14]
    fft.io.dIn[3].im <= io.dIn[3].im @[Top.scala 16:14]
    fft.io.dIn[3].re <= io.dIn[3].re @[Top.scala 16:14]
    fft.io.din_valid <= io.din_valid @[Top.scala 17:20]
    io.dOut <= fft.io.dOut @[Top.scala 27:13]
    io.dout_valid <= fft.io.dout_valid @[Top.scala 28:19]
    io.busy <= fft.io.busy @[Top.scala 29:13]

