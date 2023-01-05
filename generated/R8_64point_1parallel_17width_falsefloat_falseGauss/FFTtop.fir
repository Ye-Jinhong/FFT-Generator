circuit FFTtop :
  module ComplexAdd :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexAdd_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexAdd_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexAdd_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexSub :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexSub_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexSub_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexSub_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexAdd_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexSub_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexAdd_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexSub_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexTran :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexAdd_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexTran_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexSub_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexTran_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexAdd_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexTran_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexSub_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexAdd_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexSub_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexTran_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexAdd_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexTran_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexSub_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexMul :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexAdd_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexMul_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexSub_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexMul_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexTran_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexAdd_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexMul_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexTran_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexSub_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexMul_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexMul_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexMul_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexMul_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexMul_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexMul_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexMul_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ButterflyMul :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], flip wn : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[7]}

    wire _temp_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 224:50]
    node _temp_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 224:50]
    wire _temp_WIRE_1 : UInt<34> @[Modules.scala 224:50]
    _temp_WIRE_1 <= _temp_T @[Modules.scala 224:50]
    node _temp_T_1 = bits(_temp_WIRE_1, 16, 0) @[Modules.scala 224:50]
    node _temp_T_2 = asFixedPoint(_temp_T_1, 12) @[Modules.scala 224:50]
    _temp_WIRE.im <= _temp_T_2 @[Modules.scala 224:50]
    node _temp_T_3 = bits(_temp_WIRE_1, 33, 17) @[Modules.scala 224:50]
    node _temp_T_4 = asFixedPoint(_temp_T_3, 12) @[Modules.scala 224:50]
    _temp_WIRE.re <= _temp_T_4 @[Modules.scala 224:50]
    wire _temp_WIRE_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 224:50]
    node _temp_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 224:50]
    wire _temp_WIRE_3 : UInt<34> @[Modules.scala 224:50]
    _temp_WIRE_3 <= _temp_T_5 @[Modules.scala 224:50]
    node _temp_T_6 = bits(_temp_WIRE_3, 16, 0) @[Modules.scala 224:50]
    node _temp_T_7 = asFixedPoint(_temp_T_6, 12) @[Modules.scala 224:50]
    _temp_WIRE_2.im <= _temp_T_7 @[Modules.scala 224:50]
    node _temp_T_8 = bits(_temp_WIRE_3, 33, 17) @[Modules.scala 224:50]
    node _temp_T_9 = asFixedPoint(_temp_T_8, 12) @[Modules.scala 224:50]
    _temp_WIRE_2.re <= _temp_T_9 @[Modules.scala 224:50]
    wire _temp_WIRE_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 224:50]
    node _temp_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 224:50]
    wire _temp_WIRE_5 : UInt<34> @[Modules.scala 224:50]
    _temp_WIRE_5 <= _temp_T_10 @[Modules.scala 224:50]
    node _temp_T_11 = bits(_temp_WIRE_5, 16, 0) @[Modules.scala 224:50]
    node _temp_T_12 = asFixedPoint(_temp_T_11, 12) @[Modules.scala 224:50]
    _temp_WIRE_4.im <= _temp_T_12 @[Modules.scala 224:50]
    node _temp_T_13 = bits(_temp_WIRE_5, 33, 17) @[Modules.scala 224:50]
    node _temp_T_14 = asFixedPoint(_temp_T_13, 12) @[Modules.scala 224:50]
    _temp_WIRE_4.re <= _temp_T_14 @[Modules.scala 224:50]
    wire _temp_WIRE_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 224:50]
    node _temp_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 224:50]
    wire _temp_WIRE_7 : UInt<34> @[Modules.scala 224:50]
    _temp_WIRE_7 <= _temp_T_15 @[Modules.scala 224:50]
    node _temp_T_16 = bits(_temp_WIRE_7, 16, 0) @[Modules.scala 224:50]
    node _temp_T_17 = asFixedPoint(_temp_T_16, 12) @[Modules.scala 224:50]
    _temp_WIRE_6.im <= _temp_T_17 @[Modules.scala 224:50]
    node _temp_T_18 = bits(_temp_WIRE_7, 33, 17) @[Modules.scala 224:50]
    node _temp_T_19 = asFixedPoint(_temp_T_18, 12) @[Modules.scala 224:50]
    _temp_WIRE_6.re <= _temp_T_19 @[Modules.scala 224:50]
    wire _temp_WIRE_8 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 224:50]
    node _temp_T_20 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 224:50]
    wire _temp_WIRE_9 : UInt<34> @[Modules.scala 224:50]
    _temp_WIRE_9 <= _temp_T_20 @[Modules.scala 224:50]
    node _temp_T_21 = bits(_temp_WIRE_9, 16, 0) @[Modules.scala 224:50]
    node _temp_T_22 = asFixedPoint(_temp_T_21, 12) @[Modules.scala 224:50]
    _temp_WIRE_8.im <= _temp_T_22 @[Modules.scala 224:50]
    node _temp_T_23 = bits(_temp_WIRE_9, 33, 17) @[Modules.scala 224:50]
    node _temp_T_24 = asFixedPoint(_temp_T_23, 12) @[Modules.scala 224:50]
    _temp_WIRE_8.re <= _temp_T_24 @[Modules.scala 224:50]
    wire _temp_WIRE_10 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 224:50]
    node _temp_T_25 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 224:50]
    wire _temp_WIRE_11 : UInt<34> @[Modules.scala 224:50]
    _temp_WIRE_11 <= _temp_T_25 @[Modules.scala 224:50]
    node _temp_T_26 = bits(_temp_WIRE_11, 16, 0) @[Modules.scala 224:50]
    node _temp_T_27 = asFixedPoint(_temp_T_26, 12) @[Modules.scala 224:50]
    _temp_WIRE_10.im <= _temp_T_27 @[Modules.scala 224:50]
    node _temp_T_28 = bits(_temp_WIRE_11, 33, 17) @[Modules.scala 224:50]
    node _temp_T_29 = asFixedPoint(_temp_T_28, 12) @[Modules.scala 224:50]
    _temp_WIRE_10.re <= _temp_T_29 @[Modules.scala 224:50]
    wire _temp_WIRE_12 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 224:50]
    node _temp_T_30 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 224:50]
    wire _temp_WIRE_13 : UInt<34> @[Modules.scala 224:50]
    _temp_WIRE_13 <= _temp_T_30 @[Modules.scala 224:50]
    node _temp_T_31 = bits(_temp_WIRE_13, 16, 0) @[Modules.scala 224:50]
    node _temp_T_32 = asFixedPoint(_temp_T_31, 12) @[Modules.scala 224:50]
    _temp_WIRE_12.im <= _temp_T_32 @[Modules.scala 224:50]
    node _temp_T_33 = bits(_temp_WIRE_13, 33, 17) @[Modules.scala 224:50]
    node _temp_T_34 = asFixedPoint(_temp_T_33, 12) @[Modules.scala 224:50]
    _temp_WIRE_12.re <= _temp_T_34 @[Modules.scala 224:50]
    wire _temp_WIRE_14 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 224:50]
    node _temp_T_35 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 224:50]
    wire _temp_WIRE_15 : UInt<34> @[Modules.scala 224:50]
    _temp_WIRE_15 <= _temp_T_35 @[Modules.scala 224:50]
    node _temp_T_36 = bits(_temp_WIRE_15, 16, 0) @[Modules.scala 224:50]
    node _temp_T_37 = asFixedPoint(_temp_T_36, 12) @[Modules.scala 224:50]
    _temp_WIRE_14.im <= _temp_T_37 @[Modules.scala 224:50]
    node _temp_T_38 = bits(_temp_WIRE_15, 33, 17) @[Modules.scala 224:50]
    node _temp_T_39 = asFixedPoint(_temp_T_38, 12) @[Modules.scala 224:50]
    _temp_WIRE_14.re <= _temp_T_39 @[Modules.scala 224:50]
    wire temp : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 224:21]
    temp[0] <= _temp_WIRE @[Modules.scala 224:21]
    temp[1] <= _temp_WIRE_2 @[Modules.scala 224:21]
    temp[2] <= _temp_WIRE_4 @[Modules.scala 224:21]
    temp[3] <= _temp_WIRE_6 @[Modules.scala 224:21]
    temp[4] <= _temp_WIRE_8 @[Modules.scala 224:21]
    temp[5] <= _temp_WIRE_10 @[Modules.scala 224:21]
    temp[6] <= _temp_WIRE_12 @[Modules.scala 224:21]
    temp[7] <= _temp_WIRE_14 @[Modules.scala 224:21]
    node mul1_lo = asUInt(asFixedPoint(UInt<17>("h1f4b0"), 12)) @[Cat.scala 33:92]
    node mul1_hi = asUInt(asFixedPoint(UInt<17>("hb50"), 12)) @[Cat.scala 33:92]
    node _mul1_T = cat(mul1_hi, mul1_lo) @[Cat.scala 33:92]
    wire mul1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 244:41]
    wire _mul1_WIRE : UInt<34> @[Modules.scala 244:41]
    _mul1_WIRE <= _mul1_T @[Modules.scala 244:41]
    node _mul1_T_1 = bits(_mul1_WIRE, 16, 0) @[Modules.scala 244:41]
    node _mul1_T_2 = asFixedPoint(_mul1_T_1, 12) @[Modules.scala 244:41]
    mul1.im <= _mul1_T_2 @[Modules.scala 244:41]
    node _mul1_T_3 = bits(_mul1_WIRE, 33, 17) @[Modules.scala 244:41]
    node _mul1_T_4 = asFixedPoint(_mul1_T_3, 12) @[Modules.scala 244:41]
    mul1.re <= _mul1_T_4 @[Modules.scala 244:41]
    wire _temp_data_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 245:53]
    node _temp_data_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 245:53]
    wire _temp_data_WIRE_1 : UInt<34> @[Modules.scala 245:53]
    _temp_data_WIRE_1 <= _temp_data_T @[Modules.scala 245:53]
    node _temp_data_T_1 = bits(_temp_data_WIRE_1, 16, 0) @[Modules.scala 245:53]
    node _temp_data_T_2 = asFixedPoint(_temp_data_T_1, 12) @[Modules.scala 245:53]
    _temp_data_WIRE.im <= _temp_data_T_2 @[Modules.scala 245:53]
    node _temp_data_T_3 = bits(_temp_data_WIRE_1, 33, 17) @[Modules.scala 245:53]
    node _temp_data_T_4 = asFixedPoint(_temp_data_T_3, 12) @[Modules.scala 245:53]
    _temp_data_WIRE.re <= _temp_data_T_4 @[Modules.scala 245:53]
    wire _temp_data_WIRE_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 245:53]
    node _temp_data_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 245:53]
    wire _temp_data_WIRE_3 : UInt<34> @[Modules.scala 245:53]
    _temp_data_WIRE_3 <= _temp_data_T_5 @[Modules.scala 245:53]
    node _temp_data_T_6 = bits(_temp_data_WIRE_3, 16, 0) @[Modules.scala 245:53]
    node _temp_data_T_7 = asFixedPoint(_temp_data_T_6, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_2.im <= _temp_data_T_7 @[Modules.scala 245:53]
    node _temp_data_T_8 = bits(_temp_data_WIRE_3, 33, 17) @[Modules.scala 245:53]
    node _temp_data_T_9 = asFixedPoint(_temp_data_T_8, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_2.re <= _temp_data_T_9 @[Modules.scala 245:53]
    wire _temp_data_WIRE_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 245:53]
    node _temp_data_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 245:53]
    wire _temp_data_WIRE_5 : UInt<34> @[Modules.scala 245:53]
    _temp_data_WIRE_5 <= _temp_data_T_10 @[Modules.scala 245:53]
    node _temp_data_T_11 = bits(_temp_data_WIRE_5, 16, 0) @[Modules.scala 245:53]
    node _temp_data_T_12 = asFixedPoint(_temp_data_T_11, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_4.im <= _temp_data_T_12 @[Modules.scala 245:53]
    node _temp_data_T_13 = bits(_temp_data_WIRE_5, 33, 17) @[Modules.scala 245:53]
    node _temp_data_T_14 = asFixedPoint(_temp_data_T_13, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_4.re <= _temp_data_T_14 @[Modules.scala 245:53]
    wire _temp_data_WIRE_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 245:53]
    node _temp_data_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 245:53]
    wire _temp_data_WIRE_7 : UInt<34> @[Modules.scala 245:53]
    _temp_data_WIRE_7 <= _temp_data_T_15 @[Modules.scala 245:53]
    node _temp_data_T_16 = bits(_temp_data_WIRE_7, 16, 0) @[Modules.scala 245:53]
    node _temp_data_T_17 = asFixedPoint(_temp_data_T_16, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_6.im <= _temp_data_T_17 @[Modules.scala 245:53]
    node _temp_data_T_18 = bits(_temp_data_WIRE_7, 33, 17) @[Modules.scala 245:53]
    node _temp_data_T_19 = asFixedPoint(_temp_data_T_18, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_6.re <= _temp_data_T_19 @[Modules.scala 245:53]
    wire _temp_data_WIRE_8 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 245:53]
    node _temp_data_T_20 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 245:53]
    wire _temp_data_WIRE_9 : UInt<34> @[Modules.scala 245:53]
    _temp_data_WIRE_9 <= _temp_data_T_20 @[Modules.scala 245:53]
    node _temp_data_T_21 = bits(_temp_data_WIRE_9, 16, 0) @[Modules.scala 245:53]
    node _temp_data_T_22 = asFixedPoint(_temp_data_T_21, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_8.im <= _temp_data_T_22 @[Modules.scala 245:53]
    node _temp_data_T_23 = bits(_temp_data_WIRE_9, 33, 17) @[Modules.scala 245:53]
    node _temp_data_T_24 = asFixedPoint(_temp_data_T_23, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_8.re <= _temp_data_T_24 @[Modules.scala 245:53]
    wire _temp_data_WIRE_10 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 245:53]
    node _temp_data_T_25 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 245:53]
    wire _temp_data_WIRE_11 : UInt<34> @[Modules.scala 245:53]
    _temp_data_WIRE_11 <= _temp_data_T_25 @[Modules.scala 245:53]
    node _temp_data_T_26 = bits(_temp_data_WIRE_11, 16, 0) @[Modules.scala 245:53]
    node _temp_data_T_27 = asFixedPoint(_temp_data_T_26, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_10.im <= _temp_data_T_27 @[Modules.scala 245:53]
    node _temp_data_T_28 = bits(_temp_data_WIRE_11, 33, 17) @[Modules.scala 245:53]
    node _temp_data_T_29 = asFixedPoint(_temp_data_T_28, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_10.re <= _temp_data_T_29 @[Modules.scala 245:53]
    wire _temp_data_WIRE_12 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 245:53]
    node _temp_data_T_30 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 245:53]
    wire _temp_data_WIRE_13 : UInt<34> @[Modules.scala 245:53]
    _temp_data_WIRE_13 <= _temp_data_T_30 @[Modules.scala 245:53]
    node _temp_data_T_31 = bits(_temp_data_WIRE_13, 16, 0) @[Modules.scala 245:53]
    node _temp_data_T_32 = asFixedPoint(_temp_data_T_31, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_12.im <= _temp_data_T_32 @[Modules.scala 245:53]
    node _temp_data_T_33 = bits(_temp_data_WIRE_13, 33, 17) @[Modules.scala 245:53]
    node _temp_data_T_34 = asFixedPoint(_temp_data_T_33, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_12.re <= _temp_data_T_34 @[Modules.scala 245:53]
    wire _temp_data_WIRE_14 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 245:53]
    node _temp_data_T_35 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 245:53]
    wire _temp_data_WIRE_15 : UInt<34> @[Modules.scala 245:53]
    _temp_data_WIRE_15 <= _temp_data_T_35 @[Modules.scala 245:53]
    node _temp_data_T_36 = bits(_temp_data_WIRE_15, 16, 0) @[Modules.scala 245:53]
    node _temp_data_T_37 = asFixedPoint(_temp_data_T_36, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_14.im <= _temp_data_T_37 @[Modules.scala 245:53]
    node _temp_data_T_38 = bits(_temp_data_WIRE_15, 33, 17) @[Modules.scala 245:53]
    node _temp_data_T_39 = asFixedPoint(_temp_data_T_38, 12) @[Modules.scala 245:53]
    _temp_data_WIRE_14.re <= _temp_data_T_39 @[Modules.scala 245:53]
    wire temp_data : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 245:28]
    temp_data[0] <= _temp_data_WIRE @[Modules.scala 245:28]
    temp_data[1] <= _temp_data_WIRE_2 @[Modules.scala 245:28]
    temp_data[2] <= _temp_data_WIRE_4 @[Modules.scala 245:28]
    temp_data[3] <= _temp_data_WIRE_6 @[Modules.scala 245:28]
    temp_data[4] <= _temp_data_WIRE_8 @[Modules.scala 245:28]
    temp_data[5] <= _temp_data_WIRE_10 @[Modules.scala 245:28]
    temp_data[6] <= _temp_data_WIRE_12 @[Modules.scala 245:28]
    temp_data[7] <= _temp_data_WIRE_14 @[Modules.scala 245:28]
    inst temp_data_0_inst of ComplexAdd @[Modules.scala 81:22]
    temp_data_0_inst.clock <= clock
    temp_data_0_inst.reset <= reset
    temp_data_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 82:17]
    temp_data_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 82:17]
    temp_data_0_inst.io.op2.im <= io.in[4].im @[Modules.scala 83:17]
    temp_data_0_inst.io.op2.re <= io.in[4].re @[Modules.scala 83:17]
    temp_data[0] <= temp_data_0_inst.io.res @[Modules.scala 246:39]
    inst temp_data_1_inst of ComplexAdd_1 @[Modules.scala 81:22]
    temp_data_1_inst.clock <= clock
    temp_data_1_inst.reset <= reset
    temp_data_1_inst.io.op1.im <= io.in[1].im @[Modules.scala 82:17]
    temp_data_1_inst.io.op1.re <= io.in[1].re @[Modules.scala 82:17]
    temp_data_1_inst.io.op2.im <= io.in[5].im @[Modules.scala 83:17]
    temp_data_1_inst.io.op2.re <= io.in[5].re @[Modules.scala 83:17]
    temp_data[1] <= temp_data_1_inst.io.res @[Modules.scala 246:39]
    inst temp_data_2_inst of ComplexAdd_2 @[Modules.scala 81:22]
    temp_data_2_inst.clock <= clock
    temp_data_2_inst.reset <= reset
    temp_data_2_inst.io.op1.im <= io.in[2].im @[Modules.scala 82:17]
    temp_data_2_inst.io.op1.re <= io.in[2].re @[Modules.scala 82:17]
    temp_data_2_inst.io.op2.im <= io.in[6].im @[Modules.scala 83:17]
    temp_data_2_inst.io.op2.re <= io.in[6].re @[Modules.scala 83:17]
    temp_data[2] <= temp_data_2_inst.io.res @[Modules.scala 246:39]
    inst temp_data_3_inst of ComplexAdd_3 @[Modules.scala 81:22]
    temp_data_3_inst.clock <= clock
    temp_data_3_inst.reset <= reset
    temp_data_3_inst.io.op1.im <= io.in[3].im @[Modules.scala 82:17]
    temp_data_3_inst.io.op1.re <= io.in[3].re @[Modules.scala 82:17]
    temp_data_3_inst.io.op2.im <= io.in[7].im @[Modules.scala 83:17]
    temp_data_3_inst.io.op2.re <= io.in[7].re @[Modules.scala 83:17]
    temp_data[3] <= temp_data_3_inst.io.res @[Modules.scala 246:39]
    inst temp_data_4_inst of ComplexSub @[Modules.scala 100:22]
    temp_data_4_inst.clock <= clock
    temp_data_4_inst.reset <= reset
    temp_data_4_inst.io.op1.im <= io.in[0].im @[Modules.scala 101:17]
    temp_data_4_inst.io.op1.re <= io.in[0].re @[Modules.scala 101:17]
    temp_data_4_inst.io.op2.im <= io.in[4].im @[Modules.scala 102:17]
    temp_data_4_inst.io.op2.re <= io.in[4].re @[Modules.scala 102:17]
    temp_data[4] <= temp_data_4_inst.io.res @[Modules.scala 247:43]
    inst temp_data_5_inst of ComplexSub_1 @[Modules.scala 100:22]
    temp_data_5_inst.clock <= clock
    temp_data_5_inst.reset <= reset
    temp_data_5_inst.io.op1.im <= io.in[1].im @[Modules.scala 101:17]
    temp_data_5_inst.io.op1.re <= io.in[1].re @[Modules.scala 101:17]
    temp_data_5_inst.io.op2.im <= io.in[5].im @[Modules.scala 102:17]
    temp_data_5_inst.io.op2.re <= io.in[5].re @[Modules.scala 102:17]
    temp_data[5] <= temp_data_5_inst.io.res @[Modules.scala 247:43]
    inst temp_data_6_inst of ComplexSub_2 @[Modules.scala 100:22]
    temp_data_6_inst.clock <= clock
    temp_data_6_inst.reset <= reset
    temp_data_6_inst.io.op1.im <= io.in[2].im @[Modules.scala 101:17]
    temp_data_6_inst.io.op1.re <= io.in[2].re @[Modules.scala 101:17]
    temp_data_6_inst.io.op2.im <= io.in[6].im @[Modules.scala 102:17]
    temp_data_6_inst.io.op2.re <= io.in[6].re @[Modules.scala 102:17]
    temp_data[6] <= temp_data_6_inst.io.res @[Modules.scala 247:43]
    inst temp_data_7_inst of ComplexSub_3 @[Modules.scala 100:22]
    temp_data_7_inst.clock <= clock
    temp_data_7_inst.reset <= reset
    temp_data_7_inst.io.op1.im <= io.in[3].im @[Modules.scala 101:17]
    temp_data_7_inst.io.op1.re <= io.in[3].re @[Modules.scala 101:17]
    temp_data_7_inst.io.op2.im <= io.in[7].im @[Modules.scala 102:17]
    temp_data_7_inst.io.op2.re <= io.in[7].re @[Modules.scala 102:17]
    temp_data[7] <= temp_data_7_inst.io.res @[Modules.scala 247:43]
    inst A02_inst of ComplexAdd_4 @[Modules.scala 81:22]
    A02_inst.clock <= clock
    A02_inst.reset <= reset
    A02_inst.io.op1.im <= temp_data[0].im @[Modules.scala 82:17]
    A02_inst.io.op1.re <= temp_data[0].re @[Modules.scala 82:17]
    A02_inst.io.op2.im <= temp_data[2].im @[Modules.scala 83:17]
    A02_inst.io.op2.re <= temp_data[2].re @[Modules.scala 83:17]
    inst S02_inst of ComplexSub_4 @[Modules.scala 100:22]
    S02_inst.clock <= clock
    S02_inst.reset <= reset
    S02_inst.io.op1.im <= temp_data[0].im @[Modules.scala 101:17]
    S02_inst.io.op1.re <= temp_data[0].re @[Modules.scala 101:17]
    S02_inst.io.op2.im <= temp_data[2].im @[Modules.scala 102:17]
    S02_inst.io.op2.re <= temp_data[2].re @[Modules.scala 102:17]
    inst A13_inst of ComplexAdd_5 @[Modules.scala 81:22]
    A13_inst.clock <= clock
    A13_inst.reset <= reset
    A13_inst.io.op1.im <= temp_data[1].im @[Modules.scala 82:17]
    A13_inst.io.op1.re <= temp_data[1].re @[Modules.scala 82:17]
    A13_inst.io.op2.im <= temp_data[3].im @[Modules.scala 83:17]
    A13_inst.io.op2.re <= temp_data[3].re @[Modules.scala 83:17]
    inst S13_inst of ComplexSub_5 @[Modules.scala 100:22]
    S13_inst.clock <= clock
    S13_inst.reset <= reset
    S13_inst.io.op1.im <= temp_data[1].im @[Modules.scala 101:17]
    S13_inst.io.op1.re <= temp_data[1].re @[Modules.scala 101:17]
    S13_inst.io.op2.im <= temp_data[3].im @[Modules.scala 102:17]
    S13_inst.io.op2.re <= temp_data[3].re @[Modules.scala 102:17]
    inst A46_inst of ComplexTran @[Modules.scala 123:22]
    A46_inst.clock <= clock
    A46_inst.reset <= reset
    A46_inst.io.in.im <= temp_data[6].im @[Modules.scala 124:16]
    A46_inst.io.in.re <= temp_data[6].re @[Modules.scala 124:16]
    inst A46_inst_1 of ComplexAdd_6 @[Modules.scala 81:22]
    A46_inst_1.clock <= clock
    A46_inst_1.reset <= reset
    A46_inst_1.io.op1.im <= temp_data[4].im @[Modules.scala 82:17]
    A46_inst_1.io.op1.re <= temp_data[4].re @[Modules.scala 82:17]
    A46_inst_1.io.op2.im <= A46_inst.io.out.im @[Modules.scala 83:17]
    A46_inst_1.io.op2.re <= A46_inst.io.out.re @[Modules.scala 83:17]
    inst S46_inst of ComplexTran_1 @[Modules.scala 123:22]
    S46_inst.clock <= clock
    S46_inst.reset <= reset
    S46_inst.io.in.im <= temp_data[6].im @[Modules.scala 124:16]
    S46_inst.io.in.re <= temp_data[6].re @[Modules.scala 124:16]
    inst S46_inst_1 of ComplexSub_6 @[Modules.scala 100:22]
    S46_inst_1.clock <= clock
    S46_inst_1.reset <= reset
    S46_inst_1.io.op1.im <= temp_data[4].im @[Modules.scala 101:17]
    S46_inst_1.io.op1.re <= temp_data[4].re @[Modules.scala 101:17]
    S46_inst_1.io.op2.im <= S46_inst.io.out.im @[Modules.scala 102:17]
    S46_inst_1.io.op2.re <= S46_inst.io.out.re @[Modules.scala 102:17]
    inst A57_inst of ComplexTran_2 @[Modules.scala 123:22]
    A57_inst.clock <= clock
    A57_inst.reset <= reset
    A57_inst.io.in.im <= temp_data[7].im @[Modules.scala 124:16]
    A57_inst.io.in.re <= temp_data[7].re @[Modules.scala 124:16]
    inst A57_inst_1 of ComplexAdd_7 @[Modules.scala 81:22]
    A57_inst_1.clock <= clock
    A57_inst_1.reset <= reset
    A57_inst_1.io.op1.im <= temp_data[5].im @[Modules.scala 82:17]
    A57_inst_1.io.op1.re <= temp_data[5].re @[Modules.scala 82:17]
    A57_inst_1.io.op2.im <= A57_inst.io.out.im @[Modules.scala 83:17]
    A57_inst_1.io.op2.re <= A57_inst.io.out.re @[Modules.scala 83:17]
    inst S57_inst of ComplexTran_3 @[Modules.scala 123:22]
    S57_inst.clock <= clock
    S57_inst.reset <= reset
    S57_inst.io.in.im <= temp_data[7].im @[Modules.scala 124:16]
    S57_inst.io.in.re <= temp_data[7].re @[Modules.scala 124:16]
    inst S57_inst_1 of ComplexSub_7 @[Modules.scala 100:22]
    S57_inst_1.clock <= clock
    S57_inst_1.reset <= reset
    S57_inst_1.io.op1.im <= temp_data[5].im @[Modules.scala 101:17]
    S57_inst_1.io.op1.re <= temp_data[5].re @[Modules.scala 101:17]
    S57_inst_1.io.op2.im <= S57_inst.io.out.im @[Modules.scala 102:17]
    S57_inst_1.io.op2.re <= S57_inst.io.out.re @[Modules.scala 102:17]
    inst temp_0_inst of ComplexAdd_8 @[Modules.scala 81:22]
    temp_0_inst.clock <= clock
    temp_0_inst.reset <= reset
    temp_0_inst.io.op1.im <= A02_inst.io.res.im @[Modules.scala 82:17]
    temp_0_inst.io.op1.re <= A02_inst.io.res.re @[Modules.scala 82:17]
    temp_0_inst.io.op2.im <= A13_inst.io.res.im @[Modules.scala 83:17]
    temp_0_inst.io.op2.re <= A13_inst.io.res.re @[Modules.scala 83:17]
    temp[0] <= temp_0_inst.io.res @[Modules.scala 256:13]
    inst temp_1_inst of ComplexSub_8 @[Modules.scala 100:22]
    temp_1_inst.clock <= clock
    temp_1_inst.reset <= reset
    temp_1_inst.io.op1.im <= A02_inst.io.res.im @[Modules.scala 101:17]
    temp_1_inst.io.op1.re <= A02_inst.io.res.re @[Modules.scala 101:17]
    temp_1_inst.io.op2.im <= A13_inst.io.res.im @[Modules.scala 102:17]
    temp_1_inst.io.op2.re <= A13_inst.io.res.re @[Modules.scala 102:17]
    temp[1] <= temp_1_inst.io.res @[Modules.scala 257:13]
    inst temp_2_inst of ComplexTran_4 @[Modules.scala 123:22]
    temp_2_inst.clock <= clock
    temp_2_inst.reset <= reset
    temp_2_inst.io.in.im <= S13_inst.io.res.im @[Modules.scala 124:16]
    temp_2_inst.io.in.re <= S13_inst.io.res.re @[Modules.scala 124:16]
    inst temp_2_inst_1 of ComplexAdd_9 @[Modules.scala 81:22]
    temp_2_inst_1.clock <= clock
    temp_2_inst_1.reset <= reset
    temp_2_inst_1.io.op1.im <= S02_inst.io.res.im @[Modules.scala 82:17]
    temp_2_inst_1.io.op1.re <= S02_inst.io.res.re @[Modules.scala 82:17]
    temp_2_inst_1.io.op2.im <= temp_2_inst.io.out.im @[Modules.scala 83:17]
    temp_2_inst_1.io.op2.re <= temp_2_inst.io.out.re @[Modules.scala 83:17]
    temp[2] <= temp_2_inst_1.io.res @[Modules.scala 258:13]
    inst temp_3_inst of ComplexTran_5 @[Modules.scala 123:22]
    temp_3_inst.clock <= clock
    temp_3_inst.reset <= reset
    temp_3_inst.io.in.im <= S13_inst.io.res.im @[Modules.scala 124:16]
    temp_3_inst.io.in.re <= S13_inst.io.res.re @[Modules.scala 124:16]
    inst temp_3_inst_1 of ComplexSub_9 @[Modules.scala 100:22]
    temp_3_inst_1.clock <= clock
    temp_3_inst_1.reset <= reset
    temp_3_inst_1.io.op1.im <= S02_inst.io.res.im @[Modules.scala 101:17]
    temp_3_inst_1.io.op1.re <= S02_inst.io.res.re @[Modules.scala 101:17]
    temp_3_inst_1.io.op2.im <= temp_3_inst.io.out.im @[Modules.scala 102:17]
    temp_3_inst_1.io.op2.re <= temp_3_inst.io.out.re @[Modules.scala 102:17]
    temp[3] <= temp_3_inst_1.io.res @[Modules.scala 259:13]
    inst temp_4_inst of ComplexMul @[Modules.scala 158:22]
    temp_4_inst.clock <= clock
    temp_4_inst.reset <= reset
    temp_4_inst.io.op1.im <= A57_inst_1.io.res.im @[Modules.scala 159:17]
    temp_4_inst.io.op1.re <= A57_inst_1.io.res.re @[Modules.scala 159:17]
    temp_4_inst.io.op2.im <= mul1.im @[Modules.scala 160:17]
    temp_4_inst.io.op2.re <= mul1.re @[Modules.scala 160:17]
    inst temp_4_inst_1 of ComplexAdd_10 @[Modules.scala 81:22]
    temp_4_inst_1.clock <= clock
    temp_4_inst_1.reset <= reset
    temp_4_inst_1.io.op1.im <= A46_inst_1.io.res.im @[Modules.scala 82:17]
    temp_4_inst_1.io.op1.re <= A46_inst_1.io.res.re @[Modules.scala 82:17]
    temp_4_inst_1.io.op2.im <= temp_4_inst.io.res.im @[Modules.scala 83:17]
    temp_4_inst_1.io.op2.re <= temp_4_inst.io.res.re @[Modules.scala 83:17]
    temp[4] <= temp_4_inst_1.io.res @[Modules.scala 260:13]
    inst temp_5_inst of ComplexMul_1 @[Modules.scala 158:22]
    temp_5_inst.clock <= clock
    temp_5_inst.reset <= reset
    temp_5_inst.io.op1.im <= A57_inst_1.io.res.im @[Modules.scala 159:17]
    temp_5_inst.io.op1.re <= A57_inst_1.io.res.re @[Modules.scala 159:17]
    temp_5_inst.io.op2.im <= mul1.im @[Modules.scala 160:17]
    temp_5_inst.io.op2.re <= mul1.re @[Modules.scala 160:17]
    inst temp_5_inst_1 of ComplexSub_10 @[Modules.scala 100:22]
    temp_5_inst_1.clock <= clock
    temp_5_inst_1.reset <= reset
    temp_5_inst_1.io.op1.im <= A46_inst_1.io.res.im @[Modules.scala 101:17]
    temp_5_inst_1.io.op1.re <= A46_inst_1.io.res.re @[Modules.scala 101:17]
    temp_5_inst_1.io.op2.im <= temp_5_inst.io.res.im @[Modules.scala 102:17]
    temp_5_inst_1.io.op2.re <= temp_5_inst.io.res.re @[Modules.scala 102:17]
    temp[5] <= temp_5_inst_1.io.res @[Modules.scala 261:13]
    inst temp_6_inst of ComplexMul_2 @[Modules.scala 158:22]
    temp_6_inst.clock <= clock
    temp_6_inst.reset <= reset
    temp_6_inst.io.op1.im <= S57_inst_1.io.res.im @[Modules.scala 159:17]
    temp_6_inst.io.op1.re <= S57_inst_1.io.res.re @[Modules.scala 159:17]
    temp_6_inst.io.op2.im <= mul1.im @[Modules.scala 160:17]
    temp_6_inst.io.op2.re <= mul1.re @[Modules.scala 160:17]
    inst temp_6_inst_1 of ComplexTran_6 @[Modules.scala 123:22]
    temp_6_inst_1.clock <= clock
    temp_6_inst_1.reset <= reset
    temp_6_inst_1.io.in.im <= temp_6_inst.io.res.im @[Modules.scala 124:16]
    temp_6_inst_1.io.in.re <= temp_6_inst.io.res.re @[Modules.scala 124:16]
    inst temp_6_inst_2 of ComplexAdd_11 @[Modules.scala 81:22]
    temp_6_inst_2.clock <= clock
    temp_6_inst_2.reset <= reset
    temp_6_inst_2.io.op1.im <= S46_inst_1.io.res.im @[Modules.scala 82:17]
    temp_6_inst_2.io.op1.re <= S46_inst_1.io.res.re @[Modules.scala 82:17]
    temp_6_inst_2.io.op2.im <= temp_6_inst_1.io.out.im @[Modules.scala 83:17]
    temp_6_inst_2.io.op2.re <= temp_6_inst_1.io.out.re @[Modules.scala 83:17]
    temp[6] <= temp_6_inst_2.io.res @[Modules.scala 262:13]
    inst temp_7_inst of ComplexMul_3 @[Modules.scala 158:22]
    temp_7_inst.clock <= clock
    temp_7_inst.reset <= reset
    temp_7_inst.io.op1.im <= S57_inst_1.io.res.im @[Modules.scala 159:17]
    temp_7_inst.io.op1.re <= S57_inst_1.io.res.re @[Modules.scala 159:17]
    temp_7_inst.io.op2.im <= mul1.im @[Modules.scala 160:17]
    temp_7_inst.io.op2.re <= mul1.re @[Modules.scala 160:17]
    inst temp_7_inst_1 of ComplexTran_7 @[Modules.scala 123:22]
    temp_7_inst_1.clock <= clock
    temp_7_inst_1.reset <= reset
    temp_7_inst_1.io.in.im <= temp_7_inst.io.res.im @[Modules.scala 124:16]
    temp_7_inst_1.io.in.re <= temp_7_inst.io.res.re @[Modules.scala 124:16]
    inst temp_7_inst_2 of ComplexSub_11 @[Modules.scala 100:22]
    temp_7_inst_2.clock <= clock
    temp_7_inst_2.reset <= reset
    temp_7_inst_2.io.op1.im <= S46_inst_1.io.res.im @[Modules.scala 101:17]
    temp_7_inst_2.io.op1.re <= S46_inst_1.io.res.re @[Modules.scala 101:17]
    temp_7_inst_2.io.op2.im <= temp_7_inst_1.io.out.im @[Modules.scala 102:17]
    temp_7_inst_2.io.op2.re <= temp_7_inst_1.io.out.re @[Modules.scala 102:17]
    temp[7] <= temp_7_inst_2.io.res @[Modules.scala 263:13]
    io.out[0] <= temp[0] @[Modules.scala 274:15]
    inst io_out_1_inst of ComplexMul_4 @[Modules.scala 158:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= temp[1].im @[Modules.scala 159:17]
    io_out_1_inst.io.op1.re <= temp[1].re @[Modules.scala 159:17]
    io_out_1_inst.io.op2.im <= io.wn[3].im @[Modules.scala 160:17]
    io_out_1_inst.io.op2.re <= io.wn[3].re @[Modules.scala 160:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 275:15]
    inst io_out_2_inst of ComplexMul_5 @[Modules.scala 158:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.op1.im <= temp[2].im @[Modules.scala 159:17]
    io_out_2_inst.io.op1.re <= temp[2].re @[Modules.scala 159:17]
    io_out_2_inst.io.op2.im <= io.wn[1].im @[Modules.scala 160:17]
    io_out_2_inst.io.op2.re <= io.wn[1].re @[Modules.scala 160:17]
    io.out[2] <= io_out_2_inst.io.res @[Modules.scala 276:15]
    inst io_out_3_inst of ComplexMul_6 @[Modules.scala 158:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.op1.im <= temp[3].im @[Modules.scala 159:17]
    io_out_3_inst.io.op1.re <= temp[3].re @[Modules.scala 159:17]
    io_out_3_inst.io.op2.im <= io.wn[5].im @[Modules.scala 160:17]
    io_out_3_inst.io.op2.re <= io.wn[5].re @[Modules.scala 160:17]
    io.out[3] <= io_out_3_inst.io.res @[Modules.scala 277:15]
    inst io_out_4_inst of ComplexMul_7 @[Modules.scala 158:22]
    io_out_4_inst.clock <= clock
    io_out_4_inst.reset <= reset
    io_out_4_inst.io.op1.im <= temp[4].im @[Modules.scala 159:17]
    io_out_4_inst.io.op1.re <= temp[4].re @[Modules.scala 159:17]
    io_out_4_inst.io.op2.im <= io.wn[0].im @[Modules.scala 160:17]
    io_out_4_inst.io.op2.re <= io.wn[0].re @[Modules.scala 160:17]
    io.out[4] <= io_out_4_inst.io.res @[Modules.scala 278:15]
    inst io_out_5_inst of ComplexMul_8 @[Modules.scala 158:22]
    io_out_5_inst.clock <= clock
    io_out_5_inst.reset <= reset
    io_out_5_inst.io.op1.im <= temp[5].im @[Modules.scala 159:17]
    io_out_5_inst.io.op1.re <= temp[5].re @[Modules.scala 159:17]
    io_out_5_inst.io.op2.im <= io.wn[4].im @[Modules.scala 160:17]
    io_out_5_inst.io.op2.re <= io.wn[4].re @[Modules.scala 160:17]
    io.out[5] <= io_out_5_inst.io.res @[Modules.scala 279:15]
    inst io_out_6_inst of ComplexMul_9 @[Modules.scala 158:22]
    io_out_6_inst.clock <= clock
    io_out_6_inst.reset <= reset
    io_out_6_inst.io.op1.im <= temp[6].im @[Modules.scala 159:17]
    io_out_6_inst.io.op1.re <= temp[6].re @[Modules.scala 159:17]
    io_out_6_inst.io.op2.im <= io.wn[2].im @[Modules.scala 160:17]
    io_out_6_inst.io.op2.re <= io.wn[2].re @[Modules.scala 160:17]
    io.out[6] <= io_out_6_inst.io.res @[Modules.scala 280:15]
    inst io_out_7_inst of ComplexMul_10 @[Modules.scala 158:22]
    io_out_7_inst.clock <= clock
    io_out_7_inst.reset <= reset
    io_out_7_inst.io.op1.im <= temp[7].im @[Modules.scala 159:17]
    io_out_7_inst.io.op1.re <= temp[7].re @[Modules.scala 159:17]
    io_out_7_inst.io.op2.im <= io.wn[6].im @[Modules.scala 160:17]
    io_out_7_inst.io.op2.re <= io.wn[6].re @[Modules.scala 160:17]
    io.out[7] <= io_out_7_inst.io.res @[Modules.scala 281:15]

  module ComplexAdd_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexAdd_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexAdd_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexAdd_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexSub_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexSub_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexSub_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexSub_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexAdd_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexSub_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexAdd_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexSub_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexTran_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexAdd_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexTran_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexSub_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexTran_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexAdd_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexTran_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexSub_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexAdd_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexSub_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexTran_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexAdd_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexTran_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexSub_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexMul_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexAdd_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexMul_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexSub_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ComplexMul_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexTran_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexAdd_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 74:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 74:81]
    node _io_res_re_T_2 = add(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 74:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 74:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 74:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 74:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 75:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 75:81]
    node _io_res_im_T_2 = add(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 75:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 75:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 75:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 75:15]

  module ComplexMul_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 150:42]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 150:83]
    node _io_res_re_T_2 = mul(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 150:59]
    node _io_res_re_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 150:124]
    node _io_res_re_T_4 = asFixedPoint(io.op2.im, 12) @[Modules.scala 150:165]
    node _io_res_re_T_5 = mul(_io_res_re_T_3, _io_res_re_T_4) @[Modules.scala 150:141]
    node _io_res_re_T_6 = sub(_io_res_re_T_2, _io_res_re_T_5) @[Modules.scala 150:100]
    node _io_res_re_T_7 = tail(_io_res_re_T_6, 1) @[Modules.scala 150:100]
    node _io_res_re_T_8 = asFixedPoint(_io_res_re_T_7, 24) @[Modules.scala 150:100]
    io.res.re <= _io_res_re_T_8 @[Modules.scala 150:17]
    node _io_res_im_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 151:42]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 151:83]
    node _io_res_im_T_2 = mul(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 151:59]
    node _io_res_im_T_3 = asFixedPoint(io.op1.im, 12) @[Modules.scala 151:124]
    node _io_res_im_T_4 = asFixedPoint(io.op2.re, 12) @[Modules.scala 151:165]
    node _io_res_im_T_5 = mul(_io_res_im_T_3, _io_res_im_T_4) @[Modules.scala 151:141]
    node _io_res_im_T_6 = add(_io_res_im_T_2, _io_res_im_T_5) @[Modules.scala 151:100]
    node _io_res_im_T_7 = tail(_io_res_im_T_6, 1) @[Modules.scala 151:100]
    node _io_res_im_T_8 = asFixedPoint(_io_res_im_T_7, 24) @[Modules.scala 151:100]
    io.res.im <= _io_res_im_T_8 @[Modules.scala 151:17]

  module ComplexTran_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    io.out.re <= io.in.im @[Modules.scala 116:15]
    node _io_out_im_T = asFixedPoint(io.in.re, 12) @[Modules.scala 117:40]
    node _io_out_im_T_1 = sub(asFixedPoint(UInt<1>("h0"), 0), _io_out_im_T) @[Modules.scala 117:18]
    node _io_out_im_T_2 = tail(_io_out_im_T_1, 1) @[Modules.scala 117:18]
    node _io_out_im_T_3 = asFixedPoint(_io_out_im_T_2, 12) @[Modules.scala 117:18]
    io.out.im <= _io_out_im_T_3 @[Modules.scala 117:15]

  module ComplexSub_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, flip op2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, res : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}}

    node _io_res_re_T = asFixedPoint(io.op1.re, 12) @[Modules.scala 93:40]
    node _io_res_re_T_1 = asFixedPoint(io.op2.re, 12) @[Modules.scala 93:81]
    node _io_res_re_T_2 = sub(_io_res_re_T, _io_res_re_T_1) @[Modules.scala 93:57]
    node _io_res_re_T_3 = tail(_io_res_re_T_2, 1) @[Modules.scala 93:57]
    node _io_res_re_T_4 = asFixedPoint(_io_res_re_T_3, 12) @[Modules.scala 93:57]
    io.res.re <= _io_res_re_T_4 @[Modules.scala 93:15]
    node _io_res_im_T = asFixedPoint(io.op1.im, 12) @[Modules.scala 94:40]
    node _io_res_im_T_1 = asFixedPoint(io.op2.im, 12) @[Modules.scala 94:81]
    node _io_res_im_T_2 = sub(_io_res_im_T, _io_res_im_T_1) @[Modules.scala 94:57]
    node _io_res_im_T_3 = tail(_io_res_im_T_2, 1) @[Modules.scala 94:57]
    node _io_res_im_T_4 = asFixedPoint(_io_res_im_T_3, 12) @[Modules.scala 94:57]
    io.res.im <= _io_res_im_T_4 @[Modules.scala 94:15]

  module ButterflyAdd :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8]}

    node mul1_lo = asUInt(asFixedPoint(UInt<17>("h1f4b0"), 12)) @[Cat.scala 33:92]
    node mul1_hi = asUInt(asFixedPoint(UInt<17>("hb50"), 12)) @[Cat.scala 33:92]
    node _mul1_T = cat(mul1_hi, mul1_lo) @[Cat.scala 33:92]
    wire mul1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 188:41]
    wire _mul1_WIRE : UInt<34> @[Modules.scala 188:41]
    _mul1_WIRE <= _mul1_T @[Modules.scala 188:41]
    node _mul1_T_1 = bits(_mul1_WIRE, 16, 0) @[Modules.scala 188:41]
    node _mul1_T_2 = asFixedPoint(_mul1_T_1, 12) @[Modules.scala 188:41]
    mul1.im <= _mul1_T_2 @[Modules.scala 188:41]
    node _mul1_T_3 = bits(_mul1_WIRE, 33, 17) @[Modules.scala 188:41]
    node _mul1_T_4 = asFixedPoint(_mul1_T_3, 12) @[Modules.scala 188:41]
    mul1.re <= _mul1_T_4 @[Modules.scala 188:41]
    wire _temp_data_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 189:53]
    node _temp_data_T = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 189:53]
    wire _temp_data_WIRE_1 : UInt<34> @[Modules.scala 189:53]
    _temp_data_WIRE_1 <= _temp_data_T @[Modules.scala 189:53]
    node _temp_data_T_1 = bits(_temp_data_WIRE_1, 16, 0) @[Modules.scala 189:53]
    node _temp_data_T_2 = asFixedPoint(_temp_data_T_1, 12) @[Modules.scala 189:53]
    _temp_data_WIRE.im <= _temp_data_T_2 @[Modules.scala 189:53]
    node _temp_data_T_3 = bits(_temp_data_WIRE_1, 33, 17) @[Modules.scala 189:53]
    node _temp_data_T_4 = asFixedPoint(_temp_data_T_3, 12) @[Modules.scala 189:53]
    _temp_data_WIRE.re <= _temp_data_T_4 @[Modules.scala 189:53]
    wire _temp_data_WIRE_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 189:53]
    node _temp_data_T_5 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 189:53]
    wire _temp_data_WIRE_3 : UInt<34> @[Modules.scala 189:53]
    _temp_data_WIRE_3 <= _temp_data_T_5 @[Modules.scala 189:53]
    node _temp_data_T_6 = bits(_temp_data_WIRE_3, 16, 0) @[Modules.scala 189:53]
    node _temp_data_T_7 = asFixedPoint(_temp_data_T_6, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_2.im <= _temp_data_T_7 @[Modules.scala 189:53]
    node _temp_data_T_8 = bits(_temp_data_WIRE_3, 33, 17) @[Modules.scala 189:53]
    node _temp_data_T_9 = asFixedPoint(_temp_data_T_8, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_2.re <= _temp_data_T_9 @[Modules.scala 189:53]
    wire _temp_data_WIRE_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 189:53]
    node _temp_data_T_10 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 189:53]
    wire _temp_data_WIRE_5 : UInt<34> @[Modules.scala 189:53]
    _temp_data_WIRE_5 <= _temp_data_T_10 @[Modules.scala 189:53]
    node _temp_data_T_11 = bits(_temp_data_WIRE_5, 16, 0) @[Modules.scala 189:53]
    node _temp_data_T_12 = asFixedPoint(_temp_data_T_11, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_4.im <= _temp_data_T_12 @[Modules.scala 189:53]
    node _temp_data_T_13 = bits(_temp_data_WIRE_5, 33, 17) @[Modules.scala 189:53]
    node _temp_data_T_14 = asFixedPoint(_temp_data_T_13, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_4.re <= _temp_data_T_14 @[Modules.scala 189:53]
    wire _temp_data_WIRE_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 189:53]
    node _temp_data_T_15 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 189:53]
    wire _temp_data_WIRE_7 : UInt<34> @[Modules.scala 189:53]
    _temp_data_WIRE_7 <= _temp_data_T_15 @[Modules.scala 189:53]
    node _temp_data_T_16 = bits(_temp_data_WIRE_7, 16, 0) @[Modules.scala 189:53]
    node _temp_data_T_17 = asFixedPoint(_temp_data_T_16, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_6.im <= _temp_data_T_17 @[Modules.scala 189:53]
    node _temp_data_T_18 = bits(_temp_data_WIRE_7, 33, 17) @[Modules.scala 189:53]
    node _temp_data_T_19 = asFixedPoint(_temp_data_T_18, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_6.re <= _temp_data_T_19 @[Modules.scala 189:53]
    wire _temp_data_WIRE_8 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 189:53]
    node _temp_data_T_20 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 189:53]
    wire _temp_data_WIRE_9 : UInt<34> @[Modules.scala 189:53]
    _temp_data_WIRE_9 <= _temp_data_T_20 @[Modules.scala 189:53]
    node _temp_data_T_21 = bits(_temp_data_WIRE_9, 16, 0) @[Modules.scala 189:53]
    node _temp_data_T_22 = asFixedPoint(_temp_data_T_21, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_8.im <= _temp_data_T_22 @[Modules.scala 189:53]
    node _temp_data_T_23 = bits(_temp_data_WIRE_9, 33, 17) @[Modules.scala 189:53]
    node _temp_data_T_24 = asFixedPoint(_temp_data_T_23, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_8.re <= _temp_data_T_24 @[Modules.scala 189:53]
    wire _temp_data_WIRE_10 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 189:53]
    node _temp_data_T_25 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 189:53]
    wire _temp_data_WIRE_11 : UInt<34> @[Modules.scala 189:53]
    _temp_data_WIRE_11 <= _temp_data_T_25 @[Modules.scala 189:53]
    node _temp_data_T_26 = bits(_temp_data_WIRE_11, 16, 0) @[Modules.scala 189:53]
    node _temp_data_T_27 = asFixedPoint(_temp_data_T_26, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_10.im <= _temp_data_T_27 @[Modules.scala 189:53]
    node _temp_data_T_28 = bits(_temp_data_WIRE_11, 33, 17) @[Modules.scala 189:53]
    node _temp_data_T_29 = asFixedPoint(_temp_data_T_28, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_10.re <= _temp_data_T_29 @[Modules.scala 189:53]
    wire _temp_data_WIRE_12 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 189:53]
    node _temp_data_T_30 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 189:53]
    wire _temp_data_WIRE_13 : UInt<34> @[Modules.scala 189:53]
    _temp_data_WIRE_13 <= _temp_data_T_30 @[Modules.scala 189:53]
    node _temp_data_T_31 = bits(_temp_data_WIRE_13, 16, 0) @[Modules.scala 189:53]
    node _temp_data_T_32 = asFixedPoint(_temp_data_T_31, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_12.im <= _temp_data_T_32 @[Modules.scala 189:53]
    node _temp_data_T_33 = bits(_temp_data_WIRE_13, 33, 17) @[Modules.scala 189:53]
    node _temp_data_T_34 = asFixedPoint(_temp_data_T_33, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_12.re <= _temp_data_T_34 @[Modules.scala 189:53]
    wire _temp_data_WIRE_14 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 189:53]
    node _temp_data_T_35 = asUInt(asSInt(UInt<1>("h0"))) @[Modules.scala 189:53]
    wire _temp_data_WIRE_15 : UInt<34> @[Modules.scala 189:53]
    _temp_data_WIRE_15 <= _temp_data_T_35 @[Modules.scala 189:53]
    node _temp_data_T_36 = bits(_temp_data_WIRE_15, 16, 0) @[Modules.scala 189:53]
    node _temp_data_T_37 = asFixedPoint(_temp_data_T_36, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_14.im <= _temp_data_T_37 @[Modules.scala 189:53]
    node _temp_data_T_38 = bits(_temp_data_WIRE_15, 33, 17) @[Modules.scala 189:53]
    node _temp_data_T_39 = asFixedPoint(_temp_data_T_38, 12) @[Modules.scala 189:53]
    _temp_data_WIRE_14.re <= _temp_data_T_39 @[Modules.scala 189:53]
    wire temp_data : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 189:28]
    temp_data[0] <= _temp_data_WIRE @[Modules.scala 189:28]
    temp_data[1] <= _temp_data_WIRE_2 @[Modules.scala 189:28]
    temp_data[2] <= _temp_data_WIRE_4 @[Modules.scala 189:28]
    temp_data[3] <= _temp_data_WIRE_6 @[Modules.scala 189:28]
    temp_data[4] <= _temp_data_WIRE_8 @[Modules.scala 189:28]
    temp_data[5] <= _temp_data_WIRE_10 @[Modules.scala 189:28]
    temp_data[6] <= _temp_data_WIRE_12 @[Modules.scala 189:28]
    temp_data[7] <= _temp_data_WIRE_14 @[Modules.scala 189:28]
    inst temp_data_0_inst of ComplexAdd_12 @[Modules.scala 81:22]
    temp_data_0_inst.clock <= clock
    temp_data_0_inst.reset <= reset
    temp_data_0_inst.io.op1.im <= io.in[0].im @[Modules.scala 82:17]
    temp_data_0_inst.io.op1.re <= io.in[0].re @[Modules.scala 82:17]
    temp_data_0_inst.io.op2.im <= io.in[4].im @[Modules.scala 83:17]
    temp_data_0_inst.io.op2.re <= io.in[4].re @[Modules.scala 83:17]
    temp_data[0] <= temp_data_0_inst.io.res @[Modules.scala 190:39]
    inst temp_data_1_inst of ComplexAdd_13 @[Modules.scala 81:22]
    temp_data_1_inst.clock <= clock
    temp_data_1_inst.reset <= reset
    temp_data_1_inst.io.op1.im <= io.in[1].im @[Modules.scala 82:17]
    temp_data_1_inst.io.op1.re <= io.in[1].re @[Modules.scala 82:17]
    temp_data_1_inst.io.op2.im <= io.in[5].im @[Modules.scala 83:17]
    temp_data_1_inst.io.op2.re <= io.in[5].re @[Modules.scala 83:17]
    temp_data[1] <= temp_data_1_inst.io.res @[Modules.scala 190:39]
    inst temp_data_2_inst of ComplexAdd_14 @[Modules.scala 81:22]
    temp_data_2_inst.clock <= clock
    temp_data_2_inst.reset <= reset
    temp_data_2_inst.io.op1.im <= io.in[2].im @[Modules.scala 82:17]
    temp_data_2_inst.io.op1.re <= io.in[2].re @[Modules.scala 82:17]
    temp_data_2_inst.io.op2.im <= io.in[6].im @[Modules.scala 83:17]
    temp_data_2_inst.io.op2.re <= io.in[6].re @[Modules.scala 83:17]
    temp_data[2] <= temp_data_2_inst.io.res @[Modules.scala 190:39]
    inst temp_data_3_inst of ComplexAdd_15 @[Modules.scala 81:22]
    temp_data_3_inst.clock <= clock
    temp_data_3_inst.reset <= reset
    temp_data_3_inst.io.op1.im <= io.in[3].im @[Modules.scala 82:17]
    temp_data_3_inst.io.op1.re <= io.in[3].re @[Modules.scala 82:17]
    temp_data_3_inst.io.op2.im <= io.in[7].im @[Modules.scala 83:17]
    temp_data_3_inst.io.op2.re <= io.in[7].re @[Modules.scala 83:17]
    temp_data[3] <= temp_data_3_inst.io.res @[Modules.scala 190:39]
    inst temp_data_4_inst of ComplexSub_12 @[Modules.scala 100:22]
    temp_data_4_inst.clock <= clock
    temp_data_4_inst.reset <= reset
    temp_data_4_inst.io.op1.im <= io.in[0].im @[Modules.scala 101:17]
    temp_data_4_inst.io.op1.re <= io.in[0].re @[Modules.scala 101:17]
    temp_data_4_inst.io.op2.im <= io.in[4].im @[Modules.scala 102:17]
    temp_data_4_inst.io.op2.re <= io.in[4].re @[Modules.scala 102:17]
    temp_data[4] <= temp_data_4_inst.io.res @[Modules.scala 191:43]
    inst temp_data_5_inst of ComplexSub_13 @[Modules.scala 100:22]
    temp_data_5_inst.clock <= clock
    temp_data_5_inst.reset <= reset
    temp_data_5_inst.io.op1.im <= io.in[1].im @[Modules.scala 101:17]
    temp_data_5_inst.io.op1.re <= io.in[1].re @[Modules.scala 101:17]
    temp_data_5_inst.io.op2.im <= io.in[5].im @[Modules.scala 102:17]
    temp_data_5_inst.io.op2.re <= io.in[5].re @[Modules.scala 102:17]
    temp_data[5] <= temp_data_5_inst.io.res @[Modules.scala 191:43]
    inst temp_data_6_inst of ComplexSub_14 @[Modules.scala 100:22]
    temp_data_6_inst.clock <= clock
    temp_data_6_inst.reset <= reset
    temp_data_6_inst.io.op1.im <= io.in[2].im @[Modules.scala 101:17]
    temp_data_6_inst.io.op1.re <= io.in[2].re @[Modules.scala 101:17]
    temp_data_6_inst.io.op2.im <= io.in[6].im @[Modules.scala 102:17]
    temp_data_6_inst.io.op2.re <= io.in[6].re @[Modules.scala 102:17]
    temp_data[6] <= temp_data_6_inst.io.res @[Modules.scala 191:43]
    inst temp_data_7_inst of ComplexSub_15 @[Modules.scala 100:22]
    temp_data_7_inst.clock <= clock
    temp_data_7_inst.reset <= reset
    temp_data_7_inst.io.op1.im <= io.in[3].im @[Modules.scala 101:17]
    temp_data_7_inst.io.op1.re <= io.in[3].re @[Modules.scala 101:17]
    temp_data_7_inst.io.op2.im <= io.in[7].im @[Modules.scala 102:17]
    temp_data_7_inst.io.op2.re <= io.in[7].re @[Modules.scala 102:17]
    temp_data[7] <= temp_data_7_inst.io.res @[Modules.scala 191:43]
    inst A02_inst of ComplexAdd_16 @[Modules.scala 81:22]
    A02_inst.clock <= clock
    A02_inst.reset <= reset
    A02_inst.io.op1.im <= temp_data[0].im @[Modules.scala 82:17]
    A02_inst.io.op1.re <= temp_data[0].re @[Modules.scala 82:17]
    A02_inst.io.op2.im <= temp_data[2].im @[Modules.scala 83:17]
    A02_inst.io.op2.re <= temp_data[2].re @[Modules.scala 83:17]
    inst S02_inst of ComplexSub_16 @[Modules.scala 100:22]
    S02_inst.clock <= clock
    S02_inst.reset <= reset
    S02_inst.io.op1.im <= temp_data[0].im @[Modules.scala 101:17]
    S02_inst.io.op1.re <= temp_data[0].re @[Modules.scala 101:17]
    S02_inst.io.op2.im <= temp_data[2].im @[Modules.scala 102:17]
    S02_inst.io.op2.re <= temp_data[2].re @[Modules.scala 102:17]
    inst A13_inst of ComplexAdd_17 @[Modules.scala 81:22]
    A13_inst.clock <= clock
    A13_inst.reset <= reset
    A13_inst.io.op1.im <= temp_data[1].im @[Modules.scala 82:17]
    A13_inst.io.op1.re <= temp_data[1].re @[Modules.scala 82:17]
    A13_inst.io.op2.im <= temp_data[3].im @[Modules.scala 83:17]
    A13_inst.io.op2.re <= temp_data[3].re @[Modules.scala 83:17]
    inst S13_inst of ComplexSub_17 @[Modules.scala 100:22]
    S13_inst.clock <= clock
    S13_inst.reset <= reset
    S13_inst.io.op1.im <= temp_data[1].im @[Modules.scala 101:17]
    S13_inst.io.op1.re <= temp_data[1].re @[Modules.scala 101:17]
    S13_inst.io.op2.im <= temp_data[3].im @[Modules.scala 102:17]
    S13_inst.io.op2.re <= temp_data[3].re @[Modules.scala 102:17]
    inst A46_inst of ComplexTran_8 @[Modules.scala 123:22]
    A46_inst.clock <= clock
    A46_inst.reset <= reset
    A46_inst.io.in.im <= temp_data[6].im @[Modules.scala 124:16]
    A46_inst.io.in.re <= temp_data[6].re @[Modules.scala 124:16]
    inst A46_inst_1 of ComplexAdd_18 @[Modules.scala 81:22]
    A46_inst_1.clock <= clock
    A46_inst_1.reset <= reset
    A46_inst_1.io.op1.im <= temp_data[4].im @[Modules.scala 82:17]
    A46_inst_1.io.op1.re <= temp_data[4].re @[Modules.scala 82:17]
    A46_inst_1.io.op2.im <= A46_inst.io.out.im @[Modules.scala 83:17]
    A46_inst_1.io.op2.re <= A46_inst.io.out.re @[Modules.scala 83:17]
    inst S46_inst of ComplexTran_9 @[Modules.scala 123:22]
    S46_inst.clock <= clock
    S46_inst.reset <= reset
    S46_inst.io.in.im <= temp_data[6].im @[Modules.scala 124:16]
    S46_inst.io.in.re <= temp_data[6].re @[Modules.scala 124:16]
    inst S46_inst_1 of ComplexSub_18 @[Modules.scala 100:22]
    S46_inst_1.clock <= clock
    S46_inst_1.reset <= reset
    S46_inst_1.io.op1.im <= temp_data[4].im @[Modules.scala 101:17]
    S46_inst_1.io.op1.re <= temp_data[4].re @[Modules.scala 101:17]
    S46_inst_1.io.op2.im <= S46_inst.io.out.im @[Modules.scala 102:17]
    S46_inst_1.io.op2.re <= S46_inst.io.out.re @[Modules.scala 102:17]
    inst A57_inst of ComplexTran_10 @[Modules.scala 123:22]
    A57_inst.clock <= clock
    A57_inst.reset <= reset
    A57_inst.io.in.im <= temp_data[7].im @[Modules.scala 124:16]
    A57_inst.io.in.re <= temp_data[7].re @[Modules.scala 124:16]
    inst A57_inst_1 of ComplexAdd_19 @[Modules.scala 81:22]
    A57_inst_1.clock <= clock
    A57_inst_1.reset <= reset
    A57_inst_1.io.op1.im <= temp_data[5].im @[Modules.scala 82:17]
    A57_inst_1.io.op1.re <= temp_data[5].re @[Modules.scala 82:17]
    A57_inst_1.io.op2.im <= A57_inst.io.out.im @[Modules.scala 83:17]
    A57_inst_1.io.op2.re <= A57_inst.io.out.re @[Modules.scala 83:17]
    inst S57_inst of ComplexTran_11 @[Modules.scala 123:22]
    S57_inst.clock <= clock
    S57_inst.reset <= reset
    S57_inst.io.in.im <= temp_data[7].im @[Modules.scala 124:16]
    S57_inst.io.in.re <= temp_data[7].re @[Modules.scala 124:16]
    inst S57_inst_1 of ComplexSub_19 @[Modules.scala 100:22]
    S57_inst_1.clock <= clock
    S57_inst_1.reset <= reset
    S57_inst_1.io.op1.im <= temp_data[5].im @[Modules.scala 101:17]
    S57_inst_1.io.op1.re <= temp_data[5].re @[Modules.scala 101:17]
    S57_inst_1.io.op2.im <= S57_inst.io.out.im @[Modules.scala 102:17]
    S57_inst_1.io.op2.re <= S57_inst.io.out.re @[Modules.scala 102:17]
    inst io_out_0_inst of ComplexAdd_20 @[Modules.scala 81:22]
    io_out_0_inst.clock <= clock
    io_out_0_inst.reset <= reset
    io_out_0_inst.io.op1.im <= A02_inst.io.res.im @[Modules.scala 82:17]
    io_out_0_inst.io.op1.re <= A02_inst.io.res.re @[Modules.scala 82:17]
    io_out_0_inst.io.op2.im <= A13_inst.io.res.im @[Modules.scala 83:17]
    io_out_0_inst.io.op2.re <= A13_inst.io.res.re @[Modules.scala 83:17]
    io.out[0] <= io_out_0_inst.io.res @[Modules.scala 200:15]
    inst io_out_1_inst of ComplexSub_20 @[Modules.scala 100:22]
    io_out_1_inst.clock <= clock
    io_out_1_inst.reset <= reset
    io_out_1_inst.io.op1.im <= A02_inst.io.res.im @[Modules.scala 101:17]
    io_out_1_inst.io.op1.re <= A02_inst.io.res.re @[Modules.scala 101:17]
    io_out_1_inst.io.op2.im <= A13_inst.io.res.im @[Modules.scala 102:17]
    io_out_1_inst.io.op2.re <= A13_inst.io.res.re @[Modules.scala 102:17]
    io.out[1] <= io_out_1_inst.io.res @[Modules.scala 201:15]
    inst io_out_2_inst of ComplexTran_12 @[Modules.scala 123:22]
    io_out_2_inst.clock <= clock
    io_out_2_inst.reset <= reset
    io_out_2_inst.io.in.im <= S13_inst.io.res.im @[Modules.scala 124:16]
    io_out_2_inst.io.in.re <= S13_inst.io.res.re @[Modules.scala 124:16]
    inst io_out_2_inst_1 of ComplexAdd_21 @[Modules.scala 81:22]
    io_out_2_inst_1.clock <= clock
    io_out_2_inst_1.reset <= reset
    io_out_2_inst_1.io.op1.im <= S02_inst.io.res.im @[Modules.scala 82:17]
    io_out_2_inst_1.io.op1.re <= S02_inst.io.res.re @[Modules.scala 82:17]
    io_out_2_inst_1.io.op2.im <= io_out_2_inst.io.out.im @[Modules.scala 83:17]
    io_out_2_inst_1.io.op2.re <= io_out_2_inst.io.out.re @[Modules.scala 83:17]
    io.out[2] <= io_out_2_inst_1.io.res @[Modules.scala 202:15]
    inst io_out_3_inst of ComplexTran_13 @[Modules.scala 123:22]
    io_out_3_inst.clock <= clock
    io_out_3_inst.reset <= reset
    io_out_3_inst.io.in.im <= S13_inst.io.res.im @[Modules.scala 124:16]
    io_out_3_inst.io.in.re <= S13_inst.io.res.re @[Modules.scala 124:16]
    inst io_out_3_inst_1 of ComplexSub_21 @[Modules.scala 100:22]
    io_out_3_inst_1.clock <= clock
    io_out_3_inst_1.reset <= reset
    io_out_3_inst_1.io.op1.im <= S02_inst.io.res.im @[Modules.scala 101:17]
    io_out_3_inst_1.io.op1.re <= S02_inst.io.res.re @[Modules.scala 101:17]
    io_out_3_inst_1.io.op2.im <= io_out_3_inst.io.out.im @[Modules.scala 102:17]
    io_out_3_inst_1.io.op2.re <= io_out_3_inst.io.out.re @[Modules.scala 102:17]
    io.out[3] <= io_out_3_inst_1.io.res @[Modules.scala 203:15]
    inst io_out_4_inst of ComplexMul_11 @[Modules.scala 158:22]
    io_out_4_inst.clock <= clock
    io_out_4_inst.reset <= reset
    io_out_4_inst.io.op1.im <= A57_inst_1.io.res.im @[Modules.scala 159:17]
    io_out_4_inst.io.op1.re <= A57_inst_1.io.res.re @[Modules.scala 159:17]
    io_out_4_inst.io.op2.im <= mul1.im @[Modules.scala 160:17]
    io_out_4_inst.io.op2.re <= mul1.re @[Modules.scala 160:17]
    inst io_out_4_inst_1 of ComplexAdd_22 @[Modules.scala 81:22]
    io_out_4_inst_1.clock <= clock
    io_out_4_inst_1.reset <= reset
    io_out_4_inst_1.io.op1.im <= A46_inst_1.io.res.im @[Modules.scala 82:17]
    io_out_4_inst_1.io.op1.re <= A46_inst_1.io.res.re @[Modules.scala 82:17]
    io_out_4_inst_1.io.op2.im <= io_out_4_inst.io.res.im @[Modules.scala 83:17]
    io_out_4_inst_1.io.op2.re <= io_out_4_inst.io.res.re @[Modules.scala 83:17]
    io.out[4] <= io_out_4_inst_1.io.res @[Modules.scala 204:15]
    inst io_out_5_inst of ComplexMul_12 @[Modules.scala 158:22]
    io_out_5_inst.clock <= clock
    io_out_5_inst.reset <= reset
    io_out_5_inst.io.op1.im <= A57_inst_1.io.res.im @[Modules.scala 159:17]
    io_out_5_inst.io.op1.re <= A57_inst_1.io.res.re @[Modules.scala 159:17]
    io_out_5_inst.io.op2.im <= mul1.im @[Modules.scala 160:17]
    io_out_5_inst.io.op2.re <= mul1.re @[Modules.scala 160:17]
    inst io_out_5_inst_1 of ComplexSub_22 @[Modules.scala 100:22]
    io_out_5_inst_1.clock <= clock
    io_out_5_inst_1.reset <= reset
    io_out_5_inst_1.io.op1.im <= A46_inst_1.io.res.im @[Modules.scala 101:17]
    io_out_5_inst_1.io.op1.re <= A46_inst_1.io.res.re @[Modules.scala 101:17]
    io_out_5_inst_1.io.op2.im <= io_out_5_inst.io.res.im @[Modules.scala 102:17]
    io_out_5_inst_1.io.op2.re <= io_out_5_inst.io.res.re @[Modules.scala 102:17]
    io.out[5] <= io_out_5_inst_1.io.res @[Modules.scala 205:15]
    inst io_out_6_inst of ComplexMul_13 @[Modules.scala 158:22]
    io_out_6_inst.clock <= clock
    io_out_6_inst.reset <= reset
    io_out_6_inst.io.op1.im <= S57_inst_1.io.res.im @[Modules.scala 159:17]
    io_out_6_inst.io.op1.re <= S57_inst_1.io.res.re @[Modules.scala 159:17]
    io_out_6_inst.io.op2.im <= mul1.im @[Modules.scala 160:17]
    io_out_6_inst.io.op2.re <= mul1.re @[Modules.scala 160:17]
    inst io_out_6_inst_1 of ComplexTran_14 @[Modules.scala 123:22]
    io_out_6_inst_1.clock <= clock
    io_out_6_inst_1.reset <= reset
    io_out_6_inst_1.io.in.im <= io_out_6_inst.io.res.im @[Modules.scala 124:16]
    io_out_6_inst_1.io.in.re <= io_out_6_inst.io.res.re @[Modules.scala 124:16]
    inst io_out_6_inst_2 of ComplexAdd_23 @[Modules.scala 81:22]
    io_out_6_inst_2.clock <= clock
    io_out_6_inst_2.reset <= reset
    io_out_6_inst_2.io.op1.im <= S46_inst_1.io.res.im @[Modules.scala 82:17]
    io_out_6_inst_2.io.op1.re <= S46_inst_1.io.res.re @[Modules.scala 82:17]
    io_out_6_inst_2.io.op2.im <= io_out_6_inst_1.io.out.im @[Modules.scala 83:17]
    io_out_6_inst_2.io.op2.re <= io_out_6_inst_1.io.out.re @[Modules.scala 83:17]
    io.out[6] <= io_out_6_inst_2.io.res @[Modules.scala 206:15]
    inst io_out_7_inst of ComplexMul_14 @[Modules.scala 158:22]
    io_out_7_inst.clock <= clock
    io_out_7_inst.reset <= reset
    io_out_7_inst.io.op1.im <= S57_inst_1.io.res.im @[Modules.scala 159:17]
    io_out_7_inst.io.op1.re <= S57_inst_1.io.res.re @[Modules.scala 159:17]
    io_out_7_inst.io.op2.im <= mul1.im @[Modules.scala 160:17]
    io_out_7_inst.io.op2.re <= mul1.re @[Modules.scala 160:17]
    inst io_out_7_inst_1 of ComplexTran_15 @[Modules.scala 123:22]
    io_out_7_inst_1.clock <= clock
    io_out_7_inst_1.reset <= reset
    io_out_7_inst_1.io.in.im <= io_out_7_inst.io.res.im @[Modules.scala 124:16]
    io_out_7_inst_1.io.in.re <= io_out_7_inst.io.res.re @[Modules.scala 124:16]
    inst io_out_7_inst_2 of ComplexSub_23 @[Modules.scala 100:22]
    io_out_7_inst_2.clock <= clock
    io_out_7_inst_2.reset <= reset
    io_out_7_inst_2.io.op1.im <= S46_inst_1.io.res.im @[Modules.scala 101:17]
    io_out_7_inst_2.io.op1.re <= S46_inst_1.io.res.re @[Modules.scala 101:17]
    io_out_7_inst_2.io.op2.im <= io_out_7_inst_1.io.out.im @[Modules.scala 102:17]
    io_out_7_inst_2.io.op2.re <= io_out_7_inst_1.io.out.re @[Modules.scala 102:17]
    io.out[7] <= io_out_7_inst_2.io.res @[Modules.scala 207:15]

  module Switch :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], out : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], flip sel : UInt<3>}

    wire _swdata_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 304:71]
    node _swdata_T = asUInt(asSInt(UInt<34>("h0"))) @[Modules.scala 304:71]
    wire _swdata_WIRE_1 : UInt<34> @[Modules.scala 304:71]
    _swdata_WIRE_1 <= _swdata_T @[Modules.scala 304:71]
    node _swdata_T_1 = bits(_swdata_WIRE_1, 16, 0) @[Modules.scala 304:71]
    node _swdata_T_2 = asFixedPoint(_swdata_T_1, 12) @[Modules.scala 304:71]
    _swdata_WIRE.im <= _swdata_T_2 @[Modules.scala 304:71]
    node _swdata_T_3 = bits(_swdata_WIRE_1, 33, 17) @[Modules.scala 304:71]
    node _swdata_T_4 = asFixedPoint(_swdata_T_3, 12) @[Modules.scala 304:71]
    _swdata_WIRE.re <= _swdata_T_4 @[Modules.scala 304:71]
    wire _swdata_WIRE_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 304:71]
    node _swdata_T_5 = asUInt(asSInt(UInt<34>("h0"))) @[Modules.scala 304:71]
    wire _swdata_WIRE_3 : UInt<34> @[Modules.scala 304:71]
    _swdata_WIRE_3 <= _swdata_T_5 @[Modules.scala 304:71]
    node _swdata_T_6 = bits(_swdata_WIRE_3, 16, 0) @[Modules.scala 304:71]
    node _swdata_T_7 = asFixedPoint(_swdata_T_6, 12) @[Modules.scala 304:71]
    _swdata_WIRE_2.im <= _swdata_T_7 @[Modules.scala 304:71]
    node _swdata_T_8 = bits(_swdata_WIRE_3, 33, 17) @[Modules.scala 304:71]
    node _swdata_T_9 = asFixedPoint(_swdata_T_8, 12) @[Modules.scala 304:71]
    _swdata_WIRE_2.re <= _swdata_T_9 @[Modules.scala 304:71]
    wire _swdata_WIRE_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 304:71]
    node _swdata_T_10 = asUInt(asSInt(UInt<34>("h0"))) @[Modules.scala 304:71]
    wire _swdata_WIRE_5 : UInt<34> @[Modules.scala 304:71]
    _swdata_WIRE_5 <= _swdata_T_10 @[Modules.scala 304:71]
    node _swdata_T_11 = bits(_swdata_WIRE_5, 16, 0) @[Modules.scala 304:71]
    node _swdata_T_12 = asFixedPoint(_swdata_T_11, 12) @[Modules.scala 304:71]
    _swdata_WIRE_4.im <= _swdata_T_12 @[Modules.scala 304:71]
    node _swdata_T_13 = bits(_swdata_WIRE_5, 33, 17) @[Modules.scala 304:71]
    node _swdata_T_14 = asFixedPoint(_swdata_T_13, 12) @[Modules.scala 304:71]
    _swdata_WIRE_4.re <= _swdata_T_14 @[Modules.scala 304:71]
    wire _swdata_WIRE_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 304:71]
    node _swdata_T_15 = asUInt(asSInt(UInt<34>("h0"))) @[Modules.scala 304:71]
    wire _swdata_WIRE_7 : UInt<34> @[Modules.scala 304:71]
    _swdata_WIRE_7 <= _swdata_T_15 @[Modules.scala 304:71]
    node _swdata_T_16 = bits(_swdata_WIRE_7, 16, 0) @[Modules.scala 304:71]
    node _swdata_T_17 = asFixedPoint(_swdata_T_16, 12) @[Modules.scala 304:71]
    _swdata_WIRE_6.im <= _swdata_T_17 @[Modules.scala 304:71]
    node _swdata_T_18 = bits(_swdata_WIRE_7, 33, 17) @[Modules.scala 304:71]
    node _swdata_T_19 = asFixedPoint(_swdata_T_18, 12) @[Modules.scala 304:71]
    _swdata_WIRE_6.re <= _swdata_T_19 @[Modules.scala 304:71]
    wire _swdata_WIRE_8 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 304:71]
    node _swdata_T_20 = asUInt(asSInt(UInt<34>("h0"))) @[Modules.scala 304:71]
    wire _swdata_WIRE_9 : UInt<34> @[Modules.scala 304:71]
    _swdata_WIRE_9 <= _swdata_T_20 @[Modules.scala 304:71]
    node _swdata_T_21 = bits(_swdata_WIRE_9, 16, 0) @[Modules.scala 304:71]
    node _swdata_T_22 = asFixedPoint(_swdata_T_21, 12) @[Modules.scala 304:71]
    _swdata_WIRE_8.im <= _swdata_T_22 @[Modules.scala 304:71]
    node _swdata_T_23 = bits(_swdata_WIRE_9, 33, 17) @[Modules.scala 304:71]
    node _swdata_T_24 = asFixedPoint(_swdata_T_23, 12) @[Modules.scala 304:71]
    _swdata_WIRE_8.re <= _swdata_T_24 @[Modules.scala 304:71]
    wire _swdata_WIRE_10 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 304:71]
    node _swdata_T_25 = asUInt(asSInt(UInt<34>("h0"))) @[Modules.scala 304:71]
    wire _swdata_WIRE_11 : UInt<34> @[Modules.scala 304:71]
    _swdata_WIRE_11 <= _swdata_T_25 @[Modules.scala 304:71]
    node _swdata_T_26 = bits(_swdata_WIRE_11, 16, 0) @[Modules.scala 304:71]
    node _swdata_T_27 = asFixedPoint(_swdata_T_26, 12) @[Modules.scala 304:71]
    _swdata_WIRE_10.im <= _swdata_T_27 @[Modules.scala 304:71]
    node _swdata_T_28 = bits(_swdata_WIRE_11, 33, 17) @[Modules.scala 304:71]
    node _swdata_T_29 = asFixedPoint(_swdata_T_28, 12) @[Modules.scala 304:71]
    _swdata_WIRE_10.re <= _swdata_T_29 @[Modules.scala 304:71]
    wire _swdata_WIRE_12 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 304:71]
    node _swdata_T_30 = asUInt(asSInt(UInt<34>("h0"))) @[Modules.scala 304:71]
    wire _swdata_WIRE_13 : UInt<34> @[Modules.scala 304:71]
    _swdata_WIRE_13 <= _swdata_T_30 @[Modules.scala 304:71]
    node _swdata_T_31 = bits(_swdata_WIRE_13, 16, 0) @[Modules.scala 304:71]
    node _swdata_T_32 = asFixedPoint(_swdata_T_31, 12) @[Modules.scala 304:71]
    _swdata_WIRE_12.im <= _swdata_T_32 @[Modules.scala 304:71]
    node _swdata_T_33 = bits(_swdata_WIRE_13, 33, 17) @[Modules.scala 304:71]
    node _swdata_T_34 = asFixedPoint(_swdata_T_33, 12) @[Modules.scala 304:71]
    _swdata_WIRE_12.re <= _swdata_T_34 @[Modules.scala 304:71]
    wire _swdata_WIRE_14 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[Modules.scala 304:71]
    node _swdata_T_35 = asUInt(asSInt(UInt<34>("h0"))) @[Modules.scala 304:71]
    wire _swdata_WIRE_15 : UInt<34> @[Modules.scala 304:71]
    _swdata_WIRE_15 <= _swdata_T_35 @[Modules.scala 304:71]
    node _swdata_T_36 = bits(_swdata_WIRE_15, 16, 0) @[Modules.scala 304:71]
    node _swdata_T_37 = asFixedPoint(_swdata_T_36, 12) @[Modules.scala 304:71]
    _swdata_WIRE_14.im <= _swdata_T_37 @[Modules.scala 304:71]
    node _swdata_T_38 = bits(_swdata_WIRE_15, 33, 17) @[Modules.scala 304:71]
    node _swdata_T_39 = asFixedPoint(_swdata_T_38, 12) @[Modules.scala 304:71]
    _swdata_WIRE_14.re <= _swdata_T_39 @[Modules.scala 304:71]
    wire swdata : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 304:23]
    swdata[0] <= _swdata_WIRE @[Modules.scala 304:23]
    swdata[1] <= _swdata_WIRE_2 @[Modules.scala 304:23]
    swdata[2] <= _swdata_WIRE_4 @[Modules.scala 304:23]
    swdata[3] <= _swdata_WIRE_6 @[Modules.scala 304:23]
    swdata[4] <= _swdata_WIRE_8 @[Modules.scala 304:23]
    swdata[5] <= _swdata_WIRE_10 @[Modules.scala 304:23]
    swdata[6] <= _swdata_WIRE_12 @[Modules.scala 304:23]
    swdata[7] <= _swdata_WIRE_14 @[Modules.scala 304:23]
    swdata[0] <= io.in[0] @[Modules.scala 305:38]
    reg swdata_1_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_1_r <= io.in[1] @[Reg.scala 20:22]
    swdata[1] <= swdata_1_r @[Modules.scala 305:38]
    reg swdata_2_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r <= io.in[2] @[Reg.scala 20:22]
    reg swdata_2_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_2_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_2_r_1 <= swdata_2_r @[Reg.scala 20:22]
    swdata[2] <= swdata_2_r_1 @[Modules.scala 305:38]
    reg swdata_3_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r <= io.in[3] @[Reg.scala 20:22]
    reg swdata_3_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_1 <= swdata_3_r @[Reg.scala 20:22]
    reg swdata_3_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_3_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_3_r_2 <= swdata_3_r_1 @[Reg.scala 20:22]
    swdata[3] <= swdata_3_r_2 @[Modules.scala 305:38]
    reg swdata_4_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_4_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_4_r <= io.in[4] @[Reg.scala 20:22]
    reg swdata_4_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_4_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_4_r_1 <= swdata_4_r @[Reg.scala 20:22]
    reg swdata_4_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_4_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_4_r_2 <= swdata_4_r_1 @[Reg.scala 20:22]
    reg swdata_4_r_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_4_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_4_r_3 <= swdata_4_r_2 @[Reg.scala 20:22]
    swdata[4] <= swdata_4_r_3 @[Modules.scala 305:38]
    reg swdata_5_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r <= io.in[5] @[Reg.scala 20:22]
    reg swdata_5_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r_1 <= swdata_5_r @[Reg.scala 20:22]
    reg swdata_5_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r_2 <= swdata_5_r_1 @[Reg.scala 20:22]
    reg swdata_5_r_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r_3 <= swdata_5_r_2 @[Reg.scala 20:22]
    reg swdata_5_r_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_5_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_5_r_4 <= swdata_5_r_3 @[Reg.scala 20:22]
    swdata[5] <= swdata_5_r_4 @[Modules.scala 305:38]
    reg swdata_6_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r <= io.in[6] @[Reg.scala 20:22]
    reg swdata_6_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_1 <= swdata_6_r @[Reg.scala 20:22]
    reg swdata_6_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_2 <= swdata_6_r_1 @[Reg.scala 20:22]
    reg swdata_6_r_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_3 <= swdata_6_r_2 @[Reg.scala 20:22]
    reg swdata_6_r_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_4 <= swdata_6_r_3 @[Reg.scala 20:22]
    reg swdata_6_r_5 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_6_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_6_r_5 <= swdata_6_r_4 @[Reg.scala 20:22]
    swdata[6] <= swdata_6_r_5 @[Modules.scala 305:38]
    reg swdata_7_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r <= io.in[7] @[Reg.scala 20:22]
    reg swdata_7_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_1 <= swdata_7_r @[Reg.scala 20:22]
    reg swdata_7_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_2 <= swdata_7_r_1 @[Reg.scala 20:22]
    reg swdata_7_r_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_3 <= swdata_7_r_2 @[Reg.scala 20:22]
    reg swdata_7_r_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_4 <= swdata_7_r_3 @[Reg.scala 20:22]
    reg swdata_7_r_5 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_5 <= swdata_7_r_4 @[Reg.scala 20:22]
    reg swdata_7_r_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), swdata_7_r_6) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      swdata_7_r_6 <= swdata_7_r_5 @[Reg.scala 20:22]
    swdata[7] <= swdata_7_r_6 @[Modules.scala 305:38]
    wire _io_out_0_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 302:12]
    _io_out_0_WIRE[0] <= swdata[0] @[Modules.scala 302:12]
    _io_out_0_WIRE[1] <= swdata[1] @[Modules.scala 302:12]
    _io_out_0_WIRE[2] <= swdata[2] @[Modules.scala 302:12]
    _io_out_0_WIRE[3] <= swdata[3] @[Modules.scala 302:12]
    _io_out_0_WIRE[4] <= swdata[4] @[Modules.scala 302:12]
    _io_out_0_WIRE[5] <= swdata[5] @[Modules.scala 302:12]
    _io_out_0_WIRE[6] <= swdata[6] @[Modules.scala 302:12]
    _io_out_0_WIRE[7] <= swdata[7] @[Modules.scala 302:12]
    reg io_out_0_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r <= _io_out_0_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_0_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_1 <= io_out_0_r @[Reg.scala 20:22]
    reg io_out_0_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_2 <= io_out_0_r_1 @[Reg.scala 20:22]
    reg io_out_0_r_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_3 <= io_out_0_r_2 @[Reg.scala 20:22]
    reg io_out_0_r_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_4 <= io_out_0_r_3 @[Reg.scala 20:22]
    reg io_out_0_r_5 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_5 <= io_out_0_r_4 @[Reg.scala 20:22]
    reg io_out_0_r_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_0_r_6) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_0_r_6 <= io_out_0_r_5 @[Reg.scala 20:22]
    io.out[0] <= io_out_0_r_6 @[Modules.scala 306:38]
    wire _io_out_1_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 302:12]
    _io_out_1_WIRE[0] <= swdata[7] @[Modules.scala 302:12]
    _io_out_1_WIRE[1] <= swdata[0] @[Modules.scala 302:12]
    _io_out_1_WIRE[2] <= swdata[1] @[Modules.scala 302:12]
    _io_out_1_WIRE[3] <= swdata[2] @[Modules.scala 302:12]
    _io_out_1_WIRE[4] <= swdata[3] @[Modules.scala 302:12]
    _io_out_1_WIRE[5] <= swdata[4] @[Modules.scala 302:12]
    _io_out_1_WIRE[6] <= swdata[5] @[Modules.scala 302:12]
    _io_out_1_WIRE[7] <= swdata[6] @[Modules.scala 302:12]
    reg io_out_1_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r <= _io_out_1_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_1_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_1 <= io_out_1_r @[Reg.scala 20:22]
    reg io_out_1_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_2 <= io_out_1_r_1 @[Reg.scala 20:22]
    reg io_out_1_r_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_3 <= io_out_1_r_2 @[Reg.scala 20:22]
    reg io_out_1_r_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_4 <= io_out_1_r_3 @[Reg.scala 20:22]
    reg io_out_1_r_5 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_1_r_5) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_1_r_5 <= io_out_1_r_4 @[Reg.scala 20:22]
    io.out[1] <= io_out_1_r_5 @[Modules.scala 306:38]
    wire _io_out_2_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 302:12]
    _io_out_2_WIRE[0] <= swdata[6] @[Modules.scala 302:12]
    _io_out_2_WIRE[1] <= swdata[7] @[Modules.scala 302:12]
    _io_out_2_WIRE[2] <= swdata[0] @[Modules.scala 302:12]
    _io_out_2_WIRE[3] <= swdata[1] @[Modules.scala 302:12]
    _io_out_2_WIRE[4] <= swdata[2] @[Modules.scala 302:12]
    _io_out_2_WIRE[5] <= swdata[3] @[Modules.scala 302:12]
    _io_out_2_WIRE[6] <= swdata[4] @[Modules.scala 302:12]
    _io_out_2_WIRE[7] <= swdata[5] @[Modules.scala 302:12]
    reg io_out_2_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r <= _io_out_2_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_2_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r_1 <= io_out_2_r @[Reg.scala 20:22]
    reg io_out_2_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r_2 <= io_out_2_r_1 @[Reg.scala 20:22]
    reg io_out_2_r_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r_3 <= io_out_2_r_2 @[Reg.scala 20:22]
    reg io_out_2_r_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_2_r_4) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_2_r_4 <= io_out_2_r_3 @[Reg.scala 20:22]
    io.out[2] <= io_out_2_r_4 @[Modules.scala 306:38]
    wire _io_out_3_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 302:12]
    _io_out_3_WIRE[0] <= swdata[5] @[Modules.scala 302:12]
    _io_out_3_WIRE[1] <= swdata[6] @[Modules.scala 302:12]
    _io_out_3_WIRE[2] <= swdata[7] @[Modules.scala 302:12]
    _io_out_3_WIRE[3] <= swdata[0] @[Modules.scala 302:12]
    _io_out_3_WIRE[4] <= swdata[1] @[Modules.scala 302:12]
    _io_out_3_WIRE[5] <= swdata[2] @[Modules.scala 302:12]
    _io_out_3_WIRE[6] <= swdata[3] @[Modules.scala 302:12]
    _io_out_3_WIRE[7] <= swdata[4] @[Modules.scala 302:12]
    reg io_out_3_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_3_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_3_r <= _io_out_3_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_3_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_3_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_3_r_1 <= io_out_3_r @[Reg.scala 20:22]
    reg io_out_3_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_3_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_3_r_2 <= io_out_3_r_1 @[Reg.scala 20:22]
    reg io_out_3_r_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_3_r_3) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_3_r_3 <= io_out_3_r_2 @[Reg.scala 20:22]
    io.out[3] <= io_out_3_r_3 @[Modules.scala 306:38]
    wire _io_out_4_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 302:12]
    _io_out_4_WIRE[0] <= swdata[4] @[Modules.scala 302:12]
    _io_out_4_WIRE[1] <= swdata[5] @[Modules.scala 302:12]
    _io_out_4_WIRE[2] <= swdata[6] @[Modules.scala 302:12]
    _io_out_4_WIRE[3] <= swdata[7] @[Modules.scala 302:12]
    _io_out_4_WIRE[4] <= swdata[0] @[Modules.scala 302:12]
    _io_out_4_WIRE[5] <= swdata[1] @[Modules.scala 302:12]
    _io_out_4_WIRE[6] <= swdata[2] @[Modules.scala 302:12]
    _io_out_4_WIRE[7] <= swdata[3] @[Modules.scala 302:12]
    reg io_out_4_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_4_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_4_r <= _io_out_4_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_4_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_4_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_4_r_1 <= io_out_4_r @[Reg.scala 20:22]
    reg io_out_4_r_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_4_r_2) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_4_r_2 <= io_out_4_r_1 @[Reg.scala 20:22]
    io.out[4] <= io_out_4_r_2 @[Modules.scala 306:38]
    wire _io_out_5_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 302:12]
    _io_out_5_WIRE[0] <= swdata[3] @[Modules.scala 302:12]
    _io_out_5_WIRE[1] <= swdata[4] @[Modules.scala 302:12]
    _io_out_5_WIRE[2] <= swdata[5] @[Modules.scala 302:12]
    _io_out_5_WIRE[3] <= swdata[6] @[Modules.scala 302:12]
    _io_out_5_WIRE[4] <= swdata[7] @[Modules.scala 302:12]
    _io_out_5_WIRE[5] <= swdata[0] @[Modules.scala 302:12]
    _io_out_5_WIRE[6] <= swdata[1] @[Modules.scala 302:12]
    _io_out_5_WIRE[7] <= swdata[2] @[Modules.scala 302:12]
    reg io_out_5_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_5_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_5_r <= _io_out_5_WIRE[io.sel] @[Reg.scala 20:22]
    reg io_out_5_r_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_5_r_1) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_5_r_1 <= io_out_5_r @[Reg.scala 20:22]
    io.out[5] <= io_out_5_r_1 @[Modules.scala 306:38]
    wire _io_out_6_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 302:12]
    _io_out_6_WIRE[0] <= swdata[2] @[Modules.scala 302:12]
    _io_out_6_WIRE[1] <= swdata[3] @[Modules.scala 302:12]
    _io_out_6_WIRE[2] <= swdata[4] @[Modules.scala 302:12]
    _io_out_6_WIRE[3] <= swdata[5] @[Modules.scala 302:12]
    _io_out_6_WIRE[4] <= swdata[6] @[Modules.scala 302:12]
    _io_out_6_WIRE[5] <= swdata[7] @[Modules.scala 302:12]
    _io_out_6_WIRE[6] <= swdata[0] @[Modules.scala 302:12]
    _io_out_6_WIRE[7] <= swdata[1] @[Modules.scala 302:12]
    reg io_out_6_r : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}, clock with :
      reset => (UInt<1>("h0"), io_out_6_r) @[Reg.scala 19:16]
    when UInt<1>("h1") : @[Reg.scala 20:18]
      io_out_6_r <= _io_out_6_WIRE[io.sel] @[Reg.scala 20:22]
    io.out[6] <= io_out_6_r @[Modules.scala 306:38]
    wire _io_out_7_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[Modules.scala 302:12]
    _io_out_7_WIRE[0] <= swdata[1] @[Modules.scala 302:12]
    _io_out_7_WIRE[1] <= swdata[2] @[Modules.scala 302:12]
    _io_out_7_WIRE[2] <= swdata[3] @[Modules.scala 302:12]
    _io_out_7_WIRE[3] <= swdata[4] @[Modules.scala 302:12]
    _io_out_7_WIRE[4] <= swdata[5] @[Modules.scala 302:12]
    _io_out_7_WIRE[5] <= swdata[6] @[Modules.scala 302:12]
    _io_out_7_WIRE[6] <= swdata[7] @[Modules.scala 302:12]
    _io_out_7_WIRE[7] <= swdata[0] @[Modules.scala 302:12]
    io.out[7] <= _io_out_7_WIRE[io.sel] @[Modules.scala 306:38]

  module FFT :
    input clock : Clock
    input reset : Reset
    output io : { flip dIn : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], dOut : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

    reg cnt_0 : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[FFT.scala 110:46]
    node busy = neq(cnt_0, UInt<1>("h0")) @[FFT.scala 114:21]
    node _T = or(io.din_valid, busy) @[FFT.scala 115:21]
    when _T : @[FFT.scala 115:30]
      node _cnt_0_T = eq(cnt_0, UInt<4>("hf")) @[FFT.scala 116:26]
      node _cnt_0_T_1 = add(cnt_0, UInt<1>("h1")) @[FFT.scala 116:87]
      node _cnt_0_T_2 = tail(_cnt_0_T_1, 1) @[FFT.scala 116:87]
      node _cnt_0_T_3 = mux(_cnt_0_T, UInt<1>("h0"), _cnt_0_T_2) @[FFT.scala 116:18]
      cnt_0 <= _cnt_0_T_3 @[FFT.scala 116:12]
    wire _data1_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_1 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_1 <= _data1_T @[FFT.scala 122:113]
    node _data1_T_1 = bits(_data1_WIRE_1, 16, 0) @[FFT.scala 122:113]
    node _data1_T_2 = asFixedPoint(_data1_T_1, 12) @[FFT.scala 122:113]
    _data1_WIRE.im <= _data1_T_2 @[FFT.scala 122:113]
    node _data1_T_3 = bits(_data1_WIRE_1, 33, 17) @[FFT.scala 122:113]
    node _data1_T_4 = asFixedPoint(_data1_T_3, 12) @[FFT.scala 122:113]
    _data1_WIRE.re <= _data1_T_4 @[FFT.scala 122:113]
    wire _data1_WIRE_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_5 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_3 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_3 <= _data1_T_5 @[FFT.scala 122:113]
    node _data1_T_6 = bits(_data1_WIRE_3, 16, 0) @[FFT.scala 122:113]
    node _data1_T_7 = asFixedPoint(_data1_T_6, 12) @[FFT.scala 122:113]
    _data1_WIRE_2.im <= _data1_T_7 @[FFT.scala 122:113]
    node _data1_T_8 = bits(_data1_WIRE_3, 33, 17) @[FFT.scala 122:113]
    node _data1_T_9 = asFixedPoint(_data1_T_8, 12) @[FFT.scala 122:113]
    _data1_WIRE_2.re <= _data1_T_9 @[FFT.scala 122:113]
    wire _data1_WIRE_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_10 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_5 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_5 <= _data1_T_10 @[FFT.scala 122:113]
    node _data1_T_11 = bits(_data1_WIRE_5, 16, 0) @[FFT.scala 122:113]
    node _data1_T_12 = asFixedPoint(_data1_T_11, 12) @[FFT.scala 122:113]
    _data1_WIRE_4.im <= _data1_T_12 @[FFT.scala 122:113]
    node _data1_T_13 = bits(_data1_WIRE_5, 33, 17) @[FFT.scala 122:113]
    node _data1_T_14 = asFixedPoint(_data1_T_13, 12) @[FFT.scala 122:113]
    _data1_WIRE_4.re <= _data1_T_14 @[FFT.scala 122:113]
    wire _data1_WIRE_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_15 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_7 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_7 <= _data1_T_15 @[FFT.scala 122:113]
    node _data1_T_16 = bits(_data1_WIRE_7, 16, 0) @[FFT.scala 122:113]
    node _data1_T_17 = asFixedPoint(_data1_T_16, 12) @[FFT.scala 122:113]
    _data1_WIRE_6.im <= _data1_T_17 @[FFT.scala 122:113]
    node _data1_T_18 = bits(_data1_WIRE_7, 33, 17) @[FFT.scala 122:113]
    node _data1_T_19 = asFixedPoint(_data1_T_18, 12) @[FFT.scala 122:113]
    _data1_WIRE_6.re <= _data1_T_19 @[FFT.scala 122:113]
    wire _data1_WIRE_8 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_20 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_9 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_9 <= _data1_T_20 @[FFT.scala 122:113]
    node _data1_T_21 = bits(_data1_WIRE_9, 16, 0) @[FFT.scala 122:113]
    node _data1_T_22 = asFixedPoint(_data1_T_21, 12) @[FFT.scala 122:113]
    _data1_WIRE_8.im <= _data1_T_22 @[FFT.scala 122:113]
    node _data1_T_23 = bits(_data1_WIRE_9, 33, 17) @[FFT.scala 122:113]
    node _data1_T_24 = asFixedPoint(_data1_T_23, 12) @[FFT.scala 122:113]
    _data1_WIRE_8.re <= _data1_T_24 @[FFT.scala 122:113]
    wire _data1_WIRE_10 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_25 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_11 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_11 <= _data1_T_25 @[FFT.scala 122:113]
    node _data1_T_26 = bits(_data1_WIRE_11, 16, 0) @[FFT.scala 122:113]
    node _data1_T_27 = asFixedPoint(_data1_T_26, 12) @[FFT.scala 122:113]
    _data1_WIRE_10.im <= _data1_T_27 @[FFT.scala 122:113]
    node _data1_T_28 = bits(_data1_WIRE_11, 33, 17) @[FFT.scala 122:113]
    node _data1_T_29 = asFixedPoint(_data1_T_28, 12) @[FFT.scala 122:113]
    _data1_WIRE_10.re <= _data1_T_29 @[FFT.scala 122:113]
    wire _data1_WIRE_12 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_30 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_13 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_13 <= _data1_T_30 @[FFT.scala 122:113]
    node _data1_T_31 = bits(_data1_WIRE_13, 16, 0) @[FFT.scala 122:113]
    node _data1_T_32 = asFixedPoint(_data1_T_31, 12) @[FFT.scala 122:113]
    _data1_WIRE_12.im <= _data1_T_32 @[FFT.scala 122:113]
    node _data1_T_33 = bits(_data1_WIRE_13, 33, 17) @[FFT.scala 122:113]
    node _data1_T_34 = asFixedPoint(_data1_T_33, 12) @[FFT.scala 122:113]
    _data1_WIRE_12.re <= _data1_T_34 @[FFT.scala 122:113]
    wire _data1_WIRE_14 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_35 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_15 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_15 <= _data1_T_35 @[FFT.scala 122:113]
    node _data1_T_36 = bits(_data1_WIRE_15, 16, 0) @[FFT.scala 122:113]
    node _data1_T_37 = asFixedPoint(_data1_T_36, 12) @[FFT.scala 122:113]
    _data1_WIRE_14.im <= _data1_T_37 @[FFT.scala 122:113]
    node _data1_T_38 = bits(_data1_WIRE_15, 33, 17) @[FFT.scala 122:113]
    node _data1_T_39 = asFixedPoint(_data1_T_38, 12) @[FFT.scala 122:113]
    _data1_WIRE_14.re <= _data1_T_39 @[FFT.scala 122:113]
    wire data1_0_0 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[FFT.scala 122:65]
    data1_0_0[0] <= _data1_WIRE @[FFT.scala 122:65]
    data1_0_0[1] <= _data1_WIRE_2 @[FFT.scala 122:65]
    data1_0_0[2] <= _data1_WIRE_4 @[FFT.scala 122:65]
    data1_0_0[3] <= _data1_WIRE_6 @[FFT.scala 122:65]
    data1_0_0[4] <= _data1_WIRE_8 @[FFT.scala 122:65]
    data1_0_0[5] <= _data1_WIRE_10 @[FFT.scala 122:65]
    data1_0_0[6] <= _data1_WIRE_12 @[FFT.scala 122:65]
    data1_0_0[7] <= _data1_WIRE_14 @[FFT.scala 122:65]
    wire _data1_WIRE_16 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_40 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_17 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_17 <= _data1_T_40 @[FFT.scala 122:113]
    node _data1_T_41 = bits(_data1_WIRE_17, 16, 0) @[FFT.scala 122:113]
    node _data1_T_42 = asFixedPoint(_data1_T_41, 12) @[FFT.scala 122:113]
    _data1_WIRE_16.im <= _data1_T_42 @[FFT.scala 122:113]
    node _data1_T_43 = bits(_data1_WIRE_17, 33, 17) @[FFT.scala 122:113]
    node _data1_T_44 = asFixedPoint(_data1_T_43, 12) @[FFT.scala 122:113]
    _data1_WIRE_16.re <= _data1_T_44 @[FFT.scala 122:113]
    wire _data1_WIRE_18 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_45 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_19 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_19 <= _data1_T_45 @[FFT.scala 122:113]
    node _data1_T_46 = bits(_data1_WIRE_19, 16, 0) @[FFT.scala 122:113]
    node _data1_T_47 = asFixedPoint(_data1_T_46, 12) @[FFT.scala 122:113]
    _data1_WIRE_18.im <= _data1_T_47 @[FFT.scala 122:113]
    node _data1_T_48 = bits(_data1_WIRE_19, 33, 17) @[FFT.scala 122:113]
    node _data1_T_49 = asFixedPoint(_data1_T_48, 12) @[FFT.scala 122:113]
    _data1_WIRE_18.re <= _data1_T_49 @[FFT.scala 122:113]
    wire _data1_WIRE_20 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_50 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_21 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_21 <= _data1_T_50 @[FFT.scala 122:113]
    node _data1_T_51 = bits(_data1_WIRE_21, 16, 0) @[FFT.scala 122:113]
    node _data1_T_52 = asFixedPoint(_data1_T_51, 12) @[FFT.scala 122:113]
    _data1_WIRE_20.im <= _data1_T_52 @[FFT.scala 122:113]
    node _data1_T_53 = bits(_data1_WIRE_21, 33, 17) @[FFT.scala 122:113]
    node _data1_T_54 = asFixedPoint(_data1_T_53, 12) @[FFT.scala 122:113]
    _data1_WIRE_20.re <= _data1_T_54 @[FFT.scala 122:113]
    wire _data1_WIRE_22 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_55 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_23 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_23 <= _data1_T_55 @[FFT.scala 122:113]
    node _data1_T_56 = bits(_data1_WIRE_23, 16, 0) @[FFT.scala 122:113]
    node _data1_T_57 = asFixedPoint(_data1_T_56, 12) @[FFT.scala 122:113]
    _data1_WIRE_22.im <= _data1_T_57 @[FFT.scala 122:113]
    node _data1_T_58 = bits(_data1_WIRE_23, 33, 17) @[FFT.scala 122:113]
    node _data1_T_59 = asFixedPoint(_data1_T_58, 12) @[FFT.scala 122:113]
    _data1_WIRE_22.re <= _data1_T_59 @[FFT.scala 122:113]
    wire _data1_WIRE_24 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_60 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_25 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_25 <= _data1_T_60 @[FFT.scala 122:113]
    node _data1_T_61 = bits(_data1_WIRE_25, 16, 0) @[FFT.scala 122:113]
    node _data1_T_62 = asFixedPoint(_data1_T_61, 12) @[FFT.scala 122:113]
    _data1_WIRE_24.im <= _data1_T_62 @[FFT.scala 122:113]
    node _data1_T_63 = bits(_data1_WIRE_25, 33, 17) @[FFT.scala 122:113]
    node _data1_T_64 = asFixedPoint(_data1_T_63, 12) @[FFT.scala 122:113]
    _data1_WIRE_24.re <= _data1_T_64 @[FFT.scala 122:113]
    wire _data1_WIRE_26 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_65 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_27 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_27 <= _data1_T_65 @[FFT.scala 122:113]
    node _data1_T_66 = bits(_data1_WIRE_27, 16, 0) @[FFT.scala 122:113]
    node _data1_T_67 = asFixedPoint(_data1_T_66, 12) @[FFT.scala 122:113]
    _data1_WIRE_26.im <= _data1_T_67 @[FFT.scala 122:113]
    node _data1_T_68 = bits(_data1_WIRE_27, 33, 17) @[FFT.scala 122:113]
    node _data1_T_69 = asFixedPoint(_data1_T_68, 12) @[FFT.scala 122:113]
    _data1_WIRE_26.re <= _data1_T_69 @[FFT.scala 122:113]
    wire _data1_WIRE_28 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_70 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_29 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_29 <= _data1_T_70 @[FFT.scala 122:113]
    node _data1_T_71 = bits(_data1_WIRE_29, 16, 0) @[FFT.scala 122:113]
    node _data1_T_72 = asFixedPoint(_data1_T_71, 12) @[FFT.scala 122:113]
    _data1_WIRE_28.im <= _data1_T_72 @[FFT.scala 122:113]
    node _data1_T_73 = bits(_data1_WIRE_29, 33, 17) @[FFT.scala 122:113]
    node _data1_T_74 = asFixedPoint(_data1_T_73, 12) @[FFT.scala 122:113]
    _data1_WIRE_28.re <= _data1_T_74 @[FFT.scala 122:113]
    wire _data1_WIRE_30 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 122:113]
    node _data1_T_75 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 122:113]
    wire _data1_WIRE_31 : UInt<34> @[FFT.scala 122:113]
    _data1_WIRE_31 <= _data1_T_75 @[FFT.scala 122:113]
    node _data1_T_76 = bits(_data1_WIRE_31, 16, 0) @[FFT.scala 122:113]
    node _data1_T_77 = asFixedPoint(_data1_T_76, 12) @[FFT.scala 122:113]
    _data1_WIRE_30.im <= _data1_T_77 @[FFT.scala 122:113]
    node _data1_T_78 = bits(_data1_WIRE_31, 33, 17) @[FFT.scala 122:113]
    node _data1_T_79 = asFixedPoint(_data1_T_78, 12) @[FFT.scala 122:113]
    _data1_WIRE_30.re <= _data1_T_79 @[FFT.scala 122:113]
    wire data1_1_0 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[FFT.scala 122:65]
    data1_1_0[0] <= _data1_WIRE_16 @[FFT.scala 122:65]
    data1_1_0[1] <= _data1_WIRE_18 @[FFT.scala 122:65]
    data1_1_0[2] <= _data1_WIRE_20 @[FFT.scala 122:65]
    data1_1_0[3] <= _data1_WIRE_22 @[FFT.scala 122:65]
    data1_1_0[4] <= _data1_WIRE_24 @[FFT.scala 122:65]
    data1_1_0[5] <= _data1_WIRE_26 @[FFT.scala 122:65]
    data1_1_0[6] <= _data1_WIRE_28 @[FFT.scala 122:65]
    data1_1_0[7] <= _data1_WIRE_30 @[FFT.scala 122:65]
    wire _data2_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 123:117]
    node _data2_T = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 123:117]
    wire _data2_WIRE_1 : UInt<34> @[FFT.scala 123:117]
    _data2_WIRE_1 <= _data2_T @[FFT.scala 123:117]
    node _data2_T_1 = bits(_data2_WIRE_1, 16, 0) @[FFT.scala 123:117]
    node _data2_T_2 = asFixedPoint(_data2_T_1, 12) @[FFT.scala 123:117]
    _data2_WIRE.im <= _data2_T_2 @[FFT.scala 123:117]
    node _data2_T_3 = bits(_data2_WIRE_1, 33, 17) @[FFT.scala 123:117]
    node _data2_T_4 = asFixedPoint(_data2_T_3, 12) @[FFT.scala 123:117]
    _data2_WIRE.re <= _data2_T_4 @[FFT.scala 123:117]
    wire _data2_WIRE_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 123:117]
    node _data2_T_5 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 123:117]
    wire _data2_WIRE_3 : UInt<34> @[FFT.scala 123:117]
    _data2_WIRE_3 <= _data2_T_5 @[FFT.scala 123:117]
    node _data2_T_6 = bits(_data2_WIRE_3, 16, 0) @[FFT.scala 123:117]
    node _data2_T_7 = asFixedPoint(_data2_T_6, 12) @[FFT.scala 123:117]
    _data2_WIRE_2.im <= _data2_T_7 @[FFT.scala 123:117]
    node _data2_T_8 = bits(_data2_WIRE_3, 33, 17) @[FFT.scala 123:117]
    node _data2_T_9 = asFixedPoint(_data2_T_8, 12) @[FFT.scala 123:117]
    _data2_WIRE_2.re <= _data2_T_9 @[FFT.scala 123:117]
    wire _data2_WIRE_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 123:117]
    node _data2_T_10 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 123:117]
    wire _data2_WIRE_5 : UInt<34> @[FFT.scala 123:117]
    _data2_WIRE_5 <= _data2_T_10 @[FFT.scala 123:117]
    node _data2_T_11 = bits(_data2_WIRE_5, 16, 0) @[FFT.scala 123:117]
    node _data2_T_12 = asFixedPoint(_data2_T_11, 12) @[FFT.scala 123:117]
    _data2_WIRE_4.im <= _data2_T_12 @[FFT.scala 123:117]
    node _data2_T_13 = bits(_data2_WIRE_5, 33, 17) @[FFT.scala 123:117]
    node _data2_T_14 = asFixedPoint(_data2_T_13, 12) @[FFT.scala 123:117]
    _data2_WIRE_4.re <= _data2_T_14 @[FFT.scala 123:117]
    wire _data2_WIRE_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 123:117]
    node _data2_T_15 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 123:117]
    wire _data2_WIRE_7 : UInt<34> @[FFT.scala 123:117]
    _data2_WIRE_7 <= _data2_T_15 @[FFT.scala 123:117]
    node _data2_T_16 = bits(_data2_WIRE_7, 16, 0) @[FFT.scala 123:117]
    node _data2_T_17 = asFixedPoint(_data2_T_16, 12) @[FFT.scala 123:117]
    _data2_WIRE_6.im <= _data2_T_17 @[FFT.scala 123:117]
    node _data2_T_18 = bits(_data2_WIRE_7, 33, 17) @[FFT.scala 123:117]
    node _data2_T_19 = asFixedPoint(_data2_T_18, 12) @[FFT.scala 123:117]
    _data2_WIRE_6.re <= _data2_T_19 @[FFT.scala 123:117]
    wire _data2_WIRE_8 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 123:117]
    node _data2_T_20 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 123:117]
    wire _data2_WIRE_9 : UInt<34> @[FFT.scala 123:117]
    _data2_WIRE_9 <= _data2_T_20 @[FFT.scala 123:117]
    node _data2_T_21 = bits(_data2_WIRE_9, 16, 0) @[FFT.scala 123:117]
    node _data2_T_22 = asFixedPoint(_data2_T_21, 12) @[FFT.scala 123:117]
    _data2_WIRE_8.im <= _data2_T_22 @[FFT.scala 123:117]
    node _data2_T_23 = bits(_data2_WIRE_9, 33, 17) @[FFT.scala 123:117]
    node _data2_T_24 = asFixedPoint(_data2_T_23, 12) @[FFT.scala 123:117]
    _data2_WIRE_8.re <= _data2_T_24 @[FFT.scala 123:117]
    wire _data2_WIRE_10 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 123:117]
    node _data2_T_25 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 123:117]
    wire _data2_WIRE_11 : UInt<34> @[FFT.scala 123:117]
    _data2_WIRE_11 <= _data2_T_25 @[FFT.scala 123:117]
    node _data2_T_26 = bits(_data2_WIRE_11, 16, 0) @[FFT.scala 123:117]
    node _data2_T_27 = asFixedPoint(_data2_T_26, 12) @[FFT.scala 123:117]
    _data2_WIRE_10.im <= _data2_T_27 @[FFT.scala 123:117]
    node _data2_T_28 = bits(_data2_WIRE_11, 33, 17) @[FFT.scala 123:117]
    node _data2_T_29 = asFixedPoint(_data2_T_28, 12) @[FFT.scala 123:117]
    _data2_WIRE_10.re <= _data2_T_29 @[FFT.scala 123:117]
    wire _data2_WIRE_12 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 123:117]
    node _data2_T_30 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 123:117]
    wire _data2_WIRE_13 : UInt<34> @[FFT.scala 123:117]
    _data2_WIRE_13 <= _data2_T_30 @[FFT.scala 123:117]
    node _data2_T_31 = bits(_data2_WIRE_13, 16, 0) @[FFT.scala 123:117]
    node _data2_T_32 = asFixedPoint(_data2_T_31, 12) @[FFT.scala 123:117]
    _data2_WIRE_12.im <= _data2_T_32 @[FFT.scala 123:117]
    node _data2_T_33 = bits(_data2_WIRE_13, 33, 17) @[FFT.scala 123:117]
    node _data2_T_34 = asFixedPoint(_data2_T_33, 12) @[FFT.scala 123:117]
    _data2_WIRE_12.re <= _data2_T_34 @[FFT.scala 123:117]
    wire _data2_WIRE_14 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 123:117]
    node _data2_T_35 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 123:117]
    wire _data2_WIRE_15 : UInt<34> @[FFT.scala 123:117]
    _data2_WIRE_15 <= _data2_T_35 @[FFT.scala 123:117]
    node _data2_T_36 = bits(_data2_WIRE_15, 16, 0) @[FFT.scala 123:117]
    node _data2_T_37 = asFixedPoint(_data2_T_36, 12) @[FFT.scala 123:117]
    _data2_WIRE_14.im <= _data2_T_37 @[FFT.scala 123:117]
    node _data2_T_38 = bits(_data2_WIRE_15, 33, 17) @[FFT.scala 123:117]
    node _data2_T_39 = asFixedPoint(_data2_T_38, 12) @[FFT.scala 123:117]
    _data2_WIRE_14.re <= _data2_T_39 @[FFT.scala 123:117]
    wire data2_0_0 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[FFT.scala 123:69]
    data2_0_0[0] <= _data2_WIRE @[FFT.scala 123:69]
    data2_0_0[1] <= _data2_WIRE_2 @[FFT.scala 123:69]
    data2_0_0[2] <= _data2_WIRE_4 @[FFT.scala 123:69]
    data2_0_0[3] <= _data2_WIRE_6 @[FFT.scala 123:69]
    data2_0_0[4] <= _data2_WIRE_8 @[FFT.scala 123:69]
    data2_0_0[5] <= _data2_WIRE_10 @[FFT.scala 123:69]
    data2_0_0[6] <= _data2_WIRE_12 @[FFT.scala 123:69]
    data2_0_0[7] <= _data2_WIRE_14 @[FFT.scala 123:69]
    wire _datao_WIRE : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 124:86]
    node _datao_T = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 124:86]
    wire _datao_WIRE_1 : UInt<34> @[FFT.scala 124:86]
    _datao_WIRE_1 <= _datao_T @[FFT.scala 124:86]
    node _datao_T_1 = bits(_datao_WIRE_1, 16, 0) @[FFT.scala 124:86]
    node _datao_T_2 = asFixedPoint(_datao_T_1, 12) @[FFT.scala 124:86]
    _datao_WIRE.im <= _datao_T_2 @[FFT.scala 124:86]
    node _datao_T_3 = bits(_datao_WIRE_1, 33, 17) @[FFT.scala 124:86]
    node _datao_T_4 = asFixedPoint(_datao_T_3, 12) @[FFT.scala 124:86]
    _datao_WIRE.re <= _datao_T_4 @[FFT.scala 124:86]
    wire _datao_WIRE_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 124:86]
    node _datao_T_5 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 124:86]
    wire _datao_WIRE_3 : UInt<34> @[FFT.scala 124:86]
    _datao_WIRE_3 <= _datao_T_5 @[FFT.scala 124:86]
    node _datao_T_6 = bits(_datao_WIRE_3, 16, 0) @[FFT.scala 124:86]
    node _datao_T_7 = asFixedPoint(_datao_T_6, 12) @[FFT.scala 124:86]
    _datao_WIRE_2.im <= _datao_T_7 @[FFT.scala 124:86]
    node _datao_T_8 = bits(_datao_WIRE_3, 33, 17) @[FFT.scala 124:86]
    node _datao_T_9 = asFixedPoint(_datao_T_8, 12) @[FFT.scala 124:86]
    _datao_WIRE_2.re <= _datao_T_9 @[FFT.scala 124:86]
    wire _datao_WIRE_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 124:86]
    node _datao_T_10 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 124:86]
    wire _datao_WIRE_5 : UInt<34> @[FFT.scala 124:86]
    _datao_WIRE_5 <= _datao_T_10 @[FFT.scala 124:86]
    node _datao_T_11 = bits(_datao_WIRE_5, 16, 0) @[FFT.scala 124:86]
    node _datao_T_12 = asFixedPoint(_datao_T_11, 12) @[FFT.scala 124:86]
    _datao_WIRE_4.im <= _datao_T_12 @[FFT.scala 124:86]
    node _datao_T_13 = bits(_datao_WIRE_5, 33, 17) @[FFT.scala 124:86]
    node _datao_T_14 = asFixedPoint(_datao_T_13, 12) @[FFT.scala 124:86]
    _datao_WIRE_4.re <= _datao_T_14 @[FFT.scala 124:86]
    wire _datao_WIRE_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 124:86]
    node _datao_T_15 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 124:86]
    wire _datao_WIRE_7 : UInt<34> @[FFT.scala 124:86]
    _datao_WIRE_7 <= _datao_T_15 @[FFT.scala 124:86]
    node _datao_T_16 = bits(_datao_WIRE_7, 16, 0) @[FFT.scala 124:86]
    node _datao_T_17 = asFixedPoint(_datao_T_16, 12) @[FFT.scala 124:86]
    _datao_WIRE_6.im <= _datao_T_17 @[FFT.scala 124:86]
    node _datao_T_18 = bits(_datao_WIRE_7, 33, 17) @[FFT.scala 124:86]
    node _datao_T_19 = asFixedPoint(_datao_T_18, 12) @[FFT.scala 124:86]
    _datao_WIRE_6.re <= _datao_T_19 @[FFT.scala 124:86]
    wire _datao_WIRE_8 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 124:86]
    node _datao_T_20 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 124:86]
    wire _datao_WIRE_9 : UInt<34> @[FFT.scala 124:86]
    _datao_WIRE_9 <= _datao_T_20 @[FFT.scala 124:86]
    node _datao_T_21 = bits(_datao_WIRE_9, 16, 0) @[FFT.scala 124:86]
    node _datao_T_22 = asFixedPoint(_datao_T_21, 12) @[FFT.scala 124:86]
    _datao_WIRE_8.im <= _datao_T_22 @[FFT.scala 124:86]
    node _datao_T_23 = bits(_datao_WIRE_9, 33, 17) @[FFT.scala 124:86]
    node _datao_T_24 = asFixedPoint(_datao_T_23, 12) @[FFT.scala 124:86]
    _datao_WIRE_8.re <= _datao_T_24 @[FFT.scala 124:86]
    wire _datao_WIRE_10 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 124:86]
    node _datao_T_25 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 124:86]
    wire _datao_WIRE_11 : UInt<34> @[FFT.scala 124:86]
    _datao_WIRE_11 <= _datao_T_25 @[FFT.scala 124:86]
    node _datao_T_26 = bits(_datao_WIRE_11, 16, 0) @[FFT.scala 124:86]
    node _datao_T_27 = asFixedPoint(_datao_T_26, 12) @[FFT.scala 124:86]
    _datao_WIRE_10.im <= _datao_T_27 @[FFT.scala 124:86]
    node _datao_T_28 = bits(_datao_WIRE_11, 33, 17) @[FFT.scala 124:86]
    node _datao_T_29 = asFixedPoint(_datao_T_28, 12) @[FFT.scala 124:86]
    _datao_WIRE_10.re <= _datao_T_29 @[FFT.scala 124:86]
    wire _datao_WIRE_12 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 124:86]
    node _datao_T_30 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 124:86]
    wire _datao_WIRE_13 : UInt<34> @[FFT.scala 124:86]
    _datao_WIRE_13 <= _datao_T_30 @[FFT.scala 124:86]
    node _datao_T_31 = bits(_datao_WIRE_13, 16, 0) @[FFT.scala 124:86]
    node _datao_T_32 = asFixedPoint(_datao_T_31, 12) @[FFT.scala 124:86]
    _datao_WIRE_12.im <= _datao_T_32 @[FFT.scala 124:86]
    node _datao_T_33 = bits(_datao_WIRE_13, 33, 17) @[FFT.scala 124:86]
    node _datao_T_34 = asFixedPoint(_datao_T_33, 12) @[FFT.scala 124:86]
    _datao_WIRE_12.re <= _datao_T_34 @[FFT.scala 124:86]
    wire _datao_WIRE_14 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 124:86]
    node _datao_T_35 = asUInt(asSInt(UInt<34>("h0"))) @[FFT.scala 124:86]
    wire _datao_WIRE_15 : UInt<34> @[FFT.scala 124:86]
    _datao_WIRE_15 <= _datao_T_35 @[FFT.scala 124:86]
    node _datao_T_36 = bits(_datao_WIRE_15, 16, 0) @[FFT.scala 124:86]
    node _datao_T_37 = asFixedPoint(_datao_T_36, 12) @[FFT.scala 124:86]
    _datao_WIRE_14.im <= _datao_T_37 @[FFT.scala 124:86]
    node _datao_T_38 = bits(_datao_WIRE_15, 33, 17) @[FFT.scala 124:86]
    node _datao_T_39 = asFixedPoint(_datao_T_38, 12) @[FFT.scala 124:86]
    _datao_WIRE_14.re <= _datao_T_39 @[FFT.scala 124:86]
    wire datao : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8] @[FFT.scala 124:22]
    datao[0] <= _datao_WIRE @[FFT.scala 124:22]
    datao[1] <= _datao_WIRE_2 @[FFT.scala 124:22]
    datao[2] <= _datao_WIRE_4 @[FFT.scala 124:22]
    datao[3] <= _datao_WIRE_6 @[FFT.scala 124:22]
    datao[4] <= _datao_WIRE_8 @[FFT.scala 124:22]
    datao[5] <= _datao_WIRE_10 @[FFT.scala 124:22]
    datao[6] <= _datao_WIRE_12 @[FFT.scala 124:22]
    datao[7] <= _datao_WIRE_14 @[FFT.scala 124:22]
    node wnCtrl = bits(cnt_0, 2, 0) @[FFT.scala 131:23]
    node _wnList_T = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 135:148]
    node _wnList_T_1 = tail(_wnList_T, 1) @[FFT.scala 135:148]
    wire wnList_0 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 71:19]
    wire _wnList_res_re_WIRE : Fixed<17><<12>>[8] @[FFT.scala 68:12]
    _wnList_res_re_WIRE[0] <= asFixedPoint(UInt<17>("h1000"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE[1] <= asFixedPoint(UInt<17>("hfec"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE[2] <= asFixedPoint(UInt<17>("hfb1"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE[3] <= asFixedPoint(UInt<17>("hf50"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE[4] <= asFixedPoint(UInt<17>("hec8"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE[5] <= asFixedPoint(UInt<17>("he1c"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE[6] <= asFixedPoint(UInt<17>("hd4e"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE[7] <= asFixedPoint(UInt<17>("hc5e"), 12) @[FFT.scala 68:12]
    wnList_0.re <= _wnList_res_re_WIRE[_wnList_T_1] @[FFT.scala 72:12]
    wire _wnList_res_im_WIRE : Fixed<17><<12>>[8] @[FFT.scala 64:12]
    _wnList_res_im_WIRE[0] <= asFixedPoint(UInt<17>("h0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE[1] <= asFixedPoint(UInt<17>("h1fe6f"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE[2] <= asFixedPoint(UInt<17>("h1fce1"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE[3] <= asFixedPoint(UInt<17>("h1fb5b"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE[4] <= asFixedPoint(UInt<17>("h1f9e1"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE[5] <= asFixedPoint(UInt<17>("h1f875"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE[6] <= asFixedPoint(UInt<17>("h1f71c"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE[7] <= asFixedPoint(UInt<17>("h1f5da"), 12) @[FFT.scala 64:12]
    wnList_0.im <= _wnList_res_im_WIRE[_wnList_T_1] @[FFT.scala 73:12]
    node _wnList_T_2 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 135:148]
    node _wnList_T_3 = tail(_wnList_T_2, 1) @[FFT.scala 135:148]
    wire wnList_1 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 71:19]
    wire _wnList_res_re_WIRE_1 : Fixed<17><<12>>[8] @[FFT.scala 68:12]
    _wnList_res_re_WIRE_1[0] <= asFixedPoint(UInt<17>("h1000"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_1[1] <= asFixedPoint(UInt<17>("hfb1"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_1[2] <= asFixedPoint(UInt<17>("hec8"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_1[3] <= asFixedPoint(UInt<17>("hd4e"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_1[4] <= asFixedPoint(UInt<17>("hb50"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_1[5] <= asFixedPoint(UInt<17>("h8e4"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_1[6] <= asFixedPoint(UInt<17>("h61f"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_1[7] <= asFixedPoint(UInt<17>("h31f"), 12) @[FFT.scala 68:12]
    wnList_1.re <= _wnList_res_re_WIRE_1[_wnList_T_3] @[FFT.scala 72:12]
    wire _wnList_res_im_WIRE_1 : Fixed<17><<12>>[8] @[FFT.scala 64:12]
    _wnList_res_im_WIRE_1[0] <= asFixedPoint(UInt<17>("h0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_1[1] <= asFixedPoint(UInt<17>("h1fce1"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_1[2] <= asFixedPoint(UInt<17>("h1f9e1"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_1[3] <= asFixedPoint(UInt<17>("h1f71c"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_1[4] <= asFixedPoint(UInt<17>("h1f4b0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_1[5] <= asFixedPoint(UInt<17>("h1f2b2"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_1[6] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_1[7] <= asFixedPoint(UInt<17>("h1f04f"), 12) @[FFT.scala 64:12]
    wnList_1.im <= _wnList_res_im_WIRE_1[_wnList_T_3] @[FFT.scala 73:12]
    node _wnList_T_4 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 135:148]
    node _wnList_T_5 = tail(_wnList_T_4, 1) @[FFT.scala 135:148]
    wire wnList_2 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 71:19]
    wire _wnList_res_re_WIRE_2 : Fixed<17><<12>>[8] @[FFT.scala 68:12]
    _wnList_res_re_WIRE_2[0] <= asFixedPoint(UInt<17>("h1000"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_2[1] <= asFixedPoint(UInt<17>("hf50"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_2[2] <= asFixedPoint(UInt<17>("hd4e"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_2[3] <= asFixedPoint(UInt<17>("ha26"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_2[4] <= asFixedPoint(UInt<17>("h61f"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_2[5] <= asFixedPoint(UInt<17>("h191"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_2[6] <= asFixedPoint(UInt<17>("h1fce1"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_2[7] <= asFixedPoint(UInt<17>("h1f875"), 12) @[FFT.scala 68:12]
    wnList_2.re <= _wnList_res_re_WIRE_2[_wnList_T_5] @[FFT.scala 72:12]
    wire _wnList_res_im_WIRE_2 : Fixed<17><<12>>[8] @[FFT.scala 64:12]
    _wnList_res_im_WIRE_2[0] <= asFixedPoint(UInt<17>("h0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_2[1] <= asFixedPoint(UInt<17>("h1fb5b"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_2[2] <= asFixedPoint(UInt<17>("h1f71c"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_2[3] <= asFixedPoint(UInt<17>("h1f3a2"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_2[4] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_2[5] <= asFixedPoint(UInt<17>("h1f014"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_2[6] <= asFixedPoint(UInt<17>("h1f04f"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_2[7] <= asFixedPoint(UInt<17>("h1f1e4"), 12) @[FFT.scala 64:12]
    wnList_2.im <= _wnList_res_im_WIRE_2[_wnList_T_5] @[FFT.scala 73:12]
    node _wnList_T_6 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 135:148]
    node _wnList_T_7 = tail(_wnList_T_6, 1) @[FFT.scala 135:148]
    wire wnList_3 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 71:19]
    wire _wnList_res_re_WIRE_3 : Fixed<17><<12>>[8] @[FFT.scala 68:12]
    _wnList_res_re_WIRE_3[0] <= asFixedPoint(UInt<17>("h1000"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_3[1] <= asFixedPoint(UInt<17>("hec8"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_3[2] <= asFixedPoint(UInt<17>("hb50"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_3[3] <= asFixedPoint(UInt<17>("h61f"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_3[4] <= asFixedPoint(UInt<17>("h0"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_3[5] <= asFixedPoint(UInt<17>("h1f9e1"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_3[6] <= asFixedPoint(UInt<17>("h1f4b0"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_3[7] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 68:12]
    wnList_3.re <= _wnList_res_re_WIRE_3[_wnList_T_7] @[FFT.scala 72:12]
    wire _wnList_res_im_WIRE_3 : Fixed<17><<12>>[8] @[FFT.scala 64:12]
    _wnList_res_im_WIRE_3[0] <= asFixedPoint(UInt<17>("h0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_3[1] <= asFixedPoint(UInt<17>("h1f9e1"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_3[2] <= asFixedPoint(UInt<17>("h1f4b0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_3[3] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_3[4] <= asFixedPoint(UInt<17>("h1f000"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_3[5] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_3[6] <= asFixedPoint(UInt<17>("h1f4b0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_3[7] <= asFixedPoint(UInt<17>("h1f9e1"), 12) @[FFT.scala 64:12]
    wnList_3.im <= _wnList_res_im_WIRE_3[_wnList_T_7] @[FFT.scala 73:12]
    node _wnList_T_8 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 135:148]
    node _wnList_T_9 = tail(_wnList_T_8, 1) @[FFT.scala 135:148]
    wire wnList_4 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 71:19]
    wire _wnList_res_re_WIRE_4 : Fixed<17><<12>>[8] @[FFT.scala 68:12]
    _wnList_res_re_WIRE_4[0] <= asFixedPoint(UInt<17>("h1000"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_4[1] <= asFixedPoint(UInt<17>("he1c"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_4[2] <= asFixedPoint(UInt<17>("h8e4"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_4[3] <= asFixedPoint(UInt<17>("h191"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_4[4] <= asFixedPoint(UInt<17>("h1f9e1"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_4[5] <= asFixedPoint(UInt<17>("h1f3a2"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_4[6] <= asFixedPoint(UInt<17>("h1f04f"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_4[7] <= asFixedPoint(UInt<17>("h1f0b0"), 12) @[FFT.scala 68:12]
    wnList_4.re <= _wnList_res_re_WIRE_4[_wnList_T_9] @[FFT.scala 72:12]
    wire _wnList_res_im_WIRE_4 : Fixed<17><<12>>[8] @[FFT.scala 64:12]
    _wnList_res_im_WIRE_4[0] <= asFixedPoint(UInt<17>("h0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_4[1] <= asFixedPoint(UInt<17>("h1f875"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_4[2] <= asFixedPoint(UInt<17>("h1f2b2"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_4[3] <= asFixedPoint(UInt<17>("h1f014"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_4[4] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_4[5] <= asFixedPoint(UInt<17>("h1f5da"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_4[6] <= asFixedPoint(UInt<17>("h1fce1"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_4[7] <= asFixedPoint(UInt<17>("h4a5"), 12) @[FFT.scala 64:12]
    wnList_4.im <= _wnList_res_im_WIRE_4[_wnList_T_9] @[FFT.scala 73:12]
    node _wnList_T_10 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 135:148]
    node _wnList_T_11 = tail(_wnList_T_10, 1) @[FFT.scala 135:148]
    wire wnList_5 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 71:19]
    wire _wnList_res_re_WIRE_5 : Fixed<17><<12>>[8] @[FFT.scala 68:12]
    _wnList_res_re_WIRE_5[0] <= asFixedPoint(UInt<17>("h1000"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_5[1] <= asFixedPoint(UInt<17>("hd4e"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_5[2] <= asFixedPoint(UInt<17>("h61f"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_5[3] <= asFixedPoint(UInt<17>("h1fce1"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_5[4] <= asFixedPoint(UInt<17>("h1f4b0"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_5[5] <= asFixedPoint(UInt<17>("h1f04f"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_5[6] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_5[7] <= asFixedPoint(UInt<17>("h1f71c"), 12) @[FFT.scala 68:12]
    wnList_5.re <= _wnList_res_re_WIRE_5[_wnList_T_11] @[FFT.scala 72:12]
    wire _wnList_res_im_WIRE_5 : Fixed<17><<12>>[8] @[FFT.scala 64:12]
    _wnList_res_im_WIRE_5[0] <= asFixedPoint(UInt<17>("h0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_5[1] <= asFixedPoint(UInt<17>("h1f71c"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_5[2] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_5[3] <= asFixedPoint(UInt<17>("h1f04f"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_5[4] <= asFixedPoint(UInt<17>("h1f4b0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_5[5] <= asFixedPoint(UInt<17>("h1fce1"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_5[6] <= asFixedPoint(UInt<17>("h61f"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_5[7] <= asFixedPoint(UInt<17>("hd4e"), 12) @[FFT.scala 64:12]
    wnList_5.im <= _wnList_res_im_WIRE_5[_wnList_T_11] @[FFT.scala 73:12]
    node _wnList_T_12 = add(UInt<1>("h0"), wnCtrl) @[FFT.scala 135:148]
    node _wnList_T_13 = tail(_wnList_T_12, 1) @[FFT.scala 135:148]
    wire wnList_6 : { re : Fixed<17><<12>>, im : Fixed<17><<12>>} @[FFT.scala 71:19]
    wire _wnList_res_re_WIRE_6 : Fixed<17><<12>>[8] @[FFT.scala 68:12]
    _wnList_res_re_WIRE_6[0] <= asFixedPoint(UInt<17>("h1000"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_6[1] <= asFixedPoint(UInt<17>("hc5e"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_6[2] <= asFixedPoint(UInt<17>("h31f"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_6[3] <= asFixedPoint(UInt<17>("h1f875"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_6[4] <= asFixedPoint(UInt<17>("h1f138"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_6[5] <= asFixedPoint(UInt<17>("h1f0b0"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_6[6] <= asFixedPoint(UInt<17>("h1f71c"), 12) @[FFT.scala 68:12]
    _wnList_res_re_WIRE_6[7] <= asFixedPoint(UInt<17>("h191"), 12) @[FFT.scala 68:12]
    wnList_6.re <= _wnList_res_re_WIRE_6[_wnList_T_13] @[FFT.scala 72:12]
    wire _wnList_res_im_WIRE_6 : Fixed<17><<12>>[8] @[FFT.scala 64:12]
    _wnList_res_im_WIRE_6[0] <= asFixedPoint(UInt<17>("h0"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_6[1] <= asFixedPoint(UInt<17>("h1f5da"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_6[2] <= asFixedPoint(UInt<17>("h1f04f"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_6[3] <= asFixedPoint(UInt<17>("h1f1e4"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_6[4] <= asFixedPoint(UInt<17>("h1f9e1"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_6[5] <= asFixedPoint(UInt<17>("h4a5"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_6[6] <= asFixedPoint(UInt<17>("hd4e"), 12) @[FFT.scala 64:12]
    _wnList_res_im_WIRE_6[7] <= asFixedPoint(UInt<17>("hfec"), 12) @[FFT.scala 64:12]
    wnList_6.im <= _wnList_res_im_WIRE_6[_wnList_T_13] @[FFT.scala 73:12]
    inst inst of ButterflyMul @[Modules.scala 287:22]
    inst.clock <= clock
    inst.reset <= reset
    inst.io.in[0].im <= data1_0_0[0].im @[Modules.scala 288:16]
    inst.io.in[0].re <= data1_0_0[0].re @[Modules.scala 288:16]
    inst.io.in[1].im <= data1_0_0[1].im @[Modules.scala 288:16]
    inst.io.in[1].re <= data1_0_0[1].re @[Modules.scala 288:16]
    inst.io.in[2].im <= data1_0_0[2].im @[Modules.scala 288:16]
    inst.io.in[2].re <= data1_0_0[2].re @[Modules.scala 288:16]
    inst.io.in[3].im <= data1_0_0[3].im @[Modules.scala 288:16]
    inst.io.in[3].re <= data1_0_0[3].re @[Modules.scala 288:16]
    inst.io.in[4].im <= data1_0_0[4].im @[Modules.scala 288:16]
    inst.io.in[4].re <= data1_0_0[4].re @[Modules.scala 288:16]
    inst.io.in[5].im <= data1_0_0[5].im @[Modules.scala 288:16]
    inst.io.in[5].re <= data1_0_0[5].re @[Modules.scala 288:16]
    inst.io.in[6].im <= data1_0_0[6].im @[Modules.scala 288:16]
    inst.io.in[6].re <= data1_0_0[6].re @[Modules.scala 288:16]
    inst.io.in[7].im <= data1_0_0[7].im @[Modules.scala 288:16]
    inst.io.in[7].re <= data1_0_0[7].re @[Modules.scala 288:16]
    inst.io.wn[0].im <= wnList_0.im @[Modules.scala 289:16]
    inst.io.wn[0].re <= wnList_0.re @[Modules.scala 289:16]
    inst.io.wn[1].im <= wnList_1.im @[Modules.scala 289:16]
    inst.io.wn[1].re <= wnList_1.re @[Modules.scala 289:16]
    inst.io.wn[2].im <= wnList_2.im @[Modules.scala 289:16]
    inst.io.wn[2].re <= wnList_2.re @[Modules.scala 289:16]
    inst.io.wn[3].im <= wnList_3.im @[Modules.scala 289:16]
    inst.io.wn[3].re <= wnList_3.re @[Modules.scala 289:16]
    inst.io.wn[4].im <= wnList_4.im @[Modules.scala 289:16]
    inst.io.wn[4].re <= wnList_4.re @[Modules.scala 289:16]
    inst.io.wn[5].im <= wnList_5.im @[Modules.scala 289:16]
    inst.io.wn[5].re <= wnList_5.re @[Modules.scala 289:16]
    inst.io.wn[6].im <= wnList_6.im @[Modules.scala 289:16]
    inst.io.wn[6].re <= wnList_6.re @[Modules.scala 289:16]
    data2_0_0 <= inst.io.out @[FFT.scala 136:19]
    inst dataotemp_inst of ButterflyAdd @[Modules.scala 213:22]
    dataotemp_inst.clock <= clock
    dataotemp_inst.reset <= reset
    dataotemp_inst.io.in[0].im <= data1_1_0[0].im @[Modules.scala 214:16]
    dataotemp_inst.io.in[0].re <= data1_1_0[0].re @[Modules.scala 214:16]
    dataotemp_inst.io.in[1].im <= data1_1_0[1].im @[Modules.scala 214:16]
    dataotemp_inst.io.in[1].re <= data1_1_0[1].re @[Modules.scala 214:16]
    dataotemp_inst.io.in[2].im <= data1_1_0[2].im @[Modules.scala 214:16]
    dataotemp_inst.io.in[2].re <= data1_1_0[2].re @[Modules.scala 214:16]
    dataotemp_inst.io.in[3].im <= data1_1_0[3].im @[Modules.scala 214:16]
    dataotemp_inst.io.in[3].re <= data1_1_0[3].re @[Modules.scala 214:16]
    dataotemp_inst.io.in[4].im <= data1_1_0[4].im @[Modules.scala 214:16]
    dataotemp_inst.io.in[4].re <= data1_1_0[4].re @[Modules.scala 214:16]
    dataotemp_inst.io.in[5].im <= data1_1_0[5].im @[Modules.scala 214:16]
    dataotemp_inst.io.in[5].re <= data1_1_0[5].re @[Modules.scala 214:16]
    dataotemp_inst.io.in[6].im <= data1_1_0[6].im @[Modules.scala 214:16]
    dataotemp_inst.io.in[6].re <= data1_1_0[6].re @[Modules.scala 214:16]
    dataotemp_inst.io.in[7].im <= data1_1_0[7].im @[Modules.scala 214:16]
    dataotemp_inst.io.in[7].re <= data1_1_0[7].re @[Modules.scala 214:16]
    datao[0] <= dataotemp_inst.io.out[0] @[FFT.scala 141:9]
    datao[1] <= dataotemp_inst.io.out[1] @[FFT.scala 141:9]
    datao[2] <= dataotemp_inst.io.out[2] @[FFT.scala 141:9]
    datao[3] <= dataotemp_inst.io.out[3] @[FFT.scala 141:9]
    datao[4] <= dataotemp_inst.io.out[4] @[FFT.scala 141:9]
    datao[5] <= dataotemp_inst.io.out[5] @[FFT.scala 141:9]
    datao[6] <= dataotemp_inst.io.out[6] @[FFT.scala 141:9]
    datao[7] <= dataotemp_inst.io.out[7] @[FFT.scala 141:9]
    node sel = bits(cnt_0, 2, 0) @[FFT.scala 163:31]
    inst inst_1 of Switch @[Modules.scala 311:22]
    inst_1.clock <= clock
    inst_1.reset <= reset
    inst_1.io.in[0].im <= data2_0_0[0].im @[Modules.scala 312:16]
    inst_1.io.in[0].re <= data2_0_0[0].re @[Modules.scala 312:16]
    inst_1.io.in[1].im <= data2_0_0[1].im @[Modules.scala 312:16]
    inst_1.io.in[1].re <= data2_0_0[1].re @[Modules.scala 312:16]
    inst_1.io.in[2].im <= data2_0_0[2].im @[Modules.scala 312:16]
    inst_1.io.in[2].re <= data2_0_0[2].re @[Modules.scala 312:16]
    inst_1.io.in[3].im <= data2_0_0[3].im @[Modules.scala 312:16]
    inst_1.io.in[3].re <= data2_0_0[3].re @[Modules.scala 312:16]
    inst_1.io.in[4].im <= data2_0_0[4].im @[Modules.scala 312:16]
    inst_1.io.in[4].re <= data2_0_0[4].re @[Modules.scala 312:16]
    inst_1.io.in[5].im <= data2_0_0[5].im @[Modules.scala 312:16]
    inst_1.io.in[5].re <= data2_0_0[5].re @[Modules.scala 312:16]
    inst_1.io.in[6].im <= data2_0_0[6].im @[Modules.scala 312:16]
    inst_1.io.in[6].re <= data2_0_0[6].re @[Modules.scala 312:16]
    inst_1.io.in[7].im <= data2_0_0[7].im @[Modules.scala 312:16]
    inst_1.io.in[7].re <= data2_0_0[7].re @[Modules.scala 312:16]
    inst_1.io.sel <= sel @[Modules.scala 313:17]
    data1_1_0 <= inst_1.io.out @[FFT.scala 164:54]
    data1_0_0[0] <= io.dIn[0] @[FFT.scala 175:19]
    data1_0_0[1] <= io.dIn[1] @[FFT.scala 175:19]
    data1_0_0[2] <= io.dIn[2] @[FFT.scala 175:19]
    data1_0_0[3] <= io.dIn[3] @[FFT.scala 175:19]
    data1_0_0[4] <= io.dIn[4] @[FFT.scala 175:19]
    data1_0_0[5] <= io.dIn[5] @[FFT.scala 175:19]
    data1_0_0[6] <= io.dIn[6] @[FFT.scala 175:19]
    data1_0_0[7] <= io.dIn[7] @[FFT.scala 175:19]
    io.busy <= busy @[FFT.scala 178:11]
    reg io_dout_valid_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_dout_valid_REG) @[FFT.scala 179:27]
    io_dout_valid_REG <= cnt_0 @[FFT.scala 179:27]
    node _io_dout_valid_T = eq(io_dout_valid_REG, UInt<3>("h7")) @[FFT.scala 179:36]
    io.dout_valid <= _io_dout_valid_T @[FFT.scala 179:17]
    reg REG : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], clock with :
      reset => (UInt<1>("h0"), REG) @[FFT.scala 184:23]
    REG <= datao @[FFT.scala 184:23]
    io.dOut <= REG @[FFT.scala 184:13]

  module FFTtop :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip dIn : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], dOut : { re : Fixed<17><<12>>, im : Fixed<17><<12>>}[8], flip din_valid : UInt<1>, dout_valid : UInt<1>, busy : UInt<1>}

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

