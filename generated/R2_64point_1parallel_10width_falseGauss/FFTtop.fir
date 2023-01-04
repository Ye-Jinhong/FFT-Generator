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

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 89:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 89:81]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 89:57]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 89:122]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 5) @[Modules.scala 89:163]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 89:139]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 89:98]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 89:98]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 10) @[Modules.scala 89:98]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 89:15]
    node _io_res_im_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 90:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 90:81]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 90:57]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 90:122]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 5) @[Modules.scala 90:163]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 90:139]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 90:98]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 90:98]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 10) @[Modules.scala 90:98]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 90:15]

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

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 89:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 89:81]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 89:57]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 89:122]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 5) @[Modules.scala 89:163]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 89:139]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 89:98]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 89:98]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 10) @[Modules.scala 89:98]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 89:15]
    node _io_res_im_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 90:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 90:81]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 90:57]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 90:122]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 5) @[Modules.scala 90:163]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 90:139]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 90:98]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 90:98]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 10) @[Modules.scala 90:98]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 90:15]

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

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 89:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 89:81]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 89:57]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 89:122]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 5) @[Modules.scala 89:163]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 89:139]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 89:98]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 89:98]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 10) @[Modules.scala 89:98]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 89:15]
    node _io_res_im_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 90:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 90:81]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 90:57]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 90:122]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 5) @[Modules.scala 90:163]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 90:139]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 90:98]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 90:98]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 10) @[Modules.scala 90:98]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 90:15]

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

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 89:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 89:81]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 89:57]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 89:122]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 5) @[Modules.scala 89:163]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 89:139]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 89:98]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 89:98]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 10) @[Modules.scala 89:98]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 89:15]
    node _io_res_im_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 90:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 90:81]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 90:57]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 90:122]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 5) @[Modules.scala 90:163]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 90:139]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 90:98]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 90:98]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 10) @[Modules.scala 90:98]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 90:15]

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

    node _io_res_re_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 89:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 5) @[Modules.scala 89:81]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 89:57]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 89:122]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 5) @[Modules.scala 89:163]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 89:139]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 89:98]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 89:98]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 10) @[Modules.scala 89:98]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 89:15]
    node _io_res_im_T = asFixedPoint(io.op1.re, 5) @[Modules.scala 90:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 5) @[Modules.scala 90:81]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 90:57]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 5) @[Modules.scala 90:122]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 5) @[Modules.scala 90:163]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 90:139]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 90:98]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 90:98]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 10) @[Modules.scala 90:98]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 90:15]

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

  module ButterflyAdd :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2]}

    inst io_out_0_inst of ComplexAdd_5 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 109:15]
    inst io_out_1_inst of ComplexSub_5 @[Modules.scala 57:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    io_out_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 110:15]

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
    reg swdata_1_r_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_8) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_8 <= swdata_1_r_7 @[Reg.scala 20:22]
    reg swdata_1_r_9 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_9) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_9 <= swdata_1_r_8 @[Reg.scala 20:22]
    reg swdata_1_r_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_10) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_10 <= swdata_1_r_9 @[Reg.scala 20:22]
    reg swdata_1_r_11 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_11) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_11 <= swdata_1_r_10 @[Reg.scala 20:22]
    reg swdata_1_r_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_12) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_12 <= swdata_1_r_11 @[Reg.scala 20:22]
    reg swdata_1_r_13 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_13) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_13 <= swdata_1_r_12 @[Reg.scala 20:22]
    reg swdata_1_r_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_14) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_14 <= swdata_1_r_13 @[Reg.scala 20:22]
    reg swdata_1_r_15 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r_15) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r_15 <= swdata_1_r_14 @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r_15 @[Modules.scala 228:38]
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
    reg io_out_0_r_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_8) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_8 <= io_out_0_r_7 @[Reg.scala 20:22]
    reg io_out_0_r_9 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_9) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_9 <= io_out_0_r_8 @[Reg.scala 20:22]
    reg io_out_0_r_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_10) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_10 <= io_out_0_r_9 @[Reg.scala 20:22]
    reg io_out_0_r_11 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_11) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_11 <= io_out_0_r_10 @[Reg.scala 20:22]
    reg io_out_0_r_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_12) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_12 <= io_out_0_r_11 @[Reg.scala 20:22]
    reg io_out_0_r_13 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_13) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_13 <= io_out_0_r_12 @[Reg.scala 20:22]
    reg io_out_0_r_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_14) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_14 <= io_out_0_r_13 @[Reg.scala 20:22]
    reg io_out_0_r_15 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_15) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_15 <= io_out_0_r_14 @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r_15 @[Modules.scala 229:38]
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
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

    reg cnt_0 : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[FFT.scala 39:46]
    node busy = neq(cnt_0, UInt<1>("h0")) @[FFT.scala 43:21]
    node _T = or(io.din_valid, busy) @[FFT.scala 44:21]
    when _T : @[FFT.scala 44:30]
      node _cnt_0_T = eq(cnt_0, UInt<6>("h3f")) @[FFT.scala 45:26]
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
    wire unitDataIn_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_1_0[0] <= _unitDataIn_WIRE_4 @[FFT.scala 51:70]
    unitDataIn_1_0[1] <= _unitDataIn_WIRE_6 @[FFT.scala 51:70]
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
    wire unitDataIn_2_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_2_0[0] <= _unitDataIn_WIRE_8 @[FFT.scala 51:70]
    unitDataIn_2_0[1] <= _unitDataIn_WIRE_10 @[FFT.scala 51:70]
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
    wire unitDataIn_3_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_3_0[0] <= _unitDataIn_WIRE_12 @[FFT.scala 51:70]
    unitDataIn_3_0[1] <= _unitDataIn_WIRE_14 @[FFT.scala 51:70]
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
    wire unitDataIn_4_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_4_0[0] <= _unitDataIn_WIRE_16 @[FFT.scala 51:70]
    unitDataIn_4_0[1] <= _unitDataIn_WIRE_18 @[FFT.scala 51:70]
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
    wire unitDataIn_5_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_5_0[0] <= _unitDataIn_WIRE_20 @[FFT.scala 51:70]
    unitDataIn_5_0[1] <= _unitDataIn_WIRE_22 @[FFT.scala 51:70]
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
    wire unitDataOut_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_1_0[0] <= _unitDataOut_WIRE_4 @[FFT.scala 52:75]
    unitDataOut_1_0[1] <= _unitDataOut_WIRE_6 @[FFT.scala 52:75]
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
    wire unitDataOut_2_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_2_0[0] <= _unitDataOut_WIRE_8 @[FFT.scala 52:75]
    unitDataOut_2_0[1] <= _unitDataOut_WIRE_10 @[FFT.scala 52:75]
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
    wire unitDataOut_3_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_3_0[0] <= _unitDataOut_WIRE_12 @[FFT.scala 52:75]
    unitDataOut_3_0[1] <= _unitDataOut_WIRE_14 @[FFT.scala 52:75]
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
    wire unitDataOut_4_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_4_0[0] <= _unitDataOut_WIRE_16 @[FFT.scala 52:75]
    unitDataOut_4_0[1] <= _unitDataOut_WIRE_18 @[FFT.scala 52:75]
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
    wire datao : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 53:22]
    datao[0] <= _datao_WIRE @[FFT.scala 53:22]
    datao[1] <= _datao_WIRE_2 @[FFT.scala 53:22]
    node wnCtrl = bits(cnt_0, 4, 0) @[FFT.scala 60:23]
    node _wnList_T = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
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
    wnList_0.re <= _wnList_res_re_WIRE[_wnList_T_1] @[FFT.scala 32:12]
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
    wnList_0.im <= _wnList_res_im_WIRE[_wnList_T_1] @[FFT.scala 33:12]
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
    node wnCtrl_1 = bits(cnt_0, 3, 0) @[FFT.scala 60:23]
    node _wnList_T_2 = add(UInt<1>("h0"), wnCtrl_1) @[FFT.scala 64:83]
    node _wnList_T_3 = tail(_wnList_T_2, 1) @[FFT.scala 64:83]
    wire wnList_0_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_1 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[8] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[9] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[10] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[11] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[13] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[14] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[15] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    wnList_0_1.re <= _wnList_res_re_WIRE_1[_wnList_T_3] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_1 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[8] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[9] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[10] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[11] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[13] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[14] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[15] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    wnList_0_1.im <= _wnList_res_im_WIRE_1[_wnList_T_3] @[FFT.scala 33:12]
    inst inst_1 of ButterflyMul_1 @[Modules.scala 210:22]
    inst_1.clock <= clock
    inst_1.reset <= reset
    inst_1.io.in[0].im <= unitDataIn_1_0[0].im @[Modules.scala 211:16]
    inst_1.io.in[0].re <= unitDataIn_1_0[0].re @[Modules.scala 211:16]
    inst_1.io.in[1].im <= unitDataIn_1_0[1].im @[Modules.scala 211:16]
    inst_1.io.in[1].re <= unitDataIn_1_0[1].re @[Modules.scala 211:16]
    inst_1.io.wn[0].im <= wnList_0_1.im @[Modules.scala 212:16]
    inst_1.io.wn[0].re <= wnList_0_1.re @[Modules.scala 212:16]
    unitDataOut_1_0 <= inst_1.io.out @[FFT.scala 65:25]
    node wnCtrl_2 = bits(cnt_0, 2, 0) @[FFT.scala 60:23]
    node _wnList_T_4 = add(UInt<1>("h0"), wnCtrl_2) @[FFT.scala 64:83]
    node _wnList_T_5 = tail(_wnList_T_4, 1) @[FFT.scala 64:83]
    wire wnList_0_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_2 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[4] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[5] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[7] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_0_2.re <= _wnList_res_re_WIRE_2[_wnList_T_5] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_2 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[4] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[5] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[7] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    wnList_0_2.im <= _wnList_res_im_WIRE_2[_wnList_T_5] @[FFT.scala 33:12]
    inst inst_2 of ButterflyMul_2 @[Modules.scala 210:22]
    inst_2.clock <= clock
    inst_2.reset <= reset
    inst_2.io.in[0].im <= unitDataIn_2_0[0].im @[Modules.scala 211:16]
    inst_2.io.in[0].re <= unitDataIn_2_0[0].re @[Modules.scala 211:16]
    inst_2.io.in[1].im <= unitDataIn_2_0[1].im @[Modules.scala 211:16]
    inst_2.io.in[1].re <= unitDataIn_2_0[1].re @[Modules.scala 211:16]
    inst_2.io.wn[0].im <= wnList_0_2.im @[Modules.scala 212:16]
    inst_2.io.wn[0].re <= wnList_0_2.re @[Modules.scala 212:16]
    unitDataOut_2_0 <= inst_2.io.out @[FFT.scala 65:25]
    node wnCtrl_3 = bits(cnt_0, 1, 0) @[FFT.scala 60:23]
    node _wnList_T_6 = add(UInt<1>("h0"), wnCtrl_3) @[FFT.scala 64:83]
    node _wnList_T_7 = tail(_wnList_T_6, 1) @[FFT.scala 64:83]
    wire wnList_0_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_3 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_0_3.re <= _wnList_res_re_WIRE_3[_wnList_T_7] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_3 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_0_3.im <= _wnList_res_im_WIRE_3[_wnList_T_7] @[FFT.scala 33:12]
    inst inst_3 of ButterflyMul_3 @[Modules.scala 210:22]
    inst_3.clock <= clock
    inst_3.reset <= reset
    inst_3.io.in[0].im <= unitDataIn_3_0[0].im @[Modules.scala 211:16]
    inst_3.io.in[0].re <= unitDataIn_3_0[0].re @[Modules.scala 211:16]
    inst_3.io.in[1].im <= unitDataIn_3_0[1].im @[Modules.scala 211:16]
    inst_3.io.in[1].re <= unitDataIn_3_0[1].re @[Modules.scala 211:16]
    inst_3.io.wn[0].im <= wnList_0_3.im @[Modules.scala 212:16]
    inst_3.io.wn[0].re <= wnList_0_3.re @[Modules.scala 212:16]
    unitDataOut_3_0 <= inst_3.io.out @[FFT.scala 65:25]
    node wnCtrl_4 = bits(cnt_0, 0, 0) @[FFT.scala 60:23]
    node _wnList_T_8 = add(UInt<1>("h0"), wnCtrl_4) @[FFT.scala 64:83]
    node _wnList_T_9 = tail(_wnList_T_8, 1) @[FFT.scala 64:83]
    wire wnList_0_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_4 : Fixed<10><<5>>[2] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[1] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    wnList_0_4.re <= _wnList_res_re_WIRE_4[_wnList_T_9] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_4 : Fixed<10><<5>>[2] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[1] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    wnList_0_4.im <= _wnList_res_im_WIRE_4[_wnList_T_9] @[FFT.scala 33:12]
    inst inst_4 of ButterflyMul_4 @[Modules.scala 210:22]
    inst_4.clock <= clock
    inst_4.reset <= reset
    inst_4.io.in[0].im <= unitDataIn_4_0[0].im @[Modules.scala 211:16]
    inst_4.io.in[0].re <= unitDataIn_4_0[0].re @[Modules.scala 211:16]
    inst_4.io.in[1].im <= unitDataIn_4_0[1].im @[Modules.scala 211:16]
    inst_4.io.in[1].re <= unitDataIn_4_0[1].re @[Modules.scala 211:16]
    inst_4.io.wn[0].im <= wnList_0_4.im @[Modules.scala 212:16]
    inst_4.io.wn[0].re <= wnList_0_4.re @[Modules.scala 212:16]
    unitDataOut_4_0 <= inst_4.io.out @[FFT.scala 65:25]
    inst dataotemp_inst of ButterflyAdd @[Modules.scala 144:22]
    dataotemp_inst.clock <= clock
    dataotemp_inst.reset <= reset
    dataotemp_inst.io.in[0].im <= unitDataIn_5_0[0].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[0].re <= unitDataIn_5_0[0].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[1].im <= unitDataIn_5_0[1].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[1].re <= unitDataIn_5_0[1].re @[Modules.scala 145:16]
    datao[0] <= dataotemp_inst.io.out[0] @[FFT.scala 70:9]
    datao[1] <= dataotemp_inst.io.out[1] @[FFT.scala 70:9]
    node sel = bits(cnt_0, 4, 4) @[FFT.scala 93:31]
    inst inst_5 of Switch @[Modules.scala 234:22]
    inst_5.clock <= clock
    inst_5.reset <= reset
    inst_5.io.in[0].im <= unitDataOut_0_0[0].im @[Modules.scala 235:16]
    inst_5.io.in[0].re <= unitDataOut_0_0[0].re @[Modules.scala 235:16]
    inst_5.io.in[1].im <= unitDataOut_0_0[1].im @[Modules.scala 235:16]
    inst_5.io.in[1].re <= unitDataOut_0_0[1].re @[Modules.scala 235:16]
    inst_5.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_1_0 <= inst_5.io.out @[FFT.scala 94:59]
    node sel_1 = bits(cnt_0, 3, 3) @[FFT.scala 93:31]
    inst inst_6 of Switch_1 @[Modules.scala 234:22]
    inst_6.clock <= clock
    inst_6.reset <= reset
    inst_6.io.in[0].im <= unitDataOut_1_0[0].im @[Modules.scala 235:16]
    inst_6.io.in[0].re <= unitDataOut_1_0[0].re @[Modules.scala 235:16]
    inst_6.io.in[1].im <= unitDataOut_1_0[1].im @[Modules.scala 235:16]
    inst_6.io.in[1].re <= unitDataOut_1_0[1].re @[Modules.scala 235:16]
    inst_6.io.sel <= sel_1 @[Modules.scala 236:17]
    unitDataIn_2_0 <= inst_6.io.out @[FFT.scala 94:59]
    node sel_2 = bits(cnt_0, 2, 2) @[FFT.scala 93:31]
    inst inst_7 of Switch_2 @[Modules.scala 234:22]
    inst_7.clock <= clock
    inst_7.reset <= reset
    inst_7.io.in[0].im <= unitDataOut_2_0[0].im @[Modules.scala 235:16]
    inst_7.io.in[0].re <= unitDataOut_2_0[0].re @[Modules.scala 235:16]
    inst_7.io.in[1].im <= unitDataOut_2_0[1].im @[Modules.scala 235:16]
    inst_7.io.in[1].re <= unitDataOut_2_0[1].re @[Modules.scala 235:16]
    inst_7.io.sel <= sel_2 @[Modules.scala 236:17]
    unitDataIn_3_0 <= inst_7.io.out @[FFT.scala 94:59]
    node sel_3 = bits(cnt_0, 1, 1) @[FFT.scala 93:31]
    inst inst_8 of Switch_3 @[Modules.scala 234:22]
    inst_8.clock <= clock
    inst_8.reset <= reset
    inst_8.io.in[0].im <= unitDataOut_3_0[0].im @[Modules.scala 235:16]
    inst_8.io.in[0].re <= unitDataOut_3_0[0].re @[Modules.scala 235:16]
    inst_8.io.in[1].im <= unitDataOut_3_0[1].im @[Modules.scala 235:16]
    inst_8.io.in[1].re <= unitDataOut_3_0[1].re @[Modules.scala 235:16]
    inst_8.io.sel <= sel_3 @[Modules.scala 236:17]
    unitDataIn_4_0 <= inst_8.io.out @[FFT.scala 94:59]
    node sel_4 = bits(cnt_0, 0, 0) @[FFT.scala 93:31]
    inst inst_9 of Switch_4 @[Modules.scala 234:22]
    inst_9.clock <= clock
    inst_9.reset <= reset
    inst_9.io.in[0].im <= unitDataOut_4_0[0].im @[Modules.scala 235:16]
    inst_9.io.in[0].re <= unitDataOut_4_0[0].re @[Modules.scala 235:16]
    inst_9.io.in[1].im <= unitDataOut_4_0[1].im @[Modules.scala 235:16]
    inst_9.io.in[1].re <= unitDataOut_4_0[1].re @[Modules.scala 235:16]
    inst_9.io.sel <= sel_4 @[Modules.scala 236:17]
    unitDataIn_5_0 <= inst_9.io.out @[FFT.scala 94:59]
    unitDataIn_0_0[0] <= io.dIn[0] @[FFT.scala 99:22]
    unitDataIn_0_0[1] <= io.dIn[1] @[FFT.scala 99:22]
    io.busy <= busy @[FFT.scala 102:11]
    reg io_dout_valid_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_dout_valid_REG) @[FFT.scala 103:27]
    io_dout_valid_REG <= cnt_0 @[FFT.scala 103:27]
    node _io_dout_valid_T = eq(io_dout_valid_REG, UInt<5>("h1f")) @[FFT.scala 103:36]
    io.dout_valid <= _io_dout_valid_T @[FFT.scala 103:17]
    reg REG : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG) @[FFT.scala 104:21]
    REG <= datao @[FFT.scala 104:21]
    io.dOut <= REG @[FFT.scala 104:11]

  module FFTtop :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

    inst fft of FFT @[Top.scala 15:19]
    fft.clock <= clock
    fft.reset <= reset
    fft.io.dIn[0].im <= io.dIn[0].im @[Top.scala 16:14]
    fft.io.dIn[0].re <= io.dIn[0].re @[Top.scala 16:14]
    fft.io.dIn[1].im <= io.dIn[1].im @[Top.scala 16:14]
    fft.io.dIn[1].re <= io.dIn[1].re @[Top.scala 16:14]
    fft.io.din_valid <= io.din_valid @[Top.scala 17:20]
    io.dOut <= fft.io.dOut @[Top.scala 27:13]
    io.dout_valid <= fft.io.dout_valid @[Top.scala 28:19]
    io.busy <= fft.io.busy @[Top.scala 29:13]

