package FFT

import scala.math._

trait Config {

//config of fixedpoint data format
  val FixDataWidth = 10
  val BinaryPoint = 5

// config of construct
// support all parallel data (datalength = 1)
// FFTstage - FFTparallel must > 0
  val radix = 8  //radix of the FFT,supprot 2, 4, 8
  val FFTstage = 2 // FFT stages
  val FFTparallel = 0 // the really parallel is radix ^ FFTparallel
  val useGauss = false // whether use gauss multiplier
  val do_reorder = false // true: output is one bit serial and all in order
//  val useParallel = true // parallel input or serial input

//parameters
  val FFTlength = pow(radix, FFTstage).toInt
  val FFTparallel_r = pow(radix, FFTparallel).toInt
  val datalength = (FFTlength / (radix * FFTparallel_r))
  val DataWidth = FixDataWidth
}
