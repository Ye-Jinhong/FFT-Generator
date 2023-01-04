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

  module ComplexTran :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

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

  module ComplexTran_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

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

  module ButterflyMul :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[3]}

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
    wire _temp_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_5 : UInt<20>
    _temp_WIRE_5 <= _temp_T_10
    node _temp_T_11 = bits(_temp_WIRE_5, 9, 0) @[Modules.scala 155:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 155:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 19, 10) @[Modules.scala 155:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 155:50]
    wire _temp_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_7 : UInt<20>
    _temp_WIRE_7 <= _temp_T_15
    node _temp_T_16 = bits(_temp_WIRE_7, 9, 0) @[Modules.scala 155:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 155:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 19, 10) @[Modules.scala 155:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_0_inst_1 of ComplexAdd_1 @[Modules.scala 41:22]
    temp_0_inst_1.clock <= clock
    temp_0_inst_1.reset <= reset
    temp_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_0_inst_2 of ComplexAdd_2 @[Modules.scala 41:22]
    temp_0_inst_2.clock <= clock
    temp_0_inst_2.reset <= reset
    temp_0_inst_2.io.op1.im <= temp_0_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst_2.io.op1.re <= temp_0_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst_2.io.op2.im <= temp_0_inst_1.io.res.im @[Modules.scala 43:17]
    temp_0_inst_2.io.op2.re <= temp_0_inst_1.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst_2.io.res @[Modules.scala 160:13]
    inst temp_1_inst of ComplexAdd_3 @[Modules.scala 41:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_1_inst_1 of ComplexAdd_4 @[Modules.scala 41:22]
    temp_1_inst_1.clock <= clock
    temp_1_inst_1.reset <= reset
    temp_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_1_inst_2 of ComplexSub @[Modules.scala 57:22]
    temp_1_inst_2.clock <= clock
    temp_1_inst_2.reset <= reset
    temp_1_inst_2.io.op1.im <= temp_1_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst_2.io.op1.re <= temp_1_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst_2.io.op2.im <= temp_1_inst_1.io.res.im @[Modules.scala 59:17]
    temp_1_inst_2.io.op2.re <= temp_1_inst_1.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst_2.io.res @[Modules.scala 161:13]
    inst temp_2_inst of ComplexSub_1 @[Modules.scala 57:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_2_inst_1 of ComplexSub_2 @[Modules.scala 57:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_2_inst_2 of ComplexTran @[Modules.scala 75:22]
    temp_2_inst_2.clock <= clock
    temp_2_inst_2.reset <= reset
    temp_2_inst_2.io.in.im <= temp_2_inst_1.io.res.im @[Modules.scala 76:16]
    temp_2_inst_2.io.in.re <= temp_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_3 of ComplexAdd_5 @[Modules.scala 41:22]
    temp_2_inst_3.clock <= clock
    temp_2_inst_3.reset <= reset
    temp_2_inst_3.io.op1.im <= temp_2_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_3.io.op1.re <= temp_2_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_3.io.op2.im <= temp_2_inst_2.io.out.im @[Modules.scala 43:17]
    temp_2_inst_3.io.op2.re <= temp_2_inst_2.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_3.io.res @[Modules.scala 162:13]
    inst temp_3_inst of ComplexSub_3 @[Modules.scala 57:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_3_inst_1 of ComplexSub_4 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_3_inst_2 of ComplexTran_1 @[Modules.scala 75:22]
    temp_3_inst_2.clock <= clock
    temp_3_inst_2.reset <= reset
    temp_3_inst_2.io.in.im <= temp_3_inst_1.io.res.im @[Modules.scala 76:16]
    temp_3_inst_2.io.in.re <= temp_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_3 of ComplexSub_5 @[Modules.scala 57:22]
    temp_3_inst_3.clock <= clock
    temp_3_inst_3.reset <= reset
    temp_3_inst_3.io.op1.im <= temp_3_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_3.io.op1.re <= temp_3_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_3.io.op2.im <= temp_3_inst_2.io.out.im @[Modules.scala 59:17]
    temp_3_inst_3.io.op2.re <= temp_3_inst_2.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_3.io.res @[Modules.scala 163:13]
    io.out[0] <= temp[0] @[Modules.scala 192:15]
    inst io_out_1_inst of ComplexMul @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 193:15]
    inst io_out_2_inst of ComplexMul_1 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 194:15]
    inst io_out_3_inst of ComplexMul_2 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 195:15]

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

  module ComplexTran_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

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

  module ComplexTran_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

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

  module ButterflyMul_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[3]}

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
    wire _temp_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_5 : UInt<20>
    _temp_WIRE_5 <= _temp_T_10
    node _temp_T_11 = bits(_temp_WIRE_5, 9, 0) @[Modules.scala 155:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 155:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 19, 10) @[Modules.scala 155:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 155:50]
    wire _temp_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_7 : UInt<20>
    _temp_WIRE_7 <= _temp_T_15
    node _temp_T_16 = bits(_temp_WIRE_7, 9, 0) @[Modules.scala 155:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 155:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 19, 10) @[Modules.scala 155:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_6 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_0_inst_1 of ComplexAdd_7 @[Modules.scala 41:22]
    temp_0_inst_1.clock <= clock
    temp_0_inst_1.reset <= reset
    temp_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_0_inst_2 of ComplexAdd_8 @[Modules.scala 41:22]
    temp_0_inst_2.clock <= clock
    temp_0_inst_2.reset <= reset
    temp_0_inst_2.io.op1.im <= temp_0_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst_2.io.op1.re <= temp_0_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst_2.io.op2.im <= temp_0_inst_1.io.res.im @[Modules.scala 43:17]
    temp_0_inst_2.io.op2.re <= temp_0_inst_1.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst_2.io.res @[Modules.scala 160:13]
    inst temp_1_inst of ComplexAdd_9 @[Modules.scala 41:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_1_inst_1 of ComplexAdd_10 @[Modules.scala 41:22]
    temp_1_inst_1.clock <= clock
    temp_1_inst_1.reset <= reset
    temp_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_1_inst_2 of ComplexSub_6 @[Modules.scala 57:22]
    temp_1_inst_2.clock <= clock
    temp_1_inst_2.reset <= reset
    temp_1_inst_2.io.op1.im <= temp_1_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst_2.io.op1.re <= temp_1_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst_2.io.op2.im <= temp_1_inst_1.io.res.im @[Modules.scala 59:17]
    temp_1_inst_2.io.op2.re <= temp_1_inst_1.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst_2.io.res @[Modules.scala 161:13]
    inst temp_2_inst of ComplexSub_7 @[Modules.scala 57:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_2_inst_1 of ComplexSub_8 @[Modules.scala 57:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_2_inst_2 of ComplexTran_2 @[Modules.scala 75:22]
    temp_2_inst_2.clock <= clock
    temp_2_inst_2.reset <= reset
    temp_2_inst_2.io.in.im <= temp_2_inst_1.io.res.im @[Modules.scala 76:16]
    temp_2_inst_2.io.in.re <= temp_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_3 of ComplexAdd_11 @[Modules.scala 41:22]
    temp_2_inst_3.clock <= clock
    temp_2_inst_3.reset <= reset
    temp_2_inst_3.io.op1.im <= temp_2_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_3.io.op1.re <= temp_2_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_3.io.op2.im <= temp_2_inst_2.io.out.im @[Modules.scala 43:17]
    temp_2_inst_3.io.op2.re <= temp_2_inst_2.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_3.io.res @[Modules.scala 162:13]
    inst temp_3_inst of ComplexSub_9 @[Modules.scala 57:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_3_inst_1 of ComplexSub_10 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_3_inst_2 of ComplexTran_3 @[Modules.scala 75:22]
    temp_3_inst_2.clock <= clock
    temp_3_inst_2.reset <= reset
    temp_3_inst_2.io.in.im <= temp_3_inst_1.io.res.im @[Modules.scala 76:16]
    temp_3_inst_2.io.in.re <= temp_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_3 of ComplexSub_11 @[Modules.scala 57:22]
    temp_3_inst_3.clock <= clock
    temp_3_inst_3.reset <= reset
    temp_3_inst_3.io.op1.im <= temp_3_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_3.io.op1.re <= temp_3_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_3.io.op2.im <= temp_3_inst_2.io.out.im @[Modules.scala 59:17]
    temp_3_inst_3.io.op2.re <= temp_3_inst_2.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_3.io.res @[Modules.scala 163:13]
    io.out[0] <= temp[0] @[Modules.scala 192:15]
    inst io_out_1_inst of ComplexMul_3 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 193:15]
    inst io_out_2_inst of ComplexMul_4 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 194:15]
    inst io_out_3_inst of ComplexMul_5 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 195:15]

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

  module ComplexTran_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

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

  module ComplexTran_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

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

  module ButterflyMul_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[3]}

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
    wire _temp_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_5 : UInt<20>
    _temp_WIRE_5 <= _temp_T_10
    node _temp_T_11 = bits(_temp_WIRE_5, 9, 0) @[Modules.scala 155:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 155:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 19, 10) @[Modules.scala 155:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 155:50]
    wire _temp_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_7 : UInt<20>
    _temp_WIRE_7 <= _temp_T_15
    node _temp_T_16 = bits(_temp_WIRE_7, 9, 0) @[Modules.scala 155:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 155:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 19, 10) @[Modules.scala 155:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_12 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_0_inst_1 of ComplexAdd_13 @[Modules.scala 41:22]
    temp_0_inst_1.clock <= clock
    temp_0_inst_1.reset <= reset
    temp_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_0_inst_2 of ComplexAdd_14 @[Modules.scala 41:22]
    temp_0_inst_2.clock <= clock
    temp_0_inst_2.reset <= reset
    temp_0_inst_2.io.op1.im <= temp_0_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst_2.io.op1.re <= temp_0_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst_2.io.op2.im <= temp_0_inst_1.io.res.im @[Modules.scala 43:17]
    temp_0_inst_2.io.op2.re <= temp_0_inst_1.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst_2.io.res @[Modules.scala 160:13]
    inst temp_1_inst of ComplexAdd_15 @[Modules.scala 41:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_1_inst_1 of ComplexAdd_16 @[Modules.scala 41:22]
    temp_1_inst_1.clock <= clock
    temp_1_inst_1.reset <= reset
    temp_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_1_inst_2 of ComplexSub_12 @[Modules.scala 57:22]
    temp_1_inst_2.clock <= clock
    temp_1_inst_2.reset <= reset
    temp_1_inst_2.io.op1.im <= temp_1_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst_2.io.op1.re <= temp_1_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst_2.io.op2.im <= temp_1_inst_1.io.res.im @[Modules.scala 59:17]
    temp_1_inst_2.io.op2.re <= temp_1_inst_1.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst_2.io.res @[Modules.scala 161:13]
    inst temp_2_inst of ComplexSub_13 @[Modules.scala 57:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_2_inst_1 of ComplexSub_14 @[Modules.scala 57:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_2_inst_2 of ComplexTran_4 @[Modules.scala 75:22]
    temp_2_inst_2.clock <= clock
    temp_2_inst_2.reset <= reset
    temp_2_inst_2.io.in.im <= temp_2_inst_1.io.res.im @[Modules.scala 76:16]
    temp_2_inst_2.io.in.re <= temp_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_3 of ComplexAdd_17 @[Modules.scala 41:22]
    temp_2_inst_3.clock <= clock
    temp_2_inst_3.reset <= reset
    temp_2_inst_3.io.op1.im <= temp_2_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_3.io.op1.re <= temp_2_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_3.io.op2.im <= temp_2_inst_2.io.out.im @[Modules.scala 43:17]
    temp_2_inst_3.io.op2.re <= temp_2_inst_2.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_3.io.res @[Modules.scala 162:13]
    inst temp_3_inst of ComplexSub_15 @[Modules.scala 57:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_3_inst_1 of ComplexSub_16 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_3_inst_2 of ComplexTran_5 @[Modules.scala 75:22]
    temp_3_inst_2.clock <= clock
    temp_3_inst_2.reset <= reset
    temp_3_inst_2.io.in.im <= temp_3_inst_1.io.res.im @[Modules.scala 76:16]
    temp_3_inst_2.io.in.re <= temp_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_3 of ComplexSub_17 @[Modules.scala 57:22]
    temp_3_inst_3.clock <= clock
    temp_3_inst_3.reset <= reset
    temp_3_inst_3.io.op1.im <= temp_3_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_3.io.op1.re <= temp_3_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_3.io.op2.im <= temp_3_inst_2.io.out.im @[Modules.scala 59:17]
    temp_3_inst_3.io.op2.re <= temp_3_inst_2.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_3.io.res @[Modules.scala 163:13]
    io.out[0] <= temp[0] @[Modules.scala 192:15]
    inst io_out_1_inst of ComplexMul_6 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 193:15]
    inst io_out_2_inst of ComplexMul_7 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 194:15]
    inst io_out_3_inst of ComplexMul_8 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 195:15]

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

  module ComplexTran_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

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

  module ComplexTran_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

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

  module ButterflyMul_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[3]}

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
    wire _temp_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_5 : UInt<20>
    _temp_WIRE_5 <= _temp_T_10
    node _temp_T_11 = bits(_temp_WIRE_5, 9, 0) @[Modules.scala 155:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 155:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 19, 10) @[Modules.scala 155:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 155:50]
    wire _temp_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_7 : UInt<20>
    _temp_WIRE_7 <= _temp_T_15
    node _temp_T_16 = bits(_temp_WIRE_7, 9, 0) @[Modules.scala 155:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 155:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 19, 10) @[Modules.scala 155:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_18 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_0_inst_1 of ComplexAdd_19 @[Modules.scala 41:22]
    temp_0_inst_1.clock <= clock
    temp_0_inst_1.reset <= reset
    temp_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_0_inst_2 of ComplexAdd_20 @[Modules.scala 41:22]
    temp_0_inst_2.clock <= clock
    temp_0_inst_2.reset <= reset
    temp_0_inst_2.io.op1.im <= temp_0_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst_2.io.op1.re <= temp_0_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst_2.io.op2.im <= temp_0_inst_1.io.res.im @[Modules.scala 43:17]
    temp_0_inst_2.io.op2.re <= temp_0_inst_1.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst_2.io.res @[Modules.scala 160:13]
    inst temp_1_inst of ComplexAdd_21 @[Modules.scala 41:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_1_inst_1 of ComplexAdd_22 @[Modules.scala 41:22]
    temp_1_inst_1.clock <= clock
    temp_1_inst_1.reset <= reset
    temp_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_1_inst_2 of ComplexSub_18 @[Modules.scala 57:22]
    temp_1_inst_2.clock <= clock
    temp_1_inst_2.reset <= reset
    temp_1_inst_2.io.op1.im <= temp_1_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst_2.io.op1.re <= temp_1_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst_2.io.op2.im <= temp_1_inst_1.io.res.im @[Modules.scala 59:17]
    temp_1_inst_2.io.op2.re <= temp_1_inst_1.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst_2.io.res @[Modules.scala 161:13]
    inst temp_2_inst of ComplexSub_19 @[Modules.scala 57:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_2_inst_1 of ComplexSub_20 @[Modules.scala 57:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_2_inst_2 of ComplexTran_6 @[Modules.scala 75:22]
    temp_2_inst_2.clock <= clock
    temp_2_inst_2.reset <= reset
    temp_2_inst_2.io.in.im <= temp_2_inst_1.io.res.im @[Modules.scala 76:16]
    temp_2_inst_2.io.in.re <= temp_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_3 of ComplexAdd_23 @[Modules.scala 41:22]
    temp_2_inst_3.clock <= clock
    temp_2_inst_3.reset <= reset
    temp_2_inst_3.io.op1.im <= temp_2_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_3.io.op1.re <= temp_2_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_3.io.op2.im <= temp_2_inst_2.io.out.im @[Modules.scala 43:17]
    temp_2_inst_3.io.op2.re <= temp_2_inst_2.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_3.io.res @[Modules.scala 162:13]
    inst temp_3_inst of ComplexSub_21 @[Modules.scala 57:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_3_inst_1 of ComplexSub_22 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_3_inst_2 of ComplexTran_7 @[Modules.scala 75:22]
    temp_3_inst_2.clock <= clock
    temp_3_inst_2.reset <= reset
    temp_3_inst_2.io.in.im <= temp_3_inst_1.io.res.im @[Modules.scala 76:16]
    temp_3_inst_2.io.in.re <= temp_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_3 of ComplexSub_23 @[Modules.scala 57:22]
    temp_3_inst_3.clock <= clock
    temp_3_inst_3.reset <= reset
    temp_3_inst_3.io.op1.im <= temp_3_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_3.io.op1.re <= temp_3_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_3.io.op2.im <= temp_3_inst_2.io.out.im @[Modules.scala 59:17]
    temp_3_inst_3.io.op2.re <= temp_3_inst_2.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_3.io.res @[Modules.scala 163:13]
    io.out[0] <= temp[0] @[Modules.scala 192:15]
    inst io_out_1_inst of ComplexMul_9 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 193:15]
    inst io_out_2_inst of ComplexMul_10 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 194:15]
    inst io_out_3_inst of ComplexMul_11 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 195:15]

  module ComplexAdd_24 :
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

  module ComplexAdd_25 :
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

  module ComplexAdd_26 :
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

  module ComplexAdd_27 :
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

  module ComplexAdd_28 :
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

  module ComplexSub_24 :
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

  module ComplexSub_25 :
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

  module ComplexSub_26 :
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

  module ComplexTran_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexAdd_29 :
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

  module ComplexSub_27 :
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

  module ComplexSub_28 :
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

  module ComplexTran_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexSub_29 :
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

  module ButterflyMul_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[3]}

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
    wire _temp_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_5 : UInt<20>
    _temp_WIRE_5 <= _temp_T_10
    node _temp_T_11 = bits(_temp_WIRE_5, 9, 0) @[Modules.scala 155:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 155:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 19, 10) @[Modules.scala 155:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 155:50]
    wire _temp_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_7 : UInt<20>
    _temp_WIRE_7 <= _temp_T_15
    node _temp_T_16 = bits(_temp_WIRE_7, 9, 0) @[Modules.scala 155:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 155:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 19, 10) @[Modules.scala 155:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_24 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_0_inst_1 of ComplexAdd_25 @[Modules.scala 41:22]
    temp_0_inst_1.clock <= clock
    temp_0_inst_1.reset <= reset
    temp_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_0_inst_2 of ComplexAdd_26 @[Modules.scala 41:22]
    temp_0_inst_2.clock <= clock
    temp_0_inst_2.reset <= reset
    temp_0_inst_2.io.op1.im <= temp_0_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst_2.io.op1.re <= temp_0_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst_2.io.op2.im <= temp_0_inst_1.io.res.im @[Modules.scala 43:17]
    temp_0_inst_2.io.op2.re <= temp_0_inst_1.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst_2.io.res @[Modules.scala 160:13]
    inst temp_1_inst of ComplexAdd_27 @[Modules.scala 41:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_1_inst_1 of ComplexAdd_28 @[Modules.scala 41:22]
    temp_1_inst_1.clock <= clock
    temp_1_inst_1.reset <= reset
    temp_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_1_inst_2 of ComplexSub_24 @[Modules.scala 57:22]
    temp_1_inst_2.clock <= clock
    temp_1_inst_2.reset <= reset
    temp_1_inst_2.io.op1.im <= temp_1_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst_2.io.op1.re <= temp_1_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst_2.io.op2.im <= temp_1_inst_1.io.res.im @[Modules.scala 59:17]
    temp_1_inst_2.io.op2.re <= temp_1_inst_1.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst_2.io.res @[Modules.scala 161:13]
    inst temp_2_inst of ComplexSub_25 @[Modules.scala 57:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_2_inst_1 of ComplexSub_26 @[Modules.scala 57:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_2_inst_2 of ComplexTran_8 @[Modules.scala 75:22]
    temp_2_inst_2.clock <= clock
    temp_2_inst_2.reset <= reset
    temp_2_inst_2.io.in.im <= temp_2_inst_1.io.res.im @[Modules.scala 76:16]
    temp_2_inst_2.io.in.re <= temp_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_3 of ComplexAdd_29 @[Modules.scala 41:22]
    temp_2_inst_3.clock <= clock
    temp_2_inst_3.reset <= reset
    temp_2_inst_3.io.op1.im <= temp_2_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_3.io.op1.re <= temp_2_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_3.io.op2.im <= temp_2_inst_2.io.out.im @[Modules.scala 43:17]
    temp_2_inst_3.io.op2.re <= temp_2_inst_2.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_3.io.res @[Modules.scala 162:13]
    inst temp_3_inst of ComplexSub_27 @[Modules.scala 57:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_3_inst_1 of ComplexSub_28 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_3_inst_2 of ComplexTran_9 @[Modules.scala 75:22]
    temp_3_inst_2.clock <= clock
    temp_3_inst_2.reset <= reset
    temp_3_inst_2.io.in.im <= temp_3_inst_1.io.res.im @[Modules.scala 76:16]
    temp_3_inst_2.io.in.re <= temp_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_3 of ComplexSub_29 @[Modules.scala 57:22]
    temp_3_inst_3.clock <= clock
    temp_3_inst_3.reset <= reset
    temp_3_inst_3.io.op1.im <= temp_3_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_3.io.op1.re <= temp_3_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_3.io.op2.im <= temp_3_inst_2.io.out.im @[Modules.scala 59:17]
    temp_3_inst_3.io.op2.re <= temp_3_inst_2.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_3.io.res @[Modules.scala 163:13]
    io.out[0] <= temp[0] @[Modules.scala 192:15]
    inst io_out_1_inst of ComplexMul_12 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 193:15]
    inst io_out_2_inst of ComplexMul_13 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 194:15]
    inst io_out_3_inst of ComplexMul_14 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 195:15]

  module ComplexAdd_30 :
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

  module ComplexAdd_31 :
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

  module ComplexAdd_32 :
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

  module ComplexAdd_33 :
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

  module ComplexAdd_34 :
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

  module ComplexSub_30 :
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

  module ComplexSub_31 :
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

  module ComplexSub_32 :
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

  module ComplexTran_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexAdd_35 :
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

  module ComplexSub_33 :
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

  module ComplexSub_34 :
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

  module ComplexTran_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexSub_35 :
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

  module ButterflyMul_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[3]}

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
    wire _temp_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_5 : UInt<20>
    _temp_WIRE_5 <= _temp_T_10
    node _temp_T_11 = bits(_temp_WIRE_5, 9, 0) @[Modules.scala 155:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 155:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 19, 10) @[Modules.scala 155:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 155:50]
    wire _temp_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_7 : UInt<20>
    _temp_WIRE_7 <= _temp_T_15
    node _temp_T_16 = bits(_temp_WIRE_7, 9, 0) @[Modules.scala 155:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 155:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 19, 10) @[Modules.scala 155:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_30 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_0_inst_1 of ComplexAdd_31 @[Modules.scala 41:22]
    temp_0_inst_1.clock <= clock
    temp_0_inst_1.reset <= reset
    temp_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_0_inst_2 of ComplexAdd_32 @[Modules.scala 41:22]
    temp_0_inst_2.clock <= clock
    temp_0_inst_2.reset <= reset
    temp_0_inst_2.io.op1.im <= temp_0_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst_2.io.op1.re <= temp_0_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst_2.io.op2.im <= temp_0_inst_1.io.res.im @[Modules.scala 43:17]
    temp_0_inst_2.io.op2.re <= temp_0_inst_1.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst_2.io.res @[Modules.scala 160:13]
    inst temp_1_inst of ComplexAdd_33 @[Modules.scala 41:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_1_inst_1 of ComplexAdd_34 @[Modules.scala 41:22]
    temp_1_inst_1.clock <= clock
    temp_1_inst_1.reset <= reset
    temp_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_1_inst_2 of ComplexSub_30 @[Modules.scala 57:22]
    temp_1_inst_2.clock <= clock
    temp_1_inst_2.reset <= reset
    temp_1_inst_2.io.op1.im <= temp_1_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst_2.io.op1.re <= temp_1_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst_2.io.op2.im <= temp_1_inst_1.io.res.im @[Modules.scala 59:17]
    temp_1_inst_2.io.op2.re <= temp_1_inst_1.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst_2.io.res @[Modules.scala 161:13]
    inst temp_2_inst of ComplexSub_31 @[Modules.scala 57:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_2_inst_1 of ComplexSub_32 @[Modules.scala 57:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_2_inst_2 of ComplexTran_10 @[Modules.scala 75:22]
    temp_2_inst_2.clock <= clock
    temp_2_inst_2.reset <= reset
    temp_2_inst_2.io.in.im <= temp_2_inst_1.io.res.im @[Modules.scala 76:16]
    temp_2_inst_2.io.in.re <= temp_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_3 of ComplexAdd_35 @[Modules.scala 41:22]
    temp_2_inst_3.clock <= clock
    temp_2_inst_3.reset <= reset
    temp_2_inst_3.io.op1.im <= temp_2_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_3.io.op1.re <= temp_2_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_3.io.op2.im <= temp_2_inst_2.io.out.im @[Modules.scala 43:17]
    temp_2_inst_3.io.op2.re <= temp_2_inst_2.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_3.io.res @[Modules.scala 162:13]
    inst temp_3_inst of ComplexSub_33 @[Modules.scala 57:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_3_inst_1 of ComplexSub_34 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_3_inst_2 of ComplexTran_11 @[Modules.scala 75:22]
    temp_3_inst_2.clock <= clock
    temp_3_inst_2.reset <= reset
    temp_3_inst_2.io.in.im <= temp_3_inst_1.io.res.im @[Modules.scala 76:16]
    temp_3_inst_2.io.in.re <= temp_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_3 of ComplexSub_35 @[Modules.scala 57:22]
    temp_3_inst_3.clock <= clock
    temp_3_inst_3.reset <= reset
    temp_3_inst_3.io.op1.im <= temp_3_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_3.io.op1.re <= temp_3_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_3.io.op2.im <= temp_3_inst_2.io.out.im @[Modules.scala 59:17]
    temp_3_inst_3.io.op2.re <= temp_3_inst_2.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_3.io.res @[Modules.scala 163:13]
    io.out[0] <= temp[0] @[Modules.scala 192:15]
    inst io_out_1_inst of ComplexMul_15 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 193:15]
    inst io_out_2_inst of ComplexMul_16 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 194:15]
    inst io_out_3_inst of ComplexMul_17 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 195:15]

  module ComplexAdd_36 :
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

  module ComplexAdd_37 :
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

  module ComplexAdd_38 :
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

  module ComplexAdd_39 :
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

  module ComplexAdd_40 :
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

  module ComplexSub_36 :
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

  module ComplexSub_37 :
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

  module ComplexSub_38 :
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

  module ComplexTran_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexAdd_41 :
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

  module ComplexSub_39 :
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

  module ComplexSub_40 :
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

  module ComplexTran_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexSub_41 :
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

  module ComplexMul_20 :
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
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[3]}

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
    wire _temp_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_5 : UInt<20>
    _temp_WIRE_5 <= _temp_T_10
    node _temp_T_11 = bits(_temp_WIRE_5, 9, 0) @[Modules.scala 155:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 155:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 19, 10) @[Modules.scala 155:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 155:50]
    wire _temp_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_7 : UInt<20>
    _temp_WIRE_7 <= _temp_T_15
    node _temp_T_16 = bits(_temp_WIRE_7, 9, 0) @[Modules.scala 155:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 155:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 19, 10) @[Modules.scala 155:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_36 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_0_inst_1 of ComplexAdd_37 @[Modules.scala 41:22]
    temp_0_inst_1.clock <= clock
    temp_0_inst_1.reset <= reset
    temp_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_0_inst_2 of ComplexAdd_38 @[Modules.scala 41:22]
    temp_0_inst_2.clock <= clock
    temp_0_inst_2.reset <= reset
    temp_0_inst_2.io.op1.im <= temp_0_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst_2.io.op1.re <= temp_0_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst_2.io.op2.im <= temp_0_inst_1.io.res.im @[Modules.scala 43:17]
    temp_0_inst_2.io.op2.re <= temp_0_inst_1.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst_2.io.res @[Modules.scala 160:13]
    inst temp_1_inst of ComplexAdd_39 @[Modules.scala 41:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_1_inst_1 of ComplexAdd_40 @[Modules.scala 41:22]
    temp_1_inst_1.clock <= clock
    temp_1_inst_1.reset <= reset
    temp_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_1_inst_2 of ComplexSub_36 @[Modules.scala 57:22]
    temp_1_inst_2.clock <= clock
    temp_1_inst_2.reset <= reset
    temp_1_inst_2.io.op1.im <= temp_1_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst_2.io.op1.re <= temp_1_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst_2.io.op2.im <= temp_1_inst_1.io.res.im @[Modules.scala 59:17]
    temp_1_inst_2.io.op2.re <= temp_1_inst_1.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst_2.io.res @[Modules.scala 161:13]
    inst temp_2_inst of ComplexSub_37 @[Modules.scala 57:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_2_inst_1 of ComplexSub_38 @[Modules.scala 57:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_2_inst_2 of ComplexTran_12 @[Modules.scala 75:22]
    temp_2_inst_2.clock <= clock
    temp_2_inst_2.reset <= reset
    temp_2_inst_2.io.in.im <= temp_2_inst_1.io.res.im @[Modules.scala 76:16]
    temp_2_inst_2.io.in.re <= temp_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_3 of ComplexAdd_41 @[Modules.scala 41:22]
    temp_2_inst_3.clock <= clock
    temp_2_inst_3.reset <= reset
    temp_2_inst_3.io.op1.im <= temp_2_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_3.io.op1.re <= temp_2_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_3.io.op2.im <= temp_2_inst_2.io.out.im @[Modules.scala 43:17]
    temp_2_inst_3.io.op2.re <= temp_2_inst_2.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_3.io.res @[Modules.scala 162:13]
    inst temp_3_inst of ComplexSub_39 @[Modules.scala 57:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_3_inst_1 of ComplexSub_40 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_3_inst_2 of ComplexTran_13 @[Modules.scala 75:22]
    temp_3_inst_2.clock <= clock
    temp_3_inst_2.reset <= reset
    temp_3_inst_2.io.in.im <= temp_3_inst_1.io.res.im @[Modules.scala 76:16]
    temp_3_inst_2.io.in.re <= temp_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_3 of ComplexSub_41 @[Modules.scala 57:22]
    temp_3_inst_3.clock <= clock
    temp_3_inst_3.reset <= reset
    temp_3_inst_3.io.op1.im <= temp_3_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_3.io.op1.re <= temp_3_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_3.io.op2.im <= temp_3_inst_2.io.out.im @[Modules.scala 59:17]
    temp_3_inst_3.io.op2.re <= temp_3_inst_2.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_3.io.res @[Modules.scala 163:13]
    io.out[0] <= temp[0] @[Modules.scala 192:15]
    inst io_out_1_inst of ComplexMul_18 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 193:15]
    inst io_out_2_inst of ComplexMul_19 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 194:15]
    inst io_out_3_inst of ComplexMul_20 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 195:15]

  module ComplexAdd_42 :
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

  module ComplexAdd_43 :
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

  module ComplexAdd_44 :
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

  module ComplexAdd_45 :
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

  module ComplexAdd_46 :
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

  module ComplexSub_42 :
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

  module ComplexSub_43 :
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

  module ComplexSub_44 :
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

  module ComplexTran_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexAdd_47 :
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

  module ComplexSub_45 :
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

  module ComplexSub_46 :
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

  module ComplexTran_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexSub_47 :
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

  module ComplexMul_21 :
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

  module ComplexMul_22 :
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

  module ComplexMul_23 :
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
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[3]}

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
    wire _temp_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_5 : UInt<20>
    _temp_WIRE_5 <= _temp_T_10
    node _temp_T_11 = bits(_temp_WIRE_5, 9, 0) @[Modules.scala 155:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 155:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 19, 10) @[Modules.scala 155:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 5) @[Modules.scala 155:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 155:50]
    wire _temp_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_7 : UInt<20>
    _temp_WIRE_7 <= _temp_T_15
    node _temp_T_16 = bits(_temp_WIRE_7, 9, 0) @[Modules.scala 155:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 155:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 19, 10) @[Modules.scala 155:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 5) @[Modules.scala 155:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    inst temp_0_inst of ComplexAdd_42 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_0_inst_1 of ComplexAdd_43 @[Modules.scala 41:22]
    temp_0_inst_1.clock <= clock
    temp_0_inst_1.reset <= reset
    temp_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_0_inst_2 of ComplexAdd_44 @[Modules.scala 41:22]
    temp_0_inst_2.clock <= clock
    temp_0_inst_2.reset <= reset
    temp_0_inst_2.io.op1.im <= temp_0_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst_2.io.op1.re <= temp_0_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst_2.io.op2.im <= temp_0_inst_1.io.res.im @[Modules.scala 43:17]
    temp_0_inst_2.io.op2.re <= temp_0_inst_1.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst_2.io.res @[Modules.scala 160:13]
    inst temp_1_inst of ComplexAdd_45 @[Modules.scala 41:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    temp_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst temp_1_inst_1 of ComplexAdd_46 @[Modules.scala 41:22]
    temp_1_inst_1.clock <= clock
    temp_1_inst_1.reset <= reset
    temp_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    temp_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst temp_1_inst_2 of ComplexSub_42 @[Modules.scala 57:22]
    temp_1_inst_2.clock <= clock
    temp_1_inst_2.reset <= reset
    temp_1_inst_2.io.op1.im <= temp_1_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst_2.io.op1.re <= temp_1_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst_2.io.op2.im <= temp_1_inst_1.io.res.im @[Modules.scala 59:17]
    temp_1_inst_2.io.op2.re <= temp_1_inst_1.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst_2.io.res @[Modules.scala 161:13]
    inst temp_2_inst of ComplexSub_43 @[Modules.scala 57:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_2_inst_1 of ComplexSub_44 @[Modules.scala 57:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_2_inst_2 of ComplexTran_14 @[Modules.scala 75:22]
    temp_2_inst_2.clock <= clock
    temp_2_inst_2.reset <= reset
    temp_2_inst_2.io.in.im <= temp_2_inst_1.io.res.im @[Modules.scala 76:16]
    temp_2_inst_2.io.in.re <= temp_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_3 of ComplexAdd_47 @[Modules.scala 41:22]
    temp_2_inst_3.clock <= clock
    temp_2_inst_3.reset <= reset
    temp_2_inst_3.io.op1.im <= temp_2_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_3.io.op1.re <= temp_2_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_3.io.op2.im <= temp_2_inst_2.io.out.im @[Modules.scala 43:17]
    temp_2_inst_3.io.op2.re <= temp_2_inst_2.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_3.io.res @[Modules.scala 162:13]
    inst temp_3_inst of ComplexSub_45 @[Modules.scala 57:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    temp_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst temp_3_inst_1 of ComplexSub_46 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst temp_3_inst_2 of ComplexTran_15 @[Modules.scala 75:22]
    temp_3_inst_2.clock <= clock
    temp_3_inst_2.reset <= reset
    temp_3_inst_2.io.in.im <= temp_3_inst_1.io.res.im @[Modules.scala 76:16]
    temp_3_inst_2.io.in.re <= temp_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_3 of ComplexSub_47 @[Modules.scala 57:22]
    temp_3_inst_3.clock <= clock
    temp_3_inst_3.reset <= reset
    temp_3_inst_3.io.op1.im <= temp_3_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_3.io.op1.re <= temp_3_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_3.io.op2.im <= temp_3_inst_2.io.out.im @[Modules.scala 59:17]
    temp_3_inst_3.io.op2.re <= temp_3_inst_2.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_3.io.res @[Modules.scala 163:13]
    io.out[0] <= temp[0] @[Modules.scala 192:15]
    inst io_out_1_inst of ComplexMul_21 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 193:15]
    inst io_out_2_inst of ComplexMul_22 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 194:15]
    inst io_out_3_inst of ComplexMul_23 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 195:15]

  module ComplexAdd_48 :
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

  module ComplexAdd_49 :
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

  module ComplexAdd_50 :
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

  module ComplexAdd_51 :
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

  module ComplexAdd_52 :
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

  module ComplexSub_48 :
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

  module ComplexSub_49 :
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

  module ComplexSub_50 :
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

  module ComplexTran_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexAdd_53 :
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

  module ComplexSub_51 :
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

  module ComplexSub_52 :
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

  module ComplexTran_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexSub_53 :
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
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4]}

    inst io_out_0_inst of ComplexAdd_48 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst io_out_0_inst_1 of ComplexAdd_49 @[Modules.scala 41:22]
    io_out_0_inst_1.clock <= clock
    io_out_0_inst_1.reset <= reset
    io_out_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    io_out_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    io_out_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    io_out_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst io_out_0_inst_2 of ComplexAdd_50 @[Modules.scala 41:22]
    io_out_0_inst_2.clock <= clock
    io_out_0_inst_2.reset <= reset
    io_out_0_inst_2.io.op1.im <= io_out_0_inst.io.res.im @[Modules.scala 42:17]
    io_out_0_inst_2.io.op1.re <= io_out_0_inst.io.res.re @[Modules.scala 42:17]
    io_out_0_inst_2.io.op2.im <= io_out_0_inst_1.io.res.im @[Modules.scala 43:17]
    io_out_0_inst_2.io.op2.re <= io_out_0_inst_1.io.res.re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst_2.io.res @[Modules.scala 112:15]
    inst io_out_1_inst of ComplexAdd_51 @[Modules.scala 41:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    io_out_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst io_out_1_inst_1 of ComplexAdd_52 @[Modules.scala 41:22]
    io_out_1_inst_1.clock <= clock
    io_out_1_inst_1.reset <= reset
    io_out_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    io_out_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    io_out_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    io_out_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst io_out_1_inst_2 of ComplexSub_48 @[Modules.scala 57:22]
    io_out_1_inst_2.clock <= clock
    io_out_1_inst_2.reset <= reset
    io_out_1_inst_2.io.op1.im <= io_out_1_inst.io.res.im @[Modules.scala 58:17]
    io_out_1_inst_2.io.op1.re <= io_out_1_inst.io.res.re @[Modules.scala 58:17]
    io_out_1_inst_2.io.op2.im <= io_out_1_inst_1.io.res.im @[Modules.scala 59:17]
    io_out_1_inst_2.io.op2.re <= io_out_1_inst_1.io.res.re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst_2.io.res @[Modules.scala 113:15]
    inst io_out_2_inst of ComplexSub_49 @[Modules.scala 57:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    io_out_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst io_out_2_inst_1 of ComplexSub_50 @[Modules.scala 57:22]
    io_out_2_inst_1.clock <= clock
    io_out_2_inst_1.reset <= reset
    io_out_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    io_out_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    io_out_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    io_out_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst io_out_2_inst_2 of ComplexTran_16 @[Modules.scala 75:22]
    io_out_2_inst_2.clock <= clock
    io_out_2_inst_2.reset <= reset
    io_out_2_inst_2.io.in.im <= io_out_2_inst_1.io.res.im @[Modules.scala 76:16]
    io_out_2_inst_2.io.in.re <= io_out_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst io_out_2_inst_3 of ComplexAdd_53 @[Modules.scala 41:22]
    io_out_2_inst_3.clock <= clock
    io_out_2_inst_3.reset <= reset
    io_out_2_inst_3.io.op1.im <= io_out_2_inst.io.res.im @[Modules.scala 42:17]
    io_out_2_inst_3.io.op1.re <= io_out_2_inst.io.res.re @[Modules.scala 42:17]
    io_out_2_inst_3.io.op2.im <= io_out_2_inst_2.io.out.im @[Modules.scala 43:17]
    io_out_2_inst_3.io.op2.re <= io_out_2_inst_2.io.out.re @[Modules.scala 43:17]
    io.out[2] <= io_out_2_inst_3.io.res @[Modules.scala 114:15]
    inst io_out_3_inst of ComplexSub_51 @[Modules.scala 57:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    io_out_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst io_out_3_inst_1 of ComplexSub_52 @[Modules.scala 57:22]
    io_out_3_inst_1.clock <= clock
    io_out_3_inst_1.reset <= reset
    io_out_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    io_out_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    io_out_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    io_out_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst io_out_3_inst_2 of ComplexTran_17 @[Modules.scala 75:22]
    io_out_3_inst_2.clock <= clock
    io_out_3_inst_2.reset <= reset
    io_out_3_inst_2.io.in.im <= io_out_3_inst_1.io.res.im @[Modules.scala 76:16]
    io_out_3_inst_2.io.in.re <= io_out_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst io_out_3_inst_3 of ComplexSub_53 @[Modules.scala 57:22]
    io_out_3_inst_3.clock <= clock
    io_out_3_inst_3.reset <= reset
    io_out_3_inst_3.io.op1.im <= io_out_3_inst.io.res.im @[Modules.scala 58:17]
    io_out_3_inst_3.io.op1.re <= io_out_3_inst.io.res.re @[Modules.scala 58:17]
    io_out_3_inst_3.io.op2.im <= io_out_3_inst_2.io.out.im @[Modules.scala 59:17]
    io_out_3_inst_3.io.op2.re <= io_out_3_inst_2.io.out.re @[Modules.scala 59:17]
    io.out[3] <= io_out_3_inst_3.io.res @[Modules.scala 115:15]

  module ComplexAdd_54 :
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

  module ComplexAdd_55 :
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

  module ComplexAdd_56 :
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

  module ComplexAdd_57 :
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

  module ComplexAdd_58 :
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

  module ComplexSub_54 :
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

  module ComplexSub_55 :
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

  module ComplexSub_56 :
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

  module ComplexTran_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexAdd_59 :
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

  module ComplexSub_57 :
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

  module ComplexSub_58 :
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

  module ComplexTran_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexSub_59 :
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
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4]}

    inst io_out_0_inst of ComplexAdd_54 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst io_out_0_inst_1 of ComplexAdd_55 @[Modules.scala 41:22]
    io_out_0_inst_1.clock <= clock
    io_out_0_inst_1.reset <= reset
    io_out_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    io_out_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    io_out_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    io_out_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst io_out_0_inst_2 of ComplexAdd_56 @[Modules.scala 41:22]
    io_out_0_inst_2.clock <= clock
    io_out_0_inst_2.reset <= reset
    io_out_0_inst_2.io.op1.im <= io_out_0_inst.io.res.im @[Modules.scala 42:17]
    io_out_0_inst_2.io.op1.re <= io_out_0_inst.io.res.re @[Modules.scala 42:17]
    io_out_0_inst_2.io.op2.im <= io_out_0_inst_1.io.res.im @[Modules.scala 43:17]
    io_out_0_inst_2.io.op2.re <= io_out_0_inst_1.io.res.re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst_2.io.res @[Modules.scala 112:15]
    inst io_out_1_inst of ComplexAdd_57 @[Modules.scala 41:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    io_out_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst io_out_1_inst_1 of ComplexAdd_58 @[Modules.scala 41:22]
    io_out_1_inst_1.clock <= clock
    io_out_1_inst_1.reset <= reset
    io_out_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    io_out_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    io_out_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    io_out_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst io_out_1_inst_2 of ComplexSub_54 @[Modules.scala 57:22]
    io_out_1_inst_2.clock <= clock
    io_out_1_inst_2.reset <= reset
    io_out_1_inst_2.io.op1.im <= io_out_1_inst.io.res.im @[Modules.scala 58:17]
    io_out_1_inst_2.io.op1.re <= io_out_1_inst.io.res.re @[Modules.scala 58:17]
    io_out_1_inst_2.io.op2.im <= io_out_1_inst_1.io.res.im @[Modules.scala 59:17]
    io_out_1_inst_2.io.op2.re <= io_out_1_inst_1.io.res.re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst_2.io.res @[Modules.scala 113:15]
    inst io_out_2_inst of ComplexSub_55 @[Modules.scala 57:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    io_out_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst io_out_2_inst_1 of ComplexSub_56 @[Modules.scala 57:22]
    io_out_2_inst_1.clock <= clock
    io_out_2_inst_1.reset <= reset
    io_out_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    io_out_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    io_out_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    io_out_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst io_out_2_inst_2 of ComplexTran_18 @[Modules.scala 75:22]
    io_out_2_inst_2.clock <= clock
    io_out_2_inst_2.reset <= reset
    io_out_2_inst_2.io.in.im <= io_out_2_inst_1.io.res.im @[Modules.scala 76:16]
    io_out_2_inst_2.io.in.re <= io_out_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst io_out_2_inst_3 of ComplexAdd_59 @[Modules.scala 41:22]
    io_out_2_inst_3.clock <= clock
    io_out_2_inst_3.reset <= reset
    io_out_2_inst_3.io.op1.im <= io_out_2_inst.io.res.im @[Modules.scala 42:17]
    io_out_2_inst_3.io.op1.re <= io_out_2_inst.io.res.re @[Modules.scala 42:17]
    io_out_2_inst_3.io.op2.im <= io_out_2_inst_2.io.out.im @[Modules.scala 43:17]
    io_out_2_inst_3.io.op2.re <= io_out_2_inst_2.io.out.re @[Modules.scala 43:17]
    io.out[2] <= io_out_2_inst_3.io.res @[Modules.scala 114:15]
    inst io_out_3_inst of ComplexSub_57 @[Modules.scala 57:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    io_out_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst io_out_3_inst_1 of ComplexSub_58 @[Modules.scala 57:22]
    io_out_3_inst_1.clock <= clock
    io_out_3_inst_1.reset <= reset
    io_out_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    io_out_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    io_out_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    io_out_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst io_out_3_inst_2 of ComplexTran_19 @[Modules.scala 75:22]
    io_out_3_inst_2.clock <= clock
    io_out_3_inst_2.reset <= reset
    io_out_3_inst_2.io.in.im <= io_out_3_inst_1.io.res.im @[Modules.scala 76:16]
    io_out_3_inst_2.io.in.re <= io_out_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst io_out_3_inst_3 of ComplexSub_59 @[Modules.scala 57:22]
    io_out_3_inst_3.clock <= clock
    io_out_3_inst_3.reset <= reset
    io_out_3_inst_3.io.op1.im <= io_out_3_inst.io.res.im @[Modules.scala 58:17]
    io_out_3_inst_3.io.op1.re <= io_out_3_inst.io.res.re @[Modules.scala 58:17]
    io_out_3_inst_3.io.op2.im <= io_out_3_inst_2.io.out.im @[Modules.scala 59:17]
    io_out_3_inst_3.io.op2.re <= io_out_3_inst_2.io.out.re @[Modules.scala 59:17]
    io.out[3] <= io_out_3_inst_3.io.res @[Modules.scala 115:15]

  module ComplexAdd_60 :
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

  module ComplexAdd_61 :
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

  module ComplexAdd_62 :
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

  module ComplexAdd_63 :
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

  module ComplexAdd_64 :
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

  module ComplexSub_60 :
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

  module ComplexSub_61 :
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

  module ComplexSub_62 :
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

  module ComplexTran_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexAdd_65 :
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

  module ComplexSub_63 :
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

  module ComplexSub_64 :
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

  module ComplexTran_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexSub_65 :
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
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4]}

    inst io_out_0_inst of ComplexAdd_60 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst io_out_0_inst_1 of ComplexAdd_61 @[Modules.scala 41:22]
    io_out_0_inst_1.clock <= clock
    io_out_0_inst_1.reset <= reset
    io_out_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    io_out_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    io_out_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    io_out_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst io_out_0_inst_2 of ComplexAdd_62 @[Modules.scala 41:22]
    io_out_0_inst_2.clock <= clock
    io_out_0_inst_2.reset <= reset
    io_out_0_inst_2.io.op1.im <= io_out_0_inst.io.res.im @[Modules.scala 42:17]
    io_out_0_inst_2.io.op1.re <= io_out_0_inst.io.res.re @[Modules.scala 42:17]
    io_out_0_inst_2.io.op2.im <= io_out_0_inst_1.io.res.im @[Modules.scala 43:17]
    io_out_0_inst_2.io.op2.re <= io_out_0_inst_1.io.res.re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst_2.io.res @[Modules.scala 112:15]
    inst io_out_1_inst of ComplexAdd_63 @[Modules.scala 41:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    io_out_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst io_out_1_inst_1 of ComplexAdd_64 @[Modules.scala 41:22]
    io_out_1_inst_1.clock <= clock
    io_out_1_inst_1.reset <= reset
    io_out_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    io_out_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    io_out_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    io_out_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst io_out_1_inst_2 of ComplexSub_60 @[Modules.scala 57:22]
    io_out_1_inst_2.clock <= clock
    io_out_1_inst_2.reset <= reset
    io_out_1_inst_2.io.op1.im <= io_out_1_inst.io.res.im @[Modules.scala 58:17]
    io_out_1_inst_2.io.op1.re <= io_out_1_inst.io.res.re @[Modules.scala 58:17]
    io_out_1_inst_2.io.op2.im <= io_out_1_inst_1.io.res.im @[Modules.scala 59:17]
    io_out_1_inst_2.io.op2.re <= io_out_1_inst_1.io.res.re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst_2.io.res @[Modules.scala 113:15]
    inst io_out_2_inst of ComplexSub_61 @[Modules.scala 57:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    io_out_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst io_out_2_inst_1 of ComplexSub_62 @[Modules.scala 57:22]
    io_out_2_inst_1.clock <= clock
    io_out_2_inst_1.reset <= reset
    io_out_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    io_out_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    io_out_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    io_out_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst io_out_2_inst_2 of ComplexTran_20 @[Modules.scala 75:22]
    io_out_2_inst_2.clock <= clock
    io_out_2_inst_2.reset <= reset
    io_out_2_inst_2.io.in.im <= io_out_2_inst_1.io.res.im @[Modules.scala 76:16]
    io_out_2_inst_2.io.in.re <= io_out_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst io_out_2_inst_3 of ComplexAdd_65 @[Modules.scala 41:22]
    io_out_2_inst_3.clock <= clock
    io_out_2_inst_3.reset <= reset
    io_out_2_inst_3.io.op1.im <= io_out_2_inst.io.res.im @[Modules.scala 42:17]
    io_out_2_inst_3.io.op1.re <= io_out_2_inst.io.res.re @[Modules.scala 42:17]
    io_out_2_inst_3.io.op2.im <= io_out_2_inst_2.io.out.im @[Modules.scala 43:17]
    io_out_2_inst_3.io.op2.re <= io_out_2_inst_2.io.out.re @[Modules.scala 43:17]
    io.out[2] <= io_out_2_inst_3.io.res @[Modules.scala 114:15]
    inst io_out_3_inst of ComplexSub_63 @[Modules.scala 57:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    io_out_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst io_out_3_inst_1 of ComplexSub_64 @[Modules.scala 57:22]
    io_out_3_inst_1.clock <= clock
    io_out_3_inst_1.reset <= reset
    io_out_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    io_out_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    io_out_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    io_out_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst io_out_3_inst_2 of ComplexTran_21 @[Modules.scala 75:22]
    io_out_3_inst_2.clock <= clock
    io_out_3_inst_2.reset <= reset
    io_out_3_inst_2.io.in.im <= io_out_3_inst_1.io.res.im @[Modules.scala 76:16]
    io_out_3_inst_2.io.in.re <= io_out_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst io_out_3_inst_3 of ComplexSub_65 @[Modules.scala 57:22]
    io_out_3_inst_3.clock <= clock
    io_out_3_inst_3.reset <= reset
    io_out_3_inst_3.io.op1.im <= io_out_3_inst.io.res.im @[Modules.scala 58:17]
    io_out_3_inst_3.io.op1.re <= io_out_3_inst.io.res.re @[Modules.scala 58:17]
    io_out_3_inst_3.io.op2.im <= io_out_3_inst_2.io.out.im @[Modules.scala 59:17]
    io_out_3_inst_3.io.op2.re <= io_out_3_inst_2.io.out.re @[Modules.scala 59:17]
    io.out[3] <= io_out_3_inst_3.io.res @[Modules.scala 115:15]

  module ComplexAdd_66 :
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

  module ComplexAdd_67 :
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

  module ComplexAdd_68 :
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

  module ComplexAdd_69 :
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

  module ComplexAdd_70 :
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

  module ComplexSub_66 :
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

  module ComplexSub_67 :
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

  module ComplexSub_68 :
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

  module ComplexTran_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexAdd_71 :
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

  module ComplexSub_69 :
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

  module ComplexSub_70 :
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

  module ComplexTran_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}}

    io.out.re <= io.in.im @[Modules.scala 69:13]
    node _io_out_im_T = asFixedPoint(io.in.re, 5) @[Modules.scala 70:38]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 70:16]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 70:16]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 5) @[Modules.scala 70:16]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 70:13]

  module ComplexSub_71 :
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
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4]}

    inst io_out_0_inst of ComplexAdd_66 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst io_out_0_inst_1 of ComplexAdd_67 @[Modules.scala 41:22]
    io_out_0_inst_1.clock <= clock
    io_out_0_inst_1.reset <= reset
    io_out_0_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    io_out_0_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    io_out_0_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    io_out_0_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst io_out_0_inst_2 of ComplexAdd_68 @[Modules.scala 41:22]
    io_out_0_inst_2.clock <= clock
    io_out_0_inst_2.reset <= reset
    io_out_0_inst_2.io.op1.im <= io_out_0_inst.io.res.im @[Modules.scala 42:17]
    io_out_0_inst_2.io.op1.re <= io_out_0_inst.io.res.re @[Modules.scala 42:17]
    io_out_0_inst_2.io.op2.im <= io_out_0_inst_1.io.res.im @[Modules.scala 43:17]
    io_out_0_inst_2.io.op2.re <= io_out_0_inst_1.io.res.re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst_2.io.res @[Modules.scala 112:15]
    inst io_out_1_inst of ComplexAdd_69 @[Modules.scala 41:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    io_out_1_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    io_out_1_inst.io.op2.im <= io.in[2].im @[Modules.scala 43:17]
    io_out_1_inst.io.op2.re <= io.in[2].re @[Modules.scala 43:17]
    inst io_out_1_inst_1 of ComplexAdd_70 @[Modules.scala 41:22]
    io_out_1_inst_1.clock <= clock
    io_out_1_inst_1.reset <= reset
    io_out_1_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    io_out_1_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    io_out_1_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 43:17]
    io_out_1_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 43:17]
    inst io_out_1_inst_2 of ComplexSub_66 @[Modules.scala 57:22]
    io_out_1_inst_2.clock <= clock
    io_out_1_inst_2.reset <= reset
    io_out_1_inst_2.io.op1.im <= io_out_1_inst.io.res.im @[Modules.scala 58:17]
    io_out_1_inst_2.io.op1.re <= io_out_1_inst.io.res.re @[Modules.scala 58:17]
    io_out_1_inst_2.io.op2.im <= io_out_1_inst_1.io.res.im @[Modules.scala 59:17]
    io_out_1_inst_2.io.op2.re <= io_out_1_inst_1.io.res.re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst_2.io.res @[Modules.scala 113:15]
    inst io_out_2_inst of ComplexSub_67 @[Modules.scala 57:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_2_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_2_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    io_out_2_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst io_out_2_inst_1 of ComplexSub_68 @[Modules.scala 57:22]
    io_out_2_inst_1.clock <= clock
    io_out_2_inst_1.reset <= reset
    io_out_2_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    io_out_2_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    io_out_2_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    io_out_2_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst io_out_2_inst_2 of ComplexTran_22 @[Modules.scala 75:22]
    io_out_2_inst_2.clock <= clock
    io_out_2_inst_2.reset <= reset
    io_out_2_inst_2.io.in.im <= io_out_2_inst_1.io.res.im @[Modules.scala 76:16]
    io_out_2_inst_2.io.in.re <= io_out_2_inst_1.io.res.re @[Modules.scala 76:16]
    inst io_out_2_inst_3 of ComplexAdd_71 @[Modules.scala 41:22]
    io_out_2_inst_3.clock <= clock
    io_out_2_inst_3.reset <= reset
    io_out_2_inst_3.io.op1.im <= io_out_2_inst.io.res.im @[Modules.scala 42:17]
    io_out_2_inst_3.io.op1.re <= io_out_2_inst.io.res.re @[Modules.scala 42:17]
    io_out_2_inst_3.io.op2.im <= io_out_2_inst_2.io.out.im @[Modules.scala 43:17]
    io_out_2_inst_3.io.op2.re <= io_out_2_inst_2.io.out.re @[Modules.scala 43:17]
    io.out[2] <= io_out_2_inst_3.io.res @[Modules.scala 114:15]
    inst io_out_3_inst of ComplexSub_69 @[Modules.scala 57:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    io_out_3_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    io_out_3_inst.io.op2.im <= io.in[2].im @[Modules.scala 59:17]
    io_out_3_inst.io.op2.re <= io.in[2].re @[Modules.scala 59:17]
    inst io_out_3_inst_1 of ComplexSub_70 @[Modules.scala 57:22]
    io_out_3_inst_1.clock <= clock
    io_out_3_inst_1.reset <= reset
    io_out_3_inst_1.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    io_out_3_inst_1.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    io_out_3_inst_1.io.op2.im <= io.in[3].im @[Modules.scala 59:17]
    io_out_3_inst_1.io.op2.re <= io.in[3].re @[Modules.scala 59:17]
    inst io_out_3_inst_2 of ComplexTran_23 @[Modules.scala 75:22]
    io_out_3_inst_2.clock <= clock
    io_out_3_inst_2.reset <= reset
    io_out_3_inst_2.io.in.im <= io_out_3_inst_1.io.res.im @[Modules.scala 76:16]
    io_out_3_inst_2.io.in.re <= io_out_3_inst_1.io.res.re @[Modules.scala 76:16]
    inst io_out_3_inst_3 of ComplexSub_71 @[Modules.scala 57:22]
    io_out_3_inst_3.clock <= clock
    io_out_3_inst_3.reset <= reset
    io_out_3_inst_3.io.op1.im <= io_out_3_inst.io.res.im @[Modules.scala 58:17]
    io_out_3_inst_3.io.op1.re <= io_out_3_inst.io.res.re @[Modules.scala 58:17]
    io_out_3_inst_3.io.op2.im <= io_out_3_inst_2.io.out.im @[Modules.scala 59:17]
    io_out_3_inst_3.io.op2.re <= io_out_3_inst_2.io.out.re @[Modules.scala 59:17]
    io.out[3] <= io_out_3_inst_3.io.res @[Modules.scala 115:15]

  module Exchange :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4][4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4][4]}

    io.out[0][0] <= io.in[0][0] @[Modules.scala 247:20]
    io.out[0][1] <= io.in[1][0] @[Modules.scala 247:20]
    io.out[0][2] <= io.in[2][0] @[Modules.scala 247:20]
    io.out[0][3] <= io.in[3][0] @[Modules.scala 247:20]
    io.out[1][0] <= io.in[0][1] @[Modules.scala 247:20]
    io.out[1][1] <= io.in[1][1] @[Modules.scala 247:20]
    io.out[1][2] <= io.in[2][1] @[Modules.scala 247:20]
    io.out[1][3] <= io.in[3][1] @[Modules.scala 247:20]
    io.out[2][0] <= io.in[0][2] @[Modules.scala 247:20]
    io.out[2][1] <= io.in[1][2] @[Modules.scala 247:20]
    io.out[2][2] <= io.in[2][2] @[Modules.scala 247:20]
    io.out[2][3] <= io.in[3][2] @[Modules.scala 247:20]
    io.out[3][0] <= io.in[0][3] @[Modules.scala 247:20]
    io.out[3][1] <= io.in[1][3] @[Modules.scala 247:20]
    io.out[3][2] <= io.in[2][3] @[Modules.scala 247:20]
    io.out[3][3] <= io.in[3][3] @[Modules.scala 247:20]

  module Switch :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip sel : UInt<2>}

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
    wire _swdata_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_10 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_5 : UInt<20>
    _swdata_WIRE_5 <= _swdata_T_10
    node _swdata_T_11 = bits(_swdata_WIRE_5, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_12 = asFixedPoint(_swdata_T_11, 5) @[Modules.scala 227:71]
    _swdata_WIRE_4.im <= _swdata_T_12 @[Modules.scala 227:71]
    node _swdata_T_13 = bits(_swdata_WIRE_5, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_14 = asFixedPoint(_swdata_T_13, 5) @[Modules.scala 227:71]
    _swdata_WIRE_4.re <= _swdata_T_14 @[Modules.scala 227:71]
    wire _swdata_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_15 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_7 : UInt<20>
    _swdata_WIRE_7 <= _swdata_T_15
    node _swdata_T_16 = bits(_swdata_WIRE_7, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_17 = asFixedPoint(_swdata_T_16, 5) @[Modules.scala 227:71]
    _swdata_WIRE_6.im <= _swdata_T_17 @[Modules.scala 227:71]
    node _swdata_T_18 = bits(_swdata_WIRE_7, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_19 = asFixedPoint(_swdata_T_18, 5) @[Modules.scala 227:71]
    _swdata_WIRE_6.re <= _swdata_T_19 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[2] <= _swdata_WIRE_4 @[Modules.scala 227:23]
    swdata[3] <= _swdata_WIRE_6 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r @[Modules.scala 228:38]
    reg swdata_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r <= io.in[2] @[Reg.scala 20:22]
    reg swdata_2_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r_1 <= swdata_2_r @[Reg.scala 20:22]
    swdata[2] <= swdata_2_r_1 @[Modules.scala 228:38]
    reg swdata_3_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r <= io.in[3] @[Reg.scala 20:22]
    reg swdata_3_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_1 <= swdata_3_r @[Reg.scala 20:22]
    reg swdata_3_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_2 <= swdata_3_r_1 @[Reg.scala 20:22]
    swdata[3] <= swdata_3_r_2 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    _io_out_0_WIRE[2] <= swdata[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[3] <= swdata[3] @[Modules.scala 225:12]
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
    io.out[0] <= io_out_0_r_2 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[3] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    _io_out_1_WIRE[2] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[3] <= swdata[2] @[Modules.scala 225:12]
    reg io_out_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r <= _io_out_1_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_1 <= io_out_1_r @[Reg.scala 20:22]
    io.out[1] <= io_out_1_r_1 @[Modules.scala 229:38]
    wire _io_out_2_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_2_WIRE[0] <= swdata[2] @[Modules.scala 225:12]
    _io_out_2_WIRE[1] <= swdata[3] @[Modules.scala 225:12]
    _io_out_2_WIRE[2] <= swdata[0] @[Modules.scala 225:12]
    _io_out_2_WIRE[3] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r <= _io_out_2_WIRE[io.sel] @[Reg.scala 20:22]
    io.out[2] <= io_out_2_r @[Modules.scala 229:38]
    wire _io_out_3_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_3_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_3_WIRE[1] <= swdata[2] @[Modules.scala 225:12]
    _io_out_3_WIRE[2] <= swdata[3] @[Modules.scala 225:12]
    _io_out_3_WIRE[3] <= swdata[0] @[Modules.scala 225:12]
    io.out[3] <= _io_out_3_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip sel : UInt<2>}

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
    wire _swdata_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_10 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_5 : UInt<20>
    _swdata_WIRE_5 <= _swdata_T_10
    node _swdata_T_11 = bits(_swdata_WIRE_5, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_12 = asFixedPoint(_swdata_T_11, 5) @[Modules.scala 227:71]
    _swdata_WIRE_4.im <= _swdata_T_12 @[Modules.scala 227:71]
    node _swdata_T_13 = bits(_swdata_WIRE_5, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_14 = asFixedPoint(_swdata_T_13, 5) @[Modules.scala 227:71]
    _swdata_WIRE_4.re <= _swdata_T_14 @[Modules.scala 227:71]
    wire _swdata_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_15 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_7 : UInt<20>
    _swdata_WIRE_7 <= _swdata_T_15
    node _swdata_T_16 = bits(_swdata_WIRE_7, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_17 = asFixedPoint(_swdata_T_16, 5) @[Modules.scala 227:71]
    _swdata_WIRE_6.im <= _swdata_T_17 @[Modules.scala 227:71]
    node _swdata_T_18 = bits(_swdata_WIRE_7, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_19 = asFixedPoint(_swdata_T_18, 5) @[Modules.scala 227:71]
    _swdata_WIRE_6.re <= _swdata_T_19 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[2] <= _swdata_WIRE_4 @[Modules.scala 227:23]
    swdata[3] <= _swdata_WIRE_6 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r @[Modules.scala 228:38]
    reg swdata_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r <= io.in[2] @[Reg.scala 20:22]
    reg swdata_2_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r_1 <= swdata_2_r @[Reg.scala 20:22]
    swdata[2] <= swdata_2_r_1 @[Modules.scala 228:38]
    reg swdata_3_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r <= io.in[3] @[Reg.scala 20:22]
    reg swdata_3_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_1 <= swdata_3_r @[Reg.scala 20:22]
    reg swdata_3_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_2 <= swdata_3_r_1 @[Reg.scala 20:22]
    swdata[3] <= swdata_3_r_2 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    _io_out_0_WIRE[2] <= swdata[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[3] <= swdata[3] @[Modules.scala 225:12]
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
    io.out[0] <= io_out_0_r_2 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[3] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    _io_out_1_WIRE[2] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[3] <= swdata[2] @[Modules.scala 225:12]
    reg io_out_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r <= _io_out_1_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_1 <= io_out_1_r @[Reg.scala 20:22]
    io.out[1] <= io_out_1_r_1 @[Modules.scala 229:38]
    wire _io_out_2_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_2_WIRE[0] <= swdata[2] @[Modules.scala 225:12]
    _io_out_2_WIRE[1] <= swdata[3] @[Modules.scala 225:12]
    _io_out_2_WIRE[2] <= swdata[0] @[Modules.scala 225:12]
    _io_out_2_WIRE[3] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r <= _io_out_2_WIRE[io.sel] @[Reg.scala 20:22]
    io.out[2] <= io_out_2_r @[Modules.scala 229:38]
    wire _io_out_3_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_3_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_3_WIRE[1] <= swdata[2] @[Modules.scala 225:12]
    _io_out_3_WIRE[2] <= swdata[3] @[Modules.scala 225:12]
    _io_out_3_WIRE[3] <= swdata[0] @[Modules.scala 225:12]
    io.out[3] <= _io_out_3_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip sel : UInt<2>}

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
    wire _swdata_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_10 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_5 : UInt<20>
    _swdata_WIRE_5 <= _swdata_T_10
    node _swdata_T_11 = bits(_swdata_WIRE_5, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_12 = asFixedPoint(_swdata_T_11, 5) @[Modules.scala 227:71]
    _swdata_WIRE_4.im <= _swdata_T_12 @[Modules.scala 227:71]
    node _swdata_T_13 = bits(_swdata_WIRE_5, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_14 = asFixedPoint(_swdata_T_13, 5) @[Modules.scala 227:71]
    _swdata_WIRE_4.re <= _swdata_T_14 @[Modules.scala 227:71]
    wire _swdata_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_15 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_7 : UInt<20>
    _swdata_WIRE_7 <= _swdata_T_15
    node _swdata_T_16 = bits(_swdata_WIRE_7, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_17 = asFixedPoint(_swdata_T_16, 5) @[Modules.scala 227:71]
    _swdata_WIRE_6.im <= _swdata_T_17 @[Modules.scala 227:71]
    node _swdata_T_18 = bits(_swdata_WIRE_7, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_19 = asFixedPoint(_swdata_T_18, 5) @[Modules.scala 227:71]
    _swdata_WIRE_6.re <= _swdata_T_19 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[2] <= _swdata_WIRE_4 @[Modules.scala 227:23]
    swdata[3] <= _swdata_WIRE_6 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r @[Modules.scala 228:38]
    reg swdata_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r <= io.in[2] @[Reg.scala 20:22]
    reg swdata_2_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r_1 <= swdata_2_r @[Reg.scala 20:22]
    swdata[2] <= swdata_2_r_1 @[Modules.scala 228:38]
    reg swdata_3_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r <= io.in[3] @[Reg.scala 20:22]
    reg swdata_3_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_1 <= swdata_3_r @[Reg.scala 20:22]
    reg swdata_3_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_2 <= swdata_3_r_1 @[Reg.scala 20:22]
    swdata[3] <= swdata_3_r_2 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    _io_out_0_WIRE[2] <= swdata[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[3] <= swdata[3] @[Modules.scala 225:12]
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
    io.out[0] <= io_out_0_r_2 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[3] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    _io_out_1_WIRE[2] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[3] <= swdata[2] @[Modules.scala 225:12]
    reg io_out_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r <= _io_out_1_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_1 <= io_out_1_r @[Reg.scala 20:22]
    io.out[1] <= io_out_1_r_1 @[Modules.scala 229:38]
    wire _io_out_2_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_2_WIRE[0] <= swdata[2] @[Modules.scala 225:12]
    _io_out_2_WIRE[1] <= swdata[3] @[Modules.scala 225:12]
    _io_out_2_WIRE[2] <= swdata[0] @[Modules.scala 225:12]
    _io_out_2_WIRE[3] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r <= _io_out_2_WIRE[io.sel] @[Reg.scala 20:22]
    io.out[2] <= io_out_2_r @[Modules.scala 229:38]
    wire _io_out_3_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_3_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_3_WIRE[1] <= swdata[2] @[Modules.scala 225:12]
    _io_out_3_WIRE[2] <= swdata[3] @[Modules.scala 225:12]
    _io_out_3_WIRE[3] <= swdata[0] @[Modules.scala 225:12]
    io.out[3] <= _io_out_3_WIRE[io.sel] @[Modules.scala 229:38]

  module Switch_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], flip sel : UInt<2>}

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
    wire _swdata_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_10 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_5 : UInt<20>
    _swdata_WIRE_5 <= _swdata_T_10
    node _swdata_T_11 = bits(_swdata_WIRE_5, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_12 = asFixedPoint(_swdata_T_11, 5) @[Modules.scala 227:71]
    _swdata_WIRE_4.im <= _swdata_T_12 @[Modules.scala 227:71]
    node _swdata_T_13 = bits(_swdata_WIRE_5, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_14 = asFixedPoint(_swdata_T_13, 5) @[Modules.scala 227:71]
    _swdata_WIRE_4.re <= _swdata_T_14 @[Modules.scala 227:71]
    wire _swdata_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_15 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_7 : UInt<20>
    _swdata_WIRE_7 <= _swdata_T_15
    node _swdata_T_16 = bits(_swdata_WIRE_7, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_17 = asFixedPoint(_swdata_T_16, 5) @[Modules.scala 227:71]
    _swdata_WIRE_6.im <= _swdata_T_17 @[Modules.scala 227:71]
    node _swdata_T_18 = bits(_swdata_WIRE_7, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_19 = asFixedPoint(_swdata_T_18, 5) @[Modules.scala 227:71]
    _swdata_WIRE_6.re <= _swdata_T_19 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[2] <= _swdata_WIRE_4 @[Modules.scala 227:23]
    swdata[3] <= _swdata_WIRE_6 @[Modules.scala 227:23]
    swdata[0] <= io.in[0] @[Modules.scala 228:38]
    reg swdata_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r @[Modules.scala 228:38]
    reg swdata_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r <= io.in[2] @[Reg.scala 20:22]
    reg swdata_2_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r_1 <= swdata_2_r @[Reg.scala 20:22]
    swdata[2] <= swdata_2_r_1 @[Modules.scala 228:38]
    reg swdata_3_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r <= io.in[3] @[Reg.scala 20:22]
    reg swdata_3_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_1 <= swdata_3_r @[Reg.scala 20:22]
    reg swdata_3_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_2 <= swdata_3_r_1 @[Reg.scala 20:22]
    swdata[3] <= swdata_3_r_2 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    _io_out_0_WIRE[2] <= swdata[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[3] <= swdata[3] @[Modules.scala 225:12]
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
    io.out[0] <= io_out_0_r_2 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[3] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    _io_out_1_WIRE[2] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[3] <= swdata[2] @[Modules.scala 225:12]
    reg io_out_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r <= _io_out_1_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_1 <= io_out_1_r @[Reg.scala 20:22]
    io.out[1] <= io_out_1_r_1 @[Modules.scala 229:38]
    wire _io_out_2_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_2_WIRE[0] <= swdata[2] @[Modules.scala 225:12]
    _io_out_2_WIRE[1] <= swdata[3] @[Modules.scala 225:12]
    _io_out_2_WIRE[2] <= swdata[0] @[Modules.scala 225:12]
    _io_out_2_WIRE[3] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r <= _io_out_2_WIRE[io.sel] @[Reg.scala 20:22]
    io.out[2] <= io_out_2_r @[Modules.scala 229:38]
    wire _io_out_3_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[Modules.scala 225:12]
    _io_out_3_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_3_WIRE[1] <= swdata[2] @[Modules.scala 225:12]
    _io_out_3_WIRE[2] <= swdata[3] @[Modules.scala 225:12]
    _io_out_3_WIRE[3] <= swdata[0] @[Modules.scala 225:12]
    io.out[3] <= _io_out_3_WIRE[io.sel] @[Modules.scala 229:38]

  module FFT :
    input clock : Clock
    input reset : Reset
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[16], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[16], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

    reg cnt_0 : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[FFT.scala 39:46]
    reg cnt_1 : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[FFT.scala 39:46]
    cnt_1 <= cnt_0 @[FFT.scala 41:16]
    node busy = neq(cnt_0, UInt<1>("h0")) @[FFT.scala 43:21]
    node _T = or(io.din_valid, busy) @[FFT.scala 44:21]
    when _T : @[FFT.scala 44:30]
      node _cnt_0_T = eq(cnt_0, UInt<4>("h8")) @[FFT.scala 45:26]
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
    wire unitDataIn_0_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_0_0[0] <= _unitDataIn_WIRE @[FFT.scala 51:70]
    unitDataIn_0_0[1] <= _unitDataIn_WIRE_2 @[FFT.scala 51:70]
    unitDataIn_0_0[2] <= _unitDataIn_WIRE_4 @[FFT.scala 51:70]
    unitDataIn_0_0[3] <= _unitDataIn_WIRE_6 @[FFT.scala 51:70]
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
    wire unitDataIn_0_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_0_1[0] <= _unitDataIn_WIRE_8 @[FFT.scala 51:70]
    unitDataIn_0_1[1] <= _unitDataIn_WIRE_10 @[FFT.scala 51:70]
    unitDataIn_0_1[2] <= _unitDataIn_WIRE_12 @[FFT.scala 51:70]
    unitDataIn_0_1[3] <= _unitDataIn_WIRE_14 @[FFT.scala 51:70]
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
    wire unitDataIn_0_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_0_2[0] <= _unitDataIn_WIRE_16 @[FFT.scala 51:70]
    unitDataIn_0_2[1] <= _unitDataIn_WIRE_18 @[FFT.scala 51:70]
    unitDataIn_0_2[2] <= _unitDataIn_WIRE_20 @[FFT.scala 51:70]
    unitDataIn_0_2[3] <= _unitDataIn_WIRE_22 @[FFT.scala 51:70]
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
    wire unitDataIn_0_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_0_3[0] <= _unitDataIn_WIRE_24 @[FFT.scala 51:70]
    unitDataIn_0_3[1] <= _unitDataIn_WIRE_26 @[FFT.scala 51:70]
    unitDataIn_0_3[2] <= _unitDataIn_WIRE_28 @[FFT.scala 51:70]
    unitDataIn_0_3[3] <= _unitDataIn_WIRE_30 @[FFT.scala 51:70]
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
    wire unitDataIn_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_1_0[0] <= _unitDataIn_WIRE_32 @[FFT.scala 51:70]
    unitDataIn_1_0[1] <= _unitDataIn_WIRE_34 @[FFT.scala 51:70]
    unitDataIn_1_0[2] <= _unitDataIn_WIRE_36 @[FFT.scala 51:70]
    unitDataIn_1_0[3] <= _unitDataIn_WIRE_38 @[FFT.scala 51:70]
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
    wire unitDataIn_1_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_1_1[0] <= _unitDataIn_WIRE_40 @[FFT.scala 51:70]
    unitDataIn_1_1[1] <= _unitDataIn_WIRE_42 @[FFT.scala 51:70]
    unitDataIn_1_1[2] <= _unitDataIn_WIRE_44 @[FFT.scala 51:70]
    unitDataIn_1_1[3] <= _unitDataIn_WIRE_46 @[FFT.scala 51:70]
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
    wire unitDataIn_1_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_1_2[0] <= _unitDataIn_WIRE_48 @[FFT.scala 51:70]
    unitDataIn_1_2[1] <= _unitDataIn_WIRE_50 @[FFT.scala 51:70]
    unitDataIn_1_2[2] <= _unitDataIn_WIRE_52 @[FFT.scala 51:70]
    unitDataIn_1_2[3] <= _unitDataIn_WIRE_54 @[FFT.scala 51:70]
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
    wire unitDataIn_1_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_1_3[0] <= _unitDataIn_WIRE_56 @[FFT.scala 51:70]
    unitDataIn_1_3[1] <= _unitDataIn_WIRE_58 @[FFT.scala 51:70]
    unitDataIn_1_3[2] <= _unitDataIn_WIRE_60 @[FFT.scala 51:70]
    unitDataIn_1_3[3] <= _unitDataIn_WIRE_62 @[FFT.scala 51:70]
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
    wire unitDataIn_2_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_2_0[0] <= _unitDataIn_WIRE_64 @[FFT.scala 51:70]
    unitDataIn_2_0[1] <= _unitDataIn_WIRE_66 @[FFT.scala 51:70]
    unitDataIn_2_0[2] <= _unitDataIn_WIRE_68 @[FFT.scala 51:70]
    unitDataIn_2_0[3] <= _unitDataIn_WIRE_70 @[FFT.scala 51:70]
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
    wire unitDataIn_2_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_2_1[0] <= _unitDataIn_WIRE_72 @[FFT.scala 51:70]
    unitDataIn_2_1[1] <= _unitDataIn_WIRE_74 @[FFT.scala 51:70]
    unitDataIn_2_1[2] <= _unitDataIn_WIRE_76 @[FFT.scala 51:70]
    unitDataIn_2_1[3] <= _unitDataIn_WIRE_78 @[FFT.scala 51:70]
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
    wire unitDataIn_2_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_2_2[0] <= _unitDataIn_WIRE_80 @[FFT.scala 51:70]
    unitDataIn_2_2[1] <= _unitDataIn_WIRE_82 @[FFT.scala 51:70]
    unitDataIn_2_2[2] <= _unitDataIn_WIRE_84 @[FFT.scala 51:70]
    unitDataIn_2_2[3] <= _unitDataIn_WIRE_86 @[FFT.scala 51:70]
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
    wire unitDataIn_2_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 51:70]
    unitDataIn_2_3[0] <= _unitDataIn_WIRE_88 @[FFT.scala 51:70]
    unitDataIn_2_3[1] <= _unitDataIn_WIRE_90 @[FFT.scala 51:70]
    unitDataIn_2_3[2] <= _unitDataIn_WIRE_92 @[FFT.scala 51:70]
    unitDataIn_2_3[3] <= _unitDataIn_WIRE_94 @[FFT.scala 51:70]
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
    wire unitDataOut_0_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 52:75]
    unitDataOut_0_0[0] <= _unitDataOut_WIRE @[FFT.scala 52:75]
    unitDataOut_0_0[1] <= _unitDataOut_WIRE_2 @[FFT.scala 52:75]
    unitDataOut_0_0[2] <= _unitDataOut_WIRE_4 @[FFT.scala 52:75]
    unitDataOut_0_0[3] <= _unitDataOut_WIRE_6 @[FFT.scala 52:75]
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
    wire unitDataOut_0_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 52:75]
    unitDataOut_0_1[0] <= _unitDataOut_WIRE_8 @[FFT.scala 52:75]
    unitDataOut_0_1[1] <= _unitDataOut_WIRE_10 @[FFT.scala 52:75]
    unitDataOut_0_1[2] <= _unitDataOut_WIRE_12 @[FFT.scala 52:75]
    unitDataOut_0_1[3] <= _unitDataOut_WIRE_14 @[FFT.scala 52:75]
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
    wire unitDataOut_0_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 52:75]
    unitDataOut_0_2[0] <= _unitDataOut_WIRE_16 @[FFT.scala 52:75]
    unitDataOut_0_2[1] <= _unitDataOut_WIRE_18 @[FFT.scala 52:75]
    unitDataOut_0_2[2] <= _unitDataOut_WIRE_20 @[FFT.scala 52:75]
    unitDataOut_0_2[3] <= _unitDataOut_WIRE_22 @[FFT.scala 52:75]
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
    wire unitDataOut_0_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 52:75]
    unitDataOut_0_3[0] <= _unitDataOut_WIRE_24 @[FFT.scala 52:75]
    unitDataOut_0_3[1] <= _unitDataOut_WIRE_26 @[FFT.scala 52:75]
    unitDataOut_0_3[2] <= _unitDataOut_WIRE_28 @[FFT.scala 52:75]
    unitDataOut_0_3[3] <= _unitDataOut_WIRE_30 @[FFT.scala 52:75]
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
    wire unitDataOut_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 52:75]
    unitDataOut_1_0[0] <= _unitDataOut_WIRE_32 @[FFT.scala 52:75]
    unitDataOut_1_0[1] <= _unitDataOut_WIRE_34 @[FFT.scala 52:75]
    unitDataOut_1_0[2] <= _unitDataOut_WIRE_36 @[FFT.scala 52:75]
    unitDataOut_1_0[3] <= _unitDataOut_WIRE_38 @[FFT.scala 52:75]
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
    wire unitDataOut_1_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 52:75]
    unitDataOut_1_1[0] <= _unitDataOut_WIRE_40 @[FFT.scala 52:75]
    unitDataOut_1_1[1] <= _unitDataOut_WIRE_42 @[FFT.scala 52:75]
    unitDataOut_1_1[2] <= _unitDataOut_WIRE_44 @[FFT.scala 52:75]
    unitDataOut_1_1[3] <= _unitDataOut_WIRE_46 @[FFT.scala 52:75]
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
    wire unitDataOut_1_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 52:75]
    unitDataOut_1_2[0] <= _unitDataOut_WIRE_48 @[FFT.scala 52:75]
    unitDataOut_1_2[1] <= _unitDataOut_WIRE_50 @[FFT.scala 52:75]
    unitDataOut_1_2[2] <= _unitDataOut_WIRE_52 @[FFT.scala 52:75]
    unitDataOut_1_2[3] <= _unitDataOut_WIRE_54 @[FFT.scala 52:75]
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
    wire unitDataOut_1_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4] @[FFT.scala 52:75]
    unitDataOut_1_3[0] <= _unitDataOut_WIRE_56 @[FFT.scala 52:75]
    unitDataOut_1_3[1] <= _unitDataOut_WIRE_58 @[FFT.scala 52:75]
    unitDataOut_1_3[2] <= _unitDataOut_WIRE_60 @[FFT.scala 52:75]
    unitDataOut_1_3[3] <= _unitDataOut_WIRE_62 @[FFT.scala 52:75]
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
    wire _datao_WIRE_16 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_40 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_17 : UInt<20>
    _datao_WIRE_17 <= _datao_T_40
    node _datao_T_41 = bits(_datao_WIRE_17, 9, 0) @[FFT.scala 53:86]
    node _datao_T_42 = asFixedPoint(_datao_T_41, 5) @[FFT.scala 53:86]
    _datao_WIRE_16.im <= _datao_T_42 @[FFT.scala 53:86]
    node _datao_T_43 = bits(_datao_WIRE_17, 19, 10) @[FFT.scala 53:86]
    node _datao_T_44 = asFixedPoint(_datao_T_43, 5) @[FFT.scala 53:86]
    _datao_WIRE_16.re <= _datao_T_44 @[FFT.scala 53:86]
    wire _datao_WIRE_18 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_45 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_19 : UInt<20>
    _datao_WIRE_19 <= _datao_T_45
    node _datao_T_46 = bits(_datao_WIRE_19, 9, 0) @[FFT.scala 53:86]
    node _datao_T_47 = asFixedPoint(_datao_T_46, 5) @[FFT.scala 53:86]
    _datao_WIRE_18.im <= _datao_T_47 @[FFT.scala 53:86]
    node _datao_T_48 = bits(_datao_WIRE_19, 19, 10) @[FFT.scala 53:86]
    node _datao_T_49 = asFixedPoint(_datao_T_48, 5) @[FFT.scala 53:86]
    _datao_WIRE_18.re <= _datao_T_49 @[FFT.scala 53:86]
    wire _datao_WIRE_20 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_50 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_21 : UInt<20>
    _datao_WIRE_21 <= _datao_T_50
    node _datao_T_51 = bits(_datao_WIRE_21, 9, 0) @[FFT.scala 53:86]
    node _datao_T_52 = asFixedPoint(_datao_T_51, 5) @[FFT.scala 53:86]
    _datao_WIRE_20.im <= _datao_T_52 @[FFT.scala 53:86]
    node _datao_T_53 = bits(_datao_WIRE_21, 19, 10) @[FFT.scala 53:86]
    node _datao_T_54 = asFixedPoint(_datao_T_53, 5) @[FFT.scala 53:86]
    _datao_WIRE_20.re <= _datao_T_54 @[FFT.scala 53:86]
    wire _datao_WIRE_22 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_55 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_23 : UInt<20>
    _datao_WIRE_23 <= _datao_T_55
    node _datao_T_56 = bits(_datao_WIRE_23, 9, 0) @[FFT.scala 53:86]
    node _datao_T_57 = asFixedPoint(_datao_T_56, 5) @[FFT.scala 53:86]
    _datao_WIRE_22.im <= _datao_T_57 @[FFT.scala 53:86]
    node _datao_T_58 = bits(_datao_WIRE_23, 19, 10) @[FFT.scala 53:86]
    node _datao_T_59 = asFixedPoint(_datao_T_58, 5) @[FFT.scala 53:86]
    _datao_WIRE_22.re <= _datao_T_59 @[FFT.scala 53:86]
    wire _datao_WIRE_24 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_60 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_25 : UInt<20>
    _datao_WIRE_25 <= _datao_T_60
    node _datao_T_61 = bits(_datao_WIRE_25, 9, 0) @[FFT.scala 53:86]
    node _datao_T_62 = asFixedPoint(_datao_T_61, 5) @[FFT.scala 53:86]
    _datao_WIRE_24.im <= _datao_T_62 @[FFT.scala 53:86]
    node _datao_T_63 = bits(_datao_WIRE_25, 19, 10) @[FFT.scala 53:86]
    node _datao_T_64 = asFixedPoint(_datao_T_63, 5) @[FFT.scala 53:86]
    _datao_WIRE_24.re <= _datao_T_64 @[FFT.scala 53:86]
    wire _datao_WIRE_26 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_65 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_27 : UInt<20>
    _datao_WIRE_27 <= _datao_T_65
    node _datao_T_66 = bits(_datao_WIRE_27, 9, 0) @[FFT.scala 53:86]
    node _datao_T_67 = asFixedPoint(_datao_T_66, 5) @[FFT.scala 53:86]
    _datao_WIRE_26.im <= _datao_T_67 @[FFT.scala 53:86]
    node _datao_T_68 = bits(_datao_WIRE_27, 19, 10) @[FFT.scala 53:86]
    node _datao_T_69 = asFixedPoint(_datao_T_68, 5) @[FFT.scala 53:86]
    _datao_WIRE_26.re <= _datao_T_69 @[FFT.scala 53:86]
    wire _datao_WIRE_28 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_70 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_29 : UInt<20>
    _datao_WIRE_29 <= _datao_T_70
    node _datao_T_71 = bits(_datao_WIRE_29, 9, 0) @[FFT.scala 53:86]
    node _datao_T_72 = asFixedPoint(_datao_T_71, 5) @[FFT.scala 53:86]
    _datao_WIRE_28.im <= _datao_T_72 @[FFT.scala 53:86]
    node _datao_T_73 = bits(_datao_WIRE_29, 19, 10) @[FFT.scala 53:86]
    node _datao_T_74 = asFixedPoint(_datao_T_73, 5) @[FFT.scala 53:86]
    _datao_WIRE_28.re <= _datao_T_74 @[FFT.scala 53:86]
    wire _datao_WIRE_30 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 53:86]
    node _datao_T_75 = asUInt(asSInt(UInt<20>("h0"))) @[FFT.scala 53:86]
    wire _datao_WIRE_31 : UInt<20>
    _datao_WIRE_31 <= _datao_T_75
    node _datao_T_76 = bits(_datao_WIRE_31, 9, 0) @[FFT.scala 53:86]
    node _datao_T_77 = asFixedPoint(_datao_T_76, 5) @[FFT.scala 53:86]
    _datao_WIRE_30.im <= _datao_T_77 @[FFT.scala 53:86]
    node _datao_T_78 = bits(_datao_WIRE_31, 19, 10) @[FFT.scala 53:86]
    node _datao_T_79 = asFixedPoint(_datao_T_78, 5) @[FFT.scala 53:86]
    _datao_WIRE_30.re <= _datao_T_79 @[FFT.scala 53:86]
    wire datao : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[16] @[FFT.scala 53:22]
    datao[0] <= _datao_WIRE @[FFT.scala 53:22]
    datao[1] <= _datao_WIRE_2 @[FFT.scala 53:22]
    datao[2] <= _datao_WIRE_4 @[FFT.scala 53:22]
    datao[3] <= _datao_WIRE_6 @[FFT.scala 53:22]
    datao[4] <= _datao_WIRE_8 @[FFT.scala 53:22]
    datao[5] <= _datao_WIRE_10 @[FFT.scala 53:22]
    datao[6] <= _datao_WIRE_12 @[FFT.scala 53:22]
    datao[7] <= _datao_WIRE_14 @[FFT.scala 53:22]
    datao[8] <= _datao_WIRE_16 @[FFT.scala 53:22]
    datao[9] <= _datao_WIRE_18 @[FFT.scala 53:22]
    datao[10] <= _datao_WIRE_20 @[FFT.scala 53:22]
    datao[11] <= _datao_WIRE_22 @[FFT.scala 53:22]
    datao[12] <= _datao_WIRE_24 @[FFT.scala 53:22]
    datao[13] <= _datao_WIRE_26 @[FFT.scala 53:22]
    datao[14] <= _datao_WIRE_28 @[FFT.scala 53:22]
    datao[15] <= _datao_WIRE_30 @[FFT.scala 53:22]
    node _wnList_T = add(UInt<1>("h0"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_1 = tail(_wnList_T, 1) @[FFT.scala 64:83]
    wire wnList_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE : Fixed<10><<5>>[16] @[FFT.scala 28:12]
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
    node _wnList_res_re_T = bits(_wnList_T_1, 3, 0)
    wnList_0.re <= _wnList_res_re_WIRE[_wnList_res_re_T] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE : Fixed<10><<5>>[16] @[FFT.scala 24:12]
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
    node _wnList_res_im_T = bits(_wnList_T_1, 3, 0)
    wnList_0.im <= _wnList_res_im_WIRE[_wnList_res_im_T] @[FFT.scala 33:12]
    node _wnList_T_2 = add(UInt<1>("h0"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_3 = tail(_wnList_T_2, 1) @[FFT.scala 64:83]
    wire wnList_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
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
    node _wnList_res_re_T_1 = bits(_wnList_T_3, 3, 0)
    wnList_1.re <= _wnList_res_re_WIRE_1[_wnList_res_re_T_1] @[FFT.scala 32:12]
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
    node _wnList_res_im_T_1 = bits(_wnList_T_3, 3, 0)
    wnList_1.im <= _wnList_res_im_WIRE_1[_wnList_res_im_T_1] @[FFT.scala 33:12]
    node _wnList_T_4 = add(UInt<1>("h0"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_5 = tail(_wnList_T_4, 1) @[FFT.scala 64:83]
    wire wnList_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_2 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[2] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[3] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[4] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[5] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[6] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[7] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[9] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[10] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[11] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[13] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[14] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[15] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_2 = bits(_wnList_T_5, 3, 0)
    wnList_2.re <= _wnList_res_re_WIRE_2[_wnList_res_re_T_2] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_2 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[1] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[2] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[3] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[4] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[5] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[6] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[7] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[9] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[10] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[11] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[13] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[14] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[15] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_2 = bits(_wnList_T_5, 3, 0)
    wnList_2.im <= _wnList_res_im_WIRE_2[_wnList_res_im_T_2] @[FFT.scala 33:12]
    inst inst of ButterflyMul @[Modules.scala 210:22]
    inst.clock <= clock
    inst.reset <= reset
    inst.io.in[0].im <= unitDataIn_0_0[0].im @[Modules.scala 211:16]
    inst.io.in[0].re <= unitDataIn_0_0[0].re @[Modules.scala 211:16]
    inst.io.in[1].im <= unitDataIn_0_0[1].im @[Modules.scala 211:16]
    inst.io.in[1].re <= unitDataIn_0_0[1].re @[Modules.scala 211:16]
    inst.io.in[2].im <= unitDataIn_0_0[2].im @[Modules.scala 211:16]
    inst.io.in[2].re <= unitDataIn_0_0[2].re @[Modules.scala 211:16]
    inst.io.in[3].im <= unitDataIn_0_0[3].im @[Modules.scala 211:16]
    inst.io.in[3].re <= unitDataIn_0_0[3].re @[Modules.scala 211:16]
    inst.io.wn[0].im <= wnList_0.im @[Modules.scala 212:16]
    inst.io.wn[0].re <= wnList_0.re @[Modules.scala 212:16]
    inst.io.wn[1].im <= wnList_1.im @[Modules.scala 212:16]
    inst.io.wn[1].re <= wnList_1.re @[Modules.scala 212:16]
    inst.io.wn[2].im <= wnList_2.im @[Modules.scala 212:16]
    inst.io.wn[2].re <= wnList_2.re @[Modules.scala 212:16]
    unitDataOut_0_0 <= inst.io.out @[FFT.scala 65:25]
    node _wnList_T_6 = add(UInt<3>("h4"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_7 = tail(_wnList_T_6, 1) @[FFT.scala 64:83]
    wire wnList_0_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_3 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
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
    node _wnList_res_re_T_3 = bits(_wnList_T_7, 3, 0)
    wnList_0_1.re <= _wnList_res_re_WIRE_3[_wnList_res_re_T_3] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_3 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
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
    node _wnList_res_im_T_3 = bits(_wnList_T_7, 3, 0)
    wnList_0_1.im <= _wnList_res_im_WIRE_3[_wnList_res_im_T_3] @[FFT.scala 33:12]
    node _wnList_T_8 = add(UInt<3>("h4"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_9 = tail(_wnList_T_8, 1) @[FFT.scala 64:83]
    wire wnList_1_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
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
    node _wnList_res_re_T_4 = bits(_wnList_T_9, 3, 0)
    wnList_1_1.re <= _wnList_res_re_WIRE_4[_wnList_res_re_T_4] @[FFT.scala 32:12]
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
    node _wnList_res_im_T_4 = bits(_wnList_T_9, 3, 0)
    wnList_1_1.im <= _wnList_res_im_WIRE_4[_wnList_res_im_T_4] @[FFT.scala 33:12]
    node _wnList_T_10 = add(UInt<3>("h4"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_11 = tail(_wnList_T_10, 1) @[FFT.scala 64:83]
    wire wnList_2_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_5 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[2] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[3] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[4] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[5] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[6] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[7] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[9] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[10] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[11] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[13] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[14] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[15] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_5 = bits(_wnList_T_11, 3, 0)
    wnList_2_1.re <= _wnList_res_re_WIRE_5[_wnList_res_re_T_5] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_5 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[1] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[2] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[3] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[4] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[5] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[6] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[7] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[9] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[10] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[11] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[13] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[14] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[15] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_5 = bits(_wnList_T_11, 3, 0)
    wnList_2_1.im <= _wnList_res_im_WIRE_5[_wnList_res_im_T_5] @[FFT.scala 33:12]
    inst inst_1 of ButterflyMul_1 @[Modules.scala 210:22]
    inst_1.clock <= clock
    inst_1.reset <= reset
    inst_1.io.in[0].im <= unitDataIn_0_1[0].im @[Modules.scala 211:16]
    inst_1.io.in[0].re <= unitDataIn_0_1[0].re @[Modules.scala 211:16]
    inst_1.io.in[1].im <= unitDataIn_0_1[1].im @[Modules.scala 211:16]
    inst_1.io.in[1].re <= unitDataIn_0_1[1].re @[Modules.scala 211:16]
    inst_1.io.in[2].im <= unitDataIn_0_1[2].im @[Modules.scala 211:16]
    inst_1.io.in[2].re <= unitDataIn_0_1[2].re @[Modules.scala 211:16]
    inst_1.io.in[3].im <= unitDataIn_0_1[3].im @[Modules.scala 211:16]
    inst_1.io.in[3].re <= unitDataIn_0_1[3].re @[Modules.scala 211:16]
    inst_1.io.wn[0].im <= wnList_0_1.im @[Modules.scala 212:16]
    inst_1.io.wn[0].re <= wnList_0_1.re @[Modules.scala 212:16]
    inst_1.io.wn[1].im <= wnList_1_1.im @[Modules.scala 212:16]
    inst_1.io.wn[1].re <= wnList_1_1.re @[Modules.scala 212:16]
    inst_1.io.wn[2].im <= wnList_2_1.im @[Modules.scala 212:16]
    inst_1.io.wn[2].re <= wnList_2_1.re @[Modules.scala 212:16]
    unitDataOut_0_1 <= inst_1.io.out @[FFT.scala 65:25]
    node _wnList_T_12 = add(UInt<4>("h8"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_13 = tail(_wnList_T_12, 1) @[FFT.scala 64:83]
    wire wnList_0_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_6 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[1] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[2] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[3] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[4] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[5] <= asFixedPoint(UInt<10>("h1c"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[6] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[7] <= asFixedPoint(UInt<10>("h19"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[8] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[9] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[10] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[11] <= asFixedPoint(UInt<10>("hf"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[13] <= asFixedPoint(UInt<10>("h9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[14] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[15] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_6 = bits(_wnList_T_13, 3, 0)
    wnList_0_2.re <= _wnList_res_re_WIRE_6[_wnList_res_re_T_6] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_6 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[1] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[2] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[3] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[5] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[6] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[7] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[9] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[10] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[11] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[13] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[14] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[15] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_6 = bits(_wnList_T_13, 3, 0)
    wnList_0_2.im <= _wnList_res_im_WIRE_6[_wnList_res_im_T_6] @[FFT.scala 33:12]
    node _wnList_T_14 = add(UInt<4>("h8"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_15 = tail(_wnList_T_14, 1) @[FFT.scala 64:83]
    wire wnList_1_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
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
    node _wnList_res_re_T_7 = bits(_wnList_T_15, 3, 0)
    wnList_1_2.re <= _wnList_res_re_WIRE_7[_wnList_res_re_T_7] @[FFT.scala 32:12]
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
    node _wnList_res_im_T_7 = bits(_wnList_T_15, 3, 0)
    wnList_1_2.im <= _wnList_res_im_WIRE_7[_wnList_res_im_T_7] @[FFT.scala 33:12]
    node _wnList_T_16 = add(UInt<4>("h8"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_17 = tail(_wnList_T_16, 1) @[FFT.scala 64:83]
    wire wnList_2_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_8 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[2] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[3] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[4] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[5] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[6] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[7] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[9] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[10] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[11] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[13] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[14] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_8[15] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_8 = bits(_wnList_T_17, 3, 0)
    wnList_2_2.re <= _wnList_res_re_WIRE_8[_wnList_res_re_T_8] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_8 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[1] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[2] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[3] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[4] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[5] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[6] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[7] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[9] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[10] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[11] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[13] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[14] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_8[15] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_8 = bits(_wnList_T_17, 3, 0)
    wnList_2_2.im <= _wnList_res_im_WIRE_8[_wnList_res_im_T_8] @[FFT.scala 33:12]
    inst inst_2 of ButterflyMul_2 @[Modules.scala 210:22]
    inst_2.clock <= clock
    inst_2.reset <= reset
    inst_2.io.in[0].im <= unitDataIn_0_2[0].im @[Modules.scala 211:16]
    inst_2.io.in[0].re <= unitDataIn_0_2[0].re @[Modules.scala 211:16]
    inst_2.io.in[1].im <= unitDataIn_0_2[1].im @[Modules.scala 211:16]
    inst_2.io.in[1].re <= unitDataIn_0_2[1].re @[Modules.scala 211:16]
    inst_2.io.in[2].im <= unitDataIn_0_2[2].im @[Modules.scala 211:16]
    inst_2.io.in[2].re <= unitDataIn_0_2[2].re @[Modules.scala 211:16]
    inst_2.io.in[3].im <= unitDataIn_0_2[3].im @[Modules.scala 211:16]
    inst_2.io.in[3].re <= unitDataIn_0_2[3].re @[Modules.scala 211:16]
    inst_2.io.wn[0].im <= wnList_0_2.im @[Modules.scala 212:16]
    inst_2.io.wn[0].re <= wnList_0_2.re @[Modules.scala 212:16]
    inst_2.io.wn[1].im <= wnList_1_2.im @[Modules.scala 212:16]
    inst_2.io.wn[1].re <= wnList_1_2.re @[Modules.scala 212:16]
    inst_2.io.wn[2].im <= wnList_2_2.im @[Modules.scala 212:16]
    inst_2.io.wn[2].re <= wnList_2_2.re @[Modules.scala 212:16]
    unitDataOut_0_2 <= inst_2.io.out @[FFT.scala 65:25]
    node _wnList_T_18 = add(UInt<4>("hc"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_19 = tail(_wnList_T_18, 1) @[FFT.scala 64:83]
    wire wnList_0_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_9 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[1] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[2] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[3] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[4] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[5] <= asFixedPoint(UInt<10>("h1c"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[6] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[7] <= asFixedPoint(UInt<10>("h19"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[8] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[9] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[10] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[11] <= asFixedPoint(UInt<10>("hf"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[13] <= asFixedPoint(UInt<10>("h9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[14] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_9[15] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_9 = bits(_wnList_T_19, 3, 0)
    wnList_0_3.re <= _wnList_res_re_WIRE_9[_wnList_res_re_T_9] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_9 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[1] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[2] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[3] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[5] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[6] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[7] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[9] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[10] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[11] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[13] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[14] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_9[15] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_9 = bits(_wnList_T_19, 3, 0)
    wnList_0_3.im <= _wnList_res_im_WIRE_9[_wnList_res_im_T_9] @[FFT.scala 33:12]
    node _wnList_T_20 = add(UInt<4>("hc"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_21 = tail(_wnList_T_20, 1) @[FFT.scala 64:83]
    wire wnList_1_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_10 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[8] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[9] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[10] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[11] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[13] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[14] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_10[15] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_10 = bits(_wnList_T_21, 3, 0)
    wnList_1_3.re <= _wnList_res_re_WIRE_10[_wnList_res_re_T_10] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_10 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[8] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[9] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[10] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[11] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[12] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[13] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[14] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_10[15] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_10 = bits(_wnList_T_21, 3, 0)
    wnList_1_3.im <= _wnList_res_im_WIRE_10[_wnList_res_im_T_10] @[FFT.scala 33:12]
    node _wnList_T_22 = add(UInt<4>("hc"), cnt_0) @[FFT.scala 64:83]
    node _wnList_T_23 = tail(_wnList_T_22, 1) @[FFT.scala 64:83]
    wire wnList_2_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_11 : Fixed<10><<5>>[16] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[2] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[3] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[4] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[5] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[6] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[7] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[9] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[10] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[11] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[12] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[13] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[14] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_11[15] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 28:12]
    node _wnList_res_re_T_11 = bits(_wnList_T_23, 3, 0)
    wnList_2_3.re <= _wnList_res_re_WIRE_11[_wnList_res_re_T_11] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_11 : Fixed<10><<5>>[16] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[1] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[2] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[3] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[4] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[5] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[6] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[7] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[8] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[9] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[10] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[11] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[12] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[13] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[14] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_11[15] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 24:12]
    node _wnList_res_im_T_11 = bits(_wnList_T_23, 3, 0)
    wnList_2_3.im <= _wnList_res_im_WIRE_11[_wnList_res_im_T_11] @[FFT.scala 33:12]
    inst inst_3 of ButterflyMul_3 @[Modules.scala 210:22]
    inst_3.clock <= clock
    inst_3.reset <= reset
    inst_3.io.in[0].im <= unitDataIn_0_3[0].im @[Modules.scala 211:16]
    inst_3.io.in[0].re <= unitDataIn_0_3[0].re @[Modules.scala 211:16]
    inst_3.io.in[1].im <= unitDataIn_0_3[1].im @[Modules.scala 211:16]
    inst_3.io.in[1].re <= unitDataIn_0_3[1].re @[Modules.scala 211:16]
    inst_3.io.in[2].im <= unitDataIn_0_3[2].im @[Modules.scala 211:16]
    inst_3.io.in[2].re <= unitDataIn_0_3[2].re @[Modules.scala 211:16]
    inst_3.io.in[3].im <= unitDataIn_0_3[3].im @[Modules.scala 211:16]
    inst_3.io.in[3].re <= unitDataIn_0_3[3].re @[Modules.scala 211:16]
    inst_3.io.wn[0].im <= wnList_0_3.im @[Modules.scala 212:16]
    inst_3.io.wn[0].re <= wnList_0_3.re @[Modules.scala 212:16]
    inst_3.io.wn[1].im <= wnList_1_3.im @[Modules.scala 212:16]
    inst_3.io.wn[1].re <= wnList_1_3.re @[Modules.scala 212:16]
    inst_3.io.wn[2].im <= wnList_2_3.im @[Modules.scala 212:16]
    inst_3.io.wn[2].re <= wnList_2_3.re @[Modules.scala 212:16]
    unitDataOut_0_3 <= inst_3.io.out @[FFT.scala 65:25]
    node wnCtrl = bits(cnt_1, 1, 0) @[FFT.scala 60:23]
    node _wnList_T_24 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_25 = tail(_wnList_T_24, 1) @[FFT.scala 64:83]
    wire wnList_0_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_12 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_12[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_12[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_12[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_12[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    wnList_0_4.re <= _wnList_res_re_WIRE_12[_wnList_T_25] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_12 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_12[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_12[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_12[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_12[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    wnList_0_4.im <= _wnList_res_im_WIRE_12[_wnList_T_25] @[FFT.scala 33:12]
    node _wnList_T_26 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_27 = tail(_wnList_T_26, 1) @[FFT.scala 64:83]
    wire wnList_1_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_13 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_13[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_13[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_13[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_13[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_1_4.re <= _wnList_res_re_WIRE_13[_wnList_T_27] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_13 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_13[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_13[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_13[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_13[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_1_4.im <= _wnList_res_im_WIRE_13[_wnList_T_27] @[FFT.scala 33:12]
    node _wnList_T_28 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_29 = tail(_wnList_T_28, 1) @[FFT.scala 64:83]
    wire wnList_2_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_14 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_14[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_14[1] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_14[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_14[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_2_4.re <= _wnList_res_re_WIRE_14[_wnList_T_29] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_14 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_14[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_14[1] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_14[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_14[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    wnList_2_4.im <= _wnList_res_im_WIRE_14[_wnList_T_29] @[FFT.scala 33:12]
    inst inst_4 of ButterflyMul_4 @[Modules.scala 210:22]
    inst_4.clock <= clock
    inst_4.reset <= reset
    inst_4.io.in[0].im <= unitDataIn_1_0[0].im @[Modules.scala 211:16]
    inst_4.io.in[0].re <= unitDataIn_1_0[0].re @[Modules.scala 211:16]
    inst_4.io.in[1].im <= unitDataIn_1_0[1].im @[Modules.scala 211:16]
    inst_4.io.in[1].re <= unitDataIn_1_0[1].re @[Modules.scala 211:16]
    inst_4.io.in[2].im <= unitDataIn_1_0[2].im @[Modules.scala 211:16]
    inst_4.io.in[2].re <= unitDataIn_1_0[2].re @[Modules.scala 211:16]
    inst_4.io.in[3].im <= unitDataIn_1_0[3].im @[Modules.scala 211:16]
    inst_4.io.in[3].re <= unitDataIn_1_0[3].re @[Modules.scala 211:16]
    inst_4.io.wn[0].im <= wnList_0_4.im @[Modules.scala 212:16]
    inst_4.io.wn[0].re <= wnList_0_4.re @[Modules.scala 212:16]
    inst_4.io.wn[1].im <= wnList_1_4.im @[Modules.scala 212:16]
    inst_4.io.wn[1].re <= wnList_1_4.re @[Modules.scala 212:16]
    inst_4.io.wn[2].im <= wnList_2_4.im @[Modules.scala 212:16]
    inst_4.io.wn[2].re <= wnList_2_4.re @[Modules.scala 212:16]
    unitDataOut_1_0 <= inst_4.io.out @[FFT.scala 65:25]
    node _wnList_T_30 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_31 = tail(_wnList_T_30, 1) @[FFT.scala 64:83]
    wire wnList_0_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_15 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_15[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_15[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_15[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_15[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    wnList_0_5.re <= _wnList_res_re_WIRE_15[_wnList_T_31] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_15 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_15[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_15[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_15[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_15[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    wnList_0_5.im <= _wnList_res_im_WIRE_15[_wnList_T_31] @[FFT.scala 33:12]
    node _wnList_T_32 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_33 = tail(_wnList_T_32, 1) @[FFT.scala 64:83]
    wire wnList_1_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_16 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_16[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_16[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_16[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_16[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_1_5.re <= _wnList_res_re_WIRE_16[_wnList_T_33] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_16 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_16[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_16[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_16[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_16[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_1_5.im <= _wnList_res_im_WIRE_16[_wnList_T_33] @[FFT.scala 33:12]
    node _wnList_T_34 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_35 = tail(_wnList_T_34, 1) @[FFT.scala 64:83]
    wire wnList_2_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_17 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_17[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_17[1] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_17[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_17[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_2_5.re <= _wnList_res_re_WIRE_17[_wnList_T_35] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_17 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_17[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_17[1] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_17[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_17[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    wnList_2_5.im <= _wnList_res_im_WIRE_17[_wnList_T_35] @[FFT.scala 33:12]
    inst inst_5 of ButterflyMul_5 @[Modules.scala 210:22]
    inst_5.clock <= clock
    inst_5.reset <= reset
    inst_5.io.in[0].im <= unitDataIn_1_1[0].im @[Modules.scala 211:16]
    inst_5.io.in[0].re <= unitDataIn_1_1[0].re @[Modules.scala 211:16]
    inst_5.io.in[1].im <= unitDataIn_1_1[1].im @[Modules.scala 211:16]
    inst_5.io.in[1].re <= unitDataIn_1_1[1].re @[Modules.scala 211:16]
    inst_5.io.in[2].im <= unitDataIn_1_1[2].im @[Modules.scala 211:16]
    inst_5.io.in[2].re <= unitDataIn_1_1[2].re @[Modules.scala 211:16]
    inst_5.io.in[3].im <= unitDataIn_1_1[3].im @[Modules.scala 211:16]
    inst_5.io.in[3].re <= unitDataIn_1_1[3].re @[Modules.scala 211:16]
    inst_5.io.wn[0].im <= wnList_0_5.im @[Modules.scala 212:16]
    inst_5.io.wn[0].re <= wnList_0_5.re @[Modules.scala 212:16]
    inst_5.io.wn[1].im <= wnList_1_5.im @[Modules.scala 212:16]
    inst_5.io.wn[1].re <= wnList_1_5.re @[Modules.scala 212:16]
    inst_5.io.wn[2].im <= wnList_2_5.im @[Modules.scala 212:16]
    inst_5.io.wn[2].re <= wnList_2_5.re @[Modules.scala 212:16]
    unitDataOut_1_1 <= inst_5.io.out @[FFT.scala 65:25]
    node _wnList_T_36 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_37 = tail(_wnList_T_36, 1) @[FFT.scala 64:83]
    wire wnList_0_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_18 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_18[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_18[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_18[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_18[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    wnList_0_6.re <= _wnList_res_re_WIRE_18[_wnList_T_37] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_18 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_18[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_18[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_18[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_18[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    wnList_0_6.im <= _wnList_res_im_WIRE_18[_wnList_T_37] @[FFT.scala 33:12]
    node _wnList_T_38 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_39 = tail(_wnList_T_38, 1) @[FFT.scala 64:83]
    wire wnList_1_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_19 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_19[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_19[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_19[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_19[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_1_6.re <= _wnList_res_re_WIRE_19[_wnList_T_39] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_19 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_19[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_19[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_19[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_19[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_1_6.im <= _wnList_res_im_WIRE_19[_wnList_T_39] @[FFT.scala 33:12]
    node _wnList_T_40 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_41 = tail(_wnList_T_40, 1) @[FFT.scala 64:83]
    wire wnList_2_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_20 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_20[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_20[1] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_20[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_20[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_2_6.re <= _wnList_res_re_WIRE_20[_wnList_T_41] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_20 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_20[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_20[1] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_20[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_20[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    wnList_2_6.im <= _wnList_res_im_WIRE_20[_wnList_T_41] @[FFT.scala 33:12]
    inst inst_6 of ButterflyMul_6 @[Modules.scala 210:22]
    inst_6.clock <= clock
    inst_6.reset <= reset
    inst_6.io.in[0].im <= unitDataIn_1_2[0].im @[Modules.scala 211:16]
    inst_6.io.in[0].re <= unitDataIn_1_2[0].re @[Modules.scala 211:16]
    inst_6.io.in[1].im <= unitDataIn_1_2[1].im @[Modules.scala 211:16]
    inst_6.io.in[1].re <= unitDataIn_1_2[1].re @[Modules.scala 211:16]
    inst_6.io.in[2].im <= unitDataIn_1_2[2].im @[Modules.scala 211:16]
    inst_6.io.in[2].re <= unitDataIn_1_2[2].re @[Modules.scala 211:16]
    inst_6.io.in[3].im <= unitDataIn_1_2[3].im @[Modules.scala 211:16]
    inst_6.io.in[3].re <= unitDataIn_1_2[3].re @[Modules.scala 211:16]
    inst_6.io.wn[0].im <= wnList_0_6.im @[Modules.scala 212:16]
    inst_6.io.wn[0].re <= wnList_0_6.re @[Modules.scala 212:16]
    inst_6.io.wn[1].im <= wnList_1_6.im @[Modules.scala 212:16]
    inst_6.io.wn[1].re <= wnList_1_6.re @[Modules.scala 212:16]
    inst_6.io.wn[2].im <= wnList_2_6.im @[Modules.scala 212:16]
    inst_6.io.wn[2].re <= wnList_2_6.re @[Modules.scala 212:16]
    unitDataOut_1_2 <= inst_6.io.out @[FFT.scala 65:25]
    node _wnList_T_42 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_43 = tail(_wnList_T_42, 1) @[FFT.scala 64:83]
    wire wnList_0_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_21 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_21[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_21[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_21[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_21[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    wnList_0_7.re <= _wnList_res_re_WIRE_21[_wnList_T_43] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_21 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_21[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_21[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_21[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_21[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    wnList_0_7.im <= _wnList_res_im_WIRE_21[_wnList_T_43] @[FFT.scala 33:12]
    node _wnList_T_44 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_45 = tail(_wnList_T_44, 1) @[FFT.scala 64:83]
    wire wnList_1_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_22 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_22[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_22[1] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_22[2] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_22[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    wnList_1_7.re <= _wnList_res_re_WIRE_22[_wnList_T_45] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_22 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_22[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_22[1] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_22[2] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_22[3] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    wnList_1_7.im <= _wnList_res_im_WIRE_22[_wnList_T_45] @[FFT.scala 33:12]
    node _wnList_T_46 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_47 = tail(_wnList_T_46, 1) @[FFT.scala 64:83]
    wire wnList_2_7 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_23 : Fixed<10><<5>>[4] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_23[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_23[1] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_23[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_23[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_2_7.re <= _wnList_res_re_WIRE_23[_wnList_T_47] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_23 : Fixed<10><<5>>[4] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_23[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_23[1] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_23[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_23[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    wnList_2_7.im <= _wnList_res_im_WIRE_23[_wnList_T_47] @[FFT.scala 33:12]
    inst inst_7 of ButterflyMul_7 @[Modules.scala 210:22]
    inst_7.clock <= clock
    inst_7.reset <= reset
    inst_7.io.in[0].im <= unitDataIn_1_3[0].im @[Modules.scala 211:16]
    inst_7.io.in[0].re <= unitDataIn_1_3[0].re @[Modules.scala 211:16]
    inst_7.io.in[1].im <= unitDataIn_1_3[1].im @[Modules.scala 211:16]
    inst_7.io.in[1].re <= unitDataIn_1_3[1].re @[Modules.scala 211:16]
    inst_7.io.in[2].im <= unitDataIn_1_3[2].im @[Modules.scala 211:16]
    inst_7.io.in[2].re <= unitDataIn_1_3[2].re @[Modules.scala 211:16]
    inst_7.io.in[3].im <= unitDataIn_1_3[3].im @[Modules.scala 211:16]
    inst_7.io.in[3].re <= unitDataIn_1_3[3].re @[Modules.scala 211:16]
    inst_7.io.wn[0].im <= wnList_0_7.im @[Modules.scala 212:16]
    inst_7.io.wn[0].re <= wnList_0_7.re @[Modules.scala 212:16]
    inst_7.io.wn[1].im <= wnList_1_7.im @[Modules.scala 212:16]
    inst_7.io.wn[1].re <= wnList_1_7.re @[Modules.scala 212:16]
    inst_7.io.wn[2].im <= wnList_2_7.im @[Modules.scala 212:16]
    inst_7.io.wn[2].re <= wnList_2_7.re @[Modules.scala 212:16]
    unitDataOut_1_3 <= inst_7.io.out @[FFT.scala 65:25]
    inst dataotemp_inst of ButterflyAdd @[Modules.scala 144:22]
    dataotemp_inst.clock <= clock
    dataotemp_inst.reset <= reset
    dataotemp_inst.io.in[0].im <= unitDataIn_2_0[0].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[0].re <= unitDataIn_2_0[0].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[1].im <= unitDataIn_2_0[1].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[1].re <= unitDataIn_2_0[1].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[2].im <= unitDataIn_2_0[2].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[2].re <= unitDataIn_2_0[2].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[3].im <= unitDataIn_2_0[3].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[3].re <= unitDataIn_2_0[3].re @[Modules.scala 145:16]
    inst dataotemp_inst_1 of ButterflyAdd_1 @[Modules.scala 144:22]
    dataotemp_inst_1.clock <= clock
    dataotemp_inst_1.reset <= reset
    dataotemp_inst_1.io.in[0].im <= unitDataIn_2_1[0].im @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[0].re <= unitDataIn_2_1[0].re @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[1].im <= unitDataIn_2_1[1].im @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[1].re <= unitDataIn_2_1[1].re @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[2].im <= unitDataIn_2_1[2].im @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[2].re <= unitDataIn_2_1[2].re @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[3].im <= unitDataIn_2_1[3].im @[Modules.scala 145:16]
    dataotemp_inst_1.io.in[3].re <= unitDataIn_2_1[3].re @[Modules.scala 145:16]
    inst dataotemp_inst_2 of ButterflyAdd_2 @[Modules.scala 144:22]
    dataotemp_inst_2.clock <= clock
    dataotemp_inst_2.reset <= reset
    dataotemp_inst_2.io.in[0].im <= unitDataIn_2_2[0].im @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[0].re <= unitDataIn_2_2[0].re @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[1].im <= unitDataIn_2_2[1].im @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[1].re <= unitDataIn_2_2[1].re @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[2].im <= unitDataIn_2_2[2].im @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[2].re <= unitDataIn_2_2[2].re @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[3].im <= unitDataIn_2_2[3].im @[Modules.scala 145:16]
    dataotemp_inst_2.io.in[3].re <= unitDataIn_2_2[3].re @[Modules.scala 145:16]
    inst dataotemp_inst_3 of ButterflyAdd_3 @[Modules.scala 144:22]
    dataotemp_inst_3.clock <= clock
    dataotemp_inst_3.reset <= reset
    dataotemp_inst_3.io.in[0].im <= unitDataIn_2_3[0].im @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[0].re <= unitDataIn_2_3[0].re @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[1].im <= unitDataIn_2_3[1].im @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[1].re <= unitDataIn_2_3[1].re @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[2].im <= unitDataIn_2_3[2].im @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[2].re <= unitDataIn_2_3[2].re @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[3].im <= unitDataIn_2_3[3].im @[Modules.scala 145:16]
    dataotemp_inst_3.io.in[3].re <= unitDataIn_2_3[3].re @[Modules.scala 145:16]
    datao[0] <= dataotemp_inst.io.out[0] @[FFT.scala 70:9]
    datao[1] <= dataotemp_inst.io.out[1] @[FFT.scala 70:9]
    datao[2] <= dataotemp_inst.io.out[2] @[FFT.scala 70:9]
    datao[3] <= dataotemp_inst.io.out[3] @[FFT.scala 70:9]
    datao[4] <= dataotemp_inst_1.io.out[0] @[FFT.scala 70:9]
    datao[5] <= dataotemp_inst_1.io.out[1] @[FFT.scala 70:9]
    datao[6] <= dataotemp_inst_1.io.out[2] @[FFT.scala 70:9]
    datao[7] <= dataotemp_inst_1.io.out[3] @[FFT.scala 70:9]
    datao[8] <= dataotemp_inst_2.io.out[0] @[FFT.scala 70:9]
    datao[9] <= dataotemp_inst_2.io.out[1] @[FFT.scala 70:9]
    datao[10] <= dataotemp_inst_2.io.out[2] @[FFT.scala 70:9]
    datao[11] <= dataotemp_inst_2.io.out[3] @[FFT.scala 70:9]
    datao[12] <= dataotemp_inst_3.io.out[0] @[FFT.scala 70:9]
    datao[13] <= dataotemp_inst_3.io.out[1] @[FFT.scala 70:9]
    datao[14] <= dataotemp_inst_3.io.out[2] @[FFT.scala 70:9]
    datao[15] <= dataotemp_inst_3.io.out[3] @[FFT.scala 70:9]
    inst exdata_inst of Exchange @[Modules.scala 254:22]
    exdata_inst.clock <= clock
    exdata_inst.reset <= reset
    exdata_inst.io.in[0][0].im <= unitDataOut_0_0[0].im @[Modules.scala 255:16]
    exdata_inst.io.in[0][0].re <= unitDataOut_0_0[0].re @[Modules.scala 255:16]
    exdata_inst.io.in[0][1].im <= unitDataOut_0_0[1].im @[Modules.scala 255:16]
    exdata_inst.io.in[0][1].re <= unitDataOut_0_0[1].re @[Modules.scala 255:16]
    exdata_inst.io.in[0][2].im <= unitDataOut_0_0[2].im @[Modules.scala 255:16]
    exdata_inst.io.in[0][2].re <= unitDataOut_0_0[2].re @[Modules.scala 255:16]
    exdata_inst.io.in[0][3].im <= unitDataOut_0_0[3].im @[Modules.scala 255:16]
    exdata_inst.io.in[0][3].re <= unitDataOut_0_0[3].re @[Modules.scala 255:16]
    exdata_inst.io.in[1][0].im <= unitDataOut_0_1[0].im @[Modules.scala 255:16]
    exdata_inst.io.in[1][0].re <= unitDataOut_0_1[0].re @[Modules.scala 255:16]
    exdata_inst.io.in[1][1].im <= unitDataOut_0_1[1].im @[Modules.scala 255:16]
    exdata_inst.io.in[1][1].re <= unitDataOut_0_1[1].re @[Modules.scala 255:16]
    exdata_inst.io.in[1][2].im <= unitDataOut_0_1[2].im @[Modules.scala 255:16]
    exdata_inst.io.in[1][2].re <= unitDataOut_0_1[2].re @[Modules.scala 255:16]
    exdata_inst.io.in[1][3].im <= unitDataOut_0_1[3].im @[Modules.scala 255:16]
    exdata_inst.io.in[1][3].re <= unitDataOut_0_1[3].re @[Modules.scala 255:16]
    exdata_inst.io.in[2][0].im <= unitDataOut_0_2[0].im @[Modules.scala 255:16]
    exdata_inst.io.in[2][0].re <= unitDataOut_0_2[0].re @[Modules.scala 255:16]
    exdata_inst.io.in[2][1].im <= unitDataOut_0_2[1].im @[Modules.scala 255:16]
    exdata_inst.io.in[2][1].re <= unitDataOut_0_2[1].re @[Modules.scala 255:16]
    exdata_inst.io.in[2][2].im <= unitDataOut_0_2[2].im @[Modules.scala 255:16]
    exdata_inst.io.in[2][2].re <= unitDataOut_0_2[2].re @[Modules.scala 255:16]
    exdata_inst.io.in[2][3].im <= unitDataOut_0_2[3].im @[Modules.scala 255:16]
    exdata_inst.io.in[2][3].re <= unitDataOut_0_2[3].re @[Modules.scala 255:16]
    exdata_inst.io.in[3][0].im <= unitDataOut_0_3[0].im @[Modules.scala 255:16]
    exdata_inst.io.in[3][0].re <= unitDataOut_0_3[0].re @[Modules.scala 255:16]
    exdata_inst.io.in[3][1].im <= unitDataOut_0_3[1].im @[Modules.scala 255:16]
    exdata_inst.io.in[3][1].re <= unitDataOut_0_3[1].re @[Modules.scala 255:16]
    exdata_inst.io.in[3][2].im <= unitDataOut_0_3[2].im @[Modules.scala 255:16]
    exdata_inst.io.in[3][2].re <= unitDataOut_0_3[2].re @[Modules.scala 255:16]
    exdata_inst.io.in[3][3].im <= unitDataOut_0_3[3].im @[Modules.scala 255:16]
    exdata_inst.io.in[3][3].re <= unitDataOut_0_3[3].re @[Modules.scala 255:16]
    reg REG : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], clock with :
      reset => (UInt<1>("h0"), REG) @[FFT.scala 87:72]
    REG <= exdata_inst.io.out[0] @[FFT.scala 87:72]
    unitDataIn_1_0 <= REG @[FFT.scala 87:62]
    reg REG_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], clock with :
      reset => (UInt<1>("h0"), REG_1) @[FFT.scala 87:72]
    REG_1 <= exdata_inst.io.out[1] @[FFT.scala 87:72]
    unitDataIn_1_1 <= REG_1 @[FFT.scala 87:62]
    reg REG_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], clock with :
      reset => (UInt<1>("h0"), REG_2) @[FFT.scala 87:72]
    REG_2 <= exdata_inst.io.out[2] @[FFT.scala 87:72]
    unitDataIn_1_2 <= REG_2 @[FFT.scala 87:62]
    reg REG_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[4], clock with :
      reset => (UInt<1>("h0"), REG_3) @[FFT.scala 87:72]
    REG_3 <= exdata_inst.io.out[3] @[FFT.scala 87:72]
    unitDataIn_1_3 <= REG_3 @[FFT.scala 87:62]
    node sel = bits(cnt_1, 1, 0) @[FFT.scala 93:31]
    inst inst_8 of Switch @[Modules.scala 234:22]
    inst_8.clock <= clock
    inst_8.reset <= reset
    inst_8.io.in[0].im <= unitDataOut_1_0[0].im @[Modules.scala 235:16]
    inst_8.io.in[0].re <= unitDataOut_1_0[0].re @[Modules.scala 235:16]
    inst_8.io.in[1].im <= unitDataOut_1_0[1].im @[Modules.scala 235:16]
    inst_8.io.in[1].re <= unitDataOut_1_0[1].re @[Modules.scala 235:16]
    inst_8.io.in[2].im <= unitDataOut_1_0[2].im @[Modules.scala 235:16]
    inst_8.io.in[2].re <= unitDataOut_1_0[2].re @[Modules.scala 235:16]
    inst_8.io.in[3].im <= unitDataOut_1_0[3].im @[Modules.scala 235:16]
    inst_8.io.in[3].re <= unitDataOut_1_0[3].re @[Modules.scala 235:16]
    inst_8.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_2_0 <= inst_8.io.out @[FFT.scala 94:59]
    inst inst_9 of Switch_1 @[Modules.scala 234:22]
    inst_9.clock <= clock
    inst_9.reset <= reset
    inst_9.io.in[0].im <= unitDataOut_1_1[0].im @[Modules.scala 235:16]
    inst_9.io.in[0].re <= unitDataOut_1_1[0].re @[Modules.scala 235:16]
    inst_9.io.in[1].im <= unitDataOut_1_1[1].im @[Modules.scala 235:16]
    inst_9.io.in[1].re <= unitDataOut_1_1[1].re @[Modules.scala 235:16]
    inst_9.io.in[2].im <= unitDataOut_1_1[2].im @[Modules.scala 235:16]
    inst_9.io.in[2].re <= unitDataOut_1_1[2].re @[Modules.scala 235:16]
    inst_9.io.in[3].im <= unitDataOut_1_1[3].im @[Modules.scala 235:16]
    inst_9.io.in[3].re <= unitDataOut_1_1[3].re @[Modules.scala 235:16]
    inst_9.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_2_1 <= inst_9.io.out @[FFT.scala 94:59]
    inst inst_10 of Switch_2 @[Modules.scala 234:22]
    inst_10.clock <= clock
    inst_10.reset <= reset
    inst_10.io.in[0].im <= unitDataOut_1_2[0].im @[Modules.scala 235:16]
    inst_10.io.in[0].re <= unitDataOut_1_2[0].re @[Modules.scala 235:16]
    inst_10.io.in[1].im <= unitDataOut_1_2[1].im @[Modules.scala 235:16]
    inst_10.io.in[1].re <= unitDataOut_1_2[1].re @[Modules.scala 235:16]
    inst_10.io.in[2].im <= unitDataOut_1_2[2].im @[Modules.scala 235:16]
    inst_10.io.in[2].re <= unitDataOut_1_2[2].re @[Modules.scala 235:16]
    inst_10.io.in[3].im <= unitDataOut_1_2[3].im @[Modules.scala 235:16]
    inst_10.io.in[3].re <= unitDataOut_1_2[3].re @[Modules.scala 235:16]
    inst_10.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_2_2 <= inst_10.io.out @[FFT.scala 94:59]
    inst inst_11 of Switch_3 @[Modules.scala 234:22]
    inst_11.clock <= clock
    inst_11.reset <= reset
    inst_11.io.in[0].im <= unitDataOut_1_3[0].im @[Modules.scala 235:16]
    inst_11.io.in[0].re <= unitDataOut_1_3[0].re @[Modules.scala 235:16]
    inst_11.io.in[1].im <= unitDataOut_1_3[1].im @[Modules.scala 235:16]
    inst_11.io.in[1].re <= unitDataOut_1_3[1].re @[Modules.scala 235:16]
    inst_11.io.in[2].im <= unitDataOut_1_3[2].im @[Modules.scala 235:16]
    inst_11.io.in[2].re <= unitDataOut_1_3[2].re @[Modules.scala 235:16]
    inst_11.io.in[3].im <= unitDataOut_1_3[3].im @[Modules.scala 235:16]
    inst_11.io.in[3].re <= unitDataOut_1_3[3].re @[Modules.scala 235:16]
    inst_11.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_2_3 <= inst_11.io.out @[FFT.scala 94:59]
    unitDataIn_0_0[0] <= io.dIn[0] @[FFT.scala 99:22]
    unitDataIn_0_0[1] <= io.dIn[1] @[FFT.scala 99:22]
    unitDataIn_0_0[2] <= io.dIn[2] @[FFT.scala 99:22]
    unitDataIn_0_0[3] <= io.dIn[3] @[FFT.scala 99:22]
    unitDataIn_0_1[0] <= io.dIn[4] @[FFT.scala 99:22]
    unitDataIn_0_1[1] <= io.dIn[5] @[FFT.scala 99:22]
    unitDataIn_0_1[2] <= io.dIn[6] @[FFT.scala 99:22]
    unitDataIn_0_1[3] <= io.dIn[7] @[FFT.scala 99:22]
    unitDataIn_0_2[0] <= io.dIn[8] @[FFT.scala 99:22]
    unitDataIn_0_2[1] <= io.dIn[9] @[FFT.scala 99:22]
    unitDataIn_0_2[2] <= io.dIn[10] @[FFT.scala 99:22]
    unitDataIn_0_2[3] <= io.dIn[11] @[FFT.scala 99:22]
    unitDataIn_0_3[0] <= io.dIn[12] @[FFT.scala 99:22]
    unitDataIn_0_3[1] <= io.dIn[13] @[FFT.scala 99:22]
    unitDataIn_0_3[2] <= io.dIn[14] @[FFT.scala 99:22]
    unitDataIn_0_3[3] <= io.dIn[15] @[FFT.scala 99:22]
    io.busy <= busy @[FFT.scala 102:11]
    reg io_dout_valid_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_dout_valid_REG) @[FFT.scala 103:27]
    io_dout_valid_REG <= cnt_0 @[FFT.scala 103:27]
    node _io_dout_valid_T = eq(io_dout_valid_REG, UInt<3>("h4")) @[FFT.scala 103:36]
    io.dout_valid <= _io_dout_valid_T @[FFT.scala 103:17]
    reg REG_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[16], clock with :
      reset => (UInt<1>("h0"), REG_4) @[FFT.scala 104:21]
    REG_4 <= datao @[FFT.scala 104:21]
    io.dOut <= REG_4 @[FFT.scala 104:11]

  module FFTtop :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[16], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[16], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

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
    fft.io.dIn[8].im <= io.dIn[8].im @[Top.scala 16:14]
    fft.io.dIn[8].re <= io.dIn[8].re @[Top.scala 16:14]
    fft.io.dIn[9].im <= io.dIn[9].im @[Top.scala 16:14]
    fft.io.dIn[9].re <= io.dIn[9].re @[Top.scala 16:14]
    fft.io.dIn[10].im <= io.dIn[10].im @[Top.scala 16:14]
    fft.io.dIn[10].re <= io.dIn[10].re @[Top.scala 16:14]
    fft.io.dIn[11].im <= io.dIn[11].im @[Top.scala 16:14]
    fft.io.dIn[11].re <= io.dIn[11].re @[Top.scala 16:14]
    fft.io.dIn[12].im <= io.dIn[12].im @[Top.scala 16:14]
    fft.io.dIn[12].re <= io.dIn[12].re @[Top.scala 16:14]
    fft.io.dIn[13].im <= io.dIn[13].im @[Top.scala 16:14]
    fft.io.dIn[13].re <= io.dIn[13].re @[Top.scala 16:14]
    fft.io.dIn[14].im <= io.dIn[14].im @[Top.scala 16:14]
    fft.io.dIn[14].re <= io.dIn[14].re @[Top.scala 16:14]
    fft.io.dIn[15].im <= io.dIn[15].im @[Top.scala 16:14]
    fft.io.dIn[15].re <= io.dIn[15].re @[Top.scala 16:14]
    fft.io.din_valid <= io.din_valid @[Top.scala 17:20]
    io.dOut <= fft.io.dOut @[Top.scala 27:13]
    io.dout_valid <= fft.io.dout_valid @[Top.scala 28:19]
    io.busy <= fft.io.busy @[Top.scala 29:13]

