package FFT

import chisel3.stage.ChiselStage

object generator extends App with Config {
  (new ChiselStage).emitVerilog(new FFTtop,Array("--target-dir",s"generated/R${radix}_${FFTlength}point_${FFTparallel_r}parallel_${DataWidth}width_${useGauss}Gauss/"))
}
