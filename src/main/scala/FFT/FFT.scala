package FFT

import chisel3._
import chisel3.experimental._
import chisel3.util._
import scala.math._

class TopIO extends Bundle with Config {
  val dIn = Input(Vec(FFTparallel_r * radix, new MyFixComplex))
  val dOut = Output(Vec(FFTparallel_r * radix, new MyFixComplex))
  val din_valid = Input(new Bool())
  val dout_valid = Output(new Bool())
  val busy = Output(new Bool())
}


class FFT extends Module with Config{
  val complex = new MyFixComplex
  val io = IO(new TopIO)

//design wntable for every BF
  def sinTableFix(s: Int, n: Int): Vec[FixedPoint] = {
    val times = (0 until FFTlength / radix by pow(radix, s).toInt).map(i => -(2 * n * i * Pi) / FFTlength.toDouble)
    VecInit(times.map(i => FixedPoint.fromDouble(sin(i), FixDataWidth.W, BinaryPoint.BP)))
  }
  def cosTableFix(s: Int, n: Int): Vec[FixedPoint] = {
    val times = (0 until FFTlength / radix by pow(radix, s).toInt).map(i => -(2 * n * i * Pi) / FFTlength.toDouble)
    VecInit(times.map(i => FixedPoint.fromDouble(cos(i), FixDataWidth.W, BinaryPoint.BP)))
  }
  def wnTableFix(stage: Int, stride: Int)(idx: UInt): MyFixComplex = {
    val res = Wire(new MyFixComplex())
    res.re := cosTableFix(stage, stride)(idx)
    res.im := sinTableFix(stage, stride)(idx)
    res
  }

//cnt design
  val cntNum = log2Ceil(radix) * (FFTstage - FFTparallel)
  val cnt = Seq.fill(FFTparallel + 1)(RegInit(0.U((cntNum + 1).W)))
  for(i <- 0 until FFTparallel) {
    cnt(i + 1) := cnt(i)
  }
  val busy = cnt(0) =/= 0.U
  when(io.din_valid || busy) {
    cnt(0) := Mux(cnt(0) === (FFTparallel + 2 * datalength - 1).asUInt, 0.U, cnt(0) + 1.U)
  }

//data define:
//unitDataIn is the input of this stages' BF ; unitDataOut is the output
//FFTstage means which stages' BF; FFTparallel_r means the number of the BF; radix means the input amount
  val unitDataIn = Seq.fill(FFTstage)(Seq.fill(FFTparallel_r)(VecInit(Seq.fill(radix)(0.S((2 * DataWidth).W).asTypeOf(complex)))))
  val unitDataOut = Seq.fill(FFTstage - 1)(Seq.fill(FFTparallel_r)(VecInit(Seq.fill(radix)(0.S((2 * DataWidth).W).asTypeOf(complex)))))
  val datao = VecInit(Seq.fill(radix * FFTparallel_r)(0.S((2 * DataWidth).W).asTypeOf(complex)))

//data calcute flow: unitDataIn => unitDataOut
  for (i <- 0 until FFTstage - 1) {
    val wnCtrl = if(i < FFTparallel) {
      cnt(i)
    } else {
      cnt(FFTparallel)(log2Ceil(radix) * (FFTstage - i - 1) - 1, 0)
    }
    val startlist = (0 until FFTparallel_r).map(x => ((x % ceil(pow(radix, (FFTparallel - i)).toInt)) * datalength).toInt)
    for(x <- 0 until FFTparallel_r) {
      val wnList =  (1 until radix).map(y => wnTableFix(i, y)(startlist(x).asUInt + wnCtrl)).toList
      unitDataOut(i)(x) := ButterflyMul(unitDataIn(i)(x), wnList)
    }
  }

  val dataotemp = (0 until FFTparallel_r).map(x => ButterflyAdd(unitDataIn(FFTstage - 1)(x)))
  datao := dataotemp.flatten

//data transport flow: unitDataOut => unitDataIn
  // Exchange times
  val extimes = FFTparallel_r / radix
  def exlist(stage: Int): List[List[Int]] ={
    val group = pow(radix, stage).toInt
    val length = FFTparallel_r / group
    val stride = pow(radix, FFTparallel - stage - 1).toInt
    val listtemp = (0 until group).map(x => (0 until extimes/group).map(y => (0 until radix).map(z => x * length + y + z * stride).toList).toList).toList
    val list = listtemp.reduce((x,y) => x ++ y)
    list
  }
  for (i <- 0 until FFTparallel) {
    val list = exlist(i)
    for (j <- 0 until extimes) {
      val exdata = Exchange((0 until radix).map(x => unitDataOut(i)(list(j)(x))).toList)
      (0 until radix).map(x => unitDataIn(i + 1)(list(j)(x)) := RegNext(exdata(x)))
    }
  }

  for (i <- FFTparallel until FFTstage -1) {
    val delay = FFTlength / pow(radix, i + 2).toInt
    val sel = cnt(FFTparallel)((log2Ceil(radix) * (FFTstage - i - 1) - 1),log2Ceil(radix) * (FFTstage - i - 2))
    (0 until FFTparallel_r).map(x => unitDataIn(i + 1)(x) := Switch(unitDataOut(i)(x), sel, delay))
  }

  //input and output
  for (i <-0 until FFTparallel_r) {
    unitDataIn(0)(i) := (0 until radix).map(x => io.dIn(radix * i + x))
  }

  io.busy := busy
  io.dout_valid := RegNext(cnt(0)) === (FFTparallel + datalength - 1).asUInt()
  io.dOut := RegNext(datao)

}