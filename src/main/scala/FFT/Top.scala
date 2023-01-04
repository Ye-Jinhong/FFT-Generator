package FFT

import chisel3._

class FFTtop extends Module with Config {
  val outputlength = if(do_reorder) 1 else FFTparallel_r * radix
  val io = IO(new Bundle{
    val dIn = Input(Vec(FFTparallel_r * radix, new MyFixComplex))
    val dOut = Output(Vec(outputlength, new MyFixComplex))
    val din_valid = Input(new Bool())
    val dout_valid = Output(new Bool())
    val busy = Output(new Bool())
  })

  val fft = Module(new FFT)
  fft.io.dIn := io.dIn
  fft.io.din_valid := io.din_valid

  if(do_reorder) {
    val reorder = Module(new reorder)
    reorder.io.dIn := fft.io.dOut
    reorder.io.din_valid := fft.io.dout_valid
    io.dOut(0) := reorder.io.dOut
    io.dout_valid := reorder.io.dout_valid
    io.busy := fft.io.busy || reorder.io.busy
  } else {
    io.dOut := fft.io.dOut
    io.dout_valid := fft.io.dout_valid
    io.busy := fft.io.busy
  }
}
