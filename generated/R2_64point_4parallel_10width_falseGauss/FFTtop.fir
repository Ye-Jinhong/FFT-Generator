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

  module ComplexMul_5 :
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

  module ComplexMul_10 :
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

  module ButterflyMul_10 :
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
    inst temp_0_inst of ComplexAdd_10 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_10 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_10 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

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

  module ComplexMul_11 :
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

  module ButterflyMul_11 :
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
    inst temp_0_inst of ComplexAdd_11 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_11 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_11 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_12 :
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

  module ComplexSub_12 :
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

  module ComplexMul_12 :
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

  module ButterflyMul_12 :
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
    inst temp_0_inst of ComplexAdd_12 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_12 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_12 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_13 :
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

  module ComplexSub_13 :
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

  module ComplexMul_13 :
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

  module ButterflyMul_13 :
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
    inst temp_0_inst of ComplexAdd_13 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_13 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_13 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_14 :
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

  module ComplexSub_14 :
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

  module ComplexMul_14 :
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

  module ButterflyMul_14 :
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
    inst temp_0_inst of ComplexAdd_14 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_14 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_14 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_15 :
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

  module ComplexSub_15 :
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

  module ComplexMul_15 :
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

  module ButterflyMul_15 :
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
    inst temp_0_inst of ComplexAdd_15 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_15 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_15 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_16 :
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

  module ComplexSub_16 :
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

  module ComplexMul_16 :
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

  module ButterflyMul_16 :
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
    inst temp_0_inst of ComplexAdd_16 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_16 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_16 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_17 :
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

  module ComplexSub_17 :
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

  module ComplexMul_17 :
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

  module ButterflyMul_17 :
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
    inst temp_0_inst of ComplexAdd_17 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_17 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_17 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_18 :
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

  module ComplexSub_18 :
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

  module ComplexMul_18 :
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

  module ButterflyMul_18 :
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
    inst temp_0_inst of ComplexAdd_18 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_18 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_18 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_19 :
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

  module ComplexSub_19 :
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

  module ComplexMul_19 :
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

  module ButterflyMul_19 :
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
    inst temp_0_inst of ComplexAdd_19 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 157:13]
    inst temp_1_inst of ComplexSub_19 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 158:13]
    io.out[0] <= temp[0] @[Modules.scala 189:15]
    inst io_out_1_inst of ComplexMul_19 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 190:15]

  module ComplexAdd_20 :
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

  module ComplexSub_20 :
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

    inst io_out_0_inst of ComplexAdd_20 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 109:15]
    inst io_out_1_inst of ComplexSub_20 @[Modules.scala 57:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    io_out_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 110:15]

  module ComplexAdd_21 :
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

  module ComplexSub_21 :
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

    inst io_out_0_inst of ComplexAdd_21 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 109:15]
    inst io_out_1_inst of ComplexSub_21 @[Modules.scala 57:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    io_out_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 110:15]

  module ComplexAdd_22 :
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

  module ComplexSub_22 :
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

  module ButterflyAdd_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2]}

    inst io_out_0_inst of ComplexAdd_22 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 109:15]
    inst io_out_1_inst of ComplexSub_22 @[Modules.scala 57:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_1_inst.io.op2.im <= io.in[1].im @[Modules.scala 59:17]
    io_out_1_inst.io.op2.re <= io.in[1].re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 110:15]

  module ComplexAdd_23 :
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

  module ComplexSub_23 :
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

  module ButterflyAdd_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2]}

    inst io_out_0_inst of ComplexAdd_23 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[1].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[1].re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 109:15]
    inst io_out_1_inst of ComplexSub_23 @[Modules.scala 57:22]
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

  module Exchange_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2][2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2][2]}

    io.out[0][0] <= io.in[0][0] @[Modules.scala 247:20]
    io.out[0][1] <= io.in[1][0] @[Modules.scala 247:20]
    io.out[1][0] <= io.in[0][1] @[Modules.scala 247:20]
    io.out[1][1] <= io.in[1][1] @[Modules.scala 247:20]

  module Exchange_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2][2], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2][2]}

    io.out[0][0] <= io.in[0][0] @[Modules.scala 247:20]
    io.out[0][1] <= io.in[1][0] @[Modules.scala 247:20]
    io.out[1][0] <= io.in[0][1] @[Modules.scala 247:20]
    io.out[1][1] <= io.in[1][1] @[Modules.scala 247:20]

  module Exchange_3 :
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

  module Switch_8 :
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

  module Switch_9 :
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

  module Switch_10 :
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

  module Switch_11 :
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
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

    reg cnt_0 : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[FFT.scala 39:46]
    reg cnt_1 : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[FFT.scala 39:46]
    reg cnt_2 : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[FFT.scala 39:46]
    cnt_1 <= cnt_0 @[FFT.scala 41:16]
    cnt_2 <= cnt_1 @[FFT.scala 41:16]
    node busy = neq(cnt_0, UInt<1>("h0")) @[FFT.scala 43:21]
    node _T = or(io.din_valid, busy) @[FFT.scala 44:21]
    when _T : @[FFT.scala 44:30]
      node _cnt_0_T = eq(cnt_0, UInt<5>("h11")) @[FFT.scala 45:26]
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
    wire unitDataIn_0_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_0_2[0] <= _unitDataIn_WIRE_8 @[FFT.scala 51:70]
    unitDataIn_0_2[1] <= _unitDataIn_WIRE_10 @[FFT.scala 51:70]
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
    wire unitDataIn_0_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_0_3[0] <= _unitDataIn_WIRE_12 @[FFT.scala 51:70]
    unitDataIn_0_3[1] <= _unitDataIn_WIRE_14 @[FFT.scala 51:70]
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
    wire unitDataIn_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_1_0[0] <= _unitDataIn_WIRE_16 @[FFT.scala 51:70]
    unitDataIn_1_0[1] <= _unitDataIn_WIRE_18 @[FFT.scala 51:70]
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
    wire unitDataIn_1_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_1_1[0] <= _unitDataIn_WIRE_20 @[FFT.scala 51:70]
    unitDataIn_1_1[1] <= _unitDataIn_WIRE_22 @[FFT.scala 51:70]
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
    wire unitDataIn_1_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_1_2[0] <= _unitDataIn_WIRE_24 @[FFT.scala 51:70]
    unitDataIn_1_2[1] <= _unitDataIn_WIRE_26 @[FFT.scala 51:70]
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
    wire unitDataIn_1_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_1_3[0] <= _unitDataIn_WIRE_28 @[FFT.scala 51:70]
    unitDataIn_1_3[1] <= _unitDataIn_WIRE_30 @[FFT.scala 51:70]
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
    wire unitDataIn_2_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_2_0[0] <= _unitDataIn_WIRE_32 @[FFT.scala 51:70]
    unitDataIn_2_0[1] <= _unitDataIn_WIRE_34 @[FFT.scala 51:70]
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
    wire unitDataIn_2_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_2_1[0] <= _unitDataIn_WIRE_36 @[FFT.scala 51:70]
    unitDataIn_2_1[1] <= _unitDataIn_WIRE_38 @[FFT.scala 51:70]
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
    wire unitDataIn_2_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_2_2[0] <= _unitDataIn_WIRE_40 @[FFT.scala 51:70]
    unitDataIn_2_2[1] <= _unitDataIn_WIRE_42 @[FFT.scala 51:70]
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
    wire unitDataIn_2_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_2_3[0] <= _unitDataIn_WIRE_44 @[FFT.scala 51:70]
    unitDataIn_2_3[1] <= _unitDataIn_WIRE_46 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_48 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_120 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_49 : UInt<20>
    _unitDataIn_WIRE_49 <= _unitDataIn_T_120
    node _unitDataIn_T_121 = bits(_unitDataIn_WIRE_49, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_122 = asFixedPoint(_unitDataIn_T_121, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_48.im <= _unitDataIn_T_122 @[FFT.scala 51:118]
    node _unitDataIn_T_123 = bits(_unitDataIn_WIRE_49, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_124 = asFixedPoint(_unitDataIn_T_123, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_48.re <= _unitDataIn_T_124 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_50 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_125 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_51 : UInt<20>
    _unitDataIn_WIRE_51 <= _unitDataIn_T_125
    node _unitDataIn_T_126 = bits(_unitDataIn_WIRE_51, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_127 = asFixedPoint(_unitDataIn_T_126, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_50.im <= _unitDataIn_T_127 @[FFT.scala 51:118]
    node _unitDataIn_T_128 = bits(_unitDataIn_WIRE_51, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_129 = asFixedPoint(_unitDataIn_T_128, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_50.re <= _unitDataIn_T_129 @[FFT.scala 51:118]
    wire unitDataIn_3_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_3_0[0] <= _unitDataIn_WIRE_48 @[FFT.scala 51:70]
    unitDataIn_3_0[1] <= _unitDataIn_WIRE_50 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_52 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_130 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_53 : UInt<20>
    _unitDataIn_WIRE_53 <= _unitDataIn_T_130
    node _unitDataIn_T_131 = bits(_unitDataIn_WIRE_53, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_132 = asFixedPoint(_unitDataIn_T_131, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_52.im <= _unitDataIn_T_132 @[FFT.scala 51:118]
    node _unitDataIn_T_133 = bits(_unitDataIn_WIRE_53, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_134 = asFixedPoint(_unitDataIn_T_133, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_52.re <= _unitDataIn_T_134 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_54 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_135 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_55 : UInt<20>
    _unitDataIn_WIRE_55 <= _unitDataIn_T_135
    node _unitDataIn_T_136 = bits(_unitDataIn_WIRE_55, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_137 = asFixedPoint(_unitDataIn_T_136, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_54.im <= _unitDataIn_T_137 @[FFT.scala 51:118]
    node _unitDataIn_T_138 = bits(_unitDataIn_WIRE_55, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_139 = asFixedPoint(_unitDataIn_T_138, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_54.re <= _unitDataIn_T_139 @[FFT.scala 51:118]
    wire unitDataIn_3_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_3_1[0] <= _unitDataIn_WIRE_52 @[FFT.scala 51:70]
    unitDataIn_3_1[1] <= _unitDataIn_WIRE_54 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_56 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_140 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_57 : UInt<20>
    _unitDataIn_WIRE_57 <= _unitDataIn_T_140
    node _unitDataIn_T_141 = bits(_unitDataIn_WIRE_57, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_142 = asFixedPoint(_unitDataIn_T_141, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_56.im <= _unitDataIn_T_142 @[FFT.scala 51:118]
    node _unitDataIn_T_143 = bits(_unitDataIn_WIRE_57, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_144 = asFixedPoint(_unitDataIn_T_143, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_56.re <= _unitDataIn_T_144 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_58 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_145 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_59 : UInt<20>
    _unitDataIn_WIRE_59 <= _unitDataIn_T_145
    node _unitDataIn_T_146 = bits(_unitDataIn_WIRE_59, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_147 = asFixedPoint(_unitDataIn_T_146, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_58.im <= _unitDataIn_T_147 @[FFT.scala 51:118]
    node _unitDataIn_T_148 = bits(_unitDataIn_WIRE_59, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_149 = asFixedPoint(_unitDataIn_T_148, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_58.re <= _unitDataIn_T_149 @[FFT.scala 51:118]
    wire unitDataIn_3_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_3_2[0] <= _unitDataIn_WIRE_56 @[FFT.scala 51:70]
    unitDataIn_3_2[1] <= _unitDataIn_WIRE_58 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_60 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_150 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_61 : UInt<20>
    _unitDataIn_WIRE_61 <= _unitDataIn_T_150
    node _unitDataIn_T_151 = bits(_unitDataIn_WIRE_61, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_152 = asFixedPoint(_unitDataIn_T_151, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_60.im <= _unitDataIn_T_152 @[FFT.scala 51:118]
    node _unitDataIn_T_153 = bits(_unitDataIn_WIRE_61, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_154 = asFixedPoint(_unitDataIn_T_153, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_60.re <= _unitDataIn_T_154 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_62 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_155 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_63 : UInt<20>
    _unitDataIn_WIRE_63 <= _unitDataIn_T_155
    node _unitDataIn_T_156 = bits(_unitDataIn_WIRE_63, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_157 = asFixedPoint(_unitDataIn_T_156, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_62.im <= _unitDataIn_T_157 @[FFT.scala 51:118]
    node _unitDataIn_T_158 = bits(_unitDataIn_WIRE_63, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_159 = asFixedPoint(_unitDataIn_T_158, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_62.re <= _unitDataIn_T_159 @[FFT.scala 51:118]
    wire unitDataIn_3_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_3_3[0] <= _unitDataIn_WIRE_60 @[FFT.scala 51:70]
    unitDataIn_3_3[1] <= _unitDataIn_WIRE_62 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_64 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_160 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_65 : UInt<20>
    _unitDataIn_WIRE_65 <= _unitDataIn_T_160
    node _unitDataIn_T_161 = bits(_unitDataIn_WIRE_65, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_162 = asFixedPoint(_unitDataIn_T_161, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_64.im <= _unitDataIn_T_162 @[FFT.scala 51:118]
    node _unitDataIn_T_163 = bits(_unitDataIn_WIRE_65, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_164 = asFixedPoint(_unitDataIn_T_163, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_64.re <= _unitDataIn_T_164 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_66 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_165 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_67 : UInt<20>
    _unitDataIn_WIRE_67 <= _unitDataIn_T_165
    node _unitDataIn_T_166 = bits(_unitDataIn_WIRE_67, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_167 = asFixedPoint(_unitDataIn_T_166, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_66.im <= _unitDataIn_T_167 @[FFT.scala 51:118]
    node _unitDataIn_T_168 = bits(_unitDataIn_WIRE_67, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_169 = asFixedPoint(_unitDataIn_T_168, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_66.re <= _unitDataIn_T_169 @[FFT.scala 51:118]
    wire unitDataIn_4_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_4_0[0] <= _unitDataIn_WIRE_64 @[FFT.scala 51:70]
    unitDataIn_4_0[1] <= _unitDataIn_WIRE_66 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_68 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_170 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_69 : UInt<20>
    _unitDataIn_WIRE_69 <= _unitDataIn_T_170
    node _unitDataIn_T_171 = bits(_unitDataIn_WIRE_69, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_172 = asFixedPoint(_unitDataIn_T_171, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_68.im <= _unitDataIn_T_172 @[FFT.scala 51:118]
    node _unitDataIn_T_173 = bits(_unitDataIn_WIRE_69, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_174 = asFixedPoint(_unitDataIn_T_173, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_68.re <= _unitDataIn_T_174 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_70 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_175 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_71 : UInt<20>
    _unitDataIn_WIRE_71 <= _unitDataIn_T_175
    node _unitDataIn_T_176 = bits(_unitDataIn_WIRE_71, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_177 = asFixedPoint(_unitDataIn_T_176, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_70.im <= _unitDataIn_T_177 @[FFT.scala 51:118]
    node _unitDataIn_T_178 = bits(_unitDataIn_WIRE_71, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_179 = asFixedPoint(_unitDataIn_T_178, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_70.re <= _unitDataIn_T_179 @[FFT.scala 51:118]
    wire unitDataIn_4_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_4_1[0] <= _unitDataIn_WIRE_68 @[FFT.scala 51:70]
    unitDataIn_4_1[1] <= _unitDataIn_WIRE_70 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_72 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_180 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_73 : UInt<20>
    _unitDataIn_WIRE_73 <= _unitDataIn_T_180
    node _unitDataIn_T_181 = bits(_unitDataIn_WIRE_73, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_182 = asFixedPoint(_unitDataIn_T_181, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_72.im <= _unitDataIn_T_182 @[FFT.scala 51:118]
    node _unitDataIn_T_183 = bits(_unitDataIn_WIRE_73, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_184 = asFixedPoint(_unitDataIn_T_183, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_72.re <= _unitDataIn_T_184 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_74 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_185 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_75 : UInt<20>
    _unitDataIn_WIRE_75 <= _unitDataIn_T_185
    node _unitDataIn_T_186 = bits(_unitDataIn_WIRE_75, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_187 = asFixedPoint(_unitDataIn_T_186, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_74.im <= _unitDataIn_T_187 @[FFT.scala 51:118]
    node _unitDataIn_T_188 = bits(_unitDataIn_WIRE_75, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_189 = asFixedPoint(_unitDataIn_T_188, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_74.re <= _unitDataIn_T_189 @[FFT.scala 51:118]
    wire unitDataIn_4_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_4_2[0] <= _unitDataIn_WIRE_72 @[FFT.scala 51:70]
    unitDataIn_4_2[1] <= _unitDataIn_WIRE_74 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_76 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_190 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_77 : UInt<20>
    _unitDataIn_WIRE_77 <= _unitDataIn_T_190
    node _unitDataIn_T_191 = bits(_unitDataIn_WIRE_77, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_192 = asFixedPoint(_unitDataIn_T_191, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_76.im <= _unitDataIn_T_192 @[FFT.scala 51:118]
    node _unitDataIn_T_193 = bits(_unitDataIn_WIRE_77, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_194 = asFixedPoint(_unitDataIn_T_193, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_76.re <= _unitDataIn_T_194 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_78 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_195 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_79 : UInt<20>
    _unitDataIn_WIRE_79 <= _unitDataIn_T_195
    node _unitDataIn_T_196 = bits(_unitDataIn_WIRE_79, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_197 = asFixedPoint(_unitDataIn_T_196, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_78.im <= _unitDataIn_T_197 @[FFT.scala 51:118]
    node _unitDataIn_T_198 = bits(_unitDataIn_WIRE_79, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_199 = asFixedPoint(_unitDataIn_T_198, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_78.re <= _unitDataIn_T_199 @[FFT.scala 51:118]
    wire unitDataIn_4_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_4_3[0] <= _unitDataIn_WIRE_76 @[FFT.scala 51:70]
    unitDataIn_4_3[1] <= _unitDataIn_WIRE_78 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_80 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_200 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_81 : UInt<20>
    _unitDataIn_WIRE_81 <= _unitDataIn_T_200
    node _unitDataIn_T_201 = bits(_unitDataIn_WIRE_81, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_202 = asFixedPoint(_unitDataIn_T_201, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_80.im <= _unitDataIn_T_202 @[FFT.scala 51:118]
    node _unitDataIn_T_203 = bits(_unitDataIn_WIRE_81, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_204 = asFixedPoint(_unitDataIn_T_203, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_80.re <= _unitDataIn_T_204 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_82 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_205 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_83 : UInt<20>
    _unitDataIn_WIRE_83 <= _unitDataIn_T_205
    node _unitDataIn_T_206 = bits(_unitDataIn_WIRE_83, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_207 = asFixedPoint(_unitDataIn_T_206, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_82.im <= _unitDataIn_T_207 @[FFT.scala 51:118]
    node _unitDataIn_T_208 = bits(_unitDataIn_WIRE_83, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_209 = asFixedPoint(_unitDataIn_T_208, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_82.re <= _unitDataIn_T_209 @[FFT.scala 51:118]
    wire unitDataIn_5_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_5_0[0] <= _unitDataIn_WIRE_80 @[FFT.scala 51:70]
    unitDataIn_5_0[1] <= _unitDataIn_WIRE_82 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_84 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_210 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_85 : UInt<20>
    _unitDataIn_WIRE_85 <= _unitDataIn_T_210
    node _unitDataIn_T_211 = bits(_unitDataIn_WIRE_85, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_212 = asFixedPoint(_unitDataIn_T_211, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_84.im <= _unitDataIn_T_212 @[FFT.scala 51:118]
    node _unitDataIn_T_213 = bits(_unitDataIn_WIRE_85, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_214 = asFixedPoint(_unitDataIn_T_213, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_84.re <= _unitDataIn_T_214 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_86 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_215 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_87 : UInt<20>
    _unitDataIn_WIRE_87 <= _unitDataIn_T_215
    node _unitDataIn_T_216 = bits(_unitDataIn_WIRE_87, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_217 = asFixedPoint(_unitDataIn_T_216, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_86.im <= _unitDataIn_T_217 @[FFT.scala 51:118]
    node _unitDataIn_T_218 = bits(_unitDataIn_WIRE_87, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_219 = asFixedPoint(_unitDataIn_T_218, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_86.re <= _unitDataIn_T_219 @[FFT.scala 51:118]
    wire unitDataIn_5_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_5_1[0] <= _unitDataIn_WIRE_84 @[FFT.scala 51:70]
    unitDataIn_5_1[1] <= _unitDataIn_WIRE_86 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_88 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_220 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_89 : UInt<20>
    _unitDataIn_WIRE_89 <= _unitDataIn_T_220
    node _unitDataIn_T_221 = bits(_unitDataIn_WIRE_89, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_222 = asFixedPoint(_unitDataIn_T_221, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_88.im <= _unitDataIn_T_222 @[FFT.scala 51:118]
    node _unitDataIn_T_223 = bits(_unitDataIn_WIRE_89, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_224 = asFixedPoint(_unitDataIn_T_223, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_88.re <= _unitDataIn_T_224 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_90 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_225 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_91 : UInt<20>
    _unitDataIn_WIRE_91 <= _unitDataIn_T_225
    node _unitDataIn_T_226 = bits(_unitDataIn_WIRE_91, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_227 = asFixedPoint(_unitDataIn_T_226, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_90.im <= _unitDataIn_T_227 @[FFT.scala 51:118]
    node _unitDataIn_T_228 = bits(_unitDataIn_WIRE_91, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_229 = asFixedPoint(_unitDataIn_T_228, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_90.re <= _unitDataIn_T_229 @[FFT.scala 51:118]
    wire unitDataIn_5_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_5_2[0] <= _unitDataIn_WIRE_88 @[FFT.scala 51:70]
    unitDataIn_5_2[1] <= _unitDataIn_WIRE_90 @[FFT.scala 51:70]
    wire _unitDataIn_WIRE_92 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_230 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_93 : UInt<20>
    _unitDataIn_WIRE_93 <= _unitDataIn_T_230
    node _unitDataIn_T_231 = bits(_unitDataIn_WIRE_93, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_232 = asFixedPoint(_unitDataIn_T_231, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_92.im <= _unitDataIn_T_232 @[FFT.scala 51:118]
    node _unitDataIn_T_233 = bits(_unitDataIn_WIRE_93, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_234 = asFixedPoint(_unitDataIn_T_233, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_92.re <= _unitDataIn_T_234 @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_94 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 51:118]
    node _unitDataIn_T_235 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 51:118]
    wire _unitDataIn_WIRE_95 : UInt<20>
    _unitDataIn_WIRE_95 <= _unitDataIn_T_235
    node _unitDataIn_T_236 = bits(_unitDataIn_WIRE_95, 9, 0) @[FFT.scala 51:118]
    node _unitDataIn_T_237 = asFixedPoint(_unitDataIn_T_236, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_94.im <= _unitDataIn_T_237 @[FFT.scala 51:118]
    node _unitDataIn_T_238 = bits(_unitDataIn_WIRE_95, 19, 10) @[FFT.scala 51:118]
    node _unitDataIn_T_239 = asFixedPoint(_unitDataIn_T_238, 5) @[FFT.scala 51:118]
    _unitDataIn_WIRE_94.re <= _unitDataIn_T_239 @[FFT.scala 51:118]
    wire unitDataIn_5_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 51:70]
    unitDataIn_5_3[0] <= _unitDataIn_WIRE_92 @[FFT.scala 51:70]
    unitDataIn_5_3[1] <= _unitDataIn_WIRE_94 @[FFT.scala 51:70]
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
    wire unitDataOut_0_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_0_2[0] <= _unitDataOut_WIRE_8 @[FFT.scala 52:75]
    unitDataOut_0_2[1] <= _unitDataOut_WIRE_10 @[FFT.scala 52:75]
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
    wire unitDataOut_0_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_0_3[0] <= _unitDataOut_WIRE_12 @[FFT.scala 52:75]
    unitDataOut_0_3[1] <= _unitDataOut_WIRE_14 @[FFT.scala 52:75]
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
    wire unitDataOut_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_1_0[0] <= _unitDataOut_WIRE_16 @[FFT.scala 52:75]
    unitDataOut_1_0[1] <= _unitDataOut_WIRE_18 @[FFT.scala 52:75]
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
    wire unitDataOut_1_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_1_1[0] <= _unitDataOut_WIRE_20 @[FFT.scala 52:75]
    unitDataOut_1_1[1] <= _unitDataOut_WIRE_22 @[FFT.scala 52:75]
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
    wire unitDataOut_1_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_1_2[0] <= _unitDataOut_WIRE_24 @[FFT.scala 52:75]
    unitDataOut_1_2[1] <= _unitDataOut_WIRE_26 @[FFT.scala 52:75]
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
    wire unitDataOut_1_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_1_3[0] <= _unitDataOut_WIRE_28 @[FFT.scala 52:75]
    unitDataOut_1_3[1] <= _unitDataOut_WIRE_30 @[FFT.scala 52:75]
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
    wire unitDataOut_2_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_2_0[0] <= _unitDataOut_WIRE_32 @[FFT.scala 52:75]
    unitDataOut_2_0[1] <= _unitDataOut_WIRE_34 @[FFT.scala 52:75]
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
    wire unitDataOut_2_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_2_1[0] <= _unitDataOut_WIRE_36 @[FFT.scala 52:75]
    unitDataOut_2_1[1] <= _unitDataOut_WIRE_38 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_40 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_100 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_41 : UInt<20>
    _unitDataOut_WIRE_41 <= _unitDataOut_T_100
    node _unitDataOut_T_101 = bits(_unitDataOut_WIRE_41, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_102 = asFixedPoint(_unitDataOut_T_101, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_40.im <= _unitDataOut_T_102 @[FFT.scala 52:123]
    node _unitDataOut_T_103 = bits(_unitDataOut_WIRE_41, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_104 = asFixedPoint(_unitDataOut_T_103, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_40.re <= _unitDataOut_T_104 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_42 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_105 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_43 : UInt<20>
    _unitDataOut_WIRE_43 <= _unitDataOut_T_105
    node _unitDataOut_T_106 = bits(_unitDataOut_WIRE_43, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_107 = asFixedPoint(_unitDataOut_T_106, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_42.im <= _unitDataOut_T_107 @[FFT.scala 52:123]
    node _unitDataOut_T_108 = bits(_unitDataOut_WIRE_43, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_109 = asFixedPoint(_unitDataOut_T_108, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_42.re <= _unitDataOut_T_109 @[FFT.scala 52:123]
    wire unitDataOut_2_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_2_2[0] <= _unitDataOut_WIRE_40 @[FFT.scala 52:75]
    unitDataOut_2_2[1] <= _unitDataOut_WIRE_42 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_44 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_110 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_45 : UInt<20>
    _unitDataOut_WIRE_45 <= _unitDataOut_T_110
    node _unitDataOut_T_111 = bits(_unitDataOut_WIRE_45, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_112 = asFixedPoint(_unitDataOut_T_111, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_44.im <= _unitDataOut_T_112 @[FFT.scala 52:123]
    node _unitDataOut_T_113 = bits(_unitDataOut_WIRE_45, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_114 = asFixedPoint(_unitDataOut_T_113, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_44.re <= _unitDataOut_T_114 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_46 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_115 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_47 : UInt<20>
    _unitDataOut_WIRE_47 <= _unitDataOut_T_115
    node _unitDataOut_T_116 = bits(_unitDataOut_WIRE_47, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_117 = asFixedPoint(_unitDataOut_T_116, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_46.im <= _unitDataOut_T_117 @[FFT.scala 52:123]
    node _unitDataOut_T_118 = bits(_unitDataOut_WIRE_47, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_119 = asFixedPoint(_unitDataOut_T_118, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_46.re <= _unitDataOut_T_119 @[FFT.scala 52:123]
    wire unitDataOut_2_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_2_3[0] <= _unitDataOut_WIRE_44 @[FFT.scala 52:75]
    unitDataOut_2_3[1] <= _unitDataOut_WIRE_46 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_48 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_120 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_49 : UInt<20>
    _unitDataOut_WIRE_49 <= _unitDataOut_T_120
    node _unitDataOut_T_121 = bits(_unitDataOut_WIRE_49, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_122 = asFixedPoint(_unitDataOut_T_121, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_48.im <= _unitDataOut_T_122 @[FFT.scala 52:123]
    node _unitDataOut_T_123 = bits(_unitDataOut_WIRE_49, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_124 = asFixedPoint(_unitDataOut_T_123, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_48.re <= _unitDataOut_T_124 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_50 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_125 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_51 : UInt<20>
    _unitDataOut_WIRE_51 <= _unitDataOut_T_125
    node _unitDataOut_T_126 = bits(_unitDataOut_WIRE_51, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_127 = asFixedPoint(_unitDataOut_T_126, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_50.im <= _unitDataOut_T_127 @[FFT.scala 52:123]
    node _unitDataOut_T_128 = bits(_unitDataOut_WIRE_51, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_129 = asFixedPoint(_unitDataOut_T_128, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_50.re <= _unitDataOut_T_129 @[FFT.scala 52:123]
    wire unitDataOut_3_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_3_0[0] <= _unitDataOut_WIRE_48 @[FFT.scala 52:75]
    unitDataOut_3_0[1] <= _unitDataOut_WIRE_50 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_52 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_130 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_53 : UInt<20>
    _unitDataOut_WIRE_53 <= _unitDataOut_T_130
    node _unitDataOut_T_131 = bits(_unitDataOut_WIRE_53, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_132 = asFixedPoint(_unitDataOut_T_131, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_52.im <= _unitDataOut_T_132 @[FFT.scala 52:123]
    node _unitDataOut_T_133 = bits(_unitDataOut_WIRE_53, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_134 = asFixedPoint(_unitDataOut_T_133, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_52.re <= _unitDataOut_T_134 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_54 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_135 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_55 : UInt<20>
    _unitDataOut_WIRE_55 <= _unitDataOut_T_135
    node _unitDataOut_T_136 = bits(_unitDataOut_WIRE_55, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_137 = asFixedPoint(_unitDataOut_T_136, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_54.im <= _unitDataOut_T_137 @[FFT.scala 52:123]
    node _unitDataOut_T_138 = bits(_unitDataOut_WIRE_55, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_139 = asFixedPoint(_unitDataOut_T_138, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_54.re <= _unitDataOut_T_139 @[FFT.scala 52:123]
    wire unitDataOut_3_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_3_1[0] <= _unitDataOut_WIRE_52 @[FFT.scala 52:75]
    unitDataOut_3_1[1] <= _unitDataOut_WIRE_54 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_56 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_140 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_57 : UInt<20>
    _unitDataOut_WIRE_57 <= _unitDataOut_T_140
    node _unitDataOut_T_141 = bits(_unitDataOut_WIRE_57, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_142 = asFixedPoint(_unitDataOut_T_141, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_56.im <= _unitDataOut_T_142 @[FFT.scala 52:123]
    node _unitDataOut_T_143 = bits(_unitDataOut_WIRE_57, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_144 = asFixedPoint(_unitDataOut_T_143, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_56.re <= _unitDataOut_T_144 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_58 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_145 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_59 : UInt<20>
    _unitDataOut_WIRE_59 <= _unitDataOut_T_145
    node _unitDataOut_T_146 = bits(_unitDataOut_WIRE_59, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_147 = asFixedPoint(_unitDataOut_T_146, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_58.im <= _unitDataOut_T_147 @[FFT.scala 52:123]
    node _unitDataOut_T_148 = bits(_unitDataOut_WIRE_59, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_149 = asFixedPoint(_unitDataOut_T_148, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_58.re <= _unitDataOut_T_149 @[FFT.scala 52:123]
    wire unitDataOut_3_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_3_2[0] <= _unitDataOut_WIRE_56 @[FFT.scala 52:75]
    unitDataOut_3_2[1] <= _unitDataOut_WIRE_58 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_60 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_150 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_61 : UInt<20>
    _unitDataOut_WIRE_61 <= _unitDataOut_T_150
    node _unitDataOut_T_151 = bits(_unitDataOut_WIRE_61, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_152 = asFixedPoint(_unitDataOut_T_151, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_60.im <= _unitDataOut_T_152 @[FFT.scala 52:123]
    node _unitDataOut_T_153 = bits(_unitDataOut_WIRE_61, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_154 = asFixedPoint(_unitDataOut_T_153, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_60.re <= _unitDataOut_T_154 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_62 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_155 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_63 : UInt<20>
    _unitDataOut_WIRE_63 <= _unitDataOut_T_155
    node _unitDataOut_T_156 = bits(_unitDataOut_WIRE_63, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_157 = asFixedPoint(_unitDataOut_T_156, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_62.im <= _unitDataOut_T_157 @[FFT.scala 52:123]
    node _unitDataOut_T_158 = bits(_unitDataOut_WIRE_63, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_159 = asFixedPoint(_unitDataOut_T_158, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_62.re <= _unitDataOut_T_159 @[FFT.scala 52:123]
    wire unitDataOut_3_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_3_3[0] <= _unitDataOut_WIRE_60 @[FFT.scala 52:75]
    unitDataOut_3_3[1] <= _unitDataOut_WIRE_62 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_64 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_160 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_65 : UInt<20>
    _unitDataOut_WIRE_65 <= _unitDataOut_T_160
    node _unitDataOut_T_161 = bits(_unitDataOut_WIRE_65, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_162 = asFixedPoint(_unitDataOut_T_161, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_64.im <= _unitDataOut_T_162 @[FFT.scala 52:123]
    node _unitDataOut_T_163 = bits(_unitDataOut_WIRE_65, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_164 = asFixedPoint(_unitDataOut_T_163, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_64.re <= _unitDataOut_T_164 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_66 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_165 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_67 : UInt<20>
    _unitDataOut_WIRE_67 <= _unitDataOut_T_165
    node _unitDataOut_T_166 = bits(_unitDataOut_WIRE_67, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_167 = asFixedPoint(_unitDataOut_T_166, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_66.im <= _unitDataOut_T_167 @[FFT.scala 52:123]
    node _unitDataOut_T_168 = bits(_unitDataOut_WIRE_67, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_169 = asFixedPoint(_unitDataOut_T_168, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_66.re <= _unitDataOut_T_169 @[FFT.scala 52:123]
    wire unitDataOut_4_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_4_0[0] <= _unitDataOut_WIRE_64 @[FFT.scala 52:75]
    unitDataOut_4_0[1] <= _unitDataOut_WIRE_66 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_68 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_170 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_69 : UInt<20>
    _unitDataOut_WIRE_69 <= _unitDataOut_T_170
    node _unitDataOut_T_171 = bits(_unitDataOut_WIRE_69, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_172 = asFixedPoint(_unitDataOut_T_171, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_68.im <= _unitDataOut_T_172 @[FFT.scala 52:123]
    node _unitDataOut_T_173 = bits(_unitDataOut_WIRE_69, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_174 = asFixedPoint(_unitDataOut_T_173, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_68.re <= _unitDataOut_T_174 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_70 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_175 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_71 : UInt<20>
    _unitDataOut_WIRE_71 <= _unitDataOut_T_175
    node _unitDataOut_T_176 = bits(_unitDataOut_WIRE_71, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_177 = asFixedPoint(_unitDataOut_T_176, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_70.im <= _unitDataOut_T_177 @[FFT.scala 52:123]
    node _unitDataOut_T_178 = bits(_unitDataOut_WIRE_71, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_179 = asFixedPoint(_unitDataOut_T_178, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_70.re <= _unitDataOut_T_179 @[FFT.scala 52:123]
    wire unitDataOut_4_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_4_1[0] <= _unitDataOut_WIRE_68 @[FFT.scala 52:75]
    unitDataOut_4_1[1] <= _unitDataOut_WIRE_70 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_72 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_180 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_73 : UInt<20>
    _unitDataOut_WIRE_73 <= _unitDataOut_T_180
    node _unitDataOut_T_181 = bits(_unitDataOut_WIRE_73, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_182 = asFixedPoint(_unitDataOut_T_181, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_72.im <= _unitDataOut_T_182 @[FFT.scala 52:123]
    node _unitDataOut_T_183 = bits(_unitDataOut_WIRE_73, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_184 = asFixedPoint(_unitDataOut_T_183, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_72.re <= _unitDataOut_T_184 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_74 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_185 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_75 : UInt<20>
    _unitDataOut_WIRE_75 <= _unitDataOut_T_185
    node _unitDataOut_T_186 = bits(_unitDataOut_WIRE_75, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_187 = asFixedPoint(_unitDataOut_T_186, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_74.im <= _unitDataOut_T_187 @[FFT.scala 52:123]
    node _unitDataOut_T_188 = bits(_unitDataOut_WIRE_75, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_189 = asFixedPoint(_unitDataOut_T_188, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_74.re <= _unitDataOut_T_189 @[FFT.scala 52:123]
    wire unitDataOut_4_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_4_2[0] <= _unitDataOut_WIRE_72 @[FFT.scala 52:75]
    unitDataOut_4_2[1] <= _unitDataOut_WIRE_74 @[FFT.scala 52:75]
    wire _unitDataOut_WIRE_76 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_190 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_77 : UInt<20>
    _unitDataOut_WIRE_77 <= _unitDataOut_T_190
    node _unitDataOut_T_191 = bits(_unitDataOut_WIRE_77, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_192 = asFixedPoint(_unitDataOut_T_191, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_76.im <= _unitDataOut_T_192 @[FFT.scala 52:123]
    node _unitDataOut_T_193 = bits(_unitDataOut_WIRE_77, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_194 = asFixedPoint(_unitDataOut_T_193, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_76.re <= _unitDataOut_T_194 @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_78 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 52:123]
    node _unitDataOut_T_195 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 52:123]
    wire _unitDataOut_WIRE_79 : UInt<20>
    _unitDataOut_WIRE_79 <= _unitDataOut_T_195
    node _unitDataOut_T_196 = bits(_unitDataOut_WIRE_79, 9, 0) @[FFT.scala 52:123]
    node _unitDataOut_T_197 = asFixedPoint(_unitDataOut_T_196, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_78.im <= _unitDataOut_T_197 @[FFT.scala 52:123]
    node _unitDataOut_T_198 = bits(_unitDataOut_WIRE_79, 19, 10) @[FFT.scala 52:123]
    node _unitDataOut_T_199 = asFixedPoint(_unitDataOut_T_198, 5) @[FFT.scala 52:123]
    _unitDataOut_WIRE_78.re <= _unitDataOut_T_199 @[FFT.scala 52:123]
    wire unitDataOut_4_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2] @[FFT.scala 52:75]
    unitDataOut_4_3[0] <= _unitDataOut_WIRE_76 @[FFT.scala 52:75]
    unitDataOut_4_3[1] <= _unitDataOut_WIRE_78 @[FFT.scala 52:75]
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
    wire _datao_WIRE_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_20 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_9 : UInt<20>
    _datao_WIRE_9 <= _datao_T_20
    node _datao_T_21 = bits(_datao_WIRE_9, 9, 0) @[FFT.scala 53:86]
    node _datao_T_22 = asFixedPoint(_datao_T_21, 5) @[FFT.scala 53:86]
    _datao_WIRE_8.im <= _datao_T_22 @[FFT.scala 53:86]
    node _datao_T_23 = bits(_datao_WIRE_9, 19, 10) @[FFT.scala 53:86]
    node _datao_T_24 = asFixedPoint(_datao_T_23, 5) @[FFT.scala 53:86]
    _datao_WIRE_8.re <= _datao_T_24 @[FFT.scala 53:86]
    wire _datao_WIRE_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_25 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_11 : UInt<20>
    _datao_WIRE_11 <= _datao_T_25
    node _datao_T_26 = bits(_datao_WIRE_11, 9, 0) @[FFT.scala 53:86]
    node _datao_T_27 = asFixedPoint(_datao_T_26, 5) @[FFT.scala 53:86]
    _datao_WIRE_10.im <= _datao_T_27 @[FFT.scala 53:86]
    node _datao_T_28 = bits(_datao_WIRE_11, 19, 10) @[FFT.scala 53:86]
    node _datao_T_29 = asFixedPoint(_datao_T_28, 5) @[FFT.scala 53:86]
    _datao_WIRE_10.re <= _datao_T_29 @[FFT.scala 53:86]
    wire _datao_WIRE_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_30 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_13 : UInt<20>
    _datao_WIRE_13 <= _datao_T_30
    node _datao_T_31 = bits(_datao_WIRE_13, 9, 0) @[FFT.scala 53:86]
    node _datao_T_32 = asFixedPoint(_datao_T_31, 5) @[FFT.scala 53:86]
    _datao_WIRE_12.im <= _datao_T_32 @[FFT.scala 53:86]
    node _datao_T_33 = bits(_datao_WIRE_13, 19, 10) @[FFT.scala 53:86]
    node _datao_T_34 = asFixedPoint(_datao_T_33, 5) @[FFT.scala 53:86]
    _datao_WIRE_12.re <= _datao_T_34 @[FFT.scala 53:86]
    wire _datao_WIRE_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_35 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_15 : UInt<20>
    _datao_WIRE_15 <= _datao_T_35
    node _datao_T_36 = bits(_datao_WIRE_15, 9, 0) @[FFT.scala 53:86]
    node _datao_T_37 = asFixedPoint(_datao_T_36, 5) @[FFT.scala 53:86]
    _datao_WIRE_14.im <= _datao_T_37 @[FFT.scala 53:86]
    node _datao_T_38 = bits(_datao_WIRE_15, 19, 10) @[FFT.scala 53:86]
    node _datao_T_39 = asFixedPoint(_datao_T_38, 5) @[FFT.scala 53:86]
    _datao_WIRE_14.re <= _datao_T_39 @[FFT.scala 53:86]
    wire datao : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[FFT.scala 53:22]
    datao[0] <= _datao_WIRE @[FFT.scala 53:22]
    datao[1] <= _datao_WIRE_2 @[FFT.scala 53:22]
    datao[2] <= _datao_WIRE_4 @[FFT.scala 53:22]
    datao[3] <= _datao_WIRE_6 @[FFT.scala 53:22]
    datao[4] <= _datao_WIRE_8 @[FFT.scala 53:22]
    datao[5] <= _datao_WIRE_10 @[FFT.scala 53:22]
    datao[6] <= _datao_WIRE_12 @[FFT.scala 53:22]
    datao[7] <= _datao_WIRE_14 @[FFT.scala 53:22]
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
    node _wnList_T_2 = add(UInt<4>("h8"), cnt_0) @[FFT.scala 64:83]
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
    wnList_0_1.re <= _wnList_res_re_WIRE_1[_wnList_T_3] @[FFT.scala 32:12]
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
    wnList_0_1.im <= _wnList_res_im_WIRE_1[_wnList_T_3] @[FFT.scala 33:12]
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
    node _wnList_T_4 = add(UInt<5>("h10"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_5 = tail(_wnList_T_4, 1) @[FFT.scala 64:83]
    wire wnList_0_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_2 : Fixed<10><<5>>[32] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[1] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[2] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[3] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[4] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[5] <= asFixedPoint(UInt<10>("h1c"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[6] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[7] <= asFixedPoint(UInt<10>("h19"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[8] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[9] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[10] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[11] <= asFixedPoint(UInt<10>("hf"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[13] <= asFixedPoint(UInt<10>("h9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[14] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[15] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[16] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[17] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[18] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[19] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[20] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[21] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[22] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[23] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[24] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[25] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[26] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[27] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[28] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[29] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[30] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[31] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 28:12]
    wnList_0_2.re <= _wnList_res_re_WIRE_2[_wnList_T_5] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_2 : Fixed<10><<5>>[32] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[1] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[2] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[3] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[5] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[6] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[7] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[9] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[10] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[11] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[13] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[14] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[15] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[16] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[17] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[18] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[19] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[20] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[21] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[22] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[23] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[24] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[25] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[26] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[27] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[28] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[29] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[30] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[31] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    wnList_0_2.im <= _wnList_res_im_WIRE_2[_wnList_T_5] @[FFT.scala 33:12]
    inst inst_2 of ButterflyMul_2 @[Modules.scala 210:22]
    inst_2.clock <= clock
    inst_2.reset <= reset
    inst_2.io.in[0].im <= unitDataIn_0_2[0].im @[Modules.scala 211:16]
    inst_2.io.in[0].re <= unitDataIn_0_2[0].re @[Modules.scala 211:16]
    inst_2.io.in[1].im <= unitDataIn_0_2[1].im @[Modules.scala 211:16]
    inst_2.io.in[1].re <= unitDataIn_0_2[1].re @[Modules.scala 211:16]
    inst_2.io.wn[0].im <= wnList_0_2.im @[Modules.scala 212:16]
    inst_2.io.wn[0].re <= wnList_0_2.re @[Modules.scala 212:16]
    unitDataOut_0_2 <= inst_2.io.out @[FFT.scala 65:25]
    node _wnList_T_6 = add(UInt<5>("h18"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_7 = tail(_wnList_T_6, 1) @[FFT.scala 64:83]
    wire wnList_0_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_3 : Fixed<10><<5>>[32] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[1] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[2] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[3] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[4] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[5] <= asFixedPoint(UInt<10>("h1c"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[6] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[7] <= asFixedPoint(UInt<10>("h19"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[8] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[9] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[10] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[11] <= asFixedPoint(UInt<10>("hf"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[13] <= asFixedPoint(UInt<10>("h9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[14] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[15] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[16] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[17] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[18] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[19] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[20] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[21] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[22] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[23] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[24] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[25] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[26] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[27] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[28] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[29] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[30] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[31] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 28:12]
    wnList_0_3.re <= _wnList_res_re_WIRE_3[_wnList_T_7] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_3 : Fixed<10><<5>>[32] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[1] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[2] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[3] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[5] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[6] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[7] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[9] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[10] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[11] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[13] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[14] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[15] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[16] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[17] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[18] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[19] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[20] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[21] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[22] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[23] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[24] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[25] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[26] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[27] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[28] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[29] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[30] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[31] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    wnList_0_3.im <= _wnList_res_im_WIRE_3[_wnList_T_7] @[FFT.scala 33:12]
    inst inst_3 of ButterflyMul_3 @[Modules.scala 210:22]
    inst_3.clock <= clock
    inst_3.reset <= reset
    inst_3.io.in[0].im <= unitDataIn_0_3[0].im @[Modules.scala 211:16]
    inst_3.io.in[0].re <= unitDataIn_0_3[0].re @[Modules.scala 211:16]
    inst_3.io.in[1].im <= unitDataIn_0_3[1].im @[Modules.scala 211:16]
    inst_3.io.in[1].re <= unitDataIn_0_3[1].re @[Modules.scala 211:16]
    inst_3.io.wn[0].im <= wnList_0_3.im @[Modules.scala 212:16]
    inst_3.io.wn[0].re <= wnList_0_3.re @[Modules.scala 212:16]
    unitDataOut_0_3 <= inst_3.io.out @[FFT.scala 65:25]
    node _wnList_T_8 = add(UInt<1>("h0"), cnt_1) @[FFT.scala 64:83]
    node _wnList_T_9 = tail(_wnList_T_8, 1) @[FFT.scala 64:83]
    wire wnList_0_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_4 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[8] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[9] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[10] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[11] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[13] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[14] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[15] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T = bits(_wnList_T_9, 3, 0)
    wnList_0_4.re <= _wnList_res_re_WIRE_4[_wnList_res_re_T] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_4 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[8] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[9] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[10] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[11] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[13] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[14] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[15] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T = bits(_wnList_T_9, 3, 0)
    wnList_0_4.im <= _wnList_res_im_WIRE_4[_wnList_res_im_T] @[FFT.scala 33:12]
    inst inst_4 of ButterflyMul_4 @[Modules.scala 210:22]
    inst_4.clock <= clock
    inst_4.reset <= reset
    inst_4.io.in[0].im <= unitDataIn_1_0[0].im @[Modules.scala 211:16]
    inst_4.io.in[0].re <= unitDataIn_1_0[0].re @[Modules.scala 211:16]
    inst_4.io.in[1].im <= unitDataIn_1_0[1].im @[Modules.scala 211:16]
    inst_4.io.in[1].re <= unitDataIn_1_0[1].re @[Modules.scala 211:16]
    inst_4.io.wn[0].im <= wnList_0_4.im @[Modules.scala 212:16]
    inst_4.io.wn[0].re <= wnList_0_4.re @[Modules.scala 212:16]
    unitDataOut_1_0 <= inst_4.io.out @[FFT.scala 65:25]
    node _wnList_T_10 = add(UInt<4>("h8"), cnt_1) @[FFT.scala 64:83]
    node _wnList_T_11 = tail(_wnList_T_10, 1) @[FFT.scala 64:83]
    wire wnList_0_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_5 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[8] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[9] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[10] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[11] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[13] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[14] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[15] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_1 = bits(_wnList_T_11, 3, 0)
    wnList_0_5.re <= _wnList_res_re_WIRE_5[_wnList_res_re_T_1] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_5 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[8] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[9] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[10] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[11] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[13] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[14] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[15] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_1 = bits(_wnList_T_11, 3, 0)
    wnList_0_5.im <= _wnList_res_im_WIRE_5[_wnList_res_im_T_1] @[FFT.scala 33:12]
    inst inst_5 of ButterflyMul_5 @[Modules.scala 210:22]
    inst_5.clock <= clock
    inst_5.reset <= reset
    inst_5.io.in[0].im <= unitDataIn_1_1[0].im @[Modules.scala 211:16]
    inst_5.io.in[0].re <= unitDataIn_1_1[0].re @[Modules.scala 211:16]
    inst_5.io.in[1].im <= unitDataIn_1_1[1].im @[Modules.scala 211:16]
    inst_5.io.in[1].re <= unitDataIn_1_1[1].re @[Modules.scala 211:16]
    inst_5.io.wn[0].im <= wnList_0_5.im @[Modules.scala 212:16]
    inst_5.io.wn[0].re <= wnList_0_5.re @[Modules.scala 212:16]
    unitDataOut_1_1 <= inst_5.io.out @[FFT.scala 65:25]
    node _wnList_T_12 = add(UInt<1>("h0"), cnt_1) @[FFT.scala 64:83]
    node _wnList_T_13 = tail(_wnList_T_12, 1) @[FFT.scala 64:83]
    wire wnList_0_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_6 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[8] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[9] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[10] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[11] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[13] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[14] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[15] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_2 = bits(_wnList_T_13, 3, 0)
    wnList_0_6.re <= _wnList_res_re_WIRE_6[_wnList_res_re_T_2] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_6 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[8] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[9] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[10] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[11] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[13] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[14] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[15] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_2 = bits(_wnList_T_13, 3, 0)
    wnList_0_6.im <= _wnList_res_im_WIRE_6[_wnList_res_im_T_2] @[FFT.scala 33:12]
    inst inst_6 of ButterflyMul_6 @[Modules.scala 210:22]
    inst_6.clock <= clock
    inst_6.reset <= reset
    inst_6.io.in[0].im <= unitDataIn_1_2[0].im @[Modules.scala 211:16]
    inst_6.io.in[0].re <= unitDataIn_1_2[0].re @[Modules.scala 211:16]
    inst_6.io.in[1].im <= unitDataIn_1_2[1].im @[Modules.scala 211:16]
    inst_6.io.in[1].re <= unitDataIn_1_2[1].re @[Modules.scala 211:16]
    inst_6.io.wn[0].im <= wnList_0_6.im @[Modules.scala 212:16]
    inst_6.io.wn[0].re <= wnList_0_6.re @[Modules.scala 212:16]
    unitDataOut_1_2 <= inst_6.io.out @[FFT.scala 65:25]
    node _wnList_T_14 = add(UInt<4>("h8"), cnt_1) @[FFT.scala 64:83]
    node _wnList_T_15 = tail(_wnList_T_14, 1) @[FFT.scala 64:83]
    wire wnList_0_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_7 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[8] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[9] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[10] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[11] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[13] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[14] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_7[15] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_3 = bits(_wnList_T_15, 3, 0)
    wnList_0_7.re <= _wnList_res_re_WIRE_7[_wnList_res_re_T_3] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_7 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[8] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[9] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[10] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[11] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[13] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[14] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_7[15] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_3 = bits(_wnList_T_15, 3, 0)
    wnList_0_7.im <= _wnList_res_im_WIRE_7[_wnList_res_im_T_3] @[FFT.scala 33:12]
    inst inst_7 of ButterflyMul_7 @[Modules.scala 210:22]
    inst_7.clock <= clock
    inst_7.reset <= reset
    inst_7.io.in[0].im <= unitDataIn_1_3[0].im @[Modules.scala 211:16]
    inst_7.io.in[0].re <= unitDataIn_1_3[0].re @[Modules.scala 211:16]
    inst_7.io.in[1].im <= unitDataIn_1_3[1].im @[Modules.scala 211:16]
    inst_7.io.in[1].re <= unitDataIn_1_3[1].re @[Modules.scala 211:16]
    inst_7.io.wn[0].im <= wnList_0_7.im @[Modules.scala 212:16]
    inst_7.io.wn[0].re <= wnList_0_7.re @[Modules.scala 212:16]
    unitDataOut_1_3 <= inst_7.io.out @[FFT.scala 65:25]
    node wnCtrl = bits(cnt_2, 2, 0) @[FFT.scala 60:23]
    node _wnList_T_16 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_17 = tail(_wnList_T_16, 1) @[FFT.scala 64:83]
    wire wnList_0_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_8 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[4] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[5] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[7] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_0_8.re <= _wnList_res_re_WIRE_8[_wnList_T_17] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_8 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[4] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[5] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[7] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    wnList_0_8.im <= _wnList_res_im_WIRE_8[_wnList_T_17] @[FFT.scala 33:12]
    inst inst_8 of ButterflyMul_8 @[Modules.scala 210:22]
    inst_8.clock <= clock
    inst_8.reset <= reset
    inst_8.io.in[0].im <= unitDataIn_2_0[0].im @[Modules.scala 211:16]
    inst_8.io.in[0].re <= unitDataIn_2_0[0].re @[Modules.scala 211:16]
    inst_8.io.in[1].im <= unitDataIn_2_0[1].im @[Modules.scala 211:16]
    inst_8.io.in[1].re <= unitDataIn_2_0[1].re @[Modules.scala 211:16]
    inst_8.io.wn[0].im <= wnList_0_8.im @[Modules.scala 212:16]
    inst_8.io.wn[0].re <= wnList_0_8.re @[Modules.scala 212:16]
    unitDataOut_2_0 <= inst_8.io.out @[FFT.scala 65:25]
    node _wnList_T_18 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_19 = tail(_wnList_T_18, 1) @[FFT.scala 64:83]
    wire wnList_0_9 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_9 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[4] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[5] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[7] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_0_9.re <= _wnList_res_re_WIRE_9[_wnList_T_19] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_9 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[4] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[5] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[7] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    wnList_0_9.im <= _wnList_res_im_WIRE_9[_wnList_T_19] @[FFT.scala 33:12]
    inst inst_9 of ButterflyMul_9 @[Modules.scala 210:22]
    inst_9.clock <= clock
    inst_9.reset <= reset
    inst_9.io.in[0].im <= unitDataIn_2_1[0].im @[Modules.scala 211:16]
    inst_9.io.in[0].re <= unitDataIn_2_1[0].re @[Modules.scala 211:16]
    inst_9.io.in[1].im <= unitDataIn_2_1[1].im @[Modules.scala 211:16]
    inst_9.io.in[1].re <= unitDataIn_2_1[1].re @[Modules.scala 211:16]
    inst_9.io.wn[0].im <= wnList_0_9.im @[Modules.scala 212:16]
    inst_9.io.wn[0].re <= wnList_0_9.re @[Modules.scala 212:16]
    unitDataOut_2_1 <= inst_9.io.out @[FFT.scala 65:25]
    node _wnList_T_20 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_21 = tail(_wnList_T_20, 1) @[FFT.scala 64:83]
    wire wnList_0_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_10 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[4] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[5] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[7] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_0_10.re <= _wnList_res_re_WIRE_10[_wnList_T_21] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_10 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[4] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[5] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[7] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    wnList_0_10.im <= _wnList_res_im_WIRE_10[_wnList_T_21] @[FFT.scala 33:12]
    inst inst_10 of ButterflyMul_10 @[Modules.scala 210:22]
    inst_10.clock <= clock
    inst_10.reset <= reset
    inst_10.io.in[0].im <= unitDataIn_2_2[0].im @[Modules.scala 211:16]
    inst_10.io.in[0].re <= unitDataIn_2_2[0].re @[Modules.scala 211:16]
    inst_10.io.in[1].im <= unitDataIn_2_2[1].im @[Modules.scala 211:16]
    inst_10.io.in[1].re <= unitDataIn_2_2[1].re @[Modules.scala 211:16]
    inst_10.io.wn[0].im <= wnList_0_10.im @[Modules.scala 212:16]
    inst_10.io.wn[0].re <= wnList_0_10.re @[Modules.scala 212:16]
    unitDataOut_2_2 <= inst_10.io.out @[FFT.scala 65:25]
    node _wnList_T_22 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_23 = tail(_wnList_T_22, 1) @[FFT.scala 64:83]
    wire wnList_0_11 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_11 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[4] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[5] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[7] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_0_11.re <= _wnList_res_re_WIRE_11[_wnList_T_23] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_11 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[4] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[5] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[7] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    wnList_0_11.im <= _wnList_res_im_WIRE_11[_wnList_T_23] @[FFT.scala 33:12]
    inst inst_11 of ButterflyMul_11 @[Modules.scala 210:22]
    inst_11.clock <= clock
    inst_11.reset <= reset
    inst_11.io.in[0].im <= unitDataIn_2_3[0].im @[Modules.scala 211:16]
    inst_11.io.in[0].re <= unitDataIn_2_3[0].re @[Modules.scala 211:16]
    inst_11.io.in[1].im <= unitDataIn_2_3[1].im @[Modules.scala 211:16]
    inst_11.io.in[1].re <= unitDataIn_2_3[1].re @[Modules.scala 211:16]
    inst_11.io.wn[0].im <= wnList_0_11.im @[Modules.scala 212:16]
    inst_11.io.wn[0].re <= wnList_0_11.re @[Modules.scala 212:16]
    unitDataOut_2_3 <= inst_11.io.out @[FFT.scala 65:25]
    node wnCtrl_1 = bits(cnt_2, 1, 0) @[FFT.scala 60:23]
    node _wnList_T_24 = add(UInt<1>("h0"), wnCtrl_1) @[FFT.scala 64:83]
    node _wnList_T_25 = tail(_wnList_T_24, 1) @[FFT.scala 64:83]
    wire wnList_0_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_12 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_12[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_12[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_12[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_12[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_0_12.re <= _wnList_res_re_WIRE_12[_wnList_T_25] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_12 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_12[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_12[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_12[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_12[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_0_12.im <= _wnList_res_im_WIRE_12[_wnList_T_25] @[FFT.scala 33:12]
    inst inst_12 of ButterflyMul_12 @[Modules.scala 210:22]
    inst_12.clock <= clock
    inst_12.reset <= reset
    inst_12.io.in[0].im <= unitDataIn_3_0[0].im @[Modules.scala 211:16]
    inst_12.io.in[0].re <= unitDataIn_3_0[0].re @[Modules.scala 211:16]
    inst_12.io.in[1].im <= unitDataIn_3_0[1].im @[Modules.scala 211:16]
    inst_12.io.in[1].re <= unitDataIn_3_0[1].re @[Modules.scala 211:16]
    inst_12.io.wn[0].im <= wnList_0_12.im @[Modules.scala 212:16]
    inst_12.io.wn[0].re <= wnList_0_12.re @[Modules.scala 212:16]
    unitDataOut_3_0 <= inst_12.io.out @[FFT.scala 65:25]
    node _wnList_T_26 = add(UInt<1>("h0"), wnCtrl_1) @[FFT.scala 64:83]
    node _wnList_T_27 = tail(_wnList_T_26, 1) @[FFT.scala 64:83]
    wire wnList_0_13 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_13 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_13[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_13[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_13[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_13[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_0_13.re <= _wnList_res_re_WIRE_13[_wnList_T_27] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_13 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_13[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_13[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_13[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_13[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_0_13.im <= _wnList_res_im_WIRE_13[_wnList_T_27] @[FFT.scala 33:12]
    inst inst_13 of ButterflyMul_13 @[Modules.scala 210:22]
    inst_13.clock <= clock
    inst_13.reset <= reset
    inst_13.io.in[0].im <= unitDataIn_3_1[0].im @[Modules.scala 211:16]
    inst_13.io.in[0].re <= unitDataIn_3_1[0].re @[Modules.scala 211:16]
    inst_13.io.in[1].im <= unitDataIn_3_1[1].im @[Modules.scala 211:16]
    inst_13.io.in[1].re <= unitDataIn_3_1[1].re @[Modules.scala 211:16]
    inst_13.io.wn[0].im <= wnList_0_13.im @[Modules.scala 212:16]
    inst_13.io.wn[0].re <= wnList_0_13.re @[Modules.scala 212:16]
    unitDataOut_3_1 <= inst_13.io.out @[FFT.scala 65:25]
    node _wnList_T_28 = add(UInt<1>("h0"), wnCtrl_1) @[FFT.scala 64:83]
    node _wnList_T_29 = tail(_wnList_T_28, 1) @[FFT.scala 64:83]
    wire wnList_0_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_14 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_14[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_14[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_14[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_14[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_0_14.re <= _wnList_res_re_WIRE_14[_wnList_T_29] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_14 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_14[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_14[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_14[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_14[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_0_14.im <= _wnList_res_im_WIRE_14[_wnList_T_29] @[FFT.scala 33:12]
    inst inst_14 of ButterflyMul_14 @[Modules.scala 210:22]
    inst_14.clock <= clock
    inst_14.reset <= reset
    inst_14.io.in[0].im <= unitDataIn_3_2[0].im @[Modules.scala 211:16]
    inst_14.io.in[0].re <= unitDataIn_3_2[0].re @[Modules.scala 211:16]
    inst_14.io.in[1].im <= unitDataIn_3_2[1].im @[Modules.scala 211:16]
    inst_14.io.in[1].re <= unitDataIn_3_2[1].re @[Modules.scala 211:16]
    inst_14.io.wn[0].im <= wnList_0_14.im @[Modules.scala 212:16]
    inst_14.io.wn[0].re <= wnList_0_14.re @[Modules.scala 212:16]
    unitDataOut_3_2 <= inst_14.io.out @[FFT.scala 65:25]
    node _wnList_T_30 = add(UInt<1>("h0"), wnCtrl_1) @[FFT.scala 64:83]
    node _wnList_T_31 = tail(_wnList_T_30, 1) @[FFT.scala 64:83]
    wire wnList_0_15 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_15 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_15[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_15[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_15[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_15[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_0_15.re <= _wnList_res_re_WIRE_15[_wnList_T_31] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_15 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_15[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_15[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_15[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_15[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_0_15.im <= _wnList_res_im_WIRE_15[_wnList_T_31] @[FFT.scala 33:12]
    inst inst_15 of ButterflyMul_15 @[Modules.scala 210:22]
    inst_15.clock <= clock
    inst_15.reset <= reset
    inst_15.io.in[0].im <= unitDataIn_3_3[0].im @[Modules.scala 211:16]
    inst_15.io.in[0].re <= unitDataIn_3_3[0].re @[Modules.scala 211:16]
    inst_15.io.in[1].im <= unitDataIn_3_3[1].im @[Modules.scala 211:16]
    inst_15.io.in[1].re <= unitDataIn_3_3[1].re @[Modules.scala 211:16]
    inst_15.io.wn[0].im <= wnList_0_15.im @[Modules.scala 212:16]
    inst_15.io.wn[0].re <= wnList_0_15.re @[Modules.scala 212:16]
    unitDataOut_3_3 <= inst_15.io.out @[FFT.scala 65:25]
    node wnCtrl_2 = bits(cnt_2, 0, 0) @[FFT.scala 60:23]
    node _wnList_T_32 = add(UInt<1>("h0"), wnCtrl_2) @[FFT.scala 64:83]
    node _wnList_T_33 = tail(_wnList_T_32, 1) @[FFT.scala 64:83]
    wire wnList_0_16 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_16 : Fixed<10><<5>>[2] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_16[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_16[1] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    wnList_0_16.re <= _wnList_res_re_WIRE_16[_wnList_T_33] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_16 : Fixed<10><<5>>[2] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_16[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_16[1] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    wnList_0_16.im <= _wnList_res_im_WIRE_16[_wnList_T_33] @[FFT.scala 33:12]
    inst inst_16 of ButterflyMul_16 @[Modules.scala 210:22]
    inst_16.clock <= clock
    inst_16.reset <= reset
    inst_16.io.in[0].im <= unitDataIn_4_0[0].im @[Modules.scala 211:16]
    inst_16.io.in[0].re <= unitDataIn_4_0[0].re @[Modules.scala 211:16]
    inst_16.io.in[1].im <= unitDataIn_4_0[1].im @[Modules.scala 211:16]
    inst_16.io.in[1].re <= unitDataIn_4_0[1].re @[Modules.scala 211:16]
    inst_16.io.wn[0].im <= wnList_0_16.im @[Modules.scala 212:16]
    inst_16.io.wn[0].re <= wnList_0_16.re @[Modules.scala 212:16]
    unitDataOut_4_0 <= inst_16.io.out @[FFT.scala 65:25]
    node _wnList_T_34 = add(UInt<1>("h0"), wnCtrl_2) @[FFT.scala 64:83]
    node _wnList_T_35 = tail(_wnList_T_34, 1) @[FFT.scala 64:83]
    wire wnList_0_17 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_17 : Fixed<10><<5>>[2] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_17[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_17[1] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    wnList_0_17.re <= _wnList_res_re_WIRE_17[_wnList_T_35] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_17 : Fixed<10><<5>>[2] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_17[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_17[1] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    wnList_0_17.im <= _wnList_res_im_WIRE_17[_wnList_T_35] @[FFT.scala 33:12]
    inst inst_17 of ButterflyMul_17 @[Modules.scala 210:22]
    inst_17.clock <= clock
    inst_17.reset <= reset
    inst_17.io.in[0].im <= unitDataIn_4_1[0].im @[Modules.scala 211:16]
    inst_17.io.in[0].re <= unitDataIn_4_1[0].re @[Modules.scala 211:16]
    inst_17.io.in[1].im <= unitDataIn_4_1[1].im @[Modules.scala 211:16]
    inst_17.io.in[1].re <= unitDataIn_4_1[1].re @[Modules.scala 211:16]
    inst_17.io.wn[0].im <= wnList_0_17.im @[Modules.scala 212:16]
    inst_17.io.wn[0].re <= wnList_0_17.re @[Modules.scala 212:16]
    unitDataOut_4_1 <= inst_17.io.out @[FFT.scala 65:25]
    node _wnList_T_36 = add(UInt<1>("h0"), wnCtrl_2) @[FFT.scala 64:83]
    node _wnList_T_37 = tail(_wnList_T_36, 1) @[FFT.scala 64:83]
    wire wnList_0_18 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_18 : Fixed<10><<5>>[2] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_18[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_18[1] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    wnList_0_18.re <= _wnList_res_re_WIRE_18[_wnList_T_37] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_18 : Fixed<10><<5>>[2] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_18[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_18[1] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    wnList_0_18.im <= _wnList_res_im_WIRE_18[_wnList_T_37] @[FFT.scala 33:12]
    inst inst_18 of ButterflyMul_18 @[Modules.scala 210:22]
    inst_18.clock <= clock
    inst_18.reset <= reset
    inst_18.io.in[0].im <= unitDataIn_4_2[0].im @[Modules.scala 211:16]
    inst_18.io.in[0].re <= unitDataIn_4_2[0].re @[Modules.scala 211:16]
    inst_18.io.in[1].im <= unitDataIn_4_2[1].im @[Modules.scala 211:16]
    inst_18.io.in[1].re <= unitDataIn_4_2[1].re @[Modules.scala 211:16]
    inst_18.io.wn[0].im <= wnList_0_18.im @[Modules.scala 212:16]
    inst_18.io.wn[0].re <= wnList_0_18.re @[Modules.scala 212:16]
    unitDataOut_4_2 <= inst_18.io.out @[FFT.scala 65:25]
    node _wnList_T_38 = add(UInt<1>("h0"), wnCtrl_2) @[FFT.scala 64:83]
    node _wnList_T_39 = tail(_wnList_T_38, 1) @[FFT.scala 64:83]
    wire wnList_0_19 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_19 : Fixed<10><<5>>[2] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_19[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_19[1] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    wnList_0_19.re <= _wnList_res_re_WIRE_19[_wnList_T_39] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_19 : Fixed<10><<5>>[2] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_19[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_19[1] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    wnList_0_19.im <= _wnList_res_im_WIRE_19[_wnList_T_39] @[FFT.scala 33:12]
    inst inst_19 of ButterflyMul_19 @[Modules.scala 210:22]
    inst_19.clock <= clock
    inst_19.reset <= reset
    inst_19.io.in[0].im <= unitDataIn_4_3[0].im @[Modules.scala 211:16]
    inst_19.io.in[0].re <= unitDataIn_4_3[0].re @[Modules.scala 211:16]
    inst_19.io.in[1].im <= unitDataIn_4_3[1].im @[Modules.scala 211:16]
    inst_19.io.in[1].re <= unitDataIn_4_3[1].re @[Modules.scala 211:16]
    inst_19.io.wn[0].im <= wnList_0_19.im @[Modules.scala 212:16]
    inst_19.io.wn[0].re <= wnList_0_19.re @[Modules.scala 212:16]
    unitDataOut_4_3 <= inst_19.io.out @[FFT.scala 65:25]
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
    inst dataotemp_inst_2 of ButterflyAdd_2 @[Modules.scala 144:22]
    dataotemp_inst_2.clock <= clock
    dataotemp_inst_2.reset <= reset
    dataotemp_inst_2.io.in[0].im <= unitDataIn_5_2[0].im @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[0].re <= unitDataIn_5_2[0].re @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[1].im <= unitDataIn_5_2[1].im @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[1].re <= unitDataIn_5_2[1].re @[Modules.scala 145:16]
    inst dataotemp_inst_3 of ButterflyAdd_3 @[Modules.scala 144:22]
    dataotemp_inst_3.clock <= clock
    dataotemp_inst_3.reset <= reset
    dataotemp_inst_3.io.in[0].im <= unitDataIn_5_3[0].im @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[0].re <= unitDataIn_5_3[0].re @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[1].im <= unitDataIn_5_3[1].im @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[1].re <= unitDataIn_5_3[1].re @[Modules.scala 145:16]
    datao[0] <= dataotemp_inst.io.out[0] @[FFT.scala 70:9]
    datao[1] <= dataotemp_inst.io.out[1] @[FFT.scala 70:9]
    datao[2] <= dataotemp_inst_1.io.out[0] @[FFT.scala 70:9]
    datao[3] <= dataotemp_inst_1.io.out[1] @[FFT.scala 70:9]
    datao[4] <= dataotemp_inst_2.io.out[0] @[FFT.scala 70:9]
    datao[5] <= dataotemp_inst_2.io.out[1] @[FFT.scala 70:9]
    datao[6] <= dataotemp_inst_3.io.out[0] @[FFT.scala 70:9]
    datao[7] <= dataotemp_inst_3.io.out[1] @[FFT.scala 70:9]
    inst exdata_inst of Exchange @[Modules.scala 254:22]
    exdata_inst.clock <= clock
    exdata_inst.reset <= reset
    exdata_inst.io.in[0][0].im <= unitDataOut_0_0[0].im @[Modules.scala 255:16]
    exdata_inst.io.in[0][0].re <= unitDataOut_0_0[0].re @[Modules.scala 255:16]
    exdata_inst.io.in[0][1].im <= unitDataOut_0_0[1].im @[Modules.scala 255:16]
    exdata_inst.io.in[0][1].re <= unitDataOut_0_0[1].re @[Modules.scala 255:16]
    exdata_inst.io.in[1][0].im <= unitDataOut_0_2[0].im @[Modules.scala 255:16]
    exdata_inst.io.in[1][0].re <= unitDataOut_0_2[0].re @[Modules.scala 255:16]
    exdata_inst.io.in[1][1].im <= unitDataOut_0_2[1].im @[Modules.scala 255:16]
    exdata_inst.io.in[1][1].re <= unitDataOut_0_2[1].re @[Modules.scala 255:16]
    reg REG : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG) @[FFT.scala 87:72]
    REG <= exdata_inst.io.out[0] @[FFT.scala 87:72]
    unitDataIn_1_0 <= REG @[FFT.scala 87:62]
    reg REG_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[FFT.scala 87:72]
    REG_1 <= exdata_inst.io.out[1] @[FFT.scala 87:72]
    unitDataIn_1_2 <= REG_1 @[FFT.scala 87:62]
    inst exdata_inst_1 of Exchange_1 @[Modules.scala 254:22]
    exdata_inst_1.clock <= clock
    exdata_inst_1.reset <= reset
    exdata_inst_1.io.in[0][0].im <= unitDataOut_0_1[0].im @[Modules.scala 255:16]
    exdata_inst_1.io.in[0][0].re <= unitDataOut_0_1[0].re @[Modules.scala 255:16]
    exdata_inst_1.io.in[0][1].im <= unitDataOut_0_1[1].im @[Modules.scala 255:16]
    exdata_inst_1.io.in[0][1].re <= unitDataOut_0_1[1].re @[Modules.scala 255:16]
    exdata_inst_1.io.in[1][0].im <= unitDataOut_0_3[0].im @[Modules.scala 255:16]
    exdata_inst_1.io.in[1][0].re <= unitDataOut_0_3[0].re @[Modules.scala 255:16]
    exdata_inst_1.io.in[1][1].im <= unitDataOut_0_3[1].im @[Modules.scala 255:16]
    exdata_inst_1.io.in[1][1].re <= unitDataOut_0_3[1].re @[Modules.scala 255:16]
    reg REG_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG_2) @[FFT.scala 87:72]
    REG_2 <= exdata_inst_1.io.out[0] @[FFT.scala 87:72]
    unitDataIn_1_1 <= REG_2 @[FFT.scala 87:62]
    reg REG_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG_3) @[FFT.scala 87:72]
    REG_3 <= exdata_inst_1.io.out[1] @[FFT.scala 87:72]
    unitDataIn_1_3 <= REG_3 @[FFT.scala 87:62]
    inst exdata_inst_2 of Exchange_2 @[Modules.scala 254:22]
    exdata_inst_2.clock <= clock
    exdata_inst_2.reset <= reset
    exdata_inst_2.io.in[0][0].im <= unitDataOut_1_0[0].im @[Modules.scala 255:16]
    exdata_inst_2.io.in[0][0].re <= unitDataOut_1_0[0].re @[Modules.scala 255:16]
    exdata_inst_2.io.in[0][1].im <= unitDataOut_1_0[1].im @[Modules.scala 255:16]
    exdata_inst_2.io.in[0][1].re <= unitDataOut_1_0[1].re @[Modules.scala 255:16]
    exdata_inst_2.io.in[1][0].im <= unitDataOut_1_1[0].im @[Modules.scala 255:16]
    exdata_inst_2.io.in[1][0].re <= unitDataOut_1_1[0].re @[Modules.scala 255:16]
    exdata_inst_2.io.in[1][1].im <= unitDataOut_1_1[1].im @[Modules.scala 255:16]
    exdata_inst_2.io.in[1][1].re <= unitDataOut_1_1[1].re @[Modules.scala 255:16]
    reg REG_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG_4) @[FFT.scala 87:72]
    REG_4 <= exdata_inst_2.io.out[0] @[FFT.scala 87:72]
    unitDataIn_2_0 <= REG_4 @[FFT.scala 87:62]
    reg REG_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG_5) @[FFT.scala 87:72]
    REG_5 <= exdata_inst_2.io.out[1] @[FFT.scala 87:72]
    unitDataIn_2_1 <= REG_5 @[FFT.scala 87:62]
    inst exdata_inst_3 of Exchange_3 @[Modules.scala 254:22]
    exdata_inst_3.clock <= clock
    exdata_inst_3.reset <= reset
    exdata_inst_3.io.in[0][0].im <= unitDataOut_1_2[0].im @[Modules.scala 255:16]
    exdata_inst_3.io.in[0][0].re <= unitDataOut_1_2[0].re @[Modules.scala 255:16]
    exdata_inst_3.io.in[0][1].im <= unitDataOut_1_2[1].im @[Modules.scala 255:16]
    exdata_inst_3.io.in[0][1].re <= unitDataOut_1_2[1].re @[Modules.scala 255:16]
    exdata_inst_3.io.in[1][0].im <= unitDataOut_1_3[0].im @[Modules.scala 255:16]
    exdata_inst_3.io.in[1][0].re <= unitDataOut_1_3[0].re @[Modules.scala 255:16]
    exdata_inst_3.io.in[1][1].im <= unitDataOut_1_3[1].im @[Modules.scala 255:16]
    exdata_inst_3.io.in[1][1].re <= unitDataOut_1_3[1].re @[Modules.scala 255:16]
    reg REG_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG_6) @[FFT.scala 87:72]
    REG_6 <= exdata_inst_3.io.out[0] @[FFT.scala 87:72]
    unitDataIn_2_2 <= REG_6 @[FFT.scala 87:62]
    reg REG_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[2], clock with :
      reset => (UInt<1>("h0"), REG_7) @[FFT.scala 87:72]
    REG_7 <= exdata_inst_3.io.out[1] @[FFT.scala 87:72]
    unitDataIn_2_3 <= REG_7 @[FFT.scala 87:62]
    node sel = bits(cnt_2, 2, 2) @[FFT.scala 93:31]
    inst inst_20 of Switch @[Modules.scala 234:22]
    inst_20.clock <= clock
    inst_20.reset <= reset
    inst_20.io.in[0].im <= unitDataOut_2_0[0].im @[Modules.scala 235:16]
    inst_20.io.in[0].re <= unitDataOut_2_0[0].re @[Modules.scala 235:16]
    inst_20.io.in[1].im <= unitDataOut_2_0[1].im @[Modules.scala 235:16]
    inst_20.io.in[1].re <= unitDataOut_2_0[1].re @[Modules.scala 235:16]
    inst_20.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_3_0 <= inst_20.io.out @[FFT.scala 94:59]
    inst inst_21 of Switch_1 @[Modules.scala 234:22]
    inst_21.clock <= clock
    inst_21.reset <= reset
    inst_21.io.in[0].im <= unitDataOut_2_1[0].im @[Modules.scala 235:16]
    inst_21.io.in[0].re <= unitDataOut_2_1[0].re @[Modules.scala 235:16]
    inst_21.io.in[1].im <= unitDataOut_2_1[1].im @[Modules.scala 235:16]
    inst_21.io.in[1].re <= unitDataOut_2_1[1].re @[Modules.scala 235:16]
    inst_21.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_3_1 <= inst_21.io.out @[FFT.scala 94:59]
    inst inst_22 of Switch_2 @[Modules.scala 234:22]
    inst_22.clock <= clock
    inst_22.reset <= reset
    inst_22.io.in[0].im <= unitDataOut_2_2[0].im @[Modules.scala 235:16]
    inst_22.io.in[0].re <= unitDataOut_2_2[0].re @[Modules.scala 235:16]
    inst_22.io.in[1].im <= unitDataOut_2_2[1].im @[Modules.scala 235:16]
    inst_22.io.in[1].re <= unitDataOut_2_2[1].re @[Modules.scala 235:16]
    inst_22.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_3_2 <= inst_22.io.out @[FFT.scala 94:59]
    inst inst_23 of Switch_3 @[Modules.scala 234:22]
    inst_23.clock <= clock
    inst_23.reset <= reset
    inst_23.io.in[0].im <= unitDataOut_2_3[0].im @[Modules.scala 235:16]
    inst_23.io.in[0].re <= unitDataOut_2_3[0].re @[Modules.scala 235:16]
    inst_23.io.in[1].im <= unitDataOut_2_3[1].im @[Modules.scala 235:16]
    inst_23.io.in[1].re <= unitDataOut_2_3[1].re @[Modules.scala 235:16]
    inst_23.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_3_3 <= inst_23.io.out @[FFT.scala 94:59]
    node sel_1 = bits(cnt_2, 1, 1) @[FFT.scala 93:31]
    inst inst_24 of Switch_4 @[Modules.scala 234:22]
    inst_24.clock <= clock
    inst_24.reset <= reset
    inst_24.io.in[0].im <= unitDataOut_3_0[0].im @[Modules.scala 235:16]
    inst_24.io.in[0].re <= unitDataOut_3_0[0].re @[Modules.scala 235:16]
    inst_24.io.in[1].im <= unitDataOut_3_0[1].im @[Modules.scala 235:16]
    inst_24.io.in[1].re <= unitDataOut_3_0[1].re @[Modules.scala 235:16]
    inst_24.io.sel <= sel_1 @[Modules.scala 236:17]
    unitDataIn_4_0 <= inst_24.io.out @[FFT.scala 94:59]
    inst inst_25 of Switch_5 @[Modules.scala 234:22]
    inst_25.clock <= clock
    inst_25.reset <= reset
    inst_25.io.in[0].im <= unitDataOut_3_1[0].im @[Modules.scala 235:16]
    inst_25.io.in[0].re <= unitDataOut_3_1[0].re @[Modules.scala 235:16]
    inst_25.io.in[1].im <= unitDataOut_3_1[1].im @[Modules.scala 235:16]
    inst_25.io.in[1].re <= unitDataOut_3_1[1].re @[Modules.scala 235:16]
    inst_25.io.sel <= sel_1 @[Modules.scala 236:17]
    unitDataIn_4_1 <= inst_25.io.out @[FFT.scala 94:59]
    inst inst_26 of Switch_6 @[Modules.scala 234:22]
    inst_26.clock <= clock
    inst_26.reset <= reset
    inst_26.io.in[0].im <= unitDataOut_3_2[0].im @[Modules.scala 235:16]
    inst_26.io.in[0].re <= unitDataOut_3_2[0].re @[Modules.scala 235:16]
    inst_26.io.in[1].im <= unitDataOut_3_2[1].im @[Modules.scala 235:16]
    inst_26.io.in[1].re <= unitDataOut_3_2[1].re @[Modules.scala 235:16]
    inst_26.io.sel <= sel_1 @[Modules.scala 236:17]
    unitDataIn_4_2 <= inst_26.io.out @[FFT.scala 94:59]
    inst inst_27 of Switch_7 @[Modules.scala 234:22]
    inst_27.clock <= clock
    inst_27.reset <= reset
    inst_27.io.in[0].im <= unitDataOut_3_3[0].im @[Modules.scala 235:16]
    inst_27.io.in[0].re <= unitDataOut_3_3[0].re @[Modules.scala 235:16]
    inst_27.io.in[1].im <= unitDataOut_3_3[1].im @[Modules.scala 235:16]
    inst_27.io.in[1].re <= unitDataOut_3_3[1].re @[Modules.scala 235:16]
    inst_27.io.sel <= sel_1 @[Modules.scala 236:17]
    unitDataIn_4_3 <= inst_27.io.out @[FFT.scala 94:59]
    node sel_2 = bits(cnt_2, 0, 0) @[FFT.scala 93:31]
    inst inst_28 of Switch_8 @[Modules.scala 234:22]
    inst_28.clock <= clock
    inst_28.reset <= reset
    inst_28.io.in[0].im <= unitDataOut_4_0[0].im @[Modules.scala 235:16]
    inst_28.io.in[0].re <= unitDataOut_4_0[0].re @[Modules.scala 235:16]
    inst_28.io.in[1].im <= unitDataOut_4_0[1].im @[Modules.scala 235:16]
    inst_28.io.in[1].re <= unitDataOut_4_0[1].re @[Modules.scala 235:16]
    inst_28.io.sel <= sel_2 @[Modules.scala 236:17]
    unitDataIn_5_0 <= inst_28.io.out @[FFT.scala 94:59]
    inst inst_29 of Switch_9 @[Modules.scala 234:22]
    inst_29.clock <= clock
    inst_29.reset <= reset
    inst_29.io.in[0].im <= unitDataOut_4_1[0].im @[Modules.scala 235:16]
    inst_29.io.in[0].re <= unitDataOut_4_1[0].re @[Modules.scala 235:16]
    inst_29.io.in[1].im <= unitDataOut_4_1[1].im @[Modules.scala 235:16]
    inst_29.io.in[1].re <= unitDataOut_4_1[1].re @[Modules.scala 235:16]
    inst_29.io.sel <= sel_2 @[Modules.scala 236:17]
    unitDataIn_5_1 <= inst_29.io.out @[FFT.scala 94:59]
    inst inst_30 of Switch_10 @[Modules.scala 234:22]
    inst_30.clock <= clock
    inst_30.reset <= reset
    inst_30.io.in[0].im <= unitDataOut_4_2[0].im @[Modules.scala 235:16]
    inst_30.io.in[0].re <= unitDataOut_4_2[0].re @[Modules.scala 235:16]
    inst_30.io.in[1].im <= unitDataOut_4_2[1].im @[Modules.scala 235:16]
    inst_30.io.in[1].re <= unitDataOut_4_2[1].re @[Modules.scala 235:16]
    inst_30.io.sel <= sel_2 @[Modules.scala 236:17]
    unitDataIn_5_2 <= inst_30.io.out @[FFT.scala 94:59]
    inst inst_31 of Switch_11 @[Modules.scala 234:22]
    inst_31.clock <= clock
    inst_31.reset <= reset
    inst_31.io.in[0].im <= unitDataOut_4_3[0].im @[Modules.scala 235:16]
    inst_31.io.in[0].re <= unitDataOut_4_3[0].re @[Modules.scala 235:16]
    inst_31.io.in[1].im <= unitDataOut_4_3[1].im @[Modules.scala 235:16]
    inst_31.io.in[1].re <= unitDataOut_4_3[1].re @[Modules.scala 235:16]
    inst_31.io.sel <= sel_2 @[Modules.scala 236:17]
    unitDataIn_5_3 <= inst_31.io.out @[FFT.scala 94:59]
    unitDataIn_0_0[0] <= io.dIn[0] @[FFT.scala 99:22]
    unitDataIn_0_0[1] <= io.dIn[1] @[FFT.scala 99:22]
    unitDataIn_0_1[0] <= io.dIn[2] @[FFT.scala 99:22]
    unitDataIn_0_1[1] <= io.dIn[3] @[FFT.scala 99:22]
    unitDataIn_0_2[0] <= io.dIn[4] @[FFT.scala 99:22]
    unitDataIn_0_2[1] <= io.dIn[5] @[FFT.scala 99:22]
    unitDataIn_0_3[0] <= io.dIn[6] @[FFT.scala 99:22]
    unitDataIn_0_3[1] <= io.dIn[7] @[FFT.scala 99:22]
    io.busy <= busy @[FFT.scala 102:11]
    reg io_dout_valid_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_dout_valid_REG) @[FFT.scala 103:27]
    io_dout_valid_REG <= cnt_0 @[FFT.scala 103:27]
    node _io_dout_valid_T = eq(io_dout_valid_REG, UInt<4>("h9")) @[FFT.scala 103:36]
    io.dout_valid <= _io_dout_valid_T @[FFT.scala 103:17]
    reg REG_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], clock with :
      reset => (UInt<1>("h0"), REG_8) @[FFT.scala 104:21]
    REG_8 <= datao @[FFT.scala 104:21]
    io.dOut <= REG_8 @[FFT.scala 104:11]

  module FFTtop :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

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
    fft.io.dIn[4].im <= io.dIn[4].im @[Top.scala 16:14]
    fft.io.dIn[4].re <= io.dIn[4].re @[Top.scala 16:14]
    fft.io.dIn[5].im <= io.dIn[5].im @[Top.scala 16:14]
    fft.io.dIn[5].re <= io.dIn[5].re @[Top.scala 16:14]
    fft.io.dIn[6].im <= io.dIn[6].im @[Top.scala 16:14]
    fft.io.dIn[6].re <= io.dIn[6].re @[Top.scala 16:14]
    fft.io.dIn[7].im <= io.dIn[7].im @[Top.scala 16:14]
    fft.io.dIn[7].re <= io.dIn[7].re @[Top.scala 16:14]
    fft.io.din_valid <= io.din_valid @[Top.scala 17:20]
    io.dOut <= fft.io.dOut @[Top.scala 27:13]
    io.dout_valid <= fft.io.dout_valid @[Top.scala 28:19]
    io.busy <= fft.io.busy @[Top.scala 29:13]

