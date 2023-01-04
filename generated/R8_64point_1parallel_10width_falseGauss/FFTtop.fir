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

  module ButterflyMul :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], flip wn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[7]}

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
    wire _temp_WIRE_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_20 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_9 : UInt<20>
    _temp_WIRE_9 <= _temp_T_20
    node _temp_T_21 = bits(_temp_WIRE_9, 9, 0) @[Modules.scala 155:50]
    node _temp_T_22 = asFixedPoint(_temp_T_21, 5) @[Modules.scala 155:50]
    _temp_WIRE_8.im <= _temp_T_22 @[Modules.scala 155:50]
    node _temp_T_23 = bits(_temp_WIRE_9, 19, 10) @[Modules.scala 155:50]
    node _temp_T_24 = asFixedPoint(_temp_T_23, 5) @[Modules.scala 155:50]
    _temp_WIRE_8.re <= _temp_T_24 @[Modules.scala 155:50]
    wire _temp_WIRE_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_25 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_11 : UInt<20>
    _temp_WIRE_11 <= _temp_T_25
    node _temp_T_26 = bits(_temp_WIRE_11, 9, 0) @[Modules.scala 155:50]
    node _temp_T_27 = asFixedPoint(_temp_T_26, 5) @[Modules.scala 155:50]
    _temp_WIRE_10.im <= _temp_T_27 @[Modules.scala 155:50]
    node _temp_T_28 = bits(_temp_WIRE_11, 19, 10) @[Modules.scala 155:50]
    node _temp_T_29 = asFixedPoint(_temp_T_28, 5) @[Modules.scala 155:50]
    _temp_WIRE_10.re <= _temp_T_29 @[Modules.scala 155:50]
    wire _temp_WIRE_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_30 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_13 : UInt<20>
    _temp_WIRE_13 <= _temp_T_30
    node _temp_T_31 = bits(_temp_WIRE_13, 9, 0) @[Modules.scala 155:50]
    node _temp_T_32 = asFixedPoint(_temp_T_31, 5) @[Modules.scala 155:50]
    _temp_WIRE_12.im <= _temp_T_32 @[Modules.scala 155:50]
    node _temp_T_33 = bits(_temp_WIRE_13, 19, 10) @[Modules.scala 155:50]
    node _temp_T_34 = asFixedPoint(_temp_T_33, 5) @[Modules.scala 155:50]
    _temp_WIRE_12.re <= _temp_T_34 @[Modules.scala 155:50]
    wire _temp_WIRE_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 155:50]
    node _temp_T_35 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 155:50]
    wire _temp_WIRE_15 : UInt<20>
    _temp_WIRE_15 <= _temp_T_35
    node _temp_T_36 = bits(_temp_WIRE_15, 9, 0) @[Modules.scala 155:50]
    node _temp_T_37 = asFixedPoint(_temp_T_36, 5) @[Modules.scala 155:50]
    _temp_WIRE_14.im <= _temp_T_37 @[Modules.scala 155:50]
    node _temp_T_38 = bits(_temp_WIRE_15, 19, 10) @[Modules.scala 155:50]
    node _temp_T_39 = asFixedPoint(_temp_T_38, 5) @[Modules.scala 155:50]
    _temp_WIRE_14.re <= _temp_T_39 @[Modules.scala 155:50]
    wire temp : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 155:21]
    temp[0] <= _temp_WIRE @[Modules.scala 155:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 155:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 155:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 155:21]
    temp[4] <= _temp_WIRE_8 @[Modules.scala 155:21]
    temp[5] <= _temp_WIRE_10 @[Modules.scala 155:21]
    temp[6] <= _temp_WIRE_12 @[Modules.scala 155:21]
    temp[7] <= _temp_WIRE_14 @[Modules.scala 155:21]
    node mul1_lo = asUInt(asFixedPoint(UInt<10>("h3e9"), 5)) @[Cat.scala 33:92]
    node mul1_hi = asUInt(asFixedPoint(UInt<10>("h17"), 5)) @[Cat.scala 33:92]
    node _mul1_T = cat(mul1_hi, mul1_lo) @[Cat.scala 33:92]
    wire mul1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 167:41]
    wire _mul1_WIRE : UInt<20>
    _mul1_WIRE <= _mul1_T
    node _mul1_T_1 = bits(_mul1_WIRE, 9, 0) @[Modules.scala 167:41]
    node _mul1_T_2 = asFixedPoint(_mul1_T_1, 5) @[Modules.scala 167:41]
    mul1.im <= _mul1_T_2 @[Modules.scala 167:41]
    node _mul1_T_3 = bits(_mul1_WIRE, 19, 10) @[Modules.scala 167:41]
    node _mul1_T_4 = asFixedPoint(_mul1_T_3, 5) @[Modules.scala 167:41]
    mul1.re <= _mul1_T_4 @[Modules.scala 167:41]
    wire _temp_data_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 168:53]
    node _temp_data_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 168:53]
    wire _temp_data_WIRE_1 : UInt<20>
    _temp_data_WIRE_1 <= _temp_data_T
    node _temp_data_T_1 = bits(_temp_data_WIRE_1, 9, 0) @[Modules.scala 168:53]
    node _temp_data_T_2 = asFixedPoint(_temp_data_T_1, 5) @[Modules.scala 168:53]
    _temp_data_WIRE.im <= _temp_data_T_2 @[Modules.scala 168:53]
    node _temp_data_T_3 = bits(_temp_data_WIRE_1, 19, 10) @[Modules.scala 168:53]
    node _temp_data_T_4 = asFixedPoint(_temp_data_T_3, 5) @[Modules.scala 168:53]
    _temp_data_WIRE.re <= _temp_data_T_4 @[Modules.scala 168:53]
    wire _temp_data_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 168:53]
    node _temp_data_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 168:53]
    wire _temp_data_WIRE_3 : UInt<20>
    _temp_data_WIRE_3 <= _temp_data_T_5
    node _temp_data_T_6 = bits(_temp_data_WIRE_3, 9, 0) @[Modules.scala 168:53]
    node _temp_data_T_7 = asFixedPoint(_temp_data_T_6, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_2.im <= _temp_data_T_7 @[Modules.scala 168:53]
    node _temp_data_T_8 = bits(_temp_data_WIRE_3, 19, 10) @[Modules.scala 168:53]
    node _temp_data_T_9 = asFixedPoint(_temp_data_T_8, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_2.re <= _temp_data_T_9 @[Modules.scala 168:53]
    wire _temp_data_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 168:53]
    node _temp_data_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 168:53]
    wire _temp_data_WIRE_5 : UInt<20>
    _temp_data_WIRE_5 <= _temp_data_T_10
    node _temp_data_T_11 = bits(_temp_data_WIRE_5, 9, 0) @[Modules.scala 168:53]
    node _temp_data_T_12 = asFixedPoint(_temp_data_T_11, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_4.im <= _temp_data_T_12 @[Modules.scala 168:53]
    node _temp_data_T_13 = bits(_temp_data_WIRE_5, 19, 10) @[Modules.scala 168:53]
    node _temp_data_T_14 = asFixedPoint(_temp_data_T_13, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_4.re <= _temp_data_T_14 @[Modules.scala 168:53]
    wire _temp_data_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 168:53]
    node _temp_data_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 168:53]
    wire _temp_data_WIRE_7 : UInt<20>
    _temp_data_WIRE_7 <= _temp_data_T_15
    node _temp_data_T_16 = bits(_temp_data_WIRE_7, 9, 0) @[Modules.scala 168:53]
    node _temp_data_T_17 = asFixedPoint(_temp_data_T_16, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_6.im <= _temp_data_T_17 @[Modules.scala 168:53]
    node _temp_data_T_18 = bits(_temp_data_WIRE_7, 19, 10) @[Modules.scala 168:53]
    node _temp_data_T_19 = asFixedPoint(_temp_data_T_18, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_6.re <= _temp_data_T_19 @[Modules.scala 168:53]
    wire _temp_data_WIRE_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 168:53]
    node _temp_data_T_20 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 168:53]
    wire _temp_data_WIRE_9 : UInt<20>
    _temp_data_WIRE_9 <= _temp_data_T_20
    node _temp_data_T_21 = bits(_temp_data_WIRE_9, 9, 0) @[Modules.scala 168:53]
    node _temp_data_T_22 = asFixedPoint(_temp_data_T_21, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_8.im <= _temp_data_T_22 @[Modules.scala 168:53]
    node _temp_data_T_23 = bits(_temp_data_WIRE_9, 19, 10) @[Modules.scala 168:53]
    node _temp_data_T_24 = asFixedPoint(_temp_data_T_23, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_8.re <= _temp_data_T_24 @[Modules.scala 168:53]
    wire _temp_data_WIRE_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 168:53]
    node _temp_data_T_25 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 168:53]
    wire _temp_data_WIRE_11 : UInt<20>
    _temp_data_WIRE_11 <= _temp_data_T_25
    node _temp_data_T_26 = bits(_temp_data_WIRE_11, 9, 0) @[Modules.scala 168:53]
    node _temp_data_T_27 = asFixedPoint(_temp_data_T_26, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_10.im <= _temp_data_T_27 @[Modules.scala 168:53]
    node _temp_data_T_28 = bits(_temp_data_WIRE_11, 19, 10) @[Modules.scala 168:53]
    node _temp_data_T_29 = asFixedPoint(_temp_data_T_28, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_10.re <= _temp_data_T_29 @[Modules.scala 168:53]
    wire _temp_data_WIRE_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 168:53]
    node _temp_data_T_30 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 168:53]
    wire _temp_data_WIRE_13 : UInt<20>
    _temp_data_WIRE_13 <= _temp_data_T_30
    node _temp_data_T_31 = bits(_temp_data_WIRE_13, 9, 0) @[Modules.scala 168:53]
    node _temp_data_T_32 = asFixedPoint(_temp_data_T_31, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_12.im <= _temp_data_T_32 @[Modules.scala 168:53]
    node _temp_data_T_33 = bits(_temp_data_WIRE_13, 19, 10) @[Modules.scala 168:53]
    node _temp_data_T_34 = asFixedPoint(_temp_data_T_33, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_12.re <= _temp_data_T_34 @[Modules.scala 168:53]
    wire _temp_data_WIRE_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 168:53]
    node _temp_data_T_35 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 168:53]
    wire _temp_data_WIRE_15 : UInt<20>
    _temp_data_WIRE_15 <= _temp_data_T_35
    node _temp_data_T_36 = bits(_temp_data_WIRE_15, 9, 0) @[Modules.scala 168:53]
    node _temp_data_T_37 = asFixedPoint(_temp_data_T_36, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_14.im <= _temp_data_T_37 @[Modules.scala 168:53]
    node _temp_data_T_38 = bits(_temp_data_WIRE_15, 19, 10) @[Modules.scala 168:53]
    node _temp_data_T_39 = asFixedPoint(_temp_data_T_38, 5) @[Modules.scala 168:53]
    _temp_data_WIRE_14.re <= _temp_data_T_39 @[Modules.scala 168:53]
    wire temp_data : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 168:28]
    temp_data[0] <= _temp_data_WIRE @[Modules.scala 168:28]
    temp_data[1] <= _temp_data_WIRE_2 @[Modules.scala 168:28]
    temp_data[2] <= _temp_data_WIRE_4 @[Modules.scala 168:28]
    temp_data[3] <= _temp_data_WIRE_6 @[Modules.scala 168:28]
    temp_data[4] <= _temp_data_WIRE_8 @[Modules.scala 168:28]
    temp_data[5] <= _temp_data_WIRE_10 @[Modules.scala 168:28]
    temp_data[6] <= _temp_data_WIRE_12 @[Modules.scala 168:28]
    temp_data[7] <= _temp_data_WIRE_14 @[Modules.scala 168:28]
    inst temp_data_0_inst of ComplexAdd @[Modules.scala 41:22]
    temp_data_0_inst.clock <= clock
    temp_data_0_inst.reset <= reset
    temp_data_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_data_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_data_0_inst.io.op2.im <= io.in[4].im @[Modules.scala 43:17]
    temp_data_0_inst.io.op2.re <= io.in[4].re @[Modules.scala 43:17]
    temp_data[0] <= temp_data_0_inst.io.res @[Modules.scala 169:39]
    inst temp_data_1_inst of ComplexAdd_1 @[Modules.scala 41:22]
    temp_data_1_inst.clock <= clock
    temp_data_1_inst.reset <= reset
    temp_data_1_inst.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_data_1_inst.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_data_1_inst.io.op2.im <= io.in[5].im @[Modules.scala 43:17]
    temp_data_1_inst.io.op2.re <= io.in[5].re @[Modules.scala 43:17]
    temp_data[1] <= temp_data_1_inst.io.res @[Modules.scala 169:39]
    inst temp_data_2_inst of ComplexAdd_2 @[Modules.scala 41:22]
    temp_data_2_inst.clock <= clock
    temp_data_2_inst.reset <= reset
    temp_data_2_inst.io.op1.im <= io.in[2].im @[Modules.scala 42:17]
    temp_data_2_inst.io.op1.re <= io.in[2].re @[Modules.scala 42:17]
    temp_data_2_inst.io.op2.im <= io.in[6].im @[Modules.scala 43:17]
    temp_data_2_inst.io.op2.re <= io.in[6].re @[Modules.scala 43:17]
    temp_data[2] <= temp_data_2_inst.io.res @[Modules.scala 169:39]
    inst temp_data_3_inst of ComplexAdd_3 @[Modules.scala 41:22]
    temp_data_3_inst.clock <= clock
    temp_data_3_inst.reset <= reset
    temp_data_3_inst.io.op1.im <= io.in[3].im @[Modules.scala 42:17]
    temp_data_3_inst.io.op1.re <= io.in[3].re @[Modules.scala 42:17]
    temp_data_3_inst.io.op2.im <= io.in[7].im @[Modules.scala 43:17]
    temp_data_3_inst.io.op2.re <= io.in[7].re @[Modules.scala 43:17]
    temp_data[3] <= temp_data_3_inst.io.res @[Modules.scala 169:39]
    inst temp_data_4_inst of ComplexSub @[Modules.scala 57:22]
    temp_data_4_inst.clock <= clock
    temp_data_4_inst.reset <= reset
    temp_data_4_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_data_4_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_data_4_inst.io.op2.im <= io.in[4].im @[Modules.scala 59:17]
    temp_data_4_inst.io.op2.re <= io.in[4].re @[Modules.scala 59:17]
    temp_data[4] <= temp_data_4_inst.io.res @[Modules.scala 170:43]
    inst temp_data_5_inst of ComplexSub_1 @[Modules.scala 57:22]
    temp_data_5_inst.clock <= clock
    temp_data_5_inst.reset <= reset
    temp_data_5_inst.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_data_5_inst.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_data_5_inst.io.op2.im <= io.in[5].im @[Modules.scala 59:17]
    temp_data_5_inst.io.op2.re <= io.in[5].re @[Modules.scala 59:17]
    temp_data[5] <= temp_data_5_inst.io.res @[Modules.scala 170:43]
    inst temp_data_6_inst of ComplexSub_2 @[Modules.scala 57:22]
    temp_data_6_inst.clock <= clock
    temp_data_6_inst.reset <= reset
    temp_data_6_inst.io.op1.im <= io.in[2].im @[Modules.scala 58:17]
    temp_data_6_inst.io.op1.re <= io.in[2].re @[Modules.scala 58:17]
    temp_data_6_inst.io.op2.im <= io.in[6].im @[Modules.scala 59:17]
    temp_data_6_inst.io.op2.re <= io.in[6].re @[Modules.scala 59:17]
    temp_data[6] <= temp_data_6_inst.io.res @[Modules.scala 170:43]
    inst temp_data_7_inst of ComplexSub_3 @[Modules.scala 57:22]
    temp_data_7_inst.clock <= clock
    temp_data_7_inst.reset <= reset
    temp_data_7_inst.io.op1.im <= io.in[3].im @[Modules.scala 58:17]
    temp_data_7_inst.io.op1.re <= io.in[3].re @[Modules.scala 58:17]
    temp_data_7_inst.io.op2.im <= io.in[7].im @[Modules.scala 59:17]
    temp_data_7_inst.io.op2.re <= io.in[7].re @[Modules.scala 59:17]
    temp_data[7] <= temp_data_7_inst.io.res @[Modules.scala 170:43]
    inst A02_inst of ComplexAdd_4 @[Modules.scala 41:22]
    A02_inst.clock <= clock
    A02_inst.reset <= reset
    A02_inst.io.op1.im <= temp_data[0].im @[Modules.scala 42:17]
    A02_inst.io.op1.re <= temp_data[0].re @[Modules.scala 42:17]
    A02_inst.io.op2.im <= temp_data[2].im @[Modules.scala 43:17]
    A02_inst.io.op2.re <= temp_data[2].re @[Modules.scala 43:17]
    inst S02_inst of ComplexSub_4 @[Modules.scala 57:22]
    S02_inst.clock <= clock
    S02_inst.reset <= reset
    S02_inst.io.op1.im <= temp_data[0].im @[Modules.scala 58:17]
    S02_inst.io.op1.re <= temp_data[0].re @[Modules.scala 58:17]
    S02_inst.io.op2.im <= temp_data[2].im @[Modules.scala 59:17]
    S02_inst.io.op2.re <= temp_data[2].re @[Modules.scala 59:17]
    inst A13_inst of ComplexAdd_5 @[Modules.scala 41:22]
    A13_inst.clock <= clock
    A13_inst.reset <= reset
    A13_inst.io.op1.im <= temp_data[1].im @[Modules.scala 42:17]
    A13_inst.io.op1.re <= temp_data[1].re @[Modules.scala 42:17]
    A13_inst.io.op2.im <= temp_data[3].im @[Modules.scala 43:17]
    A13_inst.io.op2.re <= temp_data[3].re @[Modules.scala 43:17]
    inst S13_inst of ComplexSub_5 @[Modules.scala 57:22]
    S13_inst.clock <= clock
    S13_inst.reset <= reset
    S13_inst.io.op1.im <= temp_data[1].im @[Modules.scala 58:17]
    S13_inst.io.op1.re <= temp_data[1].re @[Modules.scala 58:17]
    S13_inst.io.op2.im <= temp_data[3].im @[Modules.scala 59:17]
    S13_inst.io.op2.re <= temp_data[3].re @[Modules.scala 59:17]
    inst A46_inst of ComplexTran @[Modules.scala 75:22]
    A46_inst.clock <= clock
    A46_inst.reset <= reset
    A46_inst.io.in.im <= temp_data[6].im @[Modules.scala 76:16]
    A46_inst.io.in.re <= temp_data[6].re @[Modules.scala 76:16]
    inst A46_inst_1 of ComplexAdd_6 @[Modules.scala 41:22]
    A46_inst_1.clock <= clock
    A46_inst_1.reset <= reset
    A46_inst_1.io.op1.im <= temp_data[4].im @[Modules.scala 42:17]
    A46_inst_1.io.op1.re <= temp_data[4].re @[Modules.scala 42:17]
    A46_inst_1.io.op2.im <= A46_inst.io.out.im @[Modules.scala 43:17]
    A46_inst_1.io.op2.re <= A46_inst.io.out.re @[Modules.scala 43:17]
    inst S46_inst of ComplexTran_1 @[Modules.scala 75:22]
    S46_inst.clock <= clock
    S46_inst.reset <= reset
    S46_inst.io.in.im <= temp_data[6].im @[Modules.scala 76:16]
    S46_inst.io.in.re <= temp_data[6].re @[Modules.scala 76:16]
    inst S46_inst_1 of ComplexSub_6 @[Modules.scala 57:22]
    S46_inst_1.clock <= clock
    S46_inst_1.reset <= reset
    S46_inst_1.io.op1.im <= temp_data[4].im @[Modules.scala 58:17]
    S46_inst_1.io.op1.re <= temp_data[4].re @[Modules.scala 58:17]
    S46_inst_1.io.op2.im <= S46_inst.io.out.im @[Modules.scala 59:17]
    S46_inst_1.io.op2.re <= S46_inst.io.out.re @[Modules.scala 59:17]
    inst A57_inst of ComplexTran_2 @[Modules.scala 75:22]
    A57_inst.clock <= clock
    A57_inst.reset <= reset
    A57_inst.io.in.im <= temp_data[7].im @[Modules.scala 76:16]
    A57_inst.io.in.re <= temp_data[7].re @[Modules.scala 76:16]
    inst A57_inst_1 of ComplexAdd_7 @[Modules.scala 41:22]
    A57_inst_1.clock <= clock
    A57_inst_1.reset <= reset
    A57_inst_1.io.op1.im <= temp_data[5].im @[Modules.scala 42:17]
    A57_inst_1.io.op1.re <= temp_data[5].re @[Modules.scala 42:17]
    A57_inst_1.io.op2.im <= A57_inst.io.out.im @[Modules.scala 43:17]
    A57_inst_1.io.op2.re <= A57_inst.io.out.re @[Modules.scala 43:17]
    inst S57_inst of ComplexTran_3 @[Modules.scala 75:22]
    S57_inst.clock <= clock
    S57_inst.reset <= reset
    S57_inst.io.in.im <= temp_data[7].im @[Modules.scala 76:16]
    S57_inst.io.in.re <= temp_data[7].re @[Modules.scala 76:16]
    inst S57_inst_1 of ComplexSub_7 @[Modules.scala 57:22]
    S57_inst_1.clock <= clock
    S57_inst_1.reset <= reset
    S57_inst_1.io.op1.im <= temp_data[5].im @[Modules.scala 58:17]
    S57_inst_1.io.op1.re <= temp_data[5].re @[Modules.scala 58:17]
    S57_inst_1.io.op2.im <= S57_inst.io.out.im @[Modules.scala 59:17]
    S57_inst_1.io.op2.re <= S57_inst.io.out.re @[Modules.scala 59:17]
    inst temp_0_inst of ComplexAdd_8 @[Modules.scala 41:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= A02_inst.io.res.im @[Modules.scala 42:17]
    temp_0_inst.io.op1.re <= A02_inst.io.res.re @[Modules.scala 42:17]
    temp_0_inst.io.op2.im <= A13_inst.io.res.im @[Modules.scala 43:17]
    temp_0_inst.io.op2.re <= A13_inst.io.res.re @[Modules.scala 43:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 179:13]
    inst temp_1_inst of ComplexSub_8 @[Modules.scala 57:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= A02_inst.io.res.im @[Modules.scala 58:17]
    temp_1_inst.io.op1.re <= A02_inst.io.res.re @[Modules.scala 58:17]
    temp_1_inst.io.op2.im <= A13_inst.io.res.im @[Modules.scala 59:17]
    temp_1_inst.io.op2.re <= A13_inst.io.res.re @[Modules.scala 59:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 180:13]
    inst temp_2_inst of ComplexTran_4 @[Modules.scala 75:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.in.im <= S13_inst.io.res.im @[Modules.scala 76:16]
    temp_2_inst.io.in.re <= S13_inst.io.res.re @[Modules.scala 76:16]
    inst temp_2_inst_1 of ComplexAdd_9 @[Modules.scala 41:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= S02_inst.io.res.im @[Modules.scala 42:17]
    temp_2_inst_1.io.op1.re <= S02_inst.io.res.re @[Modules.scala 42:17]
    temp_2_inst_1.io.op2.im <= temp_2_inst.io.out.im @[Modules.scala 43:17]
    temp_2_inst_1.io.op2.re <= temp_2_inst.io.out.re @[Modules.scala 43:17]
    temp[2] <= temp_2_inst_1.io.res @[Modules.scala 181:13]
    inst temp_3_inst of ComplexTran_5 @[Modules.scala 75:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.in.im <= S13_inst.io.res.im @[Modules.scala 76:16]
    temp_3_inst.io.in.re <= S13_inst.io.res.re @[Modules.scala 76:16]
    inst temp_3_inst_1 of ComplexSub_9 @[Modules.scala 57:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= S02_inst.io.res.im @[Modules.scala 58:17]
    temp_3_inst_1.io.op1.re <= S02_inst.io.res.re @[Modules.scala 58:17]
    temp_3_inst_1.io.op2.im <= temp_3_inst.io.out.im @[Modules.scala 59:17]
    temp_3_inst_1.io.op2.re <= temp_3_inst.io.out.re @[Modules.scala 59:17]
    temp[3] <= temp_3_inst_1.io.res @[Modules.scala 182:13]
    inst temp_4_inst of ComplexMul @[Modules.scala 97:22]
    temp_4_inst.clock <= clock
    temp_4_inst.reset <= reset
    temp_4_inst.io.op1.im <= A57_inst_1.io.res.im @[Modules.scala 98:17]
    temp_4_inst.io.op1.re <= A57_inst_1.io.res.re @[Modules.scala 98:17]
    temp_4_inst.io.op2.im <= mul1.im @[Modules.scala 99:17]
    temp_4_inst.io.op2.re <= mul1.re @[Modules.scala 99:17]
    inst temp_4_inst_1 of ComplexAdd_10 @[Modules.scala 41:22]
    temp_4_inst_1.clock <= clock
    temp_4_inst_1.reset <= reset
    temp_4_inst_1.io.op1.im <= A46_inst_1.io.res.im @[Modules.scala 42:17]
    temp_4_inst_1.io.op1.re <= A46_inst_1.io.res.re @[Modules.scala 42:17]
    temp_4_inst_1.io.op2.im <= temp_4_inst.io.res.im @[Modules.scala 43:17]
    temp_4_inst_1.io.op2.re <= temp_4_inst.io.res.re @[Modules.scala 43:17]
    temp[4] <= temp_4_inst_1.io.res @[Modules.scala 183:13]
    inst temp_5_inst of ComplexMul_1 @[Modules.scala 97:22]
    temp_5_inst.clock <= clock
    temp_5_inst.reset <= reset
    temp_5_inst.io.op1.im <= A57_inst_1.io.res.im @[Modules.scala 98:17]
    temp_5_inst.io.op1.re <= A57_inst_1.io.res.re @[Modules.scala 98:17]
    temp_5_inst.io.op2.im <= mul1.im @[Modules.scala 99:17]
    temp_5_inst.io.op2.re <= mul1.re @[Modules.scala 99:17]
    inst temp_5_inst_1 of ComplexSub_10 @[Modules.scala 57:22]
    temp_5_inst_1.clock <= clock
    temp_5_inst_1.reset <= reset
    temp_5_inst_1.io.op1.im <= A46_inst_1.io.res.im @[Modules.scala 58:17]
    temp_5_inst_1.io.op1.re <= A46_inst_1.io.res.re @[Modules.scala 58:17]
    temp_5_inst_1.io.op2.im <= temp_5_inst.io.res.im @[Modules.scala 59:17]
    temp_5_inst_1.io.op2.re <= temp_5_inst.io.res.re @[Modules.scala 59:17]
    temp[5] <= temp_5_inst_1.io.res @[Modules.scala 184:13]
    inst temp_6_inst of ComplexMul_2 @[Modules.scala 97:22]
    temp_6_inst.clock <= clock
    temp_6_inst.reset <= reset
    temp_6_inst.io.op1.im <= S57_inst_1.io.res.im @[Modules.scala 98:17]
    temp_6_inst.io.op1.re <= S57_inst_1.io.res.re @[Modules.scala 98:17]
    temp_6_inst.io.op2.im <= mul1.im @[Modules.scala 99:17]
    temp_6_inst.io.op2.re <= mul1.re @[Modules.scala 99:17]
    inst temp_6_inst_1 of ComplexTran_6 @[Modules.scala 75:22]
    temp_6_inst_1.clock <= clock
    temp_6_inst_1.reset <= reset
    temp_6_inst_1.io.in.im <= temp_6_inst.io.res.im @[Modules.scala 76:16]
    temp_6_inst_1.io.in.re <= temp_6_inst.io.res.re @[Modules.scala 76:16]
    inst temp_6_inst_2 of ComplexAdd_11 @[Modules.scala 41:22]
    temp_6_inst_2.clock <= clock
    temp_6_inst_2.reset <= reset
    temp_6_inst_2.io.op1.im <= S46_inst_1.io.res.im @[Modules.scala 42:17]
    temp_6_inst_2.io.op1.re <= S46_inst_1.io.res.re @[Modules.scala 42:17]
    temp_6_inst_2.io.op2.im <= temp_6_inst_1.io.out.im @[Modules.scala 43:17]
    temp_6_inst_2.io.op2.re <= temp_6_inst_1.io.out.re @[Modules.scala 43:17]
    temp[6] <= temp_6_inst_2.io.res @[Modules.scala 185:13]
    inst temp_7_inst of ComplexMul_3 @[Modules.scala 97:22]
    temp_7_inst.clock <= clock
    temp_7_inst.reset <= reset
    temp_7_inst.io.op1.im <= S57_inst_1.io.res.im @[Modules.scala 98:17]
    temp_7_inst.io.op1.re <= S57_inst_1.io.res.re @[Modules.scala 98:17]
    temp_7_inst.io.op2.im <= mul1.im @[Modules.scala 99:17]
    temp_7_inst.io.op2.re <= mul1.re @[Modules.scala 99:17]
    inst temp_7_inst_1 of ComplexTran_7 @[Modules.scala 75:22]
    temp_7_inst_1.clock <= clock
    temp_7_inst_1.reset <= reset
    temp_7_inst_1.io.in.im <= temp_7_inst.io.res.im @[Modules.scala 76:16]
    temp_7_inst_1.io.in.re <= temp_7_inst.io.res.re @[Modules.scala 76:16]
    inst temp_7_inst_2 of ComplexSub_11 @[Modules.scala 57:22]
    temp_7_inst_2.clock <= clock
    temp_7_inst_2.reset <= reset
    temp_7_inst_2.io.op1.im <= S46_inst_1.io.res.im @[Modules.scala 58:17]
    temp_7_inst_2.io.op1.re <= S46_inst_1.io.res.re @[Modules.scala 58:17]
    temp_7_inst_2.io.op2.im <= temp_7_inst_1.io.out.im @[Modules.scala 59:17]
    temp_7_inst_2.io.op2.re <= temp_7_inst_1.io.out.re @[Modules.scala 59:17]
    temp[7] <= temp_7_inst_2.io.res @[Modules.scala 186:13]
    io.out[0] <= temp[0] @[Modules.scala 197:15]
    inst io_out_1_inst of ComplexMul_4 @[Modules.scala 97:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 98:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 98:17]
    io_out_1_inst.io.op2.im <= io.wn[3].im @[Modules.scala 99:17]
    io_out_1_inst.io.op2.re <= io.wn[3].re @[Modules.scala 99:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 198:15]
    inst io_out_2_inst of ComplexMul_5 @[Modules.scala 97:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 98:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 98:17]
    io_out_2_inst.io.op2.im <= io.wn[1].im @[Modules.scala 99:17]
    io_out_2_inst.io.op2.re <= io.wn[1].re @[Modules.scala 99:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 199:15]
    inst io_out_3_inst of ComplexMul_6 @[Modules.scala 97:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 98:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 98:17]
    io_out_3_inst.io.op2.im <= io.wn[5].im @[Modules.scala 99:17]
    io_out_3_inst.io.op2.re <= io.wn[5].re @[Modules.scala 99:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 200:15]
    inst io_out_4_inst of ComplexMul_7 @[Modules.scala 97:22]
    io_out_4_inst.clock <= clock
    io_out_4_inst.reset <= reset
    io_out_4_inst.io.op1.im <= temp[4].im @[Modules.scala 98:17]
    io_out_4_inst.io.op1.re <= temp[4].re @[Modules.scala 98:17]
    io_out_4_inst.io.op2.im <= io.wn[0].im @[Modules.scala 99:17]
    io_out_4_inst.io.op2.re <= io.wn[0].re @[Modules.scala 99:17]
    io.out[4] <= io_out_4_inst.io.res @[Modules.scala 201:15]
    inst io_out_5_inst of ComplexMul_8 @[Modules.scala 97:22]
    io_out_5_inst.clock <= clock
    io_out_5_inst.reset <= reset
    io_out_5_inst.io.op1.im <= temp[5].im @[Modules.scala 98:17]
    io_out_5_inst.io.op1.re <= temp[5].re @[Modules.scala 98:17]
    io_out_5_inst.io.op2.im <= io.wn[4].im @[Modules.scala 99:17]
    io_out_5_inst.io.op2.re <= io.wn[4].re @[Modules.scala 99:17]
    io.out[5] <= io_out_5_inst.io.res @[Modules.scala 202:15]
    inst io_out_6_inst of ComplexMul_9 @[Modules.scala 97:22]
    io_out_6_inst.clock <= clock
    io_out_6_inst.reset <= reset
    io_out_6_inst.io.op1.im <= temp[6].im @[Modules.scala 98:17]
    io_out_6_inst.io.op1.re <= temp[6].re @[Modules.scala 98:17]
    io_out_6_inst.io.op2.im <= io.wn[2].im @[Modules.scala 99:17]
    io_out_6_inst.io.op2.re <= io.wn[2].re @[Modules.scala 99:17]
    io.out[6] <= io_out_6_inst.io.res @[Modules.scala 203:15]
    inst io_out_7_inst of ComplexMul_10 @[Modules.scala 97:22]
    io_out_7_inst.clock <= clock
    io_out_7_inst.reset <= reset
    io_out_7_inst.io.op1.im <= temp[7].im @[Modules.scala 98:17]
    io_out_7_inst.io.op1.re <= temp[7].re @[Modules.scala 98:17]
    io_out_7_inst.io.op2.im <= io.wn[6].im @[Modules.scala 99:17]
    io_out_7_inst.io.op2.re <= io.wn[6].re @[Modules.scala 99:17]
    io.out[7] <= io_out_7_inst.io.res @[Modules.scala 204:15]

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

  module ButterflyAdd :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8]}

    node mul1_lo = asUInt(asFixedPoint(UInt<10>("h3e9"), 5)) @[Cat.scala 33:92]
    node mul1_hi = asUInt(asFixedPoint(UInt<10>("h17"), 5)) @[Cat.scala 33:92]
    node _mul1_T = cat(mul1_hi, mul1_lo) @[Cat.scala 33:92]
    wire mul1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 119:41]
    wire _mul1_WIRE : UInt<20>
    _mul1_WIRE <= _mul1_T
    node _mul1_T_1 = bits(_mul1_WIRE, 9, 0) @[Modules.scala 119:41]
    node _mul1_T_2 = asFixedPoint(_mul1_T_1, 5) @[Modules.scala 119:41]
    mul1.im <= _mul1_T_2 @[Modules.scala 119:41]
    node _mul1_T_3 = bits(_mul1_WIRE, 19, 10) @[Modules.scala 119:41]
    node _mul1_T_4 = asFixedPoint(_mul1_T_3, 5) @[Modules.scala 119:41]
    mul1.re <= _mul1_T_4 @[Modules.scala 119:41]
    wire _temp_data_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 120:53]
    node _temp_data_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 120:53]
    wire _temp_data_WIRE_1 : UInt<20>
    _temp_data_WIRE_1 <= _temp_data_T
    node _temp_data_T_1 = bits(_temp_data_WIRE_1, 9, 0) @[Modules.scala 120:53]
    node _temp_data_T_2 = asFixedPoint(_temp_data_T_1, 5) @[Modules.scala 120:53]
    _temp_data_WIRE.im <= _temp_data_T_2 @[Modules.scala 120:53]
    node _temp_data_T_3 = bits(_temp_data_WIRE_1, 19, 10) @[Modules.scala 120:53]
    node _temp_data_T_4 = asFixedPoint(_temp_data_T_3, 5) @[Modules.scala 120:53]
    _temp_data_WIRE.re <= _temp_data_T_4 @[Modules.scala 120:53]
    wire _temp_data_WIRE_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 120:53]
    node _temp_data_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 120:53]
    wire _temp_data_WIRE_3 : UInt<20>
    _temp_data_WIRE_3 <= _temp_data_T_5
    node _temp_data_T_6 = bits(_temp_data_WIRE_3, 9, 0) @[Modules.scala 120:53]
    node _temp_data_T_7 = asFixedPoint(_temp_data_T_6, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_2.im <= _temp_data_T_7 @[Modules.scala 120:53]
    node _temp_data_T_8 = bits(_temp_data_WIRE_3, 19, 10) @[Modules.scala 120:53]
    node _temp_data_T_9 = asFixedPoint(_temp_data_T_8, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_2.re <= _temp_data_T_9 @[Modules.scala 120:53]
    wire _temp_data_WIRE_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 120:53]
    node _temp_data_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 120:53]
    wire _temp_data_WIRE_5 : UInt<20>
    _temp_data_WIRE_5 <= _temp_data_T_10
    node _temp_data_T_11 = bits(_temp_data_WIRE_5, 9, 0) @[Modules.scala 120:53]
    node _temp_data_T_12 = asFixedPoint(_temp_data_T_11, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_4.im <= _temp_data_T_12 @[Modules.scala 120:53]
    node _temp_data_T_13 = bits(_temp_data_WIRE_5, 19, 10) @[Modules.scala 120:53]
    node _temp_data_T_14 = asFixedPoint(_temp_data_T_13, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_4.re <= _temp_data_T_14 @[Modules.scala 120:53]
    wire _temp_data_WIRE_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 120:53]
    node _temp_data_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 120:53]
    wire _temp_data_WIRE_7 : UInt<20>
    _temp_data_WIRE_7 <= _temp_data_T_15
    node _temp_data_T_16 = bits(_temp_data_WIRE_7, 9, 0) @[Modules.scala 120:53]
    node _temp_data_T_17 = asFixedPoint(_temp_data_T_16, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_6.im <= _temp_data_T_17 @[Modules.scala 120:53]
    node _temp_data_T_18 = bits(_temp_data_WIRE_7, 19, 10) @[Modules.scala 120:53]
    node _temp_data_T_19 = asFixedPoint(_temp_data_T_18, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_6.re <= _temp_data_T_19 @[Modules.scala 120:53]
    wire _temp_data_WIRE_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 120:53]
    node _temp_data_T_20 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 120:53]
    wire _temp_data_WIRE_9 : UInt<20>
    _temp_data_WIRE_9 <= _temp_data_T_20
    node _temp_data_T_21 = bits(_temp_data_WIRE_9, 9, 0) @[Modules.scala 120:53]
    node _temp_data_T_22 = asFixedPoint(_temp_data_T_21, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_8.im <= _temp_data_T_22 @[Modules.scala 120:53]
    node _temp_data_T_23 = bits(_temp_data_WIRE_9, 19, 10) @[Modules.scala 120:53]
    node _temp_data_T_24 = asFixedPoint(_temp_data_T_23, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_8.re <= _temp_data_T_24 @[Modules.scala 120:53]
    wire _temp_data_WIRE_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 120:53]
    node _temp_data_T_25 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 120:53]
    wire _temp_data_WIRE_11 : UInt<20>
    _temp_data_WIRE_11 <= _temp_data_T_25
    node _temp_data_T_26 = bits(_temp_data_WIRE_11, 9, 0) @[Modules.scala 120:53]
    node _temp_data_T_27 = asFixedPoint(_temp_data_T_26, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_10.im <= _temp_data_T_27 @[Modules.scala 120:53]
    node _temp_data_T_28 = bits(_temp_data_WIRE_11, 19, 10) @[Modules.scala 120:53]
    node _temp_data_T_29 = asFixedPoint(_temp_data_T_28, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_10.re <= _temp_data_T_29 @[Modules.scala 120:53]
    wire _temp_data_WIRE_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 120:53]
    node _temp_data_T_30 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 120:53]
    wire _temp_data_WIRE_13 : UInt<20>
    _temp_data_WIRE_13 <= _temp_data_T_30
    node _temp_data_T_31 = bits(_temp_data_WIRE_13, 9, 0) @[Modules.scala 120:53]
    node _temp_data_T_32 = asFixedPoint(_temp_data_T_31, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_12.im <= _temp_data_T_32 @[Modules.scala 120:53]
    node _temp_data_T_33 = bits(_temp_data_WIRE_13, 19, 10) @[Modules.scala 120:53]
    node _temp_data_T_34 = asFixedPoint(_temp_data_T_33, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_12.re <= _temp_data_T_34 @[Modules.scala 120:53]
    wire _temp_data_WIRE_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 120:53]
    node _temp_data_T_35 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 120:53]
    wire _temp_data_WIRE_15 : UInt<20>
    _temp_data_WIRE_15 <= _temp_data_T_35
    node _temp_data_T_36 = bits(_temp_data_WIRE_15, 9, 0) @[Modules.scala 120:53]
    node _temp_data_T_37 = asFixedPoint(_temp_data_T_36, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_14.im <= _temp_data_T_37 @[Modules.scala 120:53]
    node _temp_data_T_38 = bits(_temp_data_WIRE_15, 19, 10) @[Modules.scala 120:53]
    node _temp_data_T_39 = asFixedPoint(_temp_data_T_38, 5) @[Modules.scala 120:53]
    _temp_data_WIRE_14.re <= _temp_data_T_39 @[Modules.scala 120:53]
    wire temp_data : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 120:28]
    temp_data[0] <= _temp_data_WIRE @[Modules.scala 120:28]
    temp_data[1] <= _temp_data_WIRE_2 @[Modules.scala 120:28]
    temp_data[2] <= _temp_data_WIRE_4 @[Modules.scala 120:28]
    temp_data[3] <= _temp_data_WIRE_6 @[Modules.scala 120:28]
    temp_data[4] <= _temp_data_WIRE_8 @[Modules.scala 120:28]
    temp_data[5] <= _temp_data_WIRE_10 @[Modules.scala 120:28]
    temp_data[6] <= _temp_data_WIRE_12 @[Modules.scala 120:28]
    temp_data[7] <= _temp_data_WIRE_14 @[Modules.scala 120:28]
    inst temp_data_0_inst of ComplexAdd_12 @[Modules.scala 41:22]
    temp_data_0_inst.clock <= clock
    temp_data_0_inst.reset <= reset
    temp_data_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 42:17]
    temp_data_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 42:17]
    temp_data_0_inst.io.op2.im <= io.in[4].im @[Modules.scala 43:17]
    temp_data_0_inst.io.op2.re <= io.in[4].re @[Modules.scala 43:17]
    temp_data[0] <= temp_data_0_inst.io.res @[Modules.scala 121:39]
    inst temp_data_1_inst of ComplexAdd_13 @[Modules.scala 41:22]
    temp_data_1_inst.clock <= clock
    temp_data_1_inst.reset <= reset
    temp_data_1_inst.io.op1.im <= io.in[1].im @[Modules.scala 42:17]
    temp_data_1_inst.io.op1.re <= io.in[1].re @[Modules.scala 42:17]
    temp_data_1_inst.io.op2.im <= io.in[5].im @[Modules.scala 43:17]
    temp_data_1_inst.io.op2.re <= io.in[5].re @[Modules.scala 43:17]
    temp_data[1] <= temp_data_1_inst.io.res @[Modules.scala 121:39]
    inst temp_data_2_inst of ComplexAdd_14 @[Modules.scala 41:22]
    temp_data_2_inst.clock <= clock
    temp_data_2_inst.reset <= reset
    temp_data_2_inst.io.op1.im <= io.in[2].im @[Modules.scala 42:17]
    temp_data_2_inst.io.op1.re <= io.in[2].re @[Modules.scala 42:17]
    temp_data_2_inst.io.op2.im <= io.in[6].im @[Modules.scala 43:17]
    temp_data_2_inst.io.op2.re <= io.in[6].re @[Modules.scala 43:17]
    temp_data[2] <= temp_data_2_inst.io.res @[Modules.scala 121:39]
    inst temp_data_3_inst of ComplexAdd_15 @[Modules.scala 41:22]
    temp_data_3_inst.clock <= clock
    temp_data_3_inst.reset <= reset
    temp_data_3_inst.io.op1.im <= io.in[3].im @[Modules.scala 42:17]
    temp_data_3_inst.io.op1.re <= io.in[3].re @[Modules.scala 42:17]
    temp_data_3_inst.io.op2.im <= io.in[7].im @[Modules.scala 43:17]
    temp_data_3_inst.io.op2.re <= io.in[7].re @[Modules.scala 43:17]
    temp_data[3] <= temp_data_3_inst.io.res @[Modules.scala 121:39]
    inst temp_data_4_inst of ComplexSub_12 @[Modules.scala 57:22]
    temp_data_4_inst.clock <= clock
    temp_data_4_inst.reset <= reset
    temp_data_4_inst.io.op1.im <= io.in[0].im @[Modules.scala 58:17]
    temp_data_4_inst.io.op1.re <= io.in[0].re @[Modules.scala 58:17]
    temp_data_4_inst.io.op2.im <= io.in[4].im @[Modules.scala 59:17]
    temp_data_4_inst.io.op2.re <= io.in[4].re @[Modules.scala 59:17]
    temp_data[4] <= temp_data_4_inst.io.res @[Modules.scala 122:43]
    inst temp_data_5_inst of ComplexSub_13 @[Modules.scala 57:22]
    temp_data_5_inst.clock <= clock
    temp_data_5_inst.reset <= reset
    temp_data_5_inst.io.op1.im <= io.in[1].im @[Modules.scala 58:17]
    temp_data_5_inst.io.op1.re <= io.in[1].re @[Modules.scala 58:17]
    temp_data_5_inst.io.op2.im <= io.in[5].im @[Modules.scala 59:17]
    temp_data_5_inst.io.op2.re <= io.in[5].re @[Modules.scala 59:17]
    temp_data[5] <= temp_data_5_inst.io.res @[Modules.scala 122:43]
    inst temp_data_6_inst of ComplexSub_14 @[Modules.scala 57:22]
    temp_data_6_inst.clock <= clock
    temp_data_6_inst.reset <= reset
    temp_data_6_inst.io.op1.im <= io.in[2].im @[Modules.scala 58:17]
    temp_data_6_inst.io.op1.re <= io.in[2].re @[Modules.scala 58:17]
    temp_data_6_inst.io.op2.im <= io.in[6].im @[Modules.scala 59:17]
    temp_data_6_inst.io.op2.re <= io.in[6].re @[Modules.scala 59:17]
    temp_data[6] <= temp_data_6_inst.io.res @[Modules.scala 122:43]
    inst temp_data_7_inst of ComplexSub_15 @[Modules.scala 57:22]
    temp_data_7_inst.clock <= clock
    temp_data_7_inst.reset <= reset
    temp_data_7_inst.io.op1.im <= io.in[3].im @[Modules.scala 58:17]
    temp_data_7_inst.io.op1.re <= io.in[3].re @[Modules.scala 58:17]
    temp_data_7_inst.io.op2.im <= io.in[7].im @[Modules.scala 59:17]
    temp_data_7_inst.io.op2.re <= io.in[7].re @[Modules.scala 59:17]
    temp_data[7] <= temp_data_7_inst.io.res @[Modules.scala 122:43]
    inst A02_inst of ComplexAdd_16 @[Modules.scala 41:22]
    A02_inst.clock <= clock
    A02_inst.reset <= reset
    A02_inst.io.op1.im <= temp_data[0].im @[Modules.scala 42:17]
    A02_inst.io.op1.re <= temp_data[0].re @[Modules.scala 42:17]
    A02_inst.io.op2.im <= temp_data[2].im @[Modules.scala 43:17]
    A02_inst.io.op2.re <= temp_data[2].re @[Modules.scala 43:17]
    inst S02_inst of ComplexSub_16 @[Modules.scala 57:22]
    S02_inst.clock <= clock
    S02_inst.reset <= reset
    S02_inst.io.op1.im <= temp_data[0].im @[Modules.scala 58:17]
    S02_inst.io.op1.re <= temp_data[0].re @[Modules.scala 58:17]
    S02_inst.io.op2.im <= temp_data[2].im @[Modules.scala 59:17]
    S02_inst.io.op2.re <= temp_data[2].re @[Modules.scala 59:17]
    inst A13_inst of ComplexAdd_17 @[Modules.scala 41:22]
    A13_inst.clock <= clock
    A13_inst.reset <= reset
    A13_inst.io.op1.im <= temp_data[1].im @[Modules.scala 42:17]
    A13_inst.io.op1.re <= temp_data[1].re @[Modules.scala 42:17]
    A13_inst.io.op2.im <= temp_data[3].im @[Modules.scala 43:17]
    A13_inst.io.op2.re <= temp_data[3].re @[Modules.scala 43:17]
    inst S13_inst of ComplexSub_17 @[Modules.scala 57:22]
    S13_inst.clock <= clock
    S13_inst.reset <= reset
    S13_inst.io.op1.im <= temp_data[1].im @[Modules.scala 58:17]
    S13_inst.io.op1.re <= temp_data[1].re @[Modules.scala 58:17]
    S13_inst.io.op2.im <= temp_data[3].im @[Modules.scala 59:17]
    S13_inst.io.op2.re <= temp_data[3].re @[Modules.scala 59:17]
    inst A46_inst of ComplexTran_8 @[Modules.scala 75:22]
    A46_inst.clock <= clock
    A46_inst.reset <= reset
    A46_inst.io.in.im <= temp_data[6].im @[Modules.scala 76:16]
    A46_inst.io.in.re <= temp_data[6].re @[Modules.scala 76:16]
    inst A46_inst_1 of ComplexAdd_18 @[Modules.scala 41:22]
    A46_inst_1.clock <= clock
    A46_inst_1.reset <= reset
    A46_inst_1.io.op1.im <= temp_data[4].im @[Modules.scala 42:17]
    A46_inst_1.io.op1.re <= temp_data[4].re @[Modules.scala 42:17]
    A46_inst_1.io.op2.im <= A46_inst.io.out.im @[Modules.scala 43:17]
    A46_inst_1.io.op2.re <= A46_inst.io.out.re @[Modules.scala 43:17]
    inst S46_inst of ComplexTran_9 @[Modules.scala 75:22]
    S46_inst.clock <= clock
    S46_inst.reset <= reset
    S46_inst.io.in.im <= temp_data[6].im @[Modules.scala 76:16]
    S46_inst.io.in.re <= temp_data[6].re @[Modules.scala 76:16]
    inst S46_inst_1 of ComplexSub_18 @[Modules.scala 57:22]
    S46_inst_1.clock <= clock
    S46_inst_1.reset <= reset
    S46_inst_1.io.op1.im <= temp_data[4].im @[Modules.scala 58:17]
    S46_inst_1.io.op1.re <= temp_data[4].re @[Modules.scala 58:17]
    S46_inst_1.io.op2.im <= S46_inst.io.out.im @[Modules.scala 59:17]
    S46_inst_1.io.op2.re <= S46_inst.io.out.re @[Modules.scala 59:17]
    inst A57_inst of ComplexTran_10 @[Modules.scala 75:22]
    A57_inst.clock <= clock
    A57_inst.reset <= reset
    A57_inst.io.in.im <= temp_data[7].im @[Modules.scala 76:16]
    A57_inst.io.in.re <= temp_data[7].re @[Modules.scala 76:16]
    inst A57_inst_1 of ComplexAdd_19 @[Modules.scala 41:22]
    A57_inst_1.clock <= clock
    A57_inst_1.reset <= reset
    A57_inst_1.io.op1.im <= temp_data[5].im @[Modules.scala 42:17]
    A57_inst_1.io.op1.re <= temp_data[5].re @[Modules.scala 42:17]
    A57_inst_1.io.op2.im <= A57_inst.io.out.im @[Modules.scala 43:17]
    A57_inst_1.io.op2.re <= A57_inst.io.out.re @[Modules.scala 43:17]
    inst S57_inst of ComplexTran_11 @[Modules.scala 75:22]
    S57_inst.clock <= clock
    S57_inst.reset <= reset
    S57_inst.io.in.im <= temp_data[7].im @[Modules.scala 76:16]
    S57_inst.io.in.re <= temp_data[7].re @[Modules.scala 76:16]
    inst S57_inst_1 of ComplexSub_19 @[Modules.scala 57:22]
    S57_inst_1.clock <= clock
    S57_inst_1.reset <= reset
    S57_inst_1.io.op1.im <= temp_data[5].im @[Modules.scala 58:17]
    S57_inst_1.io.op1.re <= temp_data[5].re @[Modules.scala 58:17]
    S57_inst_1.io.op2.im <= S57_inst.io.out.im @[Modules.scala 59:17]
    S57_inst_1.io.op2.re <= S57_inst.io.out.re @[Modules.scala 59:17]
    inst io_out_0_inst of ComplexAdd_20 @[Modules.scala 41:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= A02_inst.io.res.im @[Modules.scala 42:17]
    io_out_0_inst.io.op1.re <= A02_inst.io.res.re @[Modules.scala 42:17]
    io_out_0_inst.io.op2.im <= A13_inst.io.res.im @[Modules.scala 43:17]
    io_out_0_inst.io.op2.re <= A13_inst.io.res.re @[Modules.scala 43:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 131:15]
    inst io_out_1_inst of ComplexSub_20 @[Modules.scala 57:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= A02_inst.io.res.im @[Modules.scala 58:17]
    io_out_1_inst.io.op1.re <= A02_inst.io.res.re @[Modules.scala 58:17]
    io_out_1_inst.io.op2.im <= A13_inst.io.res.im @[Modules.scala 59:17]
    io_out_1_inst.io.op2.re <= A13_inst.io.res.re @[Modules.scala 59:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 132:15]
    inst io_out_2_inst of ComplexTran_12 @[Modules.scala 75:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.in.im <= S13_inst.io.res.im @[Modules.scala 76:16]
    io_out_2_inst.io.in.re <= S13_inst.io.res.re @[Modules.scala 76:16]
    inst io_out_2_inst_1 of ComplexAdd_21 @[Modules.scala 41:22]
    io_out_2_inst_1.clock <= clock
    io_out_2_inst_1.reset <= reset
    io_out_2_inst_1.io.op1.im <= S02_inst.io.res.im @[Modules.scala 42:17]
    io_out_2_inst_1.io.op1.re <= S02_inst.io.res.re @[Modules.scala 42:17]
    io_out_2_inst_1.io.op2.im <= io_out_2_inst.io.out.im @[Modules.scala 43:17]
    io_out_2_inst_1.io.op2.re <= io_out_2_inst.io.out.re @[Modules.scala 43:17]
    io.out[2] <= io_out_2_inst_1.io.res @[Modules.scala 133:15]
    inst io_out_3_inst of ComplexTran_13 @[Modules.scala 75:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.in.im <= S13_inst.io.res.im @[Modules.scala 76:16]
    io_out_3_inst.io.in.re <= S13_inst.io.res.re @[Modules.scala 76:16]
    inst io_out_3_inst_1 of ComplexSub_21 @[Modules.scala 57:22]
    io_out_3_inst_1.clock <= clock
    io_out_3_inst_1.reset <= reset
    io_out_3_inst_1.io.op1.im <= S02_inst.io.res.im @[Modules.scala 58:17]
    io_out_3_inst_1.io.op1.re <= S02_inst.io.res.re @[Modules.scala 58:17]
    io_out_3_inst_1.io.op2.im <= io_out_3_inst.io.out.im @[Modules.scala 59:17]
    io_out_3_inst_1.io.op2.re <= io_out_3_inst.io.out.re @[Modules.scala 59:17]
    io.out[3] <= io_out_3_inst_1.io.res @[Modules.scala 134:15]
    inst io_out_4_inst of ComplexMul_11 @[Modules.scala 97:22]
    io_out_4_inst.clock <= clock
    io_out_4_inst.reset <= reset
    io_out_4_inst.io.op1.im <= A57_inst_1.io.res.im @[Modules.scala 98:17]
    io_out_4_inst.io.op1.re <= A57_inst_1.io.res.re @[Modules.scala 98:17]
    io_out_4_inst.io.op2.im <= mul1.im @[Modules.scala 99:17]
    io_out_4_inst.io.op2.re <= mul1.re @[Modules.scala 99:17]
    inst io_out_4_inst_1 of ComplexAdd_22 @[Modules.scala 41:22]
    io_out_4_inst_1.clock <= clock
    io_out_4_inst_1.reset <= reset
    io_out_4_inst_1.io.op1.im <= A46_inst_1.io.res.im @[Modules.scala 42:17]
    io_out_4_inst_1.io.op1.re <= A46_inst_1.io.res.re @[Modules.scala 42:17]
    io_out_4_inst_1.io.op2.im <= io_out_4_inst.io.res.im @[Modules.scala 43:17]
    io_out_4_inst_1.io.op2.re <= io_out_4_inst.io.res.re @[Modules.scala 43:17]
    io.out[4] <= io_out_4_inst_1.io.res @[Modules.scala 135:15]
    inst io_out_5_inst of ComplexMul_12 @[Modules.scala 97:22]
    io_out_5_inst.clock <= clock
    io_out_5_inst.reset <= reset
    io_out_5_inst.io.op1.im <= A57_inst_1.io.res.im @[Modules.scala 98:17]
    io_out_5_inst.io.op1.re <= A57_inst_1.io.res.re @[Modules.scala 98:17]
    io_out_5_inst.io.op2.im <= mul1.im @[Modules.scala 99:17]
    io_out_5_inst.io.op2.re <= mul1.re @[Modules.scala 99:17]
    inst io_out_5_inst_1 of ComplexSub_22 @[Modules.scala 57:22]
    io_out_5_inst_1.clock <= clock
    io_out_5_inst_1.reset <= reset
    io_out_5_inst_1.io.op1.im <= A46_inst_1.io.res.im @[Modules.scala 58:17]
    io_out_5_inst_1.io.op1.re <= A46_inst_1.io.res.re @[Modules.scala 58:17]
    io_out_5_inst_1.io.op2.im <= io_out_5_inst.io.res.im @[Modules.scala 59:17]
    io_out_5_inst_1.io.op2.re <= io_out_5_inst.io.res.re @[Modules.scala 59:17]
    io.out[5] <= io_out_5_inst_1.io.res @[Modules.scala 136:15]
    inst io_out_6_inst of ComplexMul_13 @[Modules.scala 97:22]
    io_out_6_inst.clock <= clock
    io_out_6_inst.reset <= reset
    io_out_6_inst.io.op1.im <= S57_inst_1.io.res.im @[Modules.scala 98:17]
    io_out_6_inst.io.op1.re <= S57_inst_1.io.res.re @[Modules.scala 98:17]
    io_out_6_inst.io.op2.im <= mul1.im @[Modules.scala 99:17]
    io_out_6_inst.io.op2.re <= mul1.re @[Modules.scala 99:17]
    inst io_out_6_inst_1 of ComplexTran_14 @[Modules.scala 75:22]
    io_out_6_inst_1.clock <= clock
    io_out_6_inst_1.reset <= reset
    io_out_6_inst_1.io.in.im <= io_out_6_inst.io.res.im @[Modules.scala 76:16]
    io_out_6_inst_1.io.in.re <= io_out_6_inst.io.res.re @[Modules.scala 76:16]
    inst io_out_6_inst_2 of ComplexAdd_23 @[Modules.scala 41:22]
    io_out_6_inst_2.clock <= clock
    io_out_6_inst_2.reset <= reset
    io_out_6_inst_2.io.op1.im <= S46_inst_1.io.res.im @[Modules.scala 42:17]
    io_out_6_inst_2.io.op1.re <= S46_inst_1.io.res.re @[Modules.scala 42:17]
    io_out_6_inst_2.io.op2.im <= io_out_6_inst_1.io.out.im @[Modules.scala 43:17]
    io_out_6_inst_2.io.op2.re <= io_out_6_inst_1.io.out.re @[Modules.scala 43:17]
    io.out[6] <= io_out_6_inst_2.io.res @[Modules.scala 137:15]
    inst io_out_7_inst of ComplexMul_14 @[Modules.scala 97:22]
    io_out_7_inst.clock <= clock
    io_out_7_inst.reset <= reset
    io_out_7_inst.io.op1.im <= S57_inst_1.io.res.im @[Modules.scala 98:17]
    io_out_7_inst.io.op1.re <= S57_inst_1.io.res.re @[Modules.scala 98:17]
    io_out_7_inst.io.op2.im <= mul1.im @[Modules.scala 99:17]
    io_out_7_inst.io.op2.re <= mul1.re @[Modules.scala 99:17]
    inst io_out_7_inst_1 of ComplexTran_15 @[Modules.scala 75:22]
    io_out_7_inst_1.clock <= clock
    io_out_7_inst_1.reset <= reset
    io_out_7_inst_1.io.in.im <= io_out_7_inst.io.res.im @[Modules.scala 76:16]
    io_out_7_inst_1.io.in.re <= io_out_7_inst.io.res.re @[Modules.scala 76:16]
    inst io_out_7_inst_2 of ComplexSub_23 @[Modules.scala 57:22]
    io_out_7_inst_2.clock <= clock
    io_out_7_inst_2.reset <= reset
    io_out_7_inst_2.io.op1.im <= S46_inst_1.io.res.im @[Modules.scala 58:17]
    io_out_7_inst_2.io.op1.re <= S46_inst_1.io.res.re @[Modules.scala 58:17]
    io_out_7_inst_2.io.op2.im <= io_out_7_inst_1.io.out.im @[Modules.scala 59:17]
    io_out_7_inst_2.io.op2.re <= io_out_7_inst_1.io.out.re @[Modules.scala 59:17]
    io.out[7] <= io_out_7_inst_2.io.res @[Modules.scala 138:15]

  module Switch :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], out : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], flip sel : UInt<3>}

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
    wire _swdata_WIRE_8 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_20 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_9 : UInt<20>
    _swdata_WIRE_9 <= _swdata_T_20
    node _swdata_T_21 = bits(_swdata_WIRE_9, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_22 = asFixedPoint(_swdata_T_21, 5) @[Modules.scala 227:71]
    _swdata_WIRE_8.im <= _swdata_T_22 @[Modules.scala 227:71]
    node _swdata_T_23 = bits(_swdata_WIRE_9, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_24 = asFixedPoint(_swdata_T_23, 5) @[Modules.scala 227:71]
    _swdata_WIRE_8.re <= _swdata_T_24 @[Modules.scala 227:71]
    wire _swdata_WIRE_10 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_25 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_11 : UInt<20>
    _swdata_WIRE_11 <= _swdata_T_25
    node _swdata_T_26 = bits(_swdata_WIRE_11, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_27 = asFixedPoint(_swdata_T_26, 5) @[Modules.scala 227:71]
    _swdata_WIRE_10.im <= _swdata_T_27 @[Modules.scala 227:71]
    node _swdata_T_28 = bits(_swdata_WIRE_11, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_29 = asFixedPoint(_swdata_T_28, 5) @[Modules.scala 227:71]
    _swdata_WIRE_10.re <= _swdata_T_29 @[Modules.scala 227:71]
    wire _swdata_WIRE_12 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_30 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_13 : UInt<20>
    _swdata_WIRE_13 <= _swdata_T_30
    node _swdata_T_31 = bits(_swdata_WIRE_13, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_32 = asFixedPoint(_swdata_T_31, 5) @[Modules.scala 227:71]
    _swdata_WIRE_12.im <= _swdata_T_32 @[Modules.scala 227:71]
    node _swdata_T_33 = bits(_swdata_WIRE_13, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_34 = asFixedPoint(_swdata_T_33, 5) @[Modules.scala 227:71]
    _swdata_WIRE_12.re <= _swdata_T_34 @[Modules.scala 227:71]
    wire _swdata_WIRE_14 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[Modules.scala 227:71]
    node _swdata_T_35 = asUInt(asSInt(UInt<20>("h0"))) @[Modules.scala 227:71]
    wire _swdata_WIRE_15 : UInt<20>
    _swdata_WIRE_15 <= _swdata_T_35
    node _swdata_T_36 = bits(_swdata_WIRE_15, 9, 0) @[Modules.scala 227:71]
    node _swdata_T_37 = asFixedPoint(_swdata_T_36, 5) @[Modules.scala 227:71]
    _swdata_WIRE_14.im <= _swdata_T_37 @[Modules.scala 227:71]
    node _swdata_T_38 = bits(_swdata_WIRE_15, 19, 10) @[Modules.scala 227:71]
    node _swdata_T_39 = asFixedPoint(_swdata_T_38, 5) @[Modules.scala 227:71]
    _swdata_WIRE_14.re <= _swdata_T_39 @[Modules.scala 227:71]
    wire swdata : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 227:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 227:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 227:23]
    swdata[2] <= _swdata_WIRE_4 @[Modules.scala 227:23]
    swdata[3] <= _swdata_WIRE_6 @[Modules.scala 227:23]
    swdata[4] <= _swdata_WIRE_8 @[Modules.scala 227:23]
    swdata[5] <= _swdata_WIRE_10 @[Modules.scala 227:23]
    swdata[6] <= _swdata_WIRE_12 @[Modules.scala 227:23]
    swdata[7] <= _swdata_WIRE_14 @[Modules.scala 227:23]
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
    reg swdata_4_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_4_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_4_r <= io.in[4] @[Reg.scala 20:22]
    reg swdata_4_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_4_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_4_r_1 <= swdata_4_r @[Reg.scala 20:22]
    reg swdata_4_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_4_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_4_r_2 <= swdata_4_r_1 @[Reg.scala 20:22]
    reg swdata_4_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_4_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_4_r_3 <= swdata_4_r_2 @[Reg.scala 20:22]
    swdata[4] <= swdata_4_r_3 @[Modules.scala 228:38]
    reg swdata_5_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r <= io.in[5] @[Reg.scala 20:22]
    reg swdata_5_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r_1 <= swdata_5_r @[Reg.scala 20:22]
    reg swdata_5_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r_2 <= swdata_5_r_1 @[Reg.scala 20:22]
    reg swdata_5_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r_3 <= swdata_5_r_2 @[Reg.scala 20:22]
    reg swdata_5_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r_4 <= swdata_5_r_3 @[Reg.scala 20:22]
    swdata[5] <= swdata_5_r_4 @[Modules.scala 228:38]
    reg swdata_6_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r <= io.in[6] @[Reg.scala 20:22]
    reg swdata_6_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_1 <= swdata_6_r @[Reg.scala 20:22]
    reg swdata_6_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_2 <= swdata_6_r_1 @[Reg.scala 20:22]
    reg swdata_6_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_3 <= swdata_6_r_2 @[Reg.scala 20:22]
    reg swdata_6_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_4 <= swdata_6_r_3 @[Reg.scala 20:22]
    reg swdata_6_r_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_5 <= swdata_6_r_4 @[Reg.scala 20:22]
    swdata[6] <= swdata_6_r_5 @[Modules.scala 228:38]
    reg swdata_7_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r <= io.in[7] @[Reg.scala 20:22]
    reg swdata_7_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_1 <= swdata_7_r @[Reg.scala 20:22]
    reg swdata_7_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_2 <= swdata_7_r_1 @[Reg.scala 20:22]
    reg swdata_7_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_3 <= swdata_7_r_2 @[Reg.scala 20:22]
    reg swdata_7_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_4 <= swdata_7_r_3 @[Reg.scala 20:22]
    reg swdata_7_r_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_5 <= swdata_7_r_4 @[Reg.scala 20:22]
    reg swdata_7_r_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_6) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_6 <= swdata_7_r_5 @[Reg.scala 20:22]
    swdata[7] <= swdata_7_r_6 @[Modules.scala 228:38]
    wire _io_out_0_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 225:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 225:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 225:12]
    _io_out_0_WIRE[2] <= swdata[2] @[Modules.scala 225:12]
    _io_out_0_WIRE[3] <= swdata[3] @[Modules.scala 225:12]
    _io_out_0_WIRE[4] <= swdata[4] @[Modules.scala 225:12]
    _io_out_0_WIRE[5] <= swdata[5] @[Modules.scala 225:12]
    _io_out_0_WIRE[6] <= swdata[6] @[Modules.scala 225:12]
    _io_out_0_WIRE[7] <= swdata[7] @[Modules.scala 225:12]
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
    io.out[0] <= io_out_0_r_6 @[Modules.scala 229:38]
    wire _io_out_1_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 225:12]
    _io_out_1_WIRE[0] <= swdata[7] @[Modules.scala 225:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 225:12]
    _io_out_1_WIRE[2] <= swdata[1] @[Modules.scala 225:12]
    _io_out_1_WIRE[3] <= swdata[2] @[Modules.scala 225:12]
    _io_out_1_WIRE[4] <= swdata[3] @[Modules.scala 225:12]
    _io_out_1_WIRE[5] <= swdata[4] @[Modules.scala 225:12]
    _io_out_1_WIRE[6] <= swdata[5] @[Modules.scala 225:12]
    _io_out_1_WIRE[7] <= swdata[6] @[Modules.scala 225:12]
    reg io_out_1_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r <= _io_out_1_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_1_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_1 <= io_out_1_r @[Reg.scala 20:22]
    reg io_out_1_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_2 <= io_out_1_r_1 @[Reg.scala 20:22]
    reg io_out_1_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_3 <= io_out_1_r_2 @[Reg.scala 20:22]
    reg io_out_1_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_4 <= io_out_1_r_3 @[Reg.scala 20:22]
    reg io_out_1_r_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_5 <= io_out_1_r_4 @[Reg.scala 20:22]
    io.out[1] <= io_out_1_r_5 @[Modules.scala 229:38]
    wire _io_out_2_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 225:12]
    _io_out_2_WIRE[0] <= swdata[6] @[Modules.scala 225:12]
    _io_out_2_WIRE[1] <= swdata[7] @[Modules.scala 225:12]
    _io_out_2_WIRE[2] <= swdata[0] @[Modules.scala 225:12]
    _io_out_2_WIRE[3] <= swdata[1] @[Modules.scala 225:12]
    _io_out_2_WIRE[4] <= swdata[2] @[Modules.scala 225:12]
    _io_out_2_WIRE[5] <= swdata[3] @[Modules.scala 225:12]
    _io_out_2_WIRE[6] <= swdata[4] @[Modules.scala 225:12]
    _io_out_2_WIRE[7] <= swdata[5] @[Modules.scala 225:12]
    reg io_out_2_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r <= _io_out_2_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_2_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r_1 <= io_out_2_r @[Reg.scala 20:22]
    reg io_out_2_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r_2 <= io_out_2_r_1 @[Reg.scala 20:22]
    reg io_out_2_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r_3 <= io_out_2_r_2 @[Reg.scala 20:22]
    reg io_out_2_r_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r_4 <= io_out_2_r_3 @[Reg.scala 20:22]
    io.out[2] <= io_out_2_r_4 @[Modules.scala 229:38]
    wire _io_out_3_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 225:12]
    _io_out_3_WIRE[0] <= swdata[5] @[Modules.scala 225:12]
    _io_out_3_WIRE[1] <= swdata[6] @[Modules.scala 225:12]
    _io_out_3_WIRE[2] <= swdata[7] @[Modules.scala 225:12]
    _io_out_3_WIRE[3] <= swdata[0] @[Modules.scala 225:12]
    _io_out_3_WIRE[4] <= swdata[1] @[Modules.scala 225:12]
    _io_out_3_WIRE[5] <= swdata[2] @[Modules.scala 225:12]
    _io_out_3_WIRE[6] <= swdata[3] @[Modules.scala 225:12]
    _io_out_3_WIRE[7] <= swdata[4] @[Modules.scala 225:12]
    reg io_out_3_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_3_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_3_r <= _io_out_3_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_3_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_3_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_3_r_1 <= io_out_3_r @[Reg.scala 20:22]
    reg io_out_3_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_3_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_3_r_2 <= io_out_3_r_1 @[Reg.scala 20:22]
    reg io_out_3_r_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_3_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_3_r_3 <= io_out_3_r_2 @[Reg.scala 20:22]
    io.out[3] <= io_out_3_r_3 @[Modules.scala 229:38]
    wire _io_out_4_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 225:12]
    _io_out_4_WIRE[0] <= swdata[4] @[Modules.scala 225:12]
    _io_out_4_WIRE[1] <= swdata[5] @[Modules.scala 225:12]
    _io_out_4_WIRE[2] <= swdata[6] @[Modules.scala 225:12]
    _io_out_4_WIRE[3] <= swdata[7] @[Modules.scala 225:12]
    _io_out_4_WIRE[4] <= swdata[0] @[Modules.scala 225:12]
    _io_out_4_WIRE[5] <= swdata[1] @[Modules.scala 225:12]
    _io_out_4_WIRE[6] <= swdata[2] @[Modules.scala 225:12]
    _io_out_4_WIRE[7] <= swdata[3] @[Modules.scala 225:12]
    reg io_out_4_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_4_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_4_r <= _io_out_4_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_4_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_4_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_4_r_1 <= io_out_4_r @[Reg.scala 20:22]
    reg io_out_4_r_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_4_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_4_r_2 <= io_out_4_r_1 @[Reg.scala 20:22]
    io.out[4] <= io_out_4_r_2 @[Modules.scala 229:38]
    wire _io_out_5_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 225:12]
    _io_out_5_WIRE[0] <= swdata[3] @[Modules.scala 225:12]
    _io_out_5_WIRE[1] <= swdata[4] @[Modules.scala 225:12]
    _io_out_5_WIRE[2] <= swdata[5] @[Modules.scala 225:12]
    _io_out_5_WIRE[3] <= swdata[6] @[Modules.scala 225:12]
    _io_out_5_WIRE[4] <= swdata[7] @[Modules.scala 225:12]
    _io_out_5_WIRE[5] <= swdata[0] @[Modules.scala 225:12]
    _io_out_5_WIRE[6] <= swdata[1] @[Modules.scala 225:12]
    _io_out_5_WIRE[7] <= swdata[2] @[Modules.scala 225:12]
    reg io_out_5_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_5_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_5_r <= _io_out_5_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_5_r_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_5_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_5_r_1 <= io_out_5_r @[Reg.scala 20:22]
    io.out[5] <= io_out_5_r_1 @[Modules.scala 229:38]
    wire _io_out_6_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 225:12]
    _io_out_6_WIRE[0] <= swdata[2] @[Modules.scala 225:12]
    _io_out_6_WIRE[1] <= swdata[3] @[Modules.scala 225:12]
    _io_out_6_WIRE[2] <= swdata[4] @[Modules.scala 225:12]
    _io_out_6_WIRE[3] <= swdata[5] @[Modules.scala 225:12]
    _io_out_6_WIRE[4] <= swdata[6] @[Modules.scala 225:12]
    _io_out_6_WIRE[5] <= swdata[7] @[Modules.scala 225:12]
    _io_out_6_WIRE[6] <= swdata[0] @[Modules.scala 225:12]
    _io_out_6_WIRE[7] <= swdata[1] @[Modules.scala 225:12]
    reg io_out_6_r : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}, clock with :
      reset => (UInt<1>("h0"), io_out_6_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_6_r <= _io_out_6_WIRE[io.sel] @[Reg.scala 20:22]
    io.out[6] <= io_out_6_r @[Modules.scala 229:38]
    wire _io_out_7_WIRE : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[Modules.scala 225:12]
    _io_out_7_WIRE[0] <= swdata[1] @[Modules.scala 225:12]
    _io_out_7_WIRE[1] <= swdata[2] @[Modules.scala 225:12]
    _io_out_7_WIRE[2] <= swdata[3] @[Modules.scala 225:12]
    _io_out_7_WIRE[3] <= swdata[4] @[Modules.scala 225:12]
    _io_out_7_WIRE[4] <= swdata[5] @[Modules.scala 225:12]
    _io_out_7_WIRE[5] <= swdata[6] @[Modules.scala 225:12]
    _io_out_7_WIRE[6] <= swdata[7] @[Modules.scala 225:12]
    _io_out_7_WIRE[7] <= swdata[0] @[Modules.scala 225:12]
    io.out[7] <= _io_out_7_WIRE[io.sel] @[Modules.scala 229:38]

  module FFT :
    input clock : Clock
    input reset : Reset
    output io : { flip dIn : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], dOut : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

    reg cnt_0 : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[FFT.scala 39:46]
    node busy = neq(cnt_0, UInt<1>("h0")) @[FFT.scala 43:21]
    node _T = or(io.din_valid, busy) @[FFT.scala 44:21]
    when _T : @[FFT.scala 44:30]
      node _cnt_0_T = eq(cnt_0, UInt<4>("hf")) @[FFT.scala 45:26]
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
    wire unitDataIn_0_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[FFT.scala 51:70]
    unitDataIn_0_0[0] <= _unitDataIn_WIRE @[FFT.scala 51:70]
    unitDataIn_0_0[1] <= _unitDataIn_WIRE_2 @[FFT.scala 51:70]
    unitDataIn_0_0[2] <= _unitDataIn_WIRE_4 @[FFT.scala 51:70]
    unitDataIn_0_0[3] <= _unitDataIn_WIRE_6 @[FFT.scala 51:70]
    unitDataIn_0_0[4] <= _unitDataIn_WIRE_8 @[FFT.scala 51:70]
    unitDataIn_0_0[5] <= _unitDataIn_WIRE_10 @[FFT.scala 51:70]
    unitDataIn_0_0[6] <= _unitDataIn_WIRE_12 @[FFT.scala 51:70]
    unitDataIn_0_0[7] <= _unitDataIn_WIRE_14 @[FFT.scala 51:70]
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
    wire unitDataIn_1_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[FFT.scala 51:70]
    unitDataIn_1_0[0] <= _unitDataIn_WIRE_16 @[FFT.scala 51:70]
    unitDataIn_1_0[1] <= _unitDataIn_WIRE_18 @[FFT.scala 51:70]
    unitDataIn_1_0[2] <= _unitDataIn_WIRE_20 @[FFT.scala 51:70]
    unitDataIn_1_0[3] <= _unitDataIn_WIRE_22 @[FFT.scala 51:70]
    unitDataIn_1_0[4] <= _unitDataIn_WIRE_24 @[FFT.scala 51:70]
    unitDataIn_1_0[5] <= _unitDataIn_WIRE_26 @[FFT.scala 51:70]
    unitDataIn_1_0[6] <= _unitDataIn_WIRE_28 @[FFT.scala 51:70]
    unitDataIn_1_0[7] <= _unitDataIn_WIRE_30 @[FFT.scala 51:70]
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
    wire unitDataOut_0_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8] @[FFT.scala 52:75]
    unitDataOut_0_0[0] <= _unitDataOut_WIRE @[FFT.scala 52:75]
    unitDataOut_0_0[1] <= _unitDataOut_WIRE_2 @[FFT.scala 52:75]
    unitDataOut_0_0[2] <= _unitDataOut_WIRE_4 @[FFT.scala 52:75]
    unitDataOut_0_0[3] <= _unitDataOut_WIRE_6 @[FFT.scala 52:75]
    unitDataOut_0_0[4] <= _unitDataOut_WIRE_8 @[FFT.scala 52:75]
    unitDataOut_0_0[5] <= _unitDataOut_WIRE_10 @[FFT.scala 52:75]
    unitDataOut_0_0[6] <= _unitDataOut_WIRE_12 @[FFT.scala 52:75]
    unitDataOut_0_0[7] <= _unitDataOut_WIRE_14 @[FFT.scala 52:75]
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
    node wnCtrl = bits(cnt_0, 2, 0) @[FFT.scala 60:23]
    node _wnList_T = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_1 = tail(_wnList_T, 1) @[FFT.scala 64:83]
    wire wnList_0 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[1] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[2] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[3] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[4] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[5] <= asFixedPoint(UInt<10>("h1c"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[6] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE[7] <= asFixedPoint(UInt<10>("h19"), 5) @[FFT.scala 28:12]
    wnList_0.re <= _wnList_res_re_WIRE[_wnList_T_1] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[1] <= asFixedPoint(UInt<10>("h3fd"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[2] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[3] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[5] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[6] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE[7] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    wnList_0.im <= _wnList_res_im_WIRE[_wnList_T_1] @[FFT.scala 33:12]
    node _wnList_T_2 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_3 = tail(_wnList_T_2, 1) @[FFT.scala 64:83]
    wire wnList_1 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_1 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[2] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[3] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[4] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[5] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_1[7] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    wnList_1.re <= _wnList_res_re_WIRE_1[_wnList_T_3] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_1 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[1] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[2] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[3] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[5] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_1[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    wnList_1.im <= _wnList_res_im_WIRE_1[_wnList_T_3] @[FFT.scala 33:12]
    node _wnList_T_4 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_5 = tail(_wnList_T_4, 1) @[FFT.scala 64:83]
    wire wnList_2 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_2 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[1] <= asFixedPoint(UInt<10>("h1f"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[2] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[3] <= asFixedPoint(UInt<10>("h14"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[4] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[5] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[6] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_2[7] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    wnList_2.re <= _wnList_res_re_WIRE_2[_wnList_T_5] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_2 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[1] <= asFixedPoint(UInt<10>("h3f7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[2] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[3] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[4] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[5] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[6] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_2[7] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    wnList_2.im <= _wnList_res_im_WIRE_2[_wnList_T_5] @[FFT.scala 33:12]
    node _wnList_T_6 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_7 = tail(_wnList_T_6, 1) @[FFT.scala 64:83]
    wire wnList_3 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_3 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[1] <= asFixedPoint(UInt<10>("h1e"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[2] <= asFixedPoint(UInt<10>("h17"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[3] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[4] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[5] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_3[7] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    wnList_3.re <= _wnList_res_re_WIRE_3[_wnList_T_7] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_3 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[1] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[2] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[3] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[4] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[5] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[6] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_3[7] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    wnList_3.im <= _wnList_res_im_WIRE_3[_wnList_T_7] @[FFT.scala 33:12]
    node _wnList_T_8 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_9 = tail(_wnList_T_8, 1) @[FFT.scala 64:83]
    wire wnList_4 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_4 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[1] <= asFixedPoint(UInt<10>("h1c"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[2] <= asFixedPoint(UInt<10>("h12"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[3] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[5] <= asFixedPoint(UInt<10>("h3e7"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[6] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_4[7] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    wnList_4.re <= _wnList_res_re_WIRE_4[_wnList_T_9] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_4 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[1] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[2] <= asFixedPoint(UInt<10>("h3e5"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[3] <= asFixedPoint(UInt<10>("h3e0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[4] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[5] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[6] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_4[7] <= asFixedPoint(UInt<10>("h9"), 5) @[FFT.scala 24:12]
    wnList_4.im <= _wnList_res_im_WIRE_4[_wnList_T_9] @[FFT.scala 33:12]
    node _wnList_T_10 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_11 = tail(_wnList_T_10, 1) @[FFT.scala 64:83]
    wire wnList_5 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_5 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[1] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[2] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[3] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[5] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[6] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_5[7] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    wnList_5.re <= _wnList_res_re_WIRE_5[_wnList_T_11] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_5 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[1] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[2] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[3] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[4] <= asFixedPoint(UInt<10>("h3e9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[5] <= asFixedPoint(UInt<10>("h3fa"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[6] <= asFixedPoint(UInt<10>("hc"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_5[7] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 24:12]
    wnList_5.im <= _wnList_res_im_WIRE_5[_wnList_T_11] @[FFT.scala 33:12]
    node _wnList_T_12 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 64:83]
    node _wnList_T_13 = tail(_wnList_T_12, 1) @[FFT.scala 64:83]
    wire wnList_6 : { re : Fixed<10><<5>>, im : Fixed<10><<5>>} @[FFT.scala 31:19]
    wire _wnList_res_re_WIRE_6 : Fixed<10><<5>>[8] @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[0] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[1] <= asFixedPoint(UInt<10>("h19"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[2] <= asFixedPoint(UInt<10>("h6"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[3] <= asFixedPoint(UInt<10>("h3f1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[4] <= asFixedPoint(UInt<10>("h3e2"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[5] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[6] <= asFixedPoint(UInt<10>("h3ee"), 5) @[FFT.scala 28:12]
    _wnList_res_re_WIRE_6[7] <= asFixedPoint(UInt<10>("h3"), 5) @[FFT.scala 28:12]
    wnList_6.re <= _wnList_res_re_WIRE_6[_wnList_T_13] @[FFT.scala 32:12]
    wire _wnList_res_im_WIRE_6 : Fixed<10><<5>>[8] @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[0] <= asFixedPoint(UInt<10>("h0"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[1] <= asFixedPoint(UInt<10>("h3ec"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[2] <= asFixedPoint(UInt<10>("h3e1"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[3] <= asFixedPoint(UInt<10>("h3e4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[4] <= asFixedPoint(UInt<10>("h3f4"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[5] <= asFixedPoint(UInt<10>("h9"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[6] <= asFixedPoint(UInt<10>("h1b"), 5) @[FFT.scala 24:12]
    _wnList_res_im_WIRE_6[7] <= asFixedPoint(UInt<10>("h20"), 5) @[FFT.scala 24:12]
    wnList_6.im <= _wnList_res_im_WIRE_6[_wnList_T_13] @[FFT.scala 33:12]
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
    inst.io.in[4].im <= unitDataIn_0_0[4].im @[Modules.scala 211:16]
    inst.io.in[4].re <= unitDataIn_0_0[4].re @[Modules.scala 211:16]
    inst.io.in[5].im <= unitDataIn_0_0[5].im @[Modules.scala 211:16]
    inst.io.in[5].re <= unitDataIn_0_0[5].re @[Modules.scala 211:16]
    inst.io.in[6].im <= unitDataIn_0_0[6].im @[Modules.scala 211:16]
    inst.io.in[6].re <= unitDataIn_0_0[6].re @[Modules.scala 211:16]
    inst.io.in[7].im <= unitDataIn_0_0[7].im @[Modules.scala 211:16]
    inst.io.in[7].re <= unitDataIn_0_0[7].re @[Modules.scala 211:16]
    inst.io.wn[0].im <= wnList_0.im @[Modules.scala 212:16]
    inst.io.wn[0].re <= wnList_0.re @[Modules.scala 212:16]
    inst.io.wn[1].im <= wnList_1.im @[Modules.scala 212:16]
    inst.io.wn[1].re <= wnList_1.re @[Modules.scala 212:16]
    inst.io.wn[2].im <= wnList_2.im @[Modules.scala 212:16]
    inst.io.wn[2].re <= wnList_2.re @[Modules.scala 212:16]
    inst.io.wn[3].im <= wnList_3.im @[Modules.scala 212:16]
    inst.io.wn[3].re <= wnList_3.re @[Modules.scala 212:16]
    inst.io.wn[4].im <= wnList_4.im @[Modules.scala 212:16]
    inst.io.wn[4].re <= wnList_4.re @[Modules.scala 212:16]
    inst.io.wn[5].im <= wnList_5.im @[Modules.scala 212:16]
    inst.io.wn[5].re <= wnList_5.re @[Modules.scala 212:16]
    inst.io.wn[6].im <= wnList_6.im @[Modules.scala 212:16]
    inst.io.wn[6].re <= wnList_6.re @[Modules.scala 212:16]
    unitDataOut_0_0 <= inst.io.out @[FFT.scala 65:25]
    inst dataotemp_inst of ButterflyAdd @[Modules.scala 144:22]
    dataotemp_inst.clock <= clock
    dataotemp_inst.reset <= reset
    dataotemp_inst.io.in[0].im <= unitDataIn_1_0[0].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[0].re <= unitDataIn_1_0[0].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[1].im <= unitDataIn_1_0[1].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[1].re <= unitDataIn_1_0[1].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[2].im <= unitDataIn_1_0[2].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[2].re <= unitDataIn_1_0[2].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[3].im <= unitDataIn_1_0[3].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[3].re <= unitDataIn_1_0[3].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[4].im <= unitDataIn_1_0[4].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[4].re <= unitDataIn_1_0[4].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[5].im <= unitDataIn_1_0[5].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[5].re <= unitDataIn_1_0[5].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[6].im <= unitDataIn_1_0[6].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[6].re <= unitDataIn_1_0[6].re @[Modules.scala 145:16]
    dataotemp_inst.io.in[7].im <= unitDataIn_1_0[7].im @[Modules.scala 145:16]
    dataotemp_inst.io.in[7].re <= unitDataIn_1_0[7].re @[Modules.scala 145:16]
    datao[0] <= dataotemp_inst.io.out[0] @[FFT.scala 70:9]
    datao[1] <= dataotemp_inst.io.out[1] @[FFT.scala 70:9]
    datao[2] <= dataotemp_inst.io.out[2] @[FFT.scala 70:9]
    datao[3] <= dataotemp_inst.io.out[3] @[FFT.scala 70:9]
    datao[4] <= dataotemp_inst.io.out[4] @[FFT.scala 70:9]
    datao[5] <= dataotemp_inst.io.out[5] @[FFT.scala 70:9]
    datao[6] <= dataotemp_inst.io.out[6] @[FFT.scala 70:9]
    datao[7] <= dataotemp_inst.io.out[7] @[FFT.scala 70:9]
    node sel = bits(cnt_0, 2, 0) @[FFT.scala 93:31]
    inst inst_1 of Switch @[Modules.scala 234:22]
    inst_1.clock <= clock
    inst_1.reset <= reset
    inst_1.io.in[0].im <= unitDataOut_0_0[0].im @[Modules.scala 235:16]
    inst_1.io.in[0].re <= unitDataOut_0_0[0].re @[Modules.scala 235:16]
    inst_1.io.in[1].im <= unitDataOut_0_0[1].im @[Modules.scala 235:16]
    inst_1.io.in[1].re <= unitDataOut_0_0[1].re @[Modules.scala 235:16]
    inst_1.io.in[2].im <= unitDataOut_0_0[2].im @[Modules.scala 235:16]
    inst_1.io.in[2].re <= unitDataOut_0_0[2].re @[Modules.scala 235:16]
    inst_1.io.in[3].im <= unitDataOut_0_0[3].im @[Modules.scala 235:16]
    inst_1.io.in[3].re <= unitDataOut_0_0[3].re @[Modules.scala 235:16]
    inst_1.io.in[4].im <= unitDataOut_0_0[4].im @[Modules.scala 235:16]
    inst_1.io.in[4].re <= unitDataOut_0_0[4].re @[Modules.scala 235:16]
    inst_1.io.in[5].im <= unitDataOut_0_0[5].im @[Modules.scala 235:16]
    inst_1.io.in[5].re <= unitDataOut_0_0[5].re @[Modules.scala 235:16]
    inst_1.io.in[6].im <= unitDataOut_0_0[6].im @[Modules.scala 235:16]
    inst_1.io.in[6].re <= unitDataOut_0_0[6].re @[Modules.scala 235:16]
    inst_1.io.in[7].im <= unitDataOut_0_0[7].im @[Modules.scala 235:16]
    inst_1.io.in[7].re <= unitDataOut_0_0[7].re @[Modules.scala 235:16]
    inst_1.io.sel <= sel @[Modules.scala 236:17]
    unitDataIn_1_0 <= inst_1.io.out @[FFT.scala 94:59]
    unitDataIn_0_0[0] <= io.dIn[0] @[FFT.scala 99:22]
    unitDataIn_0_0[1] <= io.dIn[1] @[FFT.scala 99:22]
    unitDataIn_0_0[2] <= io.dIn[2] @[FFT.scala 99:22]
    unitDataIn_0_0[3] <= io.dIn[3] @[FFT.scala 99:22]
    unitDataIn_0_0[4] <= io.dIn[4] @[FFT.scala 99:22]
    unitDataIn_0_0[5] <= io.dIn[5] @[FFT.scala 99:22]
    unitDataIn_0_0[6] <= io.dIn[6] @[FFT.scala 99:22]
    unitDataIn_0_0[7] <= io.dIn[7] @[FFT.scala 99:22]
    io.busy <= busy @[FFT.scala 102:11]
    reg io_dout_valid_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_dout_valid_REG) @[FFT.scala 103:27]
    io_dout_valid_REG <= cnt_0 @[FFT.scala 103:27]
    node _io_dout_valid_T = eq(io_dout_valid_REG, UInt<3>("h7")) @[FFT.scala 103:36]
    io.dout_valid <= _io_dout_valid_T @[FFT.scala 103:17]
    reg REG : { re : Fixed<10><<5>>, im : Fixed<10><<5>>}[8], clock with :
      reset => (UInt<1>("h0"), REG) @[FFT.scala 104:21]
    REG <= datao @[FFT.scala 104:21]
    io.dOut <= REG @[FFT.scala 104:11]

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

