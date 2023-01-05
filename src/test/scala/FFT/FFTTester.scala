// See README.md for license details.

package FFT

import chisel3.util._
import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec

import scala.math._

/**
 * This is a trivial example of how to run this Specification
 * From within sbt use:
 * {{{
 * testOnly gcd.GcdDecoupledTester
 * }}}
 * From a terminal shell use:
 * {{{
 * sbt 'testOnly gcd.GcdDecoupledTester'
 * }}}
 */


class Complex(val re: Double, val im: Double) {
  def +(rhs: Complex): Complex = new Complex(re + rhs.re, im + rhs.im)
  def -(rhs: Complex): Complex = new Complex(re - rhs.re, im - rhs.im)
  def *(rhs: Complex): Complex = new Complex(re * rhs.re - im * rhs.im, rhs.re * im + re * rhs.im)
  //def r = re

  def magnitude: Double = hypot(re, im)
  def phase: Double = atan2(im, re)

  override def toString: String = s"Complex($re, $im)"
}

class FFTTester extends AnyFreeSpec with ChiselScalatestTester with Config {

  "FFT should calculate proper result" in {
    test(new FFTtop).withAnnotations(Seq(WriteVcdAnnotation)) { c =>
      def fft(x: Array[Complex]): Array[Complex] = {
        fft_in(x, 0, x.length, 1)
      }

      def fft_in(x: Array[Complex], start: Int, n: Int, stride: Int): Array[Complex] = {
        if (n == 1) {
          return Array(x(start))
        }
        val X = fft_in(x, start, n / 2, 2 * stride) ++ fft_in(x, start + stride, n / 2, 2 * stride)
        for (k <- 0 until n / 2) {
          val t = X(k)
          val arg = (-2 * Pi * k) / n
          val c = new Complex(cos(arg), sin(arg)) * X(k + n / 2)
          X(k) = t + c
          X(k + n / 2) = t - c
        }
        X
      }

      def range(a: Int, upBound: Int, downBound: Int): Int = {
        assert(upBound < 32)
        assert(downBound >= 0)
        (a >> downBound) & (0xffffffff >>> (31 - upBound + downBound))
      }

      def reverse(a: Int, len: Int): Int = {
        var res: Int = 0
        for (i <- 0 until len) {
          res = res | range(a, i, i) << (len - 1 - i)
        }
        res
      }

      val r = new scala.util.Random
      val bound: Double = pow(2.0, BinaryPoint)
      var error: Double = 0
      var ovNum: Int = 0
      var iterNum: Int = 1

      for (t <- 0 until iterNum) {
        val a = new Array[Complex](FFTlength)
        var cnt = 0
        for (i <- 0 until datalength) {
          for (j <- 0 until FFTparallel_r) {
            for (k <- 0 until radix) {
              val aNum = k * (FFTlength / radix) + j * datalength + i
              val diNum = radix * j + k
              val re = -bound.toInt / 2 + r.nextInt(bound.toInt)
              val im = -bound.toInt / 2 + r.nextInt(bound.toInt)
//              print(s"re = $re\n")
              a(aNum) = new Complex(2 * re / bound, 2 * im / bound)
//              print(s"a.re = ${a(aNum).re}\n")
              c.io.dIn(diNum).re.poke(a(aNum).re)
              c.io.dIn(diNum).im.poke(a(aNum).im)
            }
          }
          if (i == 0) {
            c.io.din_valid.poke(true.B)
          } else {
            c.io.din_valid.poke(false.B)
          }
          c.clock.step(1)
          cnt += 1
        }
        val ref = fft(a)

        c.clock.step(FFTparallel)

        var errorOne: Double = 0
        var error1: Double = 0
        var ovNum1: Int = 0
        val eps: Double = 1e-20
        if (do_reorder) {
          c.clock.step(datalength)
          for (i <- 0 until FFTlength) {
            val ref1 = ref(i)
//            print(s"ref1.re = ${ref1.re}\n")
//            print(s"ref1.im = ${ref1.im}\n")
            val data = c.io.dOut(0).peek()
//            val datare = data.re.litToDouble
//            print(s"data re = ${datare}\n")
            error1 = abs(((data.re.litToDouble - ref1.re) / (ref1.re + eps) + (data.im.litToDouble - ref1.im) / (ref1.im + eps)) / 2.0)
//            print(s"error = $error1\n")
            if (error1 <= 0.5) {
              errorOne += error1
            } else {
              ovNum1 += 1
            }
            c.clock.step(1)
          }
        } else {
          for (i <- 0 until datalength) {
            for (j <- 0 until FFTparallel_r) {
              for (k <- 0 until radix) {
                val refNum = j * FFTlength / FFTparallel_r + k + radix * i
                val doNum = radix * j + k
                val ref1 = ref(reverse(refNum, log2Ceil(FFTlength)))
                val data = c.io.dOut(doNum).peek()
                error1 = abs(((data.re.litToDouble - ref1.re) / (ref1.re + eps) + (data.im.litToDouble - ref1.im) / (ref1.im + eps)) / 2.0)
                if (error1 <= 0.5) {
                  errorOne += error1
                } else {
                  ovNum1 += 1
                }
              }
            }
            c.clock.step(1)
          }
        }
        errorOne = errorOne / (FFTlength - ovNum1)
        ovNum += ovNum1
        error += errorOne
        val errorOnePercent = errorOne * 100
//        println(f"- In this sample, Error rate: $errorOnePercent%.2f | number of ovs : $ovNum1%d")
        //printf("In this sample, Error rate: %.2f%% | number of ovs : %d\n", errorOnePercent, ovNum1)
      }
      error /= iterNum
      print("Test: Data Width = " + DataWidth + ", Binary Point = " + BinaryPoint +"\n")
      if (useGauss) print("Use Gauss\n")
      print("Total error rate is: " + error * 100 + "%\n")
      print(s"$ovNum of ${iterNum * FFTlength} overflowed! the overflow ratio is ${100 * ovNum / (FFTlength * iterNum).toDouble}%\n")
      //  print(s"${datalength + FFTparallel} \n")

    }
  }
}
