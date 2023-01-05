module AddRawFN(
  input         io_subOp,
  input         io_a_isNaN,
  input         io_a_isInf,
  input         io_a_isZero,
  input         io_a_sign,
  input  [6:0]  io_a_sExp,
  input  [11:0] io_a_sig,
  input         io_b_isNaN,
  input         io_b_isInf,
  input         io_b_isZero,
  input         io_b_sign,
  input  [6:0]  io_b_sExp,
  input  [11:0] io_b_sig,
  output        io_invalidExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [6:0]  io_rawOut_sExp,
  output [13:0] io_rawOut_sig
);
  wire  effSignB = io_b_sign ^ io_subOp; // @[AddRecFN.scala 60:30]
  wire  eqSigns = io_a_sign == effSignB; // @[AddRecFN.scala 61:29]
  wire [6:0] sDiffExps = $signed(io_a_sExp) - $signed(io_b_sExp); // @[AddRecFN.scala 63:31]
  wire  _modNatAlignDist_T = $signed(sDiffExps) < 7'sh0; // @[AddRecFN.scala 64:41]
  wire [6:0] _modNatAlignDist_T_3 = $signed(io_b_sExp) - $signed(io_a_sExp); // @[AddRecFN.scala 64:58]
  wire [6:0] _modNatAlignDist_T_4 = $signed(sDiffExps) < 7'sh0 ? $signed(_modNatAlignDist_T_3) : $signed(sDiffExps); // @[AddRecFN.scala 64:30]
  wire [3:0] modNatAlignDist = _modNatAlignDist_T_4[3:0]; // @[AddRecFN.scala 64:81]
  wire [2:0] _isMaxAlign_T = sDiffExps[6:4]; // @[AddRecFN.scala 66:19]
  wire  _isMaxAlign_T_6 = $signed(_isMaxAlign_T) != -3'sh1 | sDiffExps[3:0] == 4'h0; // @[AddRecFN.scala 67:51]
  wire  isMaxAlign = $signed(_isMaxAlign_T) != 3'sh0 & _isMaxAlign_T_6; // @[AddRecFN.scala 66:45]
  wire [3:0] alignDist = isMaxAlign ? 4'hf : modNatAlignDist; // @[AddRecFN.scala 68:24]
  wire  _closeSubMags_T = ~eqSigns; // @[AddRecFN.scala 69:24]
  wire  closeSubMags = ~eqSigns & ~isMaxAlign & modNatAlignDist <= 4'h1; // @[AddRecFN.scala 69:48]
  wire  _close_alignedSigA_T = 7'sh0 <= $signed(sDiffExps); // @[AddRecFN.scala 73:18]
  wire [13:0] _close_alignedSigA_T_3 = {io_a_sig, 2'h0}; // @[AddRecFN.scala 73:58]
  wire [13:0] _close_alignedSigA_T_4 = 7'sh0 <= $signed(sDiffExps) & sDiffExps[0] ? _close_alignedSigA_T_3 : 14'h0; // @[AddRecFN.scala 73:12]
  wire [12:0] _close_alignedSigA_T_9 = {io_a_sig, 1'h0}; // @[AddRecFN.scala 74:58]
  wire [12:0] _close_alignedSigA_T_10 = _close_alignedSigA_T & ~sDiffExps[0] ? _close_alignedSigA_T_9 : 13'h0; // @[AddRecFN.scala 74:12]
  wire [13:0] _GEN_0 = {{1'd0}, _close_alignedSigA_T_10}; // @[AddRecFN.scala 73:68]
  wire [13:0] _close_alignedSigA_T_11 = _close_alignedSigA_T_4 | _GEN_0; // @[AddRecFN.scala 73:68]
  wire [11:0] _close_alignedSigA_T_13 = _modNatAlignDist_T ? io_a_sig : 12'h0; // @[AddRecFN.scala 75:12]
  wire [13:0] _GEN_1 = {{2'd0}, _close_alignedSigA_T_13}; // @[AddRecFN.scala 74:68]
  wire [13:0] _close_sSigSum_T = _close_alignedSigA_T_11 | _GEN_1; // @[AddRecFN.scala 76:43]
  wire [12:0] _close_sSigSum_T_2 = {io_b_sig, 1'h0}; // @[AddRecFN.scala 76:66]
  wire [13:0] _GEN_2 = {{1{_close_sSigSum_T_2[12]}},_close_sSigSum_T_2}; // @[AddRecFN.scala 76:50]
  wire [13:0] close_sSigSum = $signed(_close_sSigSum_T) - $signed(_GEN_2); // @[AddRecFN.scala 76:50]
  wire  _close_sigSum_T = $signed(close_sSigSum) < 14'sh0; // @[AddRecFN.scala 77:42]
  wire [13:0] _close_sigSum_T_3 = 14'sh0 - $signed(close_sSigSum); // @[AddRecFN.scala 77:49]
  wire [13:0] _close_sigSum_T_4 = $signed(close_sSigSum) < 14'sh0 ? $signed(_close_sigSum_T_3) : $signed(close_sSigSum); // @[AddRecFN.scala 77:27]
  wire [12:0] close_sigSum = _close_sigSum_T_4[12:0]; // @[AddRecFN.scala 77:79]
  wire [13:0] close_adjustedSigSum = {close_sigSum, 1'h0}; // @[AddRecFN.scala 78:44]
  wire  close_reduced2SigSum_reducedVec_0 = |close_adjustedSigSum[1:0]; // @[primitives.scala 104:54]
  wire  close_reduced2SigSum_reducedVec_1 = |close_adjustedSigSum[3:2]; // @[primitives.scala 104:54]
  wire  close_reduced2SigSum_reducedVec_2 = |close_adjustedSigSum[5:4]; // @[primitives.scala 104:54]
  wire  close_reduced2SigSum_reducedVec_3 = |close_adjustedSigSum[7:6]; // @[primitives.scala 104:54]
  wire  close_reduced2SigSum_reducedVec_4 = |close_adjustedSigSum[9:8]; // @[primitives.scala 104:54]
  wire  close_reduced2SigSum_reducedVec_5 = |close_adjustedSigSum[11:10]; // @[primitives.scala 104:54]
  wire  close_reduced2SigSum_reducedVec_6 = |close_adjustedSigSum[13:12]; // @[primitives.scala 107:57]
  wire [6:0] close_reduced2SigSum = {close_reduced2SigSum_reducedVec_6,close_reduced2SigSum_reducedVec_5,
    close_reduced2SigSum_reducedVec_4,close_reduced2SigSum_reducedVec_3,close_reduced2SigSum_reducedVec_2,
    close_reduced2SigSum_reducedVec_1,close_reduced2SigSum_reducedVec_0}; // @[primitives.scala 108:20]
  wire [2:0] _close_normDistReduced2_T_7 = close_reduced2SigSum[1] ? 3'h5 : 3'h6; // @[Mux.scala 47:70]
  wire [2:0] _close_normDistReduced2_T_8 = close_reduced2SigSum[2] ? 3'h4 : _close_normDistReduced2_T_7; // @[Mux.scala 47:70]
  wire [2:0] _close_normDistReduced2_T_9 = close_reduced2SigSum[3] ? 3'h3 : _close_normDistReduced2_T_8; // @[Mux.scala 47:70]
  wire [2:0] _close_normDistReduced2_T_10 = close_reduced2SigSum[4] ? 3'h2 : _close_normDistReduced2_T_9; // @[Mux.scala 47:70]
  wire [2:0] _close_normDistReduced2_T_11 = close_reduced2SigSum[5] ? 3'h1 : _close_normDistReduced2_T_10; // @[Mux.scala 47:70]
  wire [2:0] close_normDistReduced2 = close_reduced2SigSum[6] ? 3'h0 : _close_normDistReduced2_T_11; // @[Mux.scala 47:70]
  wire [3:0] close_nearNormDist = {close_normDistReduced2, 1'h0}; // @[AddRecFN.scala 81:53]
  wire [27:0] _GEN_7 = {{15'd0}, close_sigSum}; // @[AddRecFN.scala 82:38]
  wire [27:0] _close_sigOut_T = _GEN_7 << close_nearNormDist; // @[AddRecFN.scala 82:38]
  wire [28:0] _close_sigOut_T_1 = {_close_sigOut_T, 1'h0}; // @[AddRecFN.scala 82:59]
  wire [13:0] close_sigOut = _close_sigOut_T_1[13:0]; // @[AddRecFN.scala 82:63]
  wire  close_totalCancellation = ~(|close_sigOut[13:12]); // @[AddRecFN.scala 83:35]
  wire  close_notTotalCancellation_signOut = io_a_sign ^ _close_sigSum_T; // @[AddRecFN.scala 84:56]
  wire  far_signOut = _modNatAlignDist_T ? effSignB : io_a_sign; // @[AddRecFN.scala 87:26]
  wire [11:0] _far_sigLarger_T_1 = _modNatAlignDist_T ? io_b_sig : io_a_sig; // @[AddRecFN.scala 88:29]
  wire [10:0] far_sigLarger = _far_sigLarger_T_1[10:0]; // @[AddRecFN.scala 88:66]
  wire [11:0] _far_sigSmaller_T_1 = _modNatAlignDist_T ? io_a_sig : io_b_sig; // @[AddRecFN.scala 89:29]
  wire [10:0] far_sigSmaller = _far_sigSmaller_T_1[10:0]; // @[AddRecFN.scala 89:66]
  wire [15:0] _far_mainAlignedSigSmaller_T = {far_sigSmaller, 5'h0}; // @[AddRecFN.scala 90:52]
  wire [15:0] far_mainAlignedSigSmaller = _far_mainAlignedSigSmaller_T >> alignDist; // @[AddRecFN.scala 90:56]
  wire [12:0] _far_reduced4SigSmaller_T = {far_sigSmaller, 2'h0}; // @[AddRecFN.scala 91:60]
  wire  far_reduced4SigSmaller_reducedVec_0 = |_far_reduced4SigSmaller_T[3:0]; // @[primitives.scala 121:54]
  wire  far_reduced4SigSmaller_reducedVec_1 = |_far_reduced4SigSmaller_T[7:4]; // @[primitives.scala 121:54]
  wire  far_reduced4SigSmaller_reducedVec_2 = |_far_reduced4SigSmaller_T[11:8]; // @[primitives.scala 121:54]
  wire  far_reduced4SigSmaller_reducedVec_3 = |_far_reduced4SigSmaller_T[12]; // @[primitives.scala 124:57]
  wire [3:0] far_reduced4SigSmaller = {far_reduced4SigSmaller_reducedVec_3,far_reduced4SigSmaller_reducedVec_2,
    far_reduced4SigSmaller_reducedVec_1,far_reduced4SigSmaller_reducedVec_0}; // @[primitives.scala 125:20]
  wire [4:0] far_roundExtraMask_shift = 5'sh10 >>> alignDist[3:2]; // @[primitives.scala 77:58]
  wire [3:0] far_roundExtraMask = {far_roundExtraMask_shift[0],far_roundExtraMask_shift[1],far_roundExtraMask_shift[2],
    far_roundExtraMask_shift[3]}; // @[Cat.scala 33:92]
  wire [3:0] _far_alignedSigSmaller_T_3 = far_reduced4SigSmaller & far_roundExtraMask; // @[AddRecFN.scala 95:76]
  wire  _far_alignedSigSmaller_T_5 = |far_mainAlignedSigSmaller[2:0] | |_far_alignedSigSmaller_T_3; // @[AddRecFN.scala 95:49]
  wire [13:0] far_alignedSigSmaller = {far_mainAlignedSigSmaller[15:3],_far_alignedSigSmaller_T_5}; // @[Cat.scala 33:92]
  wire [13:0] _far_negAlignedSigSmaller_T = ~far_alignedSigSmaller; // @[AddRecFN.scala 97:62]
  wire [14:0] _far_negAlignedSigSmaller_T_1 = {1'h1,_far_negAlignedSigSmaller_T}; // @[Cat.scala 33:92]
  wire [14:0] far_negAlignedSigSmaller = _closeSubMags_T ? _far_negAlignedSigSmaller_T_1 : {{1'd0},
    far_alignedSigSmaller}; // @[AddRecFN.scala 97:39]
  wire [13:0] _far_sigSum_T = {far_sigLarger, 3'h0}; // @[AddRecFN.scala 98:36]
  wire [14:0] _GEN_3 = {{1'd0}, _far_sigSum_T}; // @[AddRecFN.scala 98:41]
  wire [14:0] _far_sigSum_T_2 = _GEN_3 + far_negAlignedSigSmaller; // @[AddRecFN.scala 98:41]
  wire [14:0] _GEN_4 = {{14'd0}, _closeSubMags_T}; // @[AddRecFN.scala 98:68]
  wire [14:0] far_sigSum = _far_sigSum_T_2 + _GEN_4; // @[AddRecFN.scala 98:68]
  wire [13:0] _GEN_5 = {{13'd0}, far_sigSum[0]}; // @[AddRecFN.scala 99:67]
  wire [13:0] _far_sigOut_T_2 = far_sigSum[14:1] | _GEN_5; // @[AddRecFN.scala 99:67]
  wire [14:0] _far_sigOut_T_3 = _closeSubMags_T ? far_sigSum : {{1'd0}, _far_sigOut_T_2}; // @[AddRecFN.scala 99:25]
  wire [13:0] far_sigOut = _far_sigOut_T_3[13:0]; // @[AddRecFN.scala 99:83]
  wire  notSigNaN_invalidExc = io_a_isInf & io_b_isInf & _closeSubMags_T; // @[AddRecFN.scala 102:57]
  wire  notNaN_isInfOut = io_a_isInf | io_b_isInf; // @[AddRecFN.scala 103:38]
  wire  addZeros = io_a_isZero & io_b_isZero; // @[AddRecFN.scala 104:32]
  wire  notNaN_specialCase = notNaN_isInfOut | addZeros; // @[AddRecFN.scala 105:46]
  wire  _notNaN_signOut_T_1 = io_a_isInf & io_a_sign; // @[AddRecFN.scala 109:39]
  wire  _notNaN_signOut_T_2 = eqSigns & io_a_sign | _notNaN_signOut_T_1; // @[AddRecFN.scala 108:63]
  wire  _notNaN_signOut_T_3 = io_b_isInf & effSignB; // @[AddRecFN.scala 110:39]
  wire  _notNaN_signOut_T_4 = _notNaN_signOut_T_2 | _notNaN_signOut_T_3; // @[AddRecFN.scala 109:63]
  wire  _notNaN_signOut_T_9 = ~notNaN_specialCase; // @[AddRecFN.scala 112:10]
  wire  _notNaN_signOut_T_12 = ~notNaN_specialCase & closeSubMags & ~close_totalCancellation; // @[AddRecFN.scala 112:46]
  wire  _notNaN_signOut_T_13 = _notNaN_signOut_T_12 & close_notTotalCancellation_signOut; // @[AddRecFN.scala 113:38]
  wire  _notNaN_signOut_T_14 = _notNaN_signOut_T_4 | _notNaN_signOut_T_13; // @[AddRecFN.scala 111:63]
  wire  _notNaN_signOut_T_18 = _notNaN_signOut_T_9 & ~closeSubMags & far_signOut; // @[AddRecFN.scala 114:47]
  wire [6:0] _common_sExpOut_T_2 = closeSubMags | _modNatAlignDist_T ? $signed(io_b_sExp) : $signed(io_a_sExp); // @[AddRecFN.scala 116:13]
  wire [3:0] _common_sExpOut_T_3 = closeSubMags ? close_nearNormDist : {{3'd0}, _closeSubMags_T}; // @[AddRecFN.scala 117:18]
  wire [4:0] _common_sExpOut_T_4 = {1'b0,$signed(_common_sExpOut_T_3)}; // @[AddRecFN.scala 117:66]
  wire [6:0] _GEN_6 = {{2{_common_sExpOut_T_4[4]}},_common_sExpOut_T_4}; // @[AddRecFN.scala 117:13]
  wire  _io_invalidExc_T_2 = io_a_isNaN & ~io_a_sig[9]; // @[common.scala 82:46]
  wire  _io_invalidExc_T_5 = io_b_isNaN & ~io_b_sig[9]; // @[common.scala 82:46]
  assign io_invalidExc = _io_invalidExc_T_2 | _io_invalidExc_T_5 | notSigNaN_invalidExc; // @[AddRecFN.scala 121:71]
  assign io_rawOut_isNaN = io_a_isNaN | io_b_isNaN; // @[AddRecFN.scala 125:35]
  assign io_rawOut_isInf = io_a_isInf | io_b_isInf; // @[AddRecFN.scala 103:38]
  assign io_rawOut_isZero = addZeros | ~notNaN_isInfOut & closeSubMags & close_totalCancellation; // @[AddRecFN.scala 106:37]
  assign io_rawOut_sign = _notNaN_signOut_T_14 | _notNaN_signOut_T_18; // @[AddRecFN.scala 113:77]
  assign io_rawOut_sExp = $signed(_common_sExpOut_T_2) - $signed(_GEN_6); // @[AddRecFN.scala 117:13]
  assign io_rawOut_sig = closeSubMags ? close_sigOut : far_sigOut; // @[AddRecFN.scala 118:28]
endmodule
module RoundAnyRawFNToRecFN(
  input         io_invalidExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [6:0]  io_in_sExp,
  input  [13:0] io_in_sig,
  output [16:0] io_out
);
  wire  doShiftSigDown1 = io_in_sig[13]; // @[RoundAnyRawFNToRecFN.scala 118:61]
  wire [5:0] _roundMask_T_1 = ~io_in_sExp[5:0]; // @[primitives.scala 51:21]
  wire [64:0] roundMask_shift = 65'sh10000000000000000 >>> _roundMask_T_1; // @[primitives.scala 77:58]
  wire [7:0] _GEN_0 = {{4'd0}, roundMask_shift[14:11]}; // @[Bitwise.scala 108:31]
  wire [7:0] _roundMask_T_7 = _GEN_0 & 8'hf; // @[Bitwise.scala 108:31]
  wire [7:0] _roundMask_T_9 = {roundMask_shift[10:7], 4'h0}; // @[Bitwise.scala 108:70]
  wire [7:0] _roundMask_T_11 = _roundMask_T_9 & 8'hf0; // @[Bitwise.scala 108:80]
  wire [7:0] _roundMask_T_12 = _roundMask_T_7 | _roundMask_T_11; // @[Bitwise.scala 108:39]
  wire [7:0] _GEN_1 = {{2'd0}, _roundMask_T_12[7:2]}; // @[Bitwise.scala 108:31]
  wire [7:0] _roundMask_T_17 = _GEN_1 & 8'h33; // @[Bitwise.scala 108:31]
  wire [7:0] _roundMask_T_19 = {_roundMask_T_12[5:0], 2'h0}; // @[Bitwise.scala 108:70]
  wire [7:0] _roundMask_T_21 = _roundMask_T_19 & 8'hcc; // @[Bitwise.scala 108:80]
  wire [7:0] _roundMask_T_22 = _roundMask_T_17 | _roundMask_T_21; // @[Bitwise.scala 108:39]
  wire [7:0] _GEN_2 = {{1'd0}, _roundMask_T_22[7:1]}; // @[Bitwise.scala 108:31]
  wire [7:0] _roundMask_T_27 = _GEN_2 & 8'h55; // @[Bitwise.scala 108:31]
  wire [7:0] _roundMask_T_29 = {_roundMask_T_22[6:0], 1'h0}; // @[Bitwise.scala 108:70]
  wire [7:0] _roundMask_T_31 = _roundMask_T_29 & 8'haa; // @[Bitwise.scala 108:80]
  wire [7:0] _roundMask_T_32 = _roundMask_T_27 | _roundMask_T_31; // @[Bitwise.scala 108:39]
  wire [11:0] _roundMask_T_43 = {_roundMask_T_32,roundMask_shift[15],roundMask_shift[16],roundMask_shift[17],
    roundMask_shift[18]}; // @[Cat.scala 33:92]
  wire [11:0] _GEN_3 = {{11'd0}, doShiftSigDown1}; // @[RoundAnyRawFNToRecFN.scala 157:23]
  wire [11:0] _roundMask_T_44 = _roundMask_T_43 | _GEN_3; // @[RoundAnyRawFNToRecFN.scala 157:23]
  wire [13:0] roundMask = {_roundMask_T_44,2'h3}; // @[Cat.scala 33:92]
  wire [13:0] shiftedRoundMask = {1'h0,roundMask[13:1]}; // @[Cat.scala 33:92]
  wire [13:0] _roundPosMask_T = ~shiftedRoundMask; // @[RoundAnyRawFNToRecFN.scala 161:28]
  wire [13:0] roundPosMask = _roundPosMask_T & roundMask; // @[RoundAnyRawFNToRecFN.scala 161:46]
  wire [13:0] _roundPosBit_T = io_in_sig & roundPosMask; // @[RoundAnyRawFNToRecFN.scala 162:40]
  wire  roundPosBit = |_roundPosBit_T; // @[RoundAnyRawFNToRecFN.scala 162:56]
  wire [13:0] _anyRoundExtra_T = io_in_sig & shiftedRoundMask; // @[RoundAnyRawFNToRecFN.scala 163:42]
  wire  anyRoundExtra = |_anyRoundExtra_T; // @[RoundAnyRawFNToRecFN.scala 163:62]
  wire [13:0] _roundedSig_T = io_in_sig | roundMask; // @[RoundAnyRawFNToRecFN.scala 172:32]
  wire [12:0] _roundedSig_T_2 = _roundedSig_T[13:2] + 12'h1; // @[RoundAnyRawFNToRecFN.scala 172:49]
  wire  _roundedSig_T_4 = ~anyRoundExtra; // @[RoundAnyRawFNToRecFN.scala 174:30]
  wire [12:0] _roundedSig_T_7 = roundPosBit & _roundedSig_T_4 ? roundMask[13:1] : 13'h0; // @[RoundAnyRawFNToRecFN.scala 173:25]
  wire [12:0] _roundedSig_T_8 = ~_roundedSig_T_7; // @[RoundAnyRawFNToRecFN.scala 173:21]
  wire [12:0] _roundedSig_T_9 = _roundedSig_T_2 & _roundedSig_T_8; // @[RoundAnyRawFNToRecFN.scala 172:61]
  wire [13:0] _roundedSig_T_10 = ~roundMask; // @[RoundAnyRawFNToRecFN.scala 178:32]
  wire [13:0] _roundedSig_T_11 = io_in_sig & _roundedSig_T_10; // @[RoundAnyRawFNToRecFN.scala 178:30]
  wire [12:0] _roundedSig_T_16 = {{1'd0}, _roundedSig_T_11[13:2]}; // @[RoundAnyRawFNToRecFN.scala 178:47]
  wire [12:0] roundedSig = roundPosBit ? _roundedSig_T_9 : _roundedSig_T_16; // @[RoundAnyRawFNToRecFN.scala 171:16]
  wire [2:0] _sRoundedExp_T_1 = {1'b0,$signed(roundedSig[12:11])}; // @[RoundAnyRawFNToRecFN.scala 183:69]
  wire [6:0] _GEN_4 = {{4{_sRoundedExp_T_1[2]}},_sRoundedExp_T_1}; // @[RoundAnyRawFNToRecFN.scala 183:40]
  wire [7:0] sRoundedExp = $signed(io_in_sExp) + $signed(_GEN_4); // @[RoundAnyRawFNToRecFN.scala 183:40]
  wire [5:0] common_expOut = sRoundedExp[5:0]; // @[RoundAnyRawFNToRecFN.scala 185:37]
  wire [9:0] common_fractOut = doShiftSigDown1 ? roundedSig[10:1] : roundedSig[9:0]; // @[RoundAnyRawFNToRecFN.scala 187:16]
  wire [3:0] _common_overflow_T = sRoundedExp[7:4]; // @[RoundAnyRawFNToRecFN.scala 194:30]
  wire  common_overflow = $signed(_common_overflow_T) >= 4'sh3; // @[RoundAnyRawFNToRecFN.scala 194:50]
  wire  common_totalUnderflow = $signed(sRoundedExp) < 8'sh8; // @[RoundAnyRawFNToRecFN.scala 198:31]
  wire  isNaNOut = io_invalidExc | io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 233:34]
  wire  commonCase = ~isNaNOut & ~io_in_isInf & ~io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 235:61]
  wire  overflow = commonCase & common_overflow; // @[RoundAnyRawFNToRecFN.scala 236:32]
  wire  notNaN_isInfOut = io_in_isInf | overflow; // @[RoundAnyRawFNToRecFN.scala 246:32]
  wire  signOut = isNaNOut ? 1'h0 : io_in_sign; // @[RoundAnyRawFNToRecFN.scala 248:22]
  wire [5:0] _expOut_T_1 = io_in_isZero | common_totalUnderflow ? 6'h38 : 6'h0; // @[RoundAnyRawFNToRecFN.scala 251:18]
  wire [5:0] _expOut_T_2 = ~_expOut_T_1; // @[RoundAnyRawFNToRecFN.scala 251:14]
  wire [5:0] _expOut_T_3 = common_expOut & _expOut_T_2; // @[RoundAnyRawFNToRecFN.scala 250:24]
  wire [5:0] _expOut_T_11 = notNaN_isInfOut ? 6'h8 : 6'h0; // @[RoundAnyRawFNToRecFN.scala 263:18]
  wire [5:0] _expOut_T_12 = ~_expOut_T_11; // @[RoundAnyRawFNToRecFN.scala 263:14]
  wire [5:0] _expOut_T_13 = _expOut_T_3 & _expOut_T_12; // @[RoundAnyRawFNToRecFN.scala 262:17]
  wire [5:0] _expOut_T_18 = notNaN_isInfOut ? 6'h30 : 6'h0; // @[RoundAnyRawFNToRecFN.scala 275:16]
  wire [5:0] _expOut_T_19 = _expOut_T_13 | _expOut_T_18; // @[RoundAnyRawFNToRecFN.scala 274:15]
  wire [5:0] _expOut_T_20 = isNaNOut ? 6'h38 : 6'h0; // @[RoundAnyRawFNToRecFN.scala 276:16]
  wire [5:0] expOut = _expOut_T_19 | _expOut_T_20; // @[RoundAnyRawFNToRecFN.scala 275:77]
  wire [9:0] _fractOut_T_2 = isNaNOut ? 10'h200 : 10'h0; // @[RoundAnyRawFNToRecFN.scala 279:16]
  wire [9:0] fractOut = isNaNOut | io_in_isZero | common_totalUnderflow ? _fractOut_T_2 : common_fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12]
  wire [6:0] io_out_hi = {signOut,expOut}; // @[Cat.scala 33:92]
  assign io_out = {io_out_hi,fractOut}; // @[Cat.scala 33:92]
endmodule
module RoundRawFNToRecFN(
  input         io_invalidExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [6:0]  io_in_sExp,
  input  [13:0] io_in_sig,
  output [16:0] io_out
);
  wire  roundAnyRawFNToRecFN_io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [6:0] roundAnyRawFNToRecFN_io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [13:0] roundAnyRawFNToRecFN_io_in_sig; // @[RoundAnyRawFNToRecFN.scala 307:15]
  wire [16:0] roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 307:15]
  RoundAnyRawFNToRecFN roundAnyRawFNToRecFN ( // @[RoundAnyRawFNToRecFN.scala 307:15]
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_out(roundAnyRawFNToRecFN_io_out)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 315:23]
  assign roundAnyRawFNToRecFN_io_invalidExc = io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 310:44]
  assign roundAnyRawFNToRecFN_io_in_isNaN = io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_isInf = io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_isZero = io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sign = io_in_sign; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sExp = io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 312:44]
  assign roundAnyRawFNToRecFN_io_in_sig = io_in_sig; // @[RoundAnyRawFNToRecFN.scala 312:44]
endmodule
module AddRecFN(
  input         io_subOp,
  input  [16:0] io_a,
  input  [16:0] io_b,
  output [16:0] io_out
);
  wire  addRawFN__io_subOp; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_a_isNaN; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_a_isInf; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_a_isZero; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_a_sign; // @[AddRecFN.scala 147:26]
  wire [6:0] addRawFN__io_a_sExp; // @[AddRecFN.scala 147:26]
  wire [11:0] addRawFN__io_a_sig; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_b_isNaN; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_b_isInf; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_b_isZero; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_b_sign; // @[AddRecFN.scala 147:26]
  wire [6:0] addRawFN__io_b_sExp; // @[AddRecFN.scala 147:26]
  wire [11:0] addRawFN__io_b_sig; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_invalidExc; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_rawOut_isNaN; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_rawOut_isInf; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_rawOut_isZero; // @[AddRecFN.scala 147:26]
  wire  addRawFN__io_rawOut_sign; // @[AddRecFN.scala 147:26]
  wire [6:0] addRawFN__io_rawOut_sExp; // @[AddRecFN.scala 147:26]
  wire [13:0] addRawFN__io_rawOut_sig; // @[AddRecFN.scala 147:26]
  wire  roundRawFNToRecFN_io_invalidExc; // @[AddRecFN.scala 157:15]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[AddRecFN.scala 157:15]
  wire  roundRawFNToRecFN_io_in_isInf; // @[AddRecFN.scala 157:15]
  wire  roundRawFNToRecFN_io_in_isZero; // @[AddRecFN.scala 157:15]
  wire  roundRawFNToRecFN_io_in_sign; // @[AddRecFN.scala 157:15]
  wire [6:0] roundRawFNToRecFN_io_in_sExp; // @[AddRecFN.scala 157:15]
  wire [13:0] roundRawFNToRecFN_io_in_sig; // @[AddRecFN.scala 157:15]
  wire [16:0] roundRawFNToRecFN_io_out; // @[AddRecFN.scala 157:15]
  wire [5:0] addRawFN_io_a_exp = io_a[15:10]; // @[rawFloatFromRecFN.scala 50:21]
  wire  addRawFN_io_a_isZero = addRawFN_io_a_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  addRawFN_io_a_isSpecial = addRawFN_io_a_exp[5:4] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  _addRawFN_io_a_out_sig_T = ~addRawFN_io_a_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [1:0] addRawFN_io_a_out_sig_hi = {1'h0,_addRawFN_io_a_out_sig_T}; // @[Cat.scala 33:92]
  wire [5:0] addRawFN_io_b_exp = io_b[15:10]; // @[rawFloatFromRecFN.scala 50:21]
  wire  addRawFN_io_b_isZero = addRawFN_io_b_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  addRawFN_io_b_isSpecial = addRawFN_io_b_exp[5:4] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  _addRawFN_io_b_out_sig_T = ~addRawFN_io_b_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [1:0] addRawFN_io_b_out_sig_hi = {1'h0,_addRawFN_io_b_out_sig_T}; // @[Cat.scala 33:92]
  AddRawFN addRawFN_ ( // @[AddRecFN.scala 147:26]
    .io_subOp(addRawFN__io_subOp),
    .io_a_isNaN(addRawFN__io_a_isNaN),
    .io_a_isInf(addRawFN__io_a_isInf),
    .io_a_isZero(addRawFN__io_a_isZero),
    .io_a_sign(addRawFN__io_a_sign),
    .io_a_sExp(addRawFN__io_a_sExp),
    .io_a_sig(addRawFN__io_a_sig),
    .io_b_isNaN(addRawFN__io_b_isNaN),
    .io_b_isInf(addRawFN__io_b_isInf),
    .io_b_isZero(addRawFN__io_b_isZero),
    .io_b_sign(addRawFN__io_b_sign),
    .io_b_sExp(addRawFN__io_b_sExp),
    .io_b_sig(addRawFN__io_b_sig),
    .io_invalidExc(addRawFN__io_invalidExc),
    .io_rawOut_isNaN(addRawFN__io_rawOut_isNaN),
    .io_rawOut_isInf(addRawFN__io_rawOut_isInf),
    .io_rawOut_isZero(addRawFN__io_rawOut_isZero),
    .io_rawOut_sign(addRawFN__io_rawOut_sign),
    .io_rawOut_sExp(addRawFN__io_rawOut_sExp),
    .io_rawOut_sig(addRawFN__io_rawOut_sig)
  );
  RoundRawFNToRecFN roundRawFNToRecFN ( // @[AddRecFN.scala 157:15]
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_out(roundRawFNToRecFN_io_out)
  );
  assign io_out = roundRawFNToRecFN_io_out; // @[AddRecFN.scala 163:23]
  assign addRawFN__io_subOp = io_subOp; // @[AddRecFN.scala 149:30]
  assign addRawFN__io_a_isNaN = addRawFN_io_a_isSpecial & addRawFN_io_a_exp[3]; // @[rawFloatFromRecFN.scala 55:33]
  assign addRawFN__io_a_isInf = addRawFN_io_a_isSpecial & ~addRawFN_io_a_exp[3]; // @[rawFloatFromRecFN.scala 56:33]
  assign addRawFN__io_a_isZero = addRawFN_io_a_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign addRawFN__io_a_sign = io_a[16]; // @[rawFloatFromRecFN.scala 58:25]
  assign addRawFN__io_a_sExp = {1'b0,$signed(addRawFN_io_a_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  assign addRawFN__io_a_sig = {addRawFN_io_a_out_sig_hi,io_a[9:0]}; // @[Cat.scala 33:92]
  assign addRawFN__io_b_isNaN = addRawFN_io_b_isSpecial & addRawFN_io_b_exp[3]; // @[rawFloatFromRecFN.scala 55:33]
  assign addRawFN__io_b_isInf = addRawFN_io_b_isSpecial & ~addRawFN_io_b_exp[3]; // @[rawFloatFromRecFN.scala 56:33]
  assign addRawFN__io_b_isZero = addRawFN_io_b_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign addRawFN__io_b_sign = io_b[16]; // @[rawFloatFromRecFN.scala 58:25]
  assign addRawFN__io_b_sExp = {1'b0,$signed(addRawFN_io_b_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  assign addRawFN__io_b_sig = {addRawFN_io_b_out_sig_hi,io_b[9:0]}; // @[Cat.scala 33:92]
  assign roundRawFNToRecFN_io_invalidExc = addRawFN__io_invalidExc; // @[AddRecFN.scala 158:39]
  assign roundRawFNToRecFN_io_in_isNaN = addRawFN__io_rawOut_isNaN; // @[AddRecFN.scala 160:39]
  assign roundRawFNToRecFN_io_in_isInf = addRawFN__io_rawOut_isInf; // @[AddRecFN.scala 160:39]
  assign roundRawFNToRecFN_io_in_isZero = addRawFN__io_rawOut_isZero; // @[AddRecFN.scala 160:39]
  assign roundRawFNToRecFN_io_in_sign = addRawFN__io_rawOut_sign; // @[AddRecFN.scala 160:39]
  assign roundRawFNToRecFN_io_in_sExp = addRawFN__io_rawOut_sExp; // @[AddRecFN.scala 160:39]
  assign roundRawFNToRecFN_io_in_sig = addRawFN__io_rawOut_sig; // @[AddRecFN.scala 160:39]
endmodule
module FloatAdd(
  input  [16:0] io_op1,
  input  [16:0] io_op2,
  output [16:0] io_res
);
  wire  float_adder_io_subOp; // @[Float.scala 14:27]
  wire [16:0] float_adder_io_a; // @[Float.scala 14:27]
  wire [16:0] float_adder_io_b; // @[Float.scala 14:27]
  wire [16:0] float_adder_io_out; // @[Float.scala 14:27]
  AddRecFN float_adder ( // @[Float.scala 14:27]
    .io_subOp(float_adder_io_subOp),
    .io_a(float_adder_io_a),
    .io_b(float_adder_io_b),
    .io_out(float_adder_io_out)
  );
  assign io_res = float_adder_io_out; // @[Float.scala 20:10]
  assign float_adder_io_subOp = 1'h0; // @[Float.scala 15:24]
  assign float_adder_io_a = io_op1; // @[Float.scala 16:20]
  assign float_adder_io_b = io_op2; // @[Float.scala 17:20]
endmodule
module ComplexAdd(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  wire [16:0] io_res_re_inst_io_op1; // @[Float.scala 25:22]
  wire [16:0] io_res_re_inst_io_op2; // @[Float.scala 25:22]
  wire [16:0] io_res_re_inst_io_res; // @[Float.scala 25:22]
  wire [16:0] io_res_im_inst_io_op1; // @[Float.scala 25:22]
  wire [16:0] io_res_im_inst_io_op2; // @[Float.scala 25:22]
  wire [16:0] io_res_im_inst_io_res; // @[Float.scala 25:22]
  FloatAdd io_res_re_inst ( // @[Float.scala 25:22]
    .io_op1(io_res_re_inst_io_op1),
    .io_op2(io_res_re_inst_io_op2),
    .io_res(io_res_re_inst_io_res)
  );
  FloatAdd io_res_im_inst ( // @[Float.scala 25:22]
    .io_op1(io_res_im_inst_io_op1),
    .io_op2(io_res_im_inst_io_op2),
    .io_res(io_res_im_inst_io_res)
  );
  assign io_res_re = io_res_re_inst_io_res; // @[Modules.scala 71:15]
  assign io_res_im = io_res_im_inst_io_res; // @[Modules.scala 72:15]
  assign io_res_re_inst_io_op1 = io_op1_re; // @[Float.scala 26:17]
  assign io_res_re_inst_io_op2 = io_op2_re; // @[Float.scala 27:17]
  assign io_res_im_inst_io_op1 = io_op1_im; // @[Float.scala 26:17]
  assign io_res_im_inst_io_op2 = io_op2_im; // @[Float.scala 27:17]
endmodule
module ComplexAdd_2(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  wire [16:0] io_res_re_inst_io_op1; // @[Float.scala 25:22]
  wire [16:0] io_res_re_inst_io_op2; // @[Float.scala 25:22]
  wire [16:0] io_res_re_inst_io_res; // @[Float.scala 25:22]
  wire [16:0] io_res_im_inst_io_op1; // @[Float.scala 25:22]
  wire [16:0] io_res_im_inst_io_op2; // @[Float.scala 25:22]
  wire [16:0] io_res_im_inst_io_res; // @[Float.scala 25:22]
  FloatAdd io_res_re_inst ( // @[Float.scala 25:22]
    .io_op1(io_res_re_inst_io_op1),
    .io_op2(io_res_re_inst_io_op2),
    .io_res(io_res_re_inst_io_res)
  );
  FloatAdd io_res_im_inst ( // @[Float.scala 25:22]
    .io_op1(io_res_im_inst_io_op1),
    .io_op2(io_res_im_inst_io_op2),
    .io_res(io_res_im_inst_io_res)
  );
  assign io_res_re = io_res_re_inst_io_res; // @[Modules.scala 71:15]
  assign io_res_im = io_res_im_inst_io_res; // @[Modules.scala 72:15]
  assign io_res_re_inst_io_op1 = io_op1_re; // @[Float.scala 26:17]
  assign io_res_re_inst_io_op2 = io_op2_re; // @[Float.scala 27:17]
  assign io_res_im_inst_io_op1 = io_op1_im; // @[Float.scala 26:17]
  assign io_res_im_inst_io_op2 = io_op2_im; // @[Float.scala 27:17]
endmodule
module FloatSub(
  input  [16:0] io_op1,
  input  [16:0] io_op2,
  output [16:0] io_res
);
  wire  float_adder_io_subOp; // @[Float.scala 34:27]
  wire [16:0] float_adder_io_a; // @[Float.scala 34:27]
  wire [16:0] float_adder_io_b; // @[Float.scala 34:27]
  wire [16:0] float_adder_io_out; // @[Float.scala 34:27]
  AddRecFN float_adder ( // @[Float.scala 34:27]
    .io_subOp(float_adder_io_subOp),
    .io_a(float_adder_io_a),
    .io_b(float_adder_io_b),
    .io_out(float_adder_io_out)
  );
  assign io_res = float_adder_io_out; // @[Float.scala 40:10]
  assign float_adder_io_subOp = 1'h1; // @[Float.scala 35:24]
  assign float_adder_io_a = io_op1; // @[Float.scala 36:20]
  assign float_adder_io_b = io_op2; // @[Float.scala 37:20]
endmodule
module ComplexSub(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  wire [16:0] io_res_re_inst_io_op1; // @[Float.scala 45:22]
  wire [16:0] io_res_re_inst_io_op2; // @[Float.scala 45:22]
  wire [16:0] io_res_re_inst_io_res; // @[Float.scala 45:22]
  wire [16:0] io_res_im_inst_io_op1; // @[Float.scala 45:22]
  wire [16:0] io_res_im_inst_io_op2; // @[Float.scala 45:22]
  wire [16:0] io_res_im_inst_io_res; // @[Float.scala 45:22]
  FloatSub io_res_re_inst ( // @[Float.scala 45:22]
    .io_op1(io_res_re_inst_io_op1),
    .io_op2(io_res_re_inst_io_op2),
    .io_res(io_res_re_inst_io_res)
  );
  FloatSub io_res_im_inst ( // @[Float.scala 45:22]
    .io_op1(io_res_im_inst_io_op1),
    .io_op2(io_res_im_inst_io_op2),
    .io_res(io_res_im_inst_io_res)
  );
  assign io_res_re = io_res_re_inst_io_res; // @[Modules.scala 90:15]
  assign io_res_im = io_res_im_inst_io_res; // @[Modules.scala 91:15]
  assign io_res_re_inst_io_op1 = io_op1_re; // @[Float.scala 46:17]
  assign io_res_re_inst_io_op2 = io_op2_re; // @[Float.scala 47:17]
  assign io_res_im_inst_io_op1 = io_op1_im; // @[Float.scala 46:17]
  assign io_res_im_inst_io_op2 = io_op2_im; // @[Float.scala 47:17]
endmodule
module ComplexSub_1(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  wire [16:0] io_res_re_inst_io_op1; // @[Float.scala 45:22]
  wire [16:0] io_res_re_inst_io_op2; // @[Float.scala 45:22]
  wire [16:0] io_res_re_inst_io_res; // @[Float.scala 45:22]
  wire [16:0] io_res_im_inst_io_op1; // @[Float.scala 45:22]
  wire [16:0] io_res_im_inst_io_op2; // @[Float.scala 45:22]
  wire [16:0] io_res_im_inst_io_res; // @[Float.scala 45:22]
  FloatSub io_res_re_inst ( // @[Float.scala 45:22]
    .io_op1(io_res_re_inst_io_op1),
    .io_op2(io_res_re_inst_io_op2),
    .io_res(io_res_re_inst_io_res)
  );
  FloatSub io_res_im_inst ( // @[Float.scala 45:22]
    .io_op1(io_res_im_inst_io_op1),
    .io_op2(io_res_im_inst_io_op2),
    .io_res(io_res_im_inst_io_res)
  );
  assign io_res_re = io_res_re_inst_io_res; // @[Modules.scala 90:15]
  assign io_res_im = io_res_im_inst_io_res; // @[Modules.scala 91:15]
  assign io_res_re_inst_io_op1 = io_op1_re; // @[Float.scala 46:17]
  assign io_res_re_inst_io_op2 = io_op2_re; // @[Float.scala 47:17]
  assign io_res_im_inst_io_op1 = io_op1_im; // @[Float.scala 46:17]
  assign io_res_im_inst_io_op2 = io_op2_im; // @[Float.scala 47:17]
endmodule
module ComplexTran(
  input  [16:0] io_in_re,
  input  [16:0] io_in_im,
  output [16:0] io_out_re,
  output [16:0] io_out_im
);
  wire  _io_out_im_T_1 = ~io_in_re[16]; // @[Modules.scala 113:22]
  assign io_out_re = io_in_im; // @[Modules.scala 112:15]
  assign io_out_im = {_io_out_im_T_1,io_in_re[15:0]}; // @[Cat.scala 33:92]
endmodule
module MulFullRawFN(
  input         io_a_isNaN,
  input         io_a_isInf,
  input         io_a_isZero,
  input         io_a_sign,
  input  [6:0]  io_a_sExp,
  input  [11:0] io_a_sig,
  input         io_b_isNaN,
  input         io_b_isInf,
  input         io_b_isZero,
  input         io_b_sign,
  input  [6:0]  io_b_sExp,
  input  [11:0] io_b_sig,
  output        io_invalidExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [6:0]  io_rawOut_sExp,
  output [21:0] io_rawOut_sig
);
  wire  notSigNaN_invalidExc = io_a_isInf & io_b_isZero | io_a_isZero & io_b_isInf; // @[MulRecFN.scala 58:60]
  wire [6:0] _common_sExpOut_T_2 = $signed(io_a_sExp) + $signed(io_b_sExp); // @[MulRecFN.scala 62:36]
  wire [23:0] _common_sigOut_T = io_a_sig * io_b_sig; // @[MulRecFN.scala 63:35]
  wire  _io_invalidExc_T_2 = io_a_isNaN & ~io_a_sig[9]; // @[common.scala 82:46]
  wire  _io_invalidExc_T_5 = io_b_isNaN & ~io_b_sig[9]; // @[common.scala 82:46]
  assign io_invalidExc = _io_invalidExc_T_2 | _io_invalidExc_T_5 | notSigNaN_invalidExc; // @[MulRecFN.scala 66:71]
  assign io_rawOut_isNaN = io_a_isNaN | io_b_isNaN; // @[MulRecFN.scala 70:35]
  assign io_rawOut_isInf = io_a_isInf | io_b_isInf; // @[MulRecFN.scala 59:38]
  assign io_rawOut_isZero = io_a_isZero | io_b_isZero; // @[MulRecFN.scala 60:40]
  assign io_rawOut_sign = io_a_sign ^ io_b_sign; // @[MulRecFN.scala 61:36]
  assign io_rawOut_sExp = $signed(_common_sExpOut_T_2) - 7'sh20; // @[MulRecFN.scala 62:48]
  assign io_rawOut_sig = _common_sigOut_T[21:0]; // @[MulRecFN.scala 63:46]
endmodule
module MulRawFN(
  input         io_a_isNaN,
  input         io_a_isInf,
  input         io_a_isZero,
  input         io_a_sign,
  input  [6:0]  io_a_sExp,
  input  [11:0] io_a_sig,
  input         io_b_isNaN,
  input         io_b_isInf,
  input         io_b_isZero,
  input         io_b_sign,
  input  [6:0]  io_b_sExp,
  input  [11:0] io_b_sig,
  output        io_invalidExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [6:0]  io_rawOut_sExp,
  output [13:0] io_rawOut_sig
);
  wire  mulFullRaw_io_a_isNaN; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_a_isInf; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_a_isZero; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_a_sign; // @[MulRecFN.scala 84:28]
  wire [6:0] mulFullRaw_io_a_sExp; // @[MulRecFN.scala 84:28]
  wire [11:0] mulFullRaw_io_a_sig; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_b_isNaN; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_b_isInf; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_b_isZero; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_b_sign; // @[MulRecFN.scala 84:28]
  wire [6:0] mulFullRaw_io_b_sExp; // @[MulRecFN.scala 84:28]
  wire [11:0] mulFullRaw_io_b_sig; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_invalidExc; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_rawOut_isNaN; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_rawOut_isInf; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_rawOut_isZero; // @[MulRecFN.scala 84:28]
  wire  mulFullRaw_io_rawOut_sign; // @[MulRecFN.scala 84:28]
  wire [6:0] mulFullRaw_io_rawOut_sExp; // @[MulRecFN.scala 84:28]
  wire [21:0] mulFullRaw_io_rawOut_sig; // @[MulRecFN.scala 84:28]
  wire  _io_rawOut_sig_T_2 = |mulFullRaw_io_rawOut_sig[8:0]; // @[MulRecFN.scala 93:55]
  MulFullRawFN mulFullRaw ( // @[MulRecFN.scala 84:28]
    .io_a_isNaN(mulFullRaw_io_a_isNaN),
    .io_a_isInf(mulFullRaw_io_a_isInf),
    .io_a_isZero(mulFullRaw_io_a_isZero),
    .io_a_sign(mulFullRaw_io_a_sign),
    .io_a_sExp(mulFullRaw_io_a_sExp),
    .io_a_sig(mulFullRaw_io_a_sig),
    .io_b_isNaN(mulFullRaw_io_b_isNaN),
    .io_b_isInf(mulFullRaw_io_b_isInf),
    .io_b_isZero(mulFullRaw_io_b_isZero),
    .io_b_sign(mulFullRaw_io_b_sign),
    .io_b_sExp(mulFullRaw_io_b_sExp),
    .io_b_sig(mulFullRaw_io_b_sig),
    .io_invalidExc(mulFullRaw_io_invalidExc),
    .io_rawOut_isNaN(mulFullRaw_io_rawOut_isNaN),
    .io_rawOut_isInf(mulFullRaw_io_rawOut_isInf),
    .io_rawOut_isZero(mulFullRaw_io_rawOut_isZero),
    .io_rawOut_sign(mulFullRaw_io_rawOut_sign),
    .io_rawOut_sExp(mulFullRaw_io_rawOut_sExp),
    .io_rawOut_sig(mulFullRaw_io_rawOut_sig)
  );
  assign io_invalidExc = mulFullRaw_io_invalidExc; // @[MulRecFN.scala 89:19]
  assign io_rawOut_isNaN = mulFullRaw_io_rawOut_isNaN; // @[MulRecFN.scala 90:15]
  assign io_rawOut_isInf = mulFullRaw_io_rawOut_isInf; // @[MulRecFN.scala 90:15]
  assign io_rawOut_isZero = mulFullRaw_io_rawOut_isZero; // @[MulRecFN.scala 90:15]
  assign io_rawOut_sign = mulFullRaw_io_rawOut_sign; // @[MulRecFN.scala 90:15]
  assign io_rawOut_sExp = mulFullRaw_io_rawOut_sExp; // @[MulRecFN.scala 90:15]
  assign io_rawOut_sig = {mulFullRaw_io_rawOut_sig[21:9],_io_rawOut_sig_T_2}; // @[Cat.scala 33:92]
  assign mulFullRaw_io_a_isNaN = io_a_isNaN; // @[MulRecFN.scala 86:21]
  assign mulFullRaw_io_a_isInf = io_a_isInf; // @[MulRecFN.scala 86:21]
  assign mulFullRaw_io_a_isZero = io_a_isZero; // @[MulRecFN.scala 86:21]
  assign mulFullRaw_io_a_sign = io_a_sign; // @[MulRecFN.scala 86:21]
  assign mulFullRaw_io_a_sExp = io_a_sExp; // @[MulRecFN.scala 86:21]
  assign mulFullRaw_io_a_sig = io_a_sig; // @[MulRecFN.scala 86:21]
  assign mulFullRaw_io_b_isNaN = io_b_isNaN; // @[MulRecFN.scala 87:21]
  assign mulFullRaw_io_b_isInf = io_b_isInf; // @[MulRecFN.scala 87:21]
  assign mulFullRaw_io_b_isZero = io_b_isZero; // @[MulRecFN.scala 87:21]
  assign mulFullRaw_io_b_sign = io_b_sign; // @[MulRecFN.scala 87:21]
  assign mulFullRaw_io_b_sExp = io_b_sExp; // @[MulRecFN.scala 87:21]
  assign mulFullRaw_io_b_sig = io_b_sig; // @[MulRecFN.scala 87:21]
endmodule
module MulRecFN(
  input  [16:0] io_a,
  input  [16:0] io_b,
  output [16:0] io_out
);
  wire  mulRawFN__io_a_isNaN; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_a_isInf; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_a_isZero; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_a_sign; // @[MulRecFN.scala 113:26]
  wire [6:0] mulRawFN__io_a_sExp; // @[MulRecFN.scala 113:26]
  wire [11:0] mulRawFN__io_a_sig; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_b_isNaN; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_b_isInf; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_b_isZero; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_b_sign; // @[MulRecFN.scala 113:26]
  wire [6:0] mulRawFN__io_b_sExp; // @[MulRecFN.scala 113:26]
  wire [11:0] mulRawFN__io_b_sig; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_invalidExc; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_rawOut_isNaN; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_rawOut_isInf; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_rawOut_isZero; // @[MulRecFN.scala 113:26]
  wire  mulRawFN__io_rawOut_sign; // @[MulRecFN.scala 113:26]
  wire [6:0] mulRawFN__io_rawOut_sExp; // @[MulRecFN.scala 113:26]
  wire [13:0] mulRawFN__io_rawOut_sig; // @[MulRecFN.scala 113:26]
  wire  roundRawFNToRecFN_io_invalidExc; // @[MulRecFN.scala 121:15]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[MulRecFN.scala 121:15]
  wire  roundRawFNToRecFN_io_in_isInf; // @[MulRecFN.scala 121:15]
  wire  roundRawFNToRecFN_io_in_isZero; // @[MulRecFN.scala 121:15]
  wire  roundRawFNToRecFN_io_in_sign; // @[MulRecFN.scala 121:15]
  wire [6:0] roundRawFNToRecFN_io_in_sExp; // @[MulRecFN.scala 121:15]
  wire [13:0] roundRawFNToRecFN_io_in_sig; // @[MulRecFN.scala 121:15]
  wire [16:0] roundRawFNToRecFN_io_out; // @[MulRecFN.scala 121:15]
  wire [5:0] mulRawFN_io_a_exp = io_a[15:10]; // @[rawFloatFromRecFN.scala 50:21]
  wire  mulRawFN_io_a_isZero = mulRawFN_io_a_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  mulRawFN_io_a_isSpecial = mulRawFN_io_a_exp[5:4] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  _mulRawFN_io_a_out_sig_T = ~mulRawFN_io_a_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [1:0] mulRawFN_io_a_out_sig_hi = {1'h0,_mulRawFN_io_a_out_sig_T}; // @[Cat.scala 33:92]
  wire [5:0] mulRawFN_io_b_exp = io_b[15:10]; // @[rawFloatFromRecFN.scala 50:21]
  wire  mulRawFN_io_b_isZero = mulRawFN_io_b_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  mulRawFN_io_b_isSpecial = mulRawFN_io_b_exp[5:4] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  _mulRawFN_io_b_out_sig_T = ~mulRawFN_io_b_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [1:0] mulRawFN_io_b_out_sig_hi = {1'h0,_mulRawFN_io_b_out_sig_T}; // @[Cat.scala 33:92]
  MulRawFN mulRawFN_ ( // @[MulRecFN.scala 113:26]
    .io_a_isNaN(mulRawFN__io_a_isNaN),
    .io_a_isInf(mulRawFN__io_a_isInf),
    .io_a_isZero(mulRawFN__io_a_isZero),
    .io_a_sign(mulRawFN__io_a_sign),
    .io_a_sExp(mulRawFN__io_a_sExp),
    .io_a_sig(mulRawFN__io_a_sig),
    .io_b_isNaN(mulRawFN__io_b_isNaN),
    .io_b_isInf(mulRawFN__io_b_isInf),
    .io_b_isZero(mulRawFN__io_b_isZero),
    .io_b_sign(mulRawFN__io_b_sign),
    .io_b_sExp(mulRawFN__io_b_sExp),
    .io_b_sig(mulRawFN__io_b_sig),
    .io_invalidExc(mulRawFN__io_invalidExc),
    .io_rawOut_isNaN(mulRawFN__io_rawOut_isNaN),
    .io_rawOut_isInf(mulRawFN__io_rawOut_isInf),
    .io_rawOut_isZero(mulRawFN__io_rawOut_isZero),
    .io_rawOut_sign(mulRawFN__io_rawOut_sign),
    .io_rawOut_sExp(mulRawFN__io_rawOut_sExp),
    .io_rawOut_sig(mulRawFN__io_rawOut_sig)
  );
  RoundRawFNToRecFN roundRawFNToRecFN ( // @[MulRecFN.scala 121:15]
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_out(roundRawFNToRecFN_io_out)
  );
  assign io_out = roundRawFNToRecFN_io_out; // @[MulRecFN.scala 127:23]
  assign mulRawFN__io_a_isNaN = mulRawFN_io_a_isSpecial & mulRawFN_io_a_exp[3]; // @[rawFloatFromRecFN.scala 55:33]
  assign mulRawFN__io_a_isInf = mulRawFN_io_a_isSpecial & ~mulRawFN_io_a_exp[3]; // @[rawFloatFromRecFN.scala 56:33]
  assign mulRawFN__io_a_isZero = mulRawFN_io_a_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign mulRawFN__io_a_sign = io_a[16]; // @[rawFloatFromRecFN.scala 58:25]
  assign mulRawFN__io_a_sExp = {1'b0,$signed(mulRawFN_io_a_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  assign mulRawFN__io_a_sig = {mulRawFN_io_a_out_sig_hi,io_a[9:0]}; // @[Cat.scala 33:92]
  assign mulRawFN__io_b_isNaN = mulRawFN_io_b_isSpecial & mulRawFN_io_b_exp[3]; // @[rawFloatFromRecFN.scala 55:33]
  assign mulRawFN__io_b_isInf = mulRawFN_io_b_isSpecial & ~mulRawFN_io_b_exp[3]; // @[rawFloatFromRecFN.scala 56:33]
  assign mulRawFN__io_b_isZero = mulRawFN_io_b_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign mulRawFN__io_b_sign = io_b[16]; // @[rawFloatFromRecFN.scala 58:25]
  assign mulRawFN__io_b_sExp = {1'b0,$signed(mulRawFN_io_b_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  assign mulRawFN__io_b_sig = {mulRawFN_io_b_out_sig_hi,io_b[9:0]}; // @[Cat.scala 33:92]
  assign roundRawFNToRecFN_io_invalidExc = mulRawFN__io_invalidExc; // @[MulRecFN.scala 122:39]
  assign roundRawFNToRecFN_io_in_isNaN = mulRawFN__io_rawOut_isNaN; // @[MulRecFN.scala 124:39]
  assign roundRawFNToRecFN_io_in_isInf = mulRawFN__io_rawOut_isInf; // @[MulRecFN.scala 124:39]
  assign roundRawFNToRecFN_io_in_isZero = mulRawFN__io_rawOut_isZero; // @[MulRecFN.scala 124:39]
  assign roundRawFNToRecFN_io_in_sign = mulRawFN__io_rawOut_sign; // @[MulRecFN.scala 124:39]
  assign roundRawFNToRecFN_io_in_sExp = mulRawFN__io_rawOut_sExp; // @[MulRecFN.scala 124:39]
  assign roundRawFNToRecFN_io_in_sig = mulRawFN__io_rawOut_sig; // @[MulRecFN.scala 124:39]
endmodule
module FloatMul(
  input  [16:0] io_op1,
  input  [16:0] io_op2,
  output [16:0] io_res
);
  wire [16:0] float_adder_io_a; // @[Float.scala 54:27]
  wire [16:0] float_adder_io_b; // @[Float.scala 54:27]
  wire [16:0] float_adder_io_out; // @[Float.scala 54:27]
  MulRecFN float_adder ( // @[Float.scala 54:27]
    .io_a(float_adder_io_a),
    .io_b(float_adder_io_b),
    .io_out(float_adder_io_out)
  );
  assign io_res = float_adder_io_out; // @[Float.scala 59:10]
  assign float_adder_io_a = io_op1; // @[Float.scala 55:20]
  assign float_adder_io_b = io_op2; // @[Float.scala 56:20]
endmodule
module ComplexMul(
  input  [16:0] io_op1_re,
  input  [16:0] io_op1_im,
  input  [16:0] io_op2_re,
  input  [16:0] io_op2_im,
  output [16:0] io_res_re,
  output [16:0] io_res_im
);
  wire [16:0] io_res_re_inst_io_op1; // @[Float.scala 64:22]
  wire [16:0] io_res_re_inst_io_op2; // @[Float.scala 64:22]
  wire [16:0] io_res_re_inst_io_res; // @[Float.scala 64:22]
  wire [16:0] io_res_re_inst_1_io_op1; // @[Float.scala 64:22]
  wire [16:0] io_res_re_inst_1_io_op2; // @[Float.scala 64:22]
  wire [16:0] io_res_re_inst_1_io_res; // @[Float.scala 64:22]
  wire [16:0] io_res_re_inst_2_io_op1; // @[Float.scala 45:22]
  wire [16:0] io_res_re_inst_2_io_op2; // @[Float.scala 45:22]
  wire [16:0] io_res_re_inst_2_io_res; // @[Float.scala 45:22]
  wire [16:0] io_res_im_inst_io_op1; // @[Float.scala 64:22]
  wire [16:0] io_res_im_inst_io_op2; // @[Float.scala 64:22]
  wire [16:0] io_res_im_inst_io_res; // @[Float.scala 64:22]
  wire [16:0] io_res_im_inst_1_io_op1; // @[Float.scala 64:22]
  wire [16:0] io_res_im_inst_1_io_op2; // @[Float.scala 64:22]
  wire [16:0] io_res_im_inst_1_io_res; // @[Float.scala 64:22]
  wire [16:0] io_res_im_inst_2_io_op1; // @[Float.scala 25:22]
  wire [16:0] io_res_im_inst_2_io_op2; // @[Float.scala 25:22]
  wire [16:0] io_res_im_inst_2_io_res; // @[Float.scala 25:22]
  FloatMul io_res_re_inst ( // @[Float.scala 64:22]
    .io_op1(io_res_re_inst_io_op1),
    .io_op2(io_res_re_inst_io_op2),
    .io_res(io_res_re_inst_io_res)
  );
  FloatMul io_res_re_inst_1 ( // @[Float.scala 64:22]
    .io_op1(io_res_re_inst_1_io_op1),
    .io_op2(io_res_re_inst_1_io_op2),
    .io_res(io_res_re_inst_1_io_res)
  );
  FloatSub io_res_re_inst_2 ( // @[Float.scala 45:22]
    .io_op1(io_res_re_inst_2_io_op1),
    .io_op2(io_res_re_inst_2_io_op2),
    .io_res(io_res_re_inst_2_io_res)
  );
  FloatMul io_res_im_inst ( // @[Float.scala 64:22]
    .io_op1(io_res_im_inst_io_op1),
    .io_op2(io_res_im_inst_io_op2),
    .io_res(io_res_im_inst_io_res)
  );
  FloatMul io_res_im_inst_1 ( // @[Float.scala 64:22]
    .io_op1(io_res_im_inst_1_io_op1),
    .io_op2(io_res_im_inst_1_io_op2),
    .io_res(io_res_im_inst_1_io_res)
  );
  FloatAdd io_res_im_inst_2 ( // @[Float.scala 25:22]
    .io_op1(io_res_im_inst_2_io_op1),
    .io_op2(io_res_im_inst_2_io_op2),
    .io_res(io_res_im_inst_2_io_res)
  );
  assign io_res_re = io_res_re_inst_2_io_res; // @[Modules.scala 139:17]
  assign io_res_im = io_res_im_inst_2_io_res; // @[Modules.scala 140:17]
  assign io_res_re_inst_io_op1 = io_op1_re; // @[Float.scala 65:17]
  assign io_res_re_inst_io_op2 = io_op2_re; // @[Float.scala 66:17]
  assign io_res_re_inst_1_io_op1 = io_op1_im; // @[Float.scala 65:17]
  assign io_res_re_inst_1_io_op2 = io_op2_im; // @[Float.scala 66:17]
  assign io_res_re_inst_2_io_op1 = io_res_re_inst_io_res; // @[Float.scala 46:17]
  assign io_res_re_inst_2_io_op2 = io_res_re_inst_1_io_res; // @[Float.scala 47:17]
  assign io_res_im_inst_io_op1 = io_op1_re; // @[Float.scala 65:17]
  assign io_res_im_inst_io_op2 = io_op2_im; // @[Float.scala 66:17]
  assign io_res_im_inst_1_io_op1 = io_op1_im; // @[Float.scala 65:17]
  assign io_res_im_inst_1_io_op2 = io_op2_re; // @[Float.scala 66:17]
  assign io_res_im_inst_2_io_op1 = io_res_im_inst_io_res; // @[Float.scala 26:17]
  assign io_res_im_inst_2_io_op2 = io_res_im_inst_1_io_res; // @[Float.scala 27:17]
endmodule
module ButterflyMul(
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  input  [16:0] io_in_2_re,
  input  [16:0] io_in_2_im,
  input  [16:0] io_in_3_re,
  input  [16:0] io_in_3_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im,
  input  [16:0] io_wn_0_re,
  input  [16:0] io_wn_0_im,
  input  [16:0] io_wn_1_re,
  input  [16:0] io_wn_1_im,
  input  [16:0] io_wn_2_re,
  input  [16:0] io_wn_2_im
);
  wire [16:0] temp_0_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_0_inst_2_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_1_inst_2_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_1_inst_2_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_2_inst_2_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_2_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_2_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_2_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] temp_2_inst_3_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] temp_2_inst_3_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] temp_3_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_2_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_2_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_2_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_2_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] temp_3_inst_3_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] temp_3_inst_3_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_1_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_2_inst_io_res_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_op1_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_op1_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_op2_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_op2_im; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_res_re; // @[Modules.scala 158:22]
  wire [16:0] io_out_3_inst_io_res_im; // @[Modules.scala 158:22]
  ComplexAdd temp_0_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_0_inst_io_op1_re),
    .io_op1_im(temp_0_inst_io_op1_im),
    .io_op2_re(temp_0_inst_io_op2_re),
    .io_op2_im(temp_0_inst_io_op2_im),
    .io_res_re(temp_0_inst_io_res_re),
    .io_res_im(temp_0_inst_io_res_im)
  );
  ComplexAdd temp_0_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_0_inst_1_io_op1_re),
    .io_op1_im(temp_0_inst_1_io_op1_im),
    .io_op2_re(temp_0_inst_1_io_op2_re),
    .io_op2_im(temp_0_inst_1_io_op2_im),
    .io_res_re(temp_0_inst_1_io_res_re),
    .io_res_im(temp_0_inst_1_io_res_im)
  );
  ComplexAdd_2 temp_0_inst_2 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_0_inst_2_io_op1_re),
    .io_op1_im(temp_0_inst_2_io_op1_im),
    .io_op2_re(temp_0_inst_2_io_op2_re),
    .io_op2_im(temp_0_inst_2_io_op2_im),
    .io_res_re(temp_0_inst_2_io_res_re),
    .io_res_im(temp_0_inst_2_io_res_im)
  );
  ComplexAdd temp_1_inst ( // @[Modules.scala 81:22]
    .io_op1_re(temp_1_inst_io_op1_re),
    .io_op1_im(temp_1_inst_io_op1_im),
    .io_op2_re(temp_1_inst_io_op2_re),
    .io_op2_im(temp_1_inst_io_op2_im),
    .io_res_re(temp_1_inst_io_res_re),
    .io_res_im(temp_1_inst_io_res_im)
  );
  ComplexAdd temp_1_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_1_inst_1_io_op1_re),
    .io_op1_im(temp_1_inst_1_io_op1_im),
    .io_op2_re(temp_1_inst_1_io_op2_re),
    .io_op2_im(temp_1_inst_1_io_op2_im),
    .io_res_re(temp_1_inst_1_io_res_re),
    .io_res_im(temp_1_inst_1_io_res_im)
  );
  ComplexSub temp_1_inst_2 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_1_inst_2_io_op1_re),
    .io_op1_im(temp_1_inst_2_io_op1_im),
    .io_op2_re(temp_1_inst_2_io_op2_re),
    .io_op2_im(temp_1_inst_2_io_op2_im),
    .io_res_re(temp_1_inst_2_io_res_re),
    .io_res_im(temp_1_inst_2_io_res_im)
  );
  ComplexSub_1 temp_2_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_2_inst_io_op1_re),
    .io_op1_im(temp_2_inst_io_op1_im),
    .io_op2_re(temp_2_inst_io_op2_re),
    .io_op2_im(temp_2_inst_io_op2_im),
    .io_res_re(temp_2_inst_io_res_re),
    .io_res_im(temp_2_inst_io_res_im)
  );
  ComplexSub_1 temp_2_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_2_inst_1_io_op1_re),
    .io_op1_im(temp_2_inst_1_io_op1_im),
    .io_op2_re(temp_2_inst_1_io_op2_re),
    .io_op2_im(temp_2_inst_1_io_op2_im),
    .io_res_re(temp_2_inst_1_io_res_re),
    .io_res_im(temp_2_inst_1_io_res_im)
  );
  ComplexTran temp_2_inst_2 ( // @[Modules.scala 123:22]
    .io_in_re(temp_2_inst_2_io_in_re),
    .io_in_im(temp_2_inst_2_io_in_im),
    .io_out_re(temp_2_inst_2_io_out_re),
    .io_out_im(temp_2_inst_2_io_out_im)
  );
  ComplexAdd_2 temp_2_inst_3 ( // @[Modules.scala 81:22]
    .io_op1_re(temp_2_inst_3_io_op1_re),
    .io_op1_im(temp_2_inst_3_io_op1_im),
    .io_op2_re(temp_2_inst_3_io_op2_re),
    .io_op2_im(temp_2_inst_3_io_op2_im),
    .io_res_re(temp_2_inst_3_io_res_re),
    .io_res_im(temp_2_inst_3_io_res_im)
  );
  ComplexSub_1 temp_3_inst ( // @[Modules.scala 100:22]
    .io_op1_re(temp_3_inst_io_op1_re),
    .io_op1_im(temp_3_inst_io_op1_im),
    .io_op2_re(temp_3_inst_io_op2_re),
    .io_op2_im(temp_3_inst_io_op2_im),
    .io_res_re(temp_3_inst_io_res_re),
    .io_res_im(temp_3_inst_io_res_im)
  );
  ComplexSub_1 temp_3_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_3_inst_1_io_op1_re),
    .io_op1_im(temp_3_inst_1_io_op1_im),
    .io_op2_re(temp_3_inst_1_io_op2_re),
    .io_op2_im(temp_3_inst_1_io_op2_im),
    .io_res_re(temp_3_inst_1_io_res_re),
    .io_res_im(temp_3_inst_1_io_res_im)
  );
  ComplexTran temp_3_inst_2 ( // @[Modules.scala 123:22]
    .io_in_re(temp_3_inst_2_io_in_re),
    .io_in_im(temp_3_inst_2_io_in_im),
    .io_out_re(temp_3_inst_2_io_out_re),
    .io_out_im(temp_3_inst_2_io_out_im)
  );
  ComplexSub temp_3_inst_3 ( // @[Modules.scala 100:22]
    .io_op1_re(temp_3_inst_3_io_op1_re),
    .io_op1_im(temp_3_inst_3_io_op1_im),
    .io_op2_re(temp_3_inst_3_io_op2_re),
    .io_op2_im(temp_3_inst_3_io_op2_im),
    .io_res_re(temp_3_inst_3_io_res_re),
    .io_res_im(temp_3_inst_3_io_res_im)
  );
  ComplexMul io_out_1_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  ComplexMul io_out_2_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_2_inst_io_op1_re),
    .io_op1_im(io_out_2_inst_io_op1_im),
    .io_op2_re(io_out_2_inst_io_op2_re),
    .io_op2_im(io_out_2_inst_io_op2_im),
    .io_res_re(io_out_2_inst_io_res_re),
    .io_res_im(io_out_2_inst_io_res_im)
  );
  ComplexMul io_out_3_inst ( // @[Modules.scala 158:22]
    .io_op1_re(io_out_3_inst_io_op1_re),
    .io_op1_im(io_out_3_inst_io_op1_im),
    .io_op2_re(io_out_3_inst_io_op2_re),
    .io_op2_im(io_out_3_inst_io_op2_im),
    .io_res_re(io_out_3_inst_io_res_re),
    .io_res_im(io_out_3_inst_io_res_im)
  );
  assign io_out_0_re = temp_0_inst_2_io_res_re; // @[Modules.scala 224:21 229:13]
  assign io_out_0_im = temp_0_inst_2_io_res_im; // @[Modules.scala 224:21 229:13]
  assign io_out_1_re = io_out_1_inst_io_res_re; // @[Modules.scala 270:15]
  assign io_out_1_im = io_out_1_inst_io_res_im; // @[Modules.scala 270:15]
  assign io_out_2_re = io_out_2_inst_io_res_re; // @[Modules.scala 271:15]
  assign io_out_2_im = io_out_2_inst_io_res_im; // @[Modules.scala 271:15]
  assign io_out_3_re = io_out_3_inst_io_res_re; // @[Modules.scala 272:15]
  assign io_out_3_im = io_out_3_inst_io_res_im; // @[Modules.scala 272:15]
  assign temp_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign temp_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign temp_0_inst_io_op2_re = io_in_2_re; // @[Modules.scala 83:17]
  assign temp_0_inst_io_op2_im = io_in_2_im; // @[Modules.scala 83:17]
  assign temp_0_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign temp_0_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign temp_0_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 83:17]
  assign temp_0_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 83:17]
  assign temp_0_inst_2_io_op1_re = temp_0_inst_io_res_re; // @[Modules.scala 82:17]
  assign temp_0_inst_2_io_op1_im = temp_0_inst_io_res_im; // @[Modules.scala 82:17]
  assign temp_0_inst_2_io_op2_re = temp_0_inst_1_io_res_re; // @[Modules.scala 83:17]
  assign temp_0_inst_2_io_op2_im = temp_0_inst_1_io_res_im; // @[Modules.scala 83:17]
  assign temp_1_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign temp_1_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign temp_1_inst_io_op2_re = io_in_2_re; // @[Modules.scala 83:17]
  assign temp_1_inst_io_op2_im = io_in_2_im; // @[Modules.scala 83:17]
  assign temp_1_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign temp_1_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign temp_1_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 83:17]
  assign temp_1_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 83:17]
  assign temp_1_inst_2_io_op1_re = temp_1_inst_io_res_re; // @[Modules.scala 101:17]
  assign temp_1_inst_2_io_op1_im = temp_1_inst_io_res_im; // @[Modules.scala 101:17]
  assign temp_1_inst_2_io_op2_re = temp_1_inst_1_io_res_re; // @[Modules.scala 102:17]
  assign temp_1_inst_2_io_op2_im = temp_1_inst_1_io_res_im; // @[Modules.scala 102:17]
  assign temp_2_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign temp_2_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign temp_2_inst_io_op2_re = io_in_2_re; // @[Modules.scala 102:17]
  assign temp_2_inst_io_op2_im = io_in_2_im; // @[Modules.scala 102:17]
  assign temp_2_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign temp_2_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign temp_2_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 102:17]
  assign temp_2_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 102:17]
  assign temp_2_inst_2_io_in_re = temp_2_inst_1_io_res_re; // @[Modules.scala 124:16]
  assign temp_2_inst_2_io_in_im = temp_2_inst_1_io_res_im; // @[Modules.scala 124:16]
  assign temp_2_inst_3_io_op1_re = temp_2_inst_io_res_re; // @[Modules.scala 82:17]
  assign temp_2_inst_3_io_op1_im = temp_2_inst_io_res_im; // @[Modules.scala 82:17]
  assign temp_2_inst_3_io_op2_re = temp_2_inst_2_io_out_re; // @[Modules.scala 83:17]
  assign temp_2_inst_3_io_op2_im = temp_2_inst_2_io_out_im; // @[Modules.scala 83:17]
  assign temp_3_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign temp_3_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign temp_3_inst_io_op2_re = io_in_2_re; // @[Modules.scala 102:17]
  assign temp_3_inst_io_op2_im = io_in_2_im; // @[Modules.scala 102:17]
  assign temp_3_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign temp_3_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign temp_3_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 102:17]
  assign temp_3_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 102:17]
  assign temp_3_inst_2_io_in_re = temp_3_inst_1_io_res_re; // @[Modules.scala 124:16]
  assign temp_3_inst_2_io_in_im = temp_3_inst_1_io_res_im; // @[Modules.scala 124:16]
  assign temp_3_inst_3_io_op1_re = temp_3_inst_io_res_re; // @[Modules.scala 101:17]
  assign temp_3_inst_3_io_op1_im = temp_3_inst_io_res_im; // @[Modules.scala 101:17]
  assign temp_3_inst_3_io_op2_re = temp_3_inst_2_io_out_re; // @[Modules.scala 102:17]
  assign temp_3_inst_3_io_op2_im = temp_3_inst_2_io_out_im; // @[Modules.scala 102:17]
  assign io_out_1_inst_io_op1_re = temp_1_inst_2_io_res_re; // @[Modules.scala 224:21 230:13]
  assign io_out_1_inst_io_op1_im = temp_1_inst_2_io_res_im; // @[Modules.scala 224:21 230:13]
  assign io_out_1_inst_io_op2_re = io_wn_1_re; // @[Modules.scala 160:17]
  assign io_out_1_inst_io_op2_im = io_wn_1_im; // @[Modules.scala 160:17]
  assign io_out_2_inst_io_op1_re = temp_2_inst_3_io_res_re; // @[Modules.scala 224:21 231:13]
  assign io_out_2_inst_io_op1_im = temp_2_inst_3_io_res_im; // @[Modules.scala 224:21 231:13]
  assign io_out_2_inst_io_op2_re = io_wn_0_re; // @[Modules.scala 160:17]
  assign io_out_2_inst_io_op2_im = io_wn_0_im; // @[Modules.scala 160:17]
  assign io_out_3_inst_io_op1_re = temp_3_inst_3_io_res_re; // @[Modules.scala 224:21 232:13]
  assign io_out_3_inst_io_op1_im = temp_3_inst_3_io_res_im; // @[Modules.scala 224:21 232:13]
  assign io_out_3_inst_io_op2_re = io_wn_2_re; // @[Modules.scala 160:17]
  assign io_out_3_inst_io_op2_im = io_wn_2_im; // @[Modules.scala 160:17]
endmodule
module ButterflyAdd(
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  input  [16:0] io_in_2_re,
  input  [16:0] io_in_2_im,
  input  [16:0] io_in_3_re,
  input  [16:0] io_in_3_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im
);
  wire [16:0] io_out_0_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_0_inst_2_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_1_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_1_inst_2_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_1_inst_2_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_2_inst_2_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_2_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_2_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_2_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_2_inst_3_io_op1_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_op1_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_op2_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_op2_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_res_re; // @[Modules.scala 81:22]
  wire [16:0] io_out_2_inst_3_io_res_im; // @[Modules.scala 81:22]
  wire [16:0] io_out_3_inst_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_1_io_res_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_2_io_in_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_2_io_in_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_2_io_out_re; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_2_io_out_im; // @[Modules.scala 123:22]
  wire [16:0] io_out_3_inst_3_io_op1_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_op1_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_op2_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_op2_im; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_res_re; // @[Modules.scala 100:22]
  wire [16:0] io_out_3_inst_3_io_res_im; // @[Modules.scala 100:22]
  ComplexAdd io_out_0_inst ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_0_inst_io_op1_re),
    .io_op1_im(io_out_0_inst_io_op1_im),
    .io_op2_re(io_out_0_inst_io_op2_re),
    .io_op2_im(io_out_0_inst_io_op2_im),
    .io_res_re(io_out_0_inst_io_res_re),
    .io_res_im(io_out_0_inst_io_res_im)
  );
  ComplexAdd io_out_0_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_0_inst_1_io_op1_re),
    .io_op1_im(io_out_0_inst_1_io_op1_im),
    .io_op2_re(io_out_0_inst_1_io_op2_re),
    .io_op2_im(io_out_0_inst_1_io_op2_im),
    .io_res_re(io_out_0_inst_1_io_res_re),
    .io_res_im(io_out_0_inst_1_io_res_im)
  );
  ComplexAdd_2 io_out_0_inst_2 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_0_inst_2_io_op1_re),
    .io_op1_im(io_out_0_inst_2_io_op1_im),
    .io_op2_re(io_out_0_inst_2_io_op2_re),
    .io_op2_im(io_out_0_inst_2_io_op2_im),
    .io_res_re(io_out_0_inst_2_io_res_re),
    .io_res_im(io_out_0_inst_2_io_res_im)
  );
  ComplexAdd io_out_1_inst ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_1_inst_io_op1_re),
    .io_op1_im(io_out_1_inst_io_op1_im),
    .io_op2_re(io_out_1_inst_io_op2_re),
    .io_op2_im(io_out_1_inst_io_op2_im),
    .io_res_re(io_out_1_inst_io_res_re),
    .io_res_im(io_out_1_inst_io_res_im)
  );
  ComplexAdd io_out_1_inst_1 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_1_inst_1_io_op1_re),
    .io_op1_im(io_out_1_inst_1_io_op1_im),
    .io_op2_re(io_out_1_inst_1_io_op2_re),
    .io_op2_im(io_out_1_inst_1_io_op2_im),
    .io_res_re(io_out_1_inst_1_io_res_re),
    .io_res_im(io_out_1_inst_1_io_res_im)
  );
  ComplexSub io_out_1_inst_2 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_1_inst_2_io_op1_re),
    .io_op1_im(io_out_1_inst_2_io_op1_im),
    .io_op2_re(io_out_1_inst_2_io_op2_re),
    .io_op2_im(io_out_1_inst_2_io_op2_im),
    .io_res_re(io_out_1_inst_2_io_res_re),
    .io_res_im(io_out_1_inst_2_io_res_im)
  );
  ComplexSub_1 io_out_2_inst ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_2_inst_io_op1_re),
    .io_op1_im(io_out_2_inst_io_op1_im),
    .io_op2_re(io_out_2_inst_io_op2_re),
    .io_op2_im(io_out_2_inst_io_op2_im),
    .io_res_re(io_out_2_inst_io_res_re),
    .io_res_im(io_out_2_inst_io_res_im)
  );
  ComplexSub_1 io_out_2_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_2_inst_1_io_op1_re),
    .io_op1_im(io_out_2_inst_1_io_op1_im),
    .io_op2_re(io_out_2_inst_1_io_op2_re),
    .io_op2_im(io_out_2_inst_1_io_op2_im),
    .io_res_re(io_out_2_inst_1_io_res_re),
    .io_res_im(io_out_2_inst_1_io_res_im)
  );
  ComplexTran io_out_2_inst_2 ( // @[Modules.scala 123:22]
    .io_in_re(io_out_2_inst_2_io_in_re),
    .io_in_im(io_out_2_inst_2_io_in_im),
    .io_out_re(io_out_2_inst_2_io_out_re),
    .io_out_im(io_out_2_inst_2_io_out_im)
  );
  ComplexAdd_2 io_out_2_inst_3 ( // @[Modules.scala 81:22]
    .io_op1_re(io_out_2_inst_3_io_op1_re),
    .io_op1_im(io_out_2_inst_3_io_op1_im),
    .io_op2_re(io_out_2_inst_3_io_op2_re),
    .io_op2_im(io_out_2_inst_3_io_op2_im),
    .io_res_re(io_out_2_inst_3_io_res_re),
    .io_res_im(io_out_2_inst_3_io_res_im)
  );
  ComplexSub_1 io_out_3_inst ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_3_inst_io_op1_re),
    .io_op1_im(io_out_3_inst_io_op1_im),
    .io_op2_re(io_out_3_inst_io_op2_re),
    .io_op2_im(io_out_3_inst_io_op2_im),
    .io_res_re(io_out_3_inst_io_res_re),
    .io_res_im(io_out_3_inst_io_res_im)
  );
  ComplexSub_1 io_out_3_inst_1 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_3_inst_1_io_op1_re),
    .io_op1_im(io_out_3_inst_1_io_op1_im),
    .io_op2_re(io_out_3_inst_1_io_op2_re),
    .io_op2_im(io_out_3_inst_1_io_op2_im),
    .io_res_re(io_out_3_inst_1_io_res_re),
    .io_res_im(io_out_3_inst_1_io_res_im)
  );
  ComplexTran io_out_3_inst_2 ( // @[Modules.scala 123:22]
    .io_in_re(io_out_3_inst_2_io_in_re),
    .io_in_im(io_out_3_inst_2_io_in_im),
    .io_out_re(io_out_3_inst_2_io_out_re),
    .io_out_im(io_out_3_inst_2_io_out_im)
  );
  ComplexSub io_out_3_inst_3 ( // @[Modules.scala 100:22]
    .io_op1_re(io_out_3_inst_3_io_op1_re),
    .io_op1_im(io_out_3_inst_3_io_op1_im),
    .io_op2_re(io_out_3_inst_3_io_op2_re),
    .io_op2_im(io_out_3_inst_3_io_op2_im),
    .io_res_re(io_out_3_inst_3_io_res_re),
    .io_res_im(io_out_3_inst_3_io_res_im)
  );
  assign io_out_0_re = io_out_0_inst_2_io_res_re; // @[Modules.scala 173:15]
  assign io_out_0_im = io_out_0_inst_2_io_res_im; // @[Modules.scala 173:15]
  assign io_out_1_re = io_out_1_inst_2_io_res_re; // @[Modules.scala 174:15]
  assign io_out_1_im = io_out_1_inst_2_io_res_im; // @[Modules.scala 174:15]
  assign io_out_2_re = io_out_2_inst_3_io_res_re; // @[Modules.scala 175:15]
  assign io_out_2_im = io_out_2_inst_3_io_res_im; // @[Modules.scala 175:15]
  assign io_out_3_re = io_out_3_inst_3_io_res_re; // @[Modules.scala 176:15]
  assign io_out_3_im = io_out_3_inst_3_io_res_im; // @[Modules.scala 176:15]
  assign io_out_0_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign io_out_0_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign io_out_0_inst_io_op2_re = io_in_2_re; // @[Modules.scala 83:17]
  assign io_out_0_inst_io_op2_im = io_in_2_im; // @[Modules.scala 83:17]
  assign io_out_0_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign io_out_0_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign io_out_0_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 83:17]
  assign io_out_0_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 83:17]
  assign io_out_0_inst_2_io_op1_re = io_out_0_inst_io_res_re; // @[Modules.scala 82:17]
  assign io_out_0_inst_2_io_op1_im = io_out_0_inst_io_res_im; // @[Modules.scala 82:17]
  assign io_out_0_inst_2_io_op2_re = io_out_0_inst_1_io_res_re; // @[Modules.scala 83:17]
  assign io_out_0_inst_2_io_op2_im = io_out_0_inst_1_io_res_im; // @[Modules.scala 83:17]
  assign io_out_1_inst_io_op1_re = io_in_0_re; // @[Modules.scala 82:17]
  assign io_out_1_inst_io_op1_im = io_in_0_im; // @[Modules.scala 82:17]
  assign io_out_1_inst_io_op2_re = io_in_2_re; // @[Modules.scala 83:17]
  assign io_out_1_inst_io_op2_im = io_in_2_im; // @[Modules.scala 83:17]
  assign io_out_1_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 82:17]
  assign io_out_1_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 82:17]
  assign io_out_1_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 83:17]
  assign io_out_1_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 83:17]
  assign io_out_1_inst_2_io_op1_re = io_out_1_inst_io_res_re; // @[Modules.scala 101:17]
  assign io_out_1_inst_2_io_op1_im = io_out_1_inst_io_res_im; // @[Modules.scala 101:17]
  assign io_out_1_inst_2_io_op2_re = io_out_1_inst_1_io_res_re; // @[Modules.scala 102:17]
  assign io_out_1_inst_2_io_op2_im = io_out_1_inst_1_io_res_im; // @[Modules.scala 102:17]
  assign io_out_2_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign io_out_2_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign io_out_2_inst_io_op2_re = io_in_2_re; // @[Modules.scala 102:17]
  assign io_out_2_inst_io_op2_im = io_in_2_im; // @[Modules.scala 102:17]
  assign io_out_2_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign io_out_2_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign io_out_2_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 102:17]
  assign io_out_2_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 102:17]
  assign io_out_2_inst_2_io_in_re = io_out_2_inst_1_io_res_re; // @[Modules.scala 124:16]
  assign io_out_2_inst_2_io_in_im = io_out_2_inst_1_io_res_im; // @[Modules.scala 124:16]
  assign io_out_2_inst_3_io_op1_re = io_out_2_inst_io_res_re; // @[Modules.scala 82:17]
  assign io_out_2_inst_3_io_op1_im = io_out_2_inst_io_res_im; // @[Modules.scala 82:17]
  assign io_out_2_inst_3_io_op2_re = io_out_2_inst_2_io_out_re; // @[Modules.scala 83:17]
  assign io_out_2_inst_3_io_op2_im = io_out_2_inst_2_io_out_im; // @[Modules.scala 83:17]
  assign io_out_3_inst_io_op1_re = io_in_0_re; // @[Modules.scala 101:17]
  assign io_out_3_inst_io_op1_im = io_in_0_im; // @[Modules.scala 101:17]
  assign io_out_3_inst_io_op2_re = io_in_2_re; // @[Modules.scala 102:17]
  assign io_out_3_inst_io_op2_im = io_in_2_im; // @[Modules.scala 102:17]
  assign io_out_3_inst_1_io_op1_re = io_in_1_re; // @[Modules.scala 101:17]
  assign io_out_3_inst_1_io_op1_im = io_in_1_im; // @[Modules.scala 101:17]
  assign io_out_3_inst_1_io_op2_re = io_in_3_re; // @[Modules.scala 102:17]
  assign io_out_3_inst_1_io_op2_im = io_in_3_im; // @[Modules.scala 102:17]
  assign io_out_3_inst_2_io_in_re = io_out_3_inst_1_io_res_re; // @[Modules.scala 124:16]
  assign io_out_3_inst_2_io_in_im = io_out_3_inst_1_io_res_im; // @[Modules.scala 124:16]
  assign io_out_3_inst_3_io_op1_re = io_out_3_inst_io_res_re; // @[Modules.scala 101:17]
  assign io_out_3_inst_3_io_op1_im = io_out_3_inst_io_res_im; // @[Modules.scala 101:17]
  assign io_out_3_inst_3_io_op2_re = io_out_3_inst_2_io_out_re; // @[Modules.scala 102:17]
  assign io_out_3_inst_3_io_op2_im = io_out_3_inst_2_io_out_im; // @[Modules.scala 102:17]
endmodule
module Exchange(
  input  [16:0] io_in_0_0_re,
  input  [16:0] io_in_0_0_im,
  input  [16:0] io_in_0_1_re,
  input  [16:0] io_in_0_1_im,
  input  [16:0] io_in_0_2_re,
  input  [16:0] io_in_0_2_im,
  input  [16:0] io_in_0_3_re,
  input  [16:0] io_in_0_3_im,
  input  [16:0] io_in_1_0_re,
  input  [16:0] io_in_1_0_im,
  input  [16:0] io_in_1_1_re,
  input  [16:0] io_in_1_1_im,
  input  [16:0] io_in_1_2_re,
  input  [16:0] io_in_1_2_im,
  input  [16:0] io_in_1_3_re,
  input  [16:0] io_in_1_3_im,
  input  [16:0] io_in_2_0_re,
  input  [16:0] io_in_2_0_im,
  input  [16:0] io_in_2_1_re,
  input  [16:0] io_in_2_1_im,
  input  [16:0] io_in_2_2_re,
  input  [16:0] io_in_2_2_im,
  input  [16:0] io_in_2_3_re,
  input  [16:0] io_in_2_3_im,
  input  [16:0] io_in_3_0_re,
  input  [16:0] io_in_3_0_im,
  input  [16:0] io_in_3_1_re,
  input  [16:0] io_in_3_1_im,
  input  [16:0] io_in_3_2_re,
  input  [16:0] io_in_3_2_im,
  input  [16:0] io_in_3_3_re,
  input  [16:0] io_in_3_3_im,
  output [16:0] io_out_0_0_re,
  output [16:0] io_out_0_0_im,
  output [16:0] io_out_0_1_re,
  output [16:0] io_out_0_1_im,
  output [16:0] io_out_0_2_re,
  output [16:0] io_out_0_2_im,
  output [16:0] io_out_0_3_re,
  output [16:0] io_out_0_3_im,
  output [16:0] io_out_1_0_re,
  output [16:0] io_out_1_0_im,
  output [16:0] io_out_1_1_re,
  output [16:0] io_out_1_1_im,
  output [16:0] io_out_1_2_re,
  output [16:0] io_out_1_2_im,
  output [16:0] io_out_1_3_re,
  output [16:0] io_out_1_3_im,
  output [16:0] io_out_2_0_re,
  output [16:0] io_out_2_0_im,
  output [16:0] io_out_2_1_re,
  output [16:0] io_out_2_1_im,
  output [16:0] io_out_2_2_re,
  output [16:0] io_out_2_2_im,
  output [16:0] io_out_2_3_re,
  output [16:0] io_out_2_3_im,
  output [16:0] io_out_3_0_re,
  output [16:0] io_out_3_0_im,
  output [16:0] io_out_3_1_re,
  output [16:0] io_out_3_1_im,
  output [16:0] io_out_3_2_re,
  output [16:0] io_out_3_2_im,
  output [16:0] io_out_3_3_re,
  output [16:0] io_out_3_3_im
);
  assign io_out_0_0_re = io_in_0_0_re; // @[Modules.scala 324:20]
  assign io_out_0_0_im = io_in_0_0_im; // @[Modules.scala 324:20]
  assign io_out_0_1_re = io_in_1_0_re; // @[Modules.scala 324:20]
  assign io_out_0_1_im = io_in_1_0_im; // @[Modules.scala 324:20]
  assign io_out_0_2_re = io_in_2_0_re; // @[Modules.scala 324:20]
  assign io_out_0_2_im = io_in_2_0_im; // @[Modules.scala 324:20]
  assign io_out_0_3_re = io_in_3_0_re; // @[Modules.scala 324:20]
  assign io_out_0_3_im = io_in_3_0_im; // @[Modules.scala 324:20]
  assign io_out_1_0_re = io_in_0_1_re; // @[Modules.scala 324:20]
  assign io_out_1_0_im = io_in_0_1_im; // @[Modules.scala 324:20]
  assign io_out_1_1_re = io_in_1_1_re; // @[Modules.scala 324:20]
  assign io_out_1_1_im = io_in_1_1_im; // @[Modules.scala 324:20]
  assign io_out_1_2_re = io_in_2_1_re; // @[Modules.scala 324:20]
  assign io_out_1_2_im = io_in_2_1_im; // @[Modules.scala 324:20]
  assign io_out_1_3_re = io_in_3_1_re; // @[Modules.scala 324:20]
  assign io_out_1_3_im = io_in_3_1_im; // @[Modules.scala 324:20]
  assign io_out_2_0_re = io_in_0_2_re; // @[Modules.scala 324:20]
  assign io_out_2_0_im = io_in_0_2_im; // @[Modules.scala 324:20]
  assign io_out_2_1_re = io_in_1_2_re; // @[Modules.scala 324:20]
  assign io_out_2_1_im = io_in_1_2_im; // @[Modules.scala 324:20]
  assign io_out_2_2_re = io_in_2_2_re; // @[Modules.scala 324:20]
  assign io_out_2_2_im = io_in_2_2_im; // @[Modules.scala 324:20]
  assign io_out_2_3_re = io_in_3_2_re; // @[Modules.scala 324:20]
  assign io_out_2_3_im = io_in_3_2_im; // @[Modules.scala 324:20]
  assign io_out_3_0_re = io_in_0_3_re; // @[Modules.scala 324:20]
  assign io_out_3_0_im = io_in_0_3_im; // @[Modules.scala 324:20]
  assign io_out_3_1_re = io_in_1_3_re; // @[Modules.scala 324:20]
  assign io_out_3_1_im = io_in_1_3_im; // @[Modules.scala 324:20]
  assign io_out_3_2_re = io_in_2_3_re; // @[Modules.scala 324:20]
  assign io_out_3_2_im = io_in_2_3_im; // @[Modules.scala 324:20]
  assign io_out_3_3_re = io_in_3_3_re; // @[Modules.scala 324:20]
  assign io_out_3_3_im = io_in_3_3_im; // @[Modules.scala 324:20]
endmodule
module Switch(
  input         clock,
  input  [16:0] io_in_0_re,
  input  [16:0] io_in_0_im,
  input  [16:0] io_in_1_re,
  input  [16:0] io_in_1_im,
  input  [16:0] io_in_2_re,
  input  [16:0] io_in_2_im,
  input  [16:0] io_in_3_re,
  input  [16:0] io_in_3_im,
  output [16:0] io_out_0_re,
  output [16:0] io_out_0_im,
  output [16:0] io_out_1_re,
  output [16:0] io_out_1_im,
  output [16:0] io_out_2_re,
  output [16:0] io_out_2_im,
  output [16:0] io_out_3_re,
  output [16:0] io_out_3_im,
  input  [1:0]  io_sel
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  reg [16:0] swdata_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_2_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] swdata_3_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_2_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_0_r_2_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_1_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_1_r_1_im; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_re; // @[Reg.scala 19:16]
  reg [16:0] io_out_2_r_im; // @[Reg.scala 19:16]
  wire [16:0] _GEN_49 = 2'h1 == io_sel ? swdata_2_r_1_re : swdata_1_r_re; // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_50 = 2'h2 == io_sel ? swdata_3_r_2_re : _GEN_49; // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_53 = 2'h1 == io_sel ? swdata_2_r_1_im : swdata_1_r_im; // @[Modules.scala 306:{38,38}]
  wire [16:0] _GEN_54 = 2'h2 == io_sel ? swdata_3_r_2_im : _GEN_53; // @[Modules.scala 306:{38,38}]
  assign io_out_0_re = io_out_0_r_2_re; // @[Modules.scala 306:38]
  assign io_out_0_im = io_out_0_r_2_im; // @[Modules.scala 306:38]
  assign io_out_1_re = io_out_1_r_1_re; // @[Modules.scala 306:38]
  assign io_out_1_im = io_out_1_r_1_im; // @[Modules.scala 306:38]
  assign io_out_2_re = io_out_2_r_re; // @[Modules.scala 306:38]
  assign io_out_2_im = io_out_2_r_im; // @[Modules.scala 306:38]
  assign io_out_3_re = 2'h3 == io_sel ? io_in_0_re : _GEN_50; // @[Modules.scala 306:{38,38}]
  assign io_out_3_im = 2'h3 == io_sel ? io_in_0_im : _GEN_54; // @[Modules.scala 306:{38,38}]
  always @(posedge clock) begin
    swdata_1_r_re <= io_in_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_1_r_im <= io_in_1_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_re <= io_in_2_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_im <= io_in_2_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_1_re <= swdata_2_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_2_r_1_im <= swdata_2_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_re <= io_in_3_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_im <= io_in_3_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_1_re <= swdata_3_r_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_1_im <= swdata_3_r_im; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_2_re <= swdata_3_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    swdata_3_r_2_im <= swdata_3_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_3_r_2_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_2_r_1_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_re <= io_in_0_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_3_r_2_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_2_r_1_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_0_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else begin
      io_out_0_r_im <= io_in_0_im;
    end
    io_out_0_r_1_re <= io_out_0_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_1_im <= io_out_0_r_im; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_2_re <= io_out_0_r_1_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_0_r_2_im <= io_out_0_r_1_im; // @[Reg.scala 19:16 20:{18,22}]
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_2_r_1_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else begin
      io_out_1_r_re <= swdata_3_r_2_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_2_r_1_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_1_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else begin
      io_out_1_r_im <= swdata_3_r_2_im;
    end
    io_out_1_r_1_re <= io_out_1_r_re; // @[Reg.scala 19:16 20:{18,22}]
    io_out_1_r_1_im <= io_out_1_r_im; // @[Reg.scala 19:16 20:{18,22}]
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_1_r_re; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= io_in_0_re; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_re <= swdata_3_r_2_re; // @[Reg.scala 20:22]
    end else begin
      io_out_2_r_re <= swdata_2_r_1_re;
    end
    if (2'h3 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_1_r_im; // @[Reg.scala 20:22]
    end else if (2'h2 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= io_in_0_im; // @[Reg.scala 20:22]
    end else if (2'h1 == io_sel) begin // @[Reg.scala 20:22]
      io_out_2_r_im <= swdata_3_r_2_im; // @[Reg.scala 20:22]
    end else begin
      io_out_2_r_im <= swdata_2_r_1_im;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  swdata_1_r_re = _RAND_0[16:0];
  _RAND_1 = {1{`RANDOM}};
  swdata_1_r_im = _RAND_1[16:0];
  _RAND_2 = {1{`RANDOM}};
  swdata_2_r_re = _RAND_2[16:0];
  _RAND_3 = {1{`RANDOM}};
  swdata_2_r_im = _RAND_3[16:0];
  _RAND_4 = {1{`RANDOM}};
  swdata_2_r_1_re = _RAND_4[16:0];
  _RAND_5 = {1{`RANDOM}};
  swdata_2_r_1_im = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  swdata_3_r_re = _RAND_6[16:0];
  _RAND_7 = {1{`RANDOM}};
  swdata_3_r_im = _RAND_7[16:0];
  _RAND_8 = {1{`RANDOM}};
  swdata_3_r_1_re = _RAND_8[16:0];
  _RAND_9 = {1{`RANDOM}};
  swdata_3_r_1_im = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  swdata_3_r_2_re = _RAND_10[16:0];
  _RAND_11 = {1{`RANDOM}};
  swdata_3_r_2_im = _RAND_11[16:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_0_r_re = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_0_r_im = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_0_r_1_re = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_0_r_1_im = _RAND_15[16:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_0_r_2_re = _RAND_16[16:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_0_r_2_im = _RAND_17[16:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_1_r_re = _RAND_18[16:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_1_r_im = _RAND_19[16:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_1_r_1_re = _RAND_20[16:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_1_r_1_im = _RAND_21[16:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_2_r_re = _RAND_22[16:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_2_r_im = _RAND_23[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ComplexRecode(
  input  [15:0] io_in_re,
  input  [15:0] io_in_im,
  output [16:0] io_out_re,
  output [16:0] io_out_im
);
  wire  io_out_re_rawIn_sign = io_in_re[15]; // @[rawFloatFromFN.scala 46:22]
  wire [4:0] io_out_re_rawIn_expIn = io_in_re[14:10]; // @[rawFloatFromFN.scala 47:23]
  wire [9:0] io_out_re_rawIn_fractIn = io_in_re[9:0]; // @[rawFloatFromFN.scala 48:25]
  wire  io_out_re_rawIn_isZeroExpIn = io_out_re_rawIn_expIn == 5'h0; // @[rawFloatFromFN.scala 50:34]
  wire  io_out_re_rawIn_isZeroFractIn = io_out_re_rawIn_fractIn == 10'h0; // @[rawFloatFromFN.scala 51:38]
  wire [3:0] _io_out_re_rawIn_normDist_T_10 = io_out_re_rawIn_fractIn[1] ? 4'h8 : 4'h9; // @[Mux.scala 47:70]
  wire [3:0] _io_out_re_rawIn_normDist_T_11 = io_out_re_rawIn_fractIn[2] ? 4'h7 : _io_out_re_rawIn_normDist_T_10; // @[Mux.scala 47:70]
  wire [3:0] _io_out_re_rawIn_normDist_T_12 = io_out_re_rawIn_fractIn[3] ? 4'h6 : _io_out_re_rawIn_normDist_T_11; // @[Mux.scala 47:70]
  wire [3:0] _io_out_re_rawIn_normDist_T_13 = io_out_re_rawIn_fractIn[4] ? 4'h5 : _io_out_re_rawIn_normDist_T_12; // @[Mux.scala 47:70]
  wire [3:0] _io_out_re_rawIn_normDist_T_14 = io_out_re_rawIn_fractIn[5] ? 4'h4 : _io_out_re_rawIn_normDist_T_13; // @[Mux.scala 47:70]
  wire [3:0] _io_out_re_rawIn_normDist_T_15 = io_out_re_rawIn_fractIn[6] ? 4'h3 : _io_out_re_rawIn_normDist_T_14; // @[Mux.scala 47:70]
  wire [3:0] _io_out_re_rawIn_normDist_T_16 = io_out_re_rawIn_fractIn[7] ? 4'h2 : _io_out_re_rawIn_normDist_T_15; // @[Mux.scala 47:70]
  wire [3:0] _io_out_re_rawIn_normDist_T_17 = io_out_re_rawIn_fractIn[8] ? 4'h1 : _io_out_re_rawIn_normDist_T_16; // @[Mux.scala 47:70]
  wire [3:0] io_out_re_rawIn_normDist = io_out_re_rawIn_fractIn[9] ? 4'h0 : _io_out_re_rawIn_normDist_T_17; // @[Mux.scala 47:70]
  wire [24:0] _GEN_8 = {{15'd0}, io_out_re_rawIn_fractIn}; // @[rawFloatFromFN.scala 54:36]
  wire [24:0] _io_out_re_rawIn_subnormFract_T = _GEN_8 << io_out_re_rawIn_normDist; // @[rawFloatFromFN.scala 54:36]
  wire [9:0] io_out_re_rawIn_subnormFract = {_io_out_re_rawIn_subnormFract_T[8:0], 1'h0}; // @[rawFloatFromFN.scala 54:64]
  wire [5:0] _GEN_0 = {{2'd0}, io_out_re_rawIn_normDist}; // @[rawFloatFromFN.scala 57:26]
  wire [5:0] _io_out_re_rawIn_adjustedExp_T = _GEN_0 ^ 6'h3f; // @[rawFloatFromFN.scala 57:26]
  wire [5:0] _io_out_re_rawIn_adjustedExp_T_1 = io_out_re_rawIn_isZeroExpIn ? _io_out_re_rawIn_adjustedExp_T : {{1'd0},
    io_out_re_rawIn_expIn}; // @[rawFloatFromFN.scala 56:16]
  wire [1:0] _io_out_re_rawIn_adjustedExp_T_2 = io_out_re_rawIn_isZeroExpIn ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27]
  wire [4:0] _GEN_1 = {{3'd0}, _io_out_re_rawIn_adjustedExp_T_2}; // @[rawFloatFromFN.scala 60:22]
  wire [4:0] _io_out_re_rawIn_adjustedExp_T_3 = 5'h10 | _GEN_1; // @[rawFloatFromFN.scala 60:22]
  wire [5:0] _GEN_2 = {{1'd0}, _io_out_re_rawIn_adjustedExp_T_3}; // @[rawFloatFromFN.scala 59:15]
  wire [5:0] io_out_re_rawIn_adjustedExp = _io_out_re_rawIn_adjustedExp_T_1 + _GEN_2; // @[rawFloatFromFN.scala 59:15]
  wire  io_out_re_rawIn_isZero = io_out_re_rawIn_isZeroExpIn & io_out_re_rawIn_isZeroFractIn; // @[rawFloatFromFN.scala 62:34]
  wire  io_out_re_rawIn_isSpecial = io_out_re_rawIn_adjustedExp[5:4] == 2'h3; // @[rawFloatFromFN.scala 63:62]
  wire  io_out_re_rawIn__isNaN = io_out_re_rawIn_isSpecial & ~io_out_re_rawIn_isZeroFractIn; // @[rawFloatFromFN.scala 66:33]
  wire [6:0] io_out_re_rawIn__sExp = {1'b0,$signed(io_out_re_rawIn_adjustedExp)}; // @[rawFloatFromFN.scala 70:48]
  wire  _io_out_re_rawIn_out_sig_T = ~io_out_re_rawIn_isZero; // @[rawFloatFromFN.scala 72:29]
  wire [9:0] _io_out_re_rawIn_out_sig_T_1 = io_out_re_rawIn_isZeroExpIn ? io_out_re_rawIn_subnormFract :
    io_out_re_rawIn_fractIn; // @[rawFloatFromFN.scala 72:42]
  wire [11:0] io_out_re_rawIn__sig = {1'h0,_io_out_re_rawIn_out_sig_T,_io_out_re_rawIn_out_sig_T_1}; // @[Cat.scala 33:92]
  wire [2:0] _io_out_re_T_1 = io_out_re_rawIn_isZero ? 3'h0 : io_out_re_rawIn__sExp[5:3]; // @[recFNFromFN.scala 48:16]
  wire [2:0] _GEN_3 = {{2'd0}, io_out_re_rawIn__isNaN}; // @[recFNFromFN.scala 48:79]
  wire [2:0] _io_out_re_T_3 = _io_out_re_T_1 | _GEN_3; // @[recFNFromFN.scala 48:79]
  wire [12:0] io_out_re_lo = {io_out_re_rawIn__sExp[2:0],io_out_re_rawIn__sig[9:0]}; // @[Cat.scala 33:92]
  wire [3:0] io_out_re_hi = {io_out_re_rawIn_sign,_io_out_re_T_3}; // @[Cat.scala 33:92]
  wire  io_out_im_rawIn_sign = io_in_im[15]; // @[rawFloatFromFN.scala 46:22]
  wire [4:0] io_out_im_rawIn_expIn = io_in_im[14:10]; // @[rawFloatFromFN.scala 47:23]
  wire [9:0] io_out_im_rawIn_fractIn = io_in_im[9:0]; // @[rawFloatFromFN.scala 48:25]
  wire  io_out_im_rawIn_isZeroExpIn = io_out_im_rawIn_expIn == 5'h0; // @[rawFloatFromFN.scala 50:34]
  wire  io_out_im_rawIn_isZeroFractIn = io_out_im_rawIn_fractIn == 10'h0; // @[rawFloatFromFN.scala 51:38]
  wire [3:0] _io_out_im_rawIn_normDist_T_10 = io_out_im_rawIn_fractIn[1] ? 4'h8 : 4'h9; // @[Mux.scala 47:70]
  wire [3:0] _io_out_im_rawIn_normDist_T_11 = io_out_im_rawIn_fractIn[2] ? 4'h7 : _io_out_im_rawIn_normDist_T_10; // @[Mux.scala 47:70]
  wire [3:0] _io_out_im_rawIn_normDist_T_12 = io_out_im_rawIn_fractIn[3] ? 4'h6 : _io_out_im_rawIn_normDist_T_11; // @[Mux.scala 47:70]
  wire [3:0] _io_out_im_rawIn_normDist_T_13 = io_out_im_rawIn_fractIn[4] ? 4'h5 : _io_out_im_rawIn_normDist_T_12; // @[Mux.scala 47:70]
  wire [3:0] _io_out_im_rawIn_normDist_T_14 = io_out_im_rawIn_fractIn[5] ? 4'h4 : _io_out_im_rawIn_normDist_T_13; // @[Mux.scala 47:70]
  wire [3:0] _io_out_im_rawIn_normDist_T_15 = io_out_im_rawIn_fractIn[6] ? 4'h3 : _io_out_im_rawIn_normDist_T_14; // @[Mux.scala 47:70]
  wire [3:0] _io_out_im_rawIn_normDist_T_16 = io_out_im_rawIn_fractIn[7] ? 4'h2 : _io_out_im_rawIn_normDist_T_15; // @[Mux.scala 47:70]
  wire [3:0] _io_out_im_rawIn_normDist_T_17 = io_out_im_rawIn_fractIn[8] ? 4'h1 : _io_out_im_rawIn_normDist_T_16; // @[Mux.scala 47:70]
  wire [3:0] io_out_im_rawIn_normDist = io_out_im_rawIn_fractIn[9] ? 4'h0 : _io_out_im_rawIn_normDist_T_17; // @[Mux.scala 47:70]
  wire [24:0] _GEN_9 = {{15'd0}, io_out_im_rawIn_fractIn}; // @[rawFloatFromFN.scala 54:36]
  wire [24:0] _io_out_im_rawIn_subnormFract_T = _GEN_9 << io_out_im_rawIn_normDist; // @[rawFloatFromFN.scala 54:36]
  wire [9:0] io_out_im_rawIn_subnormFract = {_io_out_im_rawIn_subnormFract_T[8:0], 1'h0}; // @[rawFloatFromFN.scala 54:64]
  wire [5:0] _GEN_4 = {{2'd0}, io_out_im_rawIn_normDist}; // @[rawFloatFromFN.scala 57:26]
  wire [5:0] _io_out_im_rawIn_adjustedExp_T = _GEN_4 ^ 6'h3f; // @[rawFloatFromFN.scala 57:26]
  wire [5:0] _io_out_im_rawIn_adjustedExp_T_1 = io_out_im_rawIn_isZeroExpIn ? _io_out_im_rawIn_adjustedExp_T : {{1'd0},
    io_out_im_rawIn_expIn}; // @[rawFloatFromFN.scala 56:16]
  wire [1:0] _io_out_im_rawIn_adjustedExp_T_2 = io_out_im_rawIn_isZeroExpIn ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27]
  wire [4:0] _GEN_5 = {{3'd0}, _io_out_im_rawIn_adjustedExp_T_2}; // @[rawFloatFromFN.scala 60:22]
  wire [4:0] _io_out_im_rawIn_adjustedExp_T_3 = 5'h10 | _GEN_5; // @[rawFloatFromFN.scala 60:22]
  wire [5:0] _GEN_6 = {{1'd0}, _io_out_im_rawIn_adjustedExp_T_3}; // @[rawFloatFromFN.scala 59:15]
  wire [5:0] io_out_im_rawIn_adjustedExp = _io_out_im_rawIn_adjustedExp_T_1 + _GEN_6; // @[rawFloatFromFN.scala 59:15]
  wire  io_out_im_rawIn_isZero = io_out_im_rawIn_isZeroExpIn & io_out_im_rawIn_isZeroFractIn; // @[rawFloatFromFN.scala 62:34]
  wire  io_out_im_rawIn_isSpecial = io_out_im_rawIn_adjustedExp[5:4] == 2'h3; // @[rawFloatFromFN.scala 63:62]
  wire  io_out_im_rawIn__isNaN = io_out_im_rawIn_isSpecial & ~io_out_im_rawIn_isZeroFractIn; // @[rawFloatFromFN.scala 66:33]
  wire [6:0] io_out_im_rawIn__sExp = {1'b0,$signed(io_out_im_rawIn_adjustedExp)}; // @[rawFloatFromFN.scala 70:48]
  wire  _io_out_im_rawIn_out_sig_T = ~io_out_im_rawIn_isZero; // @[rawFloatFromFN.scala 72:29]
  wire [9:0] _io_out_im_rawIn_out_sig_T_1 = io_out_im_rawIn_isZeroExpIn ? io_out_im_rawIn_subnormFract :
    io_out_im_rawIn_fractIn; // @[rawFloatFromFN.scala 72:42]
  wire [11:0] io_out_im_rawIn__sig = {1'h0,_io_out_im_rawIn_out_sig_T,_io_out_im_rawIn_out_sig_T_1}; // @[Cat.scala 33:92]
  wire [2:0] _io_out_im_T_1 = io_out_im_rawIn_isZero ? 3'h0 : io_out_im_rawIn__sExp[5:3]; // @[recFNFromFN.scala 48:16]
  wire [2:0] _GEN_7 = {{2'd0}, io_out_im_rawIn__isNaN}; // @[recFNFromFN.scala 48:79]
  wire [2:0] _io_out_im_T_3 = _io_out_im_T_1 | _GEN_7; // @[recFNFromFN.scala 48:79]
  wire [12:0] io_out_im_lo = {io_out_im_rawIn__sExp[2:0],io_out_im_rawIn__sig[9:0]}; // @[Cat.scala 33:92]
  wire [3:0] io_out_im_hi = {io_out_im_rawIn_sign,_io_out_im_T_3}; // @[Cat.scala 33:92]
  assign io_out_re = {io_out_re_hi,io_out_re_lo}; // @[Cat.scala 33:92]
  assign io_out_im = {io_out_im_hi,io_out_im_lo}; // @[Cat.scala 33:92]
endmodule
module ComplexDecode(
  input  [16:0] io_in_re,
  input  [16:0] io_in_im,
  output [15:0] io_out_re,
  output [15:0] io_out_im
);
  wire [5:0] io_out_re_rawIn_exp = io_in_re[15:10]; // @[rawFloatFromRecFN.scala 50:21]
  wire  io_out_re_rawIn_isZero = io_out_re_rawIn_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  io_out_re_rawIn_isSpecial = io_out_re_rawIn_exp[5:4] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  io_out_re_rawIn__isNaN = io_out_re_rawIn_isSpecial & io_out_re_rawIn_exp[3]; // @[rawFloatFromRecFN.scala 55:33]
  wire  io_out_re_rawIn__isInf = io_out_re_rawIn_isSpecial & ~io_out_re_rawIn_exp[3]; // @[rawFloatFromRecFN.scala 56:33]
  wire  io_out_re_rawIn__sign = io_in_re[16]; // @[rawFloatFromRecFN.scala 58:25]
  wire [6:0] io_out_re_rawIn__sExp = {1'b0,$signed(io_out_re_rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _io_out_re_rawIn_out_sig_T = ~io_out_re_rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [11:0] io_out_re_rawIn__sig = {1'h0,_io_out_re_rawIn_out_sig_T,io_in_re[9:0]}; // @[Cat.scala 33:92]
  wire  io_out_re_isSubnormal = $signed(io_out_re_rawIn__sExp) < 7'sh12; // @[fNFromRecFN.scala 50:39]
  wire [3:0] io_out_re_denormShiftDist = 4'h1 - io_out_re_rawIn__sExp[3:0]; // @[fNFromRecFN.scala 51:39]
  wire [10:0] _io_out_re_denormFract_T_1 = io_out_re_rawIn__sig[11:1] >> io_out_re_denormShiftDist; // @[fNFromRecFN.scala 52:42]
  wire [9:0] io_out_re_denormFract = _io_out_re_denormFract_T_1[9:0]; // @[fNFromRecFN.scala 52:60]
  wire [4:0] _io_out_re_expOut_T_2 = io_out_re_rawIn__sExp[4:0] - 5'h11; // @[fNFromRecFN.scala 57:45]
  wire [4:0] _io_out_re_expOut_T_3 = io_out_re_isSubnormal ? 5'h0 : _io_out_re_expOut_T_2; // @[fNFromRecFN.scala 55:16]
  wire  _io_out_re_expOut_T_4 = io_out_re_rawIn__isNaN | io_out_re_rawIn__isInf; // @[fNFromRecFN.scala 59:44]
  wire [4:0] _io_out_re_expOut_T_6 = _io_out_re_expOut_T_4 ? 5'h1f : 5'h0; // @[Bitwise.scala 77:12]
  wire [4:0] io_out_re_expOut = _io_out_re_expOut_T_3 | _io_out_re_expOut_T_6; // @[fNFromRecFN.scala 59:15]
  wire [9:0] _io_out_re_fractOut_T_1 = io_out_re_rawIn__isInf ? 10'h0 : io_out_re_rawIn__sig[9:0]; // @[fNFromRecFN.scala 63:20]
  wire [9:0] io_out_re_fractOut = io_out_re_isSubnormal ? io_out_re_denormFract : _io_out_re_fractOut_T_1; // @[fNFromRecFN.scala 61:16]
  wire [5:0] io_out_re_hi = {io_out_re_rawIn__sign,io_out_re_expOut}; // @[Cat.scala 33:92]
  wire [5:0] io_out_im_rawIn_exp = io_in_im[15:10]; // @[rawFloatFromRecFN.scala 50:21]
  wire  io_out_im_rawIn_isZero = io_out_im_rawIn_exp[5:3] == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  io_out_im_rawIn_isSpecial = io_out_im_rawIn_exp[5:4] == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  io_out_im_rawIn__isNaN = io_out_im_rawIn_isSpecial & io_out_im_rawIn_exp[3]; // @[rawFloatFromRecFN.scala 55:33]
  wire  io_out_im_rawIn__isInf = io_out_im_rawIn_isSpecial & ~io_out_im_rawIn_exp[3]; // @[rawFloatFromRecFN.scala 56:33]
  wire  io_out_im_rawIn__sign = io_in_im[16]; // @[rawFloatFromRecFN.scala 58:25]
  wire [6:0] io_out_im_rawIn__sExp = {1'b0,$signed(io_out_im_rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  _io_out_im_rawIn_out_sig_T = ~io_out_im_rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [11:0] io_out_im_rawIn__sig = {1'h0,_io_out_im_rawIn_out_sig_T,io_in_im[9:0]}; // @[Cat.scala 33:92]
  wire  io_out_im_isSubnormal = $signed(io_out_im_rawIn__sExp) < 7'sh12; // @[fNFromRecFN.scala 50:39]
  wire [3:0] io_out_im_denormShiftDist = 4'h1 - io_out_im_rawIn__sExp[3:0]; // @[fNFromRecFN.scala 51:39]
  wire [10:0] _io_out_im_denormFract_T_1 = io_out_im_rawIn__sig[11:1] >> io_out_im_denormShiftDist; // @[fNFromRecFN.scala 52:42]
  wire [9:0] io_out_im_denormFract = _io_out_im_denormFract_T_1[9:0]; // @[fNFromRecFN.scala 52:60]
  wire [4:0] _io_out_im_expOut_T_2 = io_out_im_rawIn__sExp[4:0] - 5'h11; // @[fNFromRecFN.scala 57:45]
  wire [4:0] _io_out_im_expOut_T_3 = io_out_im_isSubnormal ? 5'h0 : _io_out_im_expOut_T_2; // @[fNFromRecFN.scala 55:16]
  wire  _io_out_im_expOut_T_4 = io_out_im_rawIn__isNaN | io_out_im_rawIn__isInf; // @[fNFromRecFN.scala 59:44]
  wire [4:0] _io_out_im_expOut_T_6 = _io_out_im_expOut_T_4 ? 5'h1f : 5'h0; // @[Bitwise.scala 77:12]
  wire [4:0] io_out_im_expOut = _io_out_im_expOut_T_3 | _io_out_im_expOut_T_6; // @[fNFromRecFN.scala 59:15]
  wire [9:0] _io_out_im_fractOut_T_1 = io_out_im_rawIn__isInf ? 10'h0 : io_out_im_rawIn__sig[9:0]; // @[fNFromRecFN.scala 63:20]
  wire [9:0] io_out_im_fractOut = io_out_im_isSubnormal ? io_out_im_denormFract : _io_out_im_fractOut_T_1; // @[fNFromRecFN.scala 61:16]
  wire [5:0] io_out_im_hi = {io_out_im_rawIn__sign,io_out_im_expOut}; // @[Cat.scala 33:92]
  assign io_out_re = {io_out_re_hi,io_out_re_fractOut}; // @[Cat.scala 33:92]
  assign io_out_im = {io_out_im_hi,io_out_im_fractOut}; // @[Cat.scala 33:92]
endmodule
module FFT(
  input         clock,
  input         reset,
  input  [15:0] io_dIn_0_re,
  input  [15:0] io_dIn_0_im,
  input  [15:0] io_dIn_1_re,
  input  [15:0] io_dIn_1_im,
  input  [15:0] io_dIn_2_re,
  input  [15:0] io_dIn_2_im,
  input  [15:0] io_dIn_3_re,
  input  [15:0] io_dIn_3_im,
  input  [15:0] io_dIn_4_re,
  input  [15:0] io_dIn_4_im,
  input  [15:0] io_dIn_5_re,
  input  [15:0] io_dIn_5_im,
  input  [15:0] io_dIn_6_re,
  input  [15:0] io_dIn_6_im,
  input  [15:0] io_dIn_7_re,
  input  [15:0] io_dIn_7_im,
  input  [15:0] io_dIn_8_re,
  input  [15:0] io_dIn_8_im,
  input  [15:0] io_dIn_9_re,
  input  [15:0] io_dIn_9_im,
  input  [15:0] io_dIn_10_re,
  input  [15:0] io_dIn_10_im,
  input  [15:0] io_dIn_11_re,
  input  [15:0] io_dIn_11_im,
  input  [15:0] io_dIn_12_re,
  input  [15:0] io_dIn_12_im,
  input  [15:0] io_dIn_13_re,
  input  [15:0] io_dIn_13_im,
  input  [15:0] io_dIn_14_re,
  input  [15:0] io_dIn_14_im,
  input  [15:0] io_dIn_15_re,
  input  [15:0] io_dIn_15_im,
  output [15:0] io_dOut_0_re,
  output [15:0] io_dOut_0_im,
  output [15:0] io_dOut_1_re,
  output [15:0] io_dOut_1_im,
  output [15:0] io_dOut_2_re,
  output [15:0] io_dOut_2_im,
  output [15:0] io_dOut_3_re,
  output [15:0] io_dOut_3_im,
  output [15:0] io_dOut_4_re,
  output [15:0] io_dOut_4_im,
  output [15:0] io_dOut_5_re,
  output [15:0] io_dOut_5_im,
  output [15:0] io_dOut_6_re,
  output [15:0] io_dOut_6_im,
  output [15:0] io_dOut_7_re,
  output [15:0] io_dOut_7_im,
  output [15:0] io_dOut_8_re,
  output [15:0] io_dOut_8_im,
  output [15:0] io_dOut_9_re,
  output [15:0] io_dOut_9_im,
  output [15:0] io_dOut_10_re,
  output [15:0] io_dOut_10_im,
  output [15:0] io_dOut_11_re,
  output [15:0] io_dOut_11_im,
  output [15:0] io_dOut_12_re,
  output [15:0] io_dOut_12_im,
  output [15:0] io_dOut_13_re,
  output [15:0] io_dOut_13_im,
  output [15:0] io_dOut_14_re,
  output [15:0] io_dOut_14_im,
  output [15:0] io_dOut_15_re,
  output [15:0] io_dOut_15_im,
  input         io_din_valid,
  output        io_dout_valid,
  output        io_busy
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
`endif // RANDOMIZE_REG_INIT
  wire [16:0] inst_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_1_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_2_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_3_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_4_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_5_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_6_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_in_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_2_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_3_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_out_3_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_wn_0_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_wn_0_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_wn_1_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_wn_1_im; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_wn_2_re; // @[Modules.scala 287:22]
  wire [16:0] inst_7_io_wn_2_im; // @[Modules.scala 287:22]
  wire [16:0] dataotemp_inst_io_in_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_in_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_io_out_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_in_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_1_io_out_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_in_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_in_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_in_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_in_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_in_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_in_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_in_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_in_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_out_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_out_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_out_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_out_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_out_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_out_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_out_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_2_io_out_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_in_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_in_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_in_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_in_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_in_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_in_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_in_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_in_3_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_out_0_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_out_0_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_out_1_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_out_1_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_out_2_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_out_2_im; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_out_3_re; // @[Modules.scala 213:22]
  wire [16:0] dataotemp_inst_3_io_out_3_im; // @[Modules.scala 213:22]
  wire [16:0] exdata_inst_io_in_0_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_2_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_2_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_3_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_0_3_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_2_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_2_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_3_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_1_3_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_2_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_2_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_2_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_2_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_2_2_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_2_2_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_2_3_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_2_3_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_3_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_3_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_3_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_3_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_3_2_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_3_2_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_3_3_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_in_3_3_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_2_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_2_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_3_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_0_3_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_2_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_2_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_3_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_1_3_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_2_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_2_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_2_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_2_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_2_2_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_2_2_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_2_3_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_2_3_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_3_0_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_3_0_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_3_1_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_3_1_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_3_2_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_3_2_im; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_3_3_re; // @[Modules.scala 331:22]
  wire [16:0] exdata_inst_io_out_3_3_im; // @[Modules.scala 331:22]
  wire  inst_8_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_in_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_in_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_in_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_in_3_im; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_out_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_out_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_out_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_out_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_8_io_out_3_im; // @[Modules.scala 311:22]
  wire [1:0] inst_8_io_sel; // @[Modules.scala 311:22]
  wire  inst_9_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_in_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_in_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_in_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_in_3_im; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_out_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_out_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_out_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_out_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_9_io_out_3_im; // @[Modules.scala 311:22]
  wire [1:0] inst_9_io_sel; // @[Modules.scala 311:22]
  wire  inst_10_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_in_3_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_10_io_out_3_im; // @[Modules.scala 311:22]
  wire [1:0] inst_10_io_sel; // @[Modules.scala 311:22]
  wire  inst_11_clock; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_in_3_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_0_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_0_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_1_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_1_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_2_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_2_im; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_3_re; // @[Modules.scala 311:22]
  wire [16:0] inst_11_io_out_3_im; // @[Modules.scala 311:22]
  wire [1:0] inst_11_io_sel; // @[Modules.scala 311:22]
  wire [15:0] inst_12_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_12_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_12_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_12_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_13_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_13_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_13_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_13_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_14_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_14_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_14_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_14_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_15_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_15_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_15_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_15_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_16_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_16_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_16_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_16_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_17_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_17_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_17_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_17_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_18_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_18_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_18_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_18_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_19_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_19_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_19_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_19_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_20_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_20_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_20_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_20_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_21_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_21_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_21_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_21_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_22_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_22_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_22_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_22_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_23_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_23_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_23_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_23_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_24_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_24_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_24_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_24_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_25_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_25_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_25_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_25_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_26_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_26_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_26_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_26_io_out_im; // @[Modules.scala 40:22]
  wire [15:0] inst_27_io_in_re; // @[Modules.scala 40:22]
  wire [15:0] inst_27_io_in_im; // @[Modules.scala 40:22]
  wire [16:0] inst_27_io_out_re; // @[Modules.scala 40:22]
  wire [16:0] inst_27_io_out_im; // @[Modules.scala 40:22]
  wire [16:0] inst_28_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_28_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_28_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_28_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_29_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_29_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_29_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_29_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_30_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_30_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_30_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_30_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_31_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_31_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_31_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_31_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_32_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_32_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_32_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_32_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_33_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_33_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_33_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_33_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_34_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_34_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_34_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_34_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_35_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_35_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_35_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_35_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_36_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_36_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_36_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_36_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_37_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_37_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_37_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_37_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_38_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_38_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_38_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_38_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_39_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_39_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_39_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_39_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_40_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_40_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_40_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_40_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_41_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_41_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_41_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_41_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_42_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_42_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_42_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_42_io_out_im; // @[Modules.scala 56:22]
  wire [16:0] inst_43_io_in_re; // @[Modules.scala 56:22]
  wire [16:0] inst_43_io_in_im; // @[Modules.scala 56:22]
  wire [15:0] inst_43_io_out_re; // @[Modules.scala 56:22]
  wire [15:0] inst_43_io_out_im; // @[Modules.scala 56:22]
  reg [4:0] cnt_0; // @[FFT.scala 110:46]
  reg [4:0] cnt_1; // @[FFT.scala 110:46]
  wire  busy = cnt_0 != 5'h0; // @[FFT.scala 114:21]
  wire [4:0] _cnt_0_T_2 = cnt_0 + 5'h1; // @[FFT.scala 116:87]
  wire [5:0] _wnList_T = {{1'd0}, cnt_0}; // @[FFT.scala 135:96]
  wire [6:0] wnList_res_re_rawIn__sExp = {1'b0,$signed(6'h20)}; // @[rawFloatFromFN.scala 70:48]
  wire [16:0] _wnList_res_re_T_7 = {1'h0,wnList_res_re_rawIn__sExp[5:3],wnList_res_re_rawIn__sExp[2:0],10'h0}; // @[Cat.scala 33:92]
  wire [6:0] wnList_res_re_rawIn_1_sExp = {1'b0,$signed(6'h1f)}; // @[rawFloatFromFN.scala 70:48]
  wire [16:0] _wnList_res_re_T_15 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h3f6}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_23 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h3d8}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_31 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h3a7}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_39 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h364}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_47 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h30e}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_55 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h2a6}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_63 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h22f}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_71 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h1a8}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_79 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h113}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_87 = {1'h0,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h71}; // @[Cat.scala 33:92]
  wire [6:0] wnList_res_re_rawIn_11_sExp = {1'b0,$signed(6'h1e)}; // @[rawFloatFromFN.scala 70:48]
  wire [16:0] _wnList_res_re_T_95 = {1'h0,wnList_res_re_rawIn_11_sExp[5:3],wnList_res_re_rawIn_11_sExp[2:0],10'h38a}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_103 = {1'h0,wnList_res_re_rawIn_11_sExp[5:3],wnList_res_re_rawIn_11_sExp[2:0],10'h21f}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_re_T_111 = {1'h0,wnList_res_re_rawIn_11_sExp[5:3],wnList_res_re_rawIn_11_sExp[2:0],10'ha5}; // @[Cat.scala 33:92]
  wire [6:0] wnList_res_re_rawIn_14_sExp = {1'b0,$signed(6'h1d)}; // @[rawFloatFromFN.scala 70:48]
  wire [16:0] _wnList_res_re_T_119 = {1'h0,wnList_res_re_rawIn_14_sExp[5:3],wnList_res_re_rawIn_14_sExp[2:0],10'h23e}; // @[Cat.scala 33:92]
  wire [6:0] wnList_res_re_rawIn_15_sExp = {1'b0,$signed(6'h1c)}; // @[rawFloatFromFN.scala 70:48]
  wire [16:0] _wnList_res_re_T_127 = {1'h0,wnList_res_re_rawIn_15_sExp[5:3],wnList_res_re_rawIn_15_sExp[2:0],10'h245}; // @[Cat.scala 33:92]
  wire [16:0] _GEN_2 = 4'h1 == _wnList_T[3:0] ? _wnList_res_re_T_15 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_3 = 4'h2 == _wnList_T[3:0] ? _wnList_res_re_T_23 : _GEN_2; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_4 = 4'h3 == _wnList_T[3:0] ? _wnList_res_re_T_31 : _GEN_3; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_5 = 4'h4 == _wnList_T[3:0] ? _wnList_res_re_T_39 : _GEN_4; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_6 = 4'h5 == _wnList_T[3:0] ? _wnList_res_re_T_47 : _GEN_5; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_7 = 4'h6 == _wnList_T[3:0] ? _wnList_res_re_T_55 : _GEN_6; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_8 = 4'h7 == _wnList_T[3:0] ? _wnList_res_re_T_63 : _GEN_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_9 = 4'h8 == _wnList_T[3:0] ? _wnList_res_re_T_71 : _GEN_8; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_10 = 4'h9 == _wnList_T[3:0] ? _wnList_res_re_T_79 : _GEN_9; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_11 = 4'ha == _wnList_T[3:0] ? _wnList_res_re_T_87 : _GEN_10; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_12 = 4'hb == _wnList_T[3:0] ? _wnList_res_re_T_95 : _GEN_11; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_13 = 4'hc == _wnList_T[3:0] ? _wnList_res_re_T_103 : _GEN_12; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_14 = 4'hd == _wnList_T[3:0] ? _wnList_res_re_T_111 : _GEN_13; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_15 = 4'he == _wnList_T[3:0] ? _wnList_res_re_T_119 : _GEN_14; // @[FFT.scala 104:{12,12}]
  wire [6:0] wnList_res_im_rawIn__sExp = {1'b0,$signed(6'h8)}; // @[rawFloatFromFN.scala 70:48]
  wire [16:0] _wnList_res_im_T_7 = {4'h0,wnList_res_im_rawIn__sExp[2:0],10'h0}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_15 = {1'h1,wnList_res_re_rawIn_15_sExp[5:3],wnList_res_re_rawIn_15_sExp[2:0],10'h245}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_23 = {1'h1,wnList_res_re_rawIn_14_sExp[5:3],wnList_res_re_rawIn_14_sExp[2:0],10'h23e}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_31 = {1'h1,wnList_res_re_rawIn_11_sExp[5:3],wnList_res_re_rawIn_11_sExp[2:0],10'ha5}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_39 = {1'h1,wnList_res_re_rawIn_11_sExp[5:3],wnList_res_re_rawIn_11_sExp[2:0],10'h21f}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_47 = {1'h1,wnList_res_re_rawIn_11_sExp[5:3],wnList_res_re_rawIn_11_sExp[2:0],10'h38a}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_55 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h71}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_63 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h113}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_71 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h1a8}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_79 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h22f}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_87 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h2a6}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_95 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h30e}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_103 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h364}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_111 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h3a7}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_119 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h3d8}; // @[Cat.scala 33:92]
  wire [16:0] _wnList_res_im_T_127 = {1'h1,wnList_res_re_rawIn_1_sExp[5:3],wnList_res_re_rawIn_1_sExp[2:0],10'h3f6}; // @[Cat.scala 33:92]
  wire [16:0] _GEN_18 = 4'h1 == _wnList_T[3:0] ? _wnList_res_im_T_15 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_19 = 4'h2 == _wnList_T[3:0] ? _wnList_res_im_T_23 : _GEN_18; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_20 = 4'h3 == _wnList_T[3:0] ? _wnList_res_im_T_31 : _GEN_19; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_21 = 4'h4 == _wnList_T[3:0] ? _wnList_res_im_T_39 : _GEN_20; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_22 = 4'h5 == _wnList_T[3:0] ? _wnList_res_im_T_47 : _GEN_21; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_23 = 4'h6 == _wnList_T[3:0] ? _wnList_res_im_T_55 : _GEN_22; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_24 = 4'h7 == _wnList_T[3:0] ? _wnList_res_im_T_63 : _GEN_23; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_25 = 4'h8 == _wnList_T[3:0] ? _wnList_res_im_T_71 : _GEN_24; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_26 = 4'h9 == _wnList_T[3:0] ? _wnList_res_im_T_79 : _GEN_25; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_27 = 4'ha == _wnList_T[3:0] ? _wnList_res_im_T_87 : _GEN_26; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_28 = 4'hb == _wnList_T[3:0] ? _wnList_res_im_T_95 : _GEN_27; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_29 = 4'hc == _wnList_T[3:0] ? _wnList_res_im_T_103 : _GEN_28; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_30 = 4'hd == _wnList_T[3:0] ? _wnList_res_im_T_111 : _GEN_29; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_31 = 4'he == _wnList_T[3:0] ? _wnList_res_im_T_119 : _GEN_30; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_34 = 4'h1 == _wnList_T[3:0] ? _wnList_res_re_T_23 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_35 = 4'h2 == _wnList_T[3:0] ? _wnList_res_re_T_39 : _GEN_34; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_36 = 4'h3 == _wnList_T[3:0] ? _wnList_res_re_T_55 : _GEN_35; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_37 = 4'h4 == _wnList_T[3:0] ? _wnList_res_re_T_71 : _GEN_36; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_38 = 4'h5 == _wnList_T[3:0] ? _wnList_res_re_T_87 : _GEN_37; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_39 = 4'h6 == _wnList_T[3:0] ? _wnList_res_re_T_103 : _GEN_38; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_40 = 4'h7 == _wnList_T[3:0] ? _wnList_res_re_T_119 : _GEN_39; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_41 = 4'h8 == _wnList_T[3:0] ? _wnList_res_im_T_7 : _GEN_40; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_42 = 4'h9 == _wnList_T[3:0] ? _wnList_res_im_T_23 : _GEN_41; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_43 = 4'ha == _wnList_T[3:0] ? _wnList_res_im_T_39 : _GEN_42; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_44 = 4'hb == _wnList_T[3:0] ? _wnList_res_im_T_55 : _GEN_43; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_45 = 4'hc == _wnList_T[3:0] ? _wnList_res_im_T_71 : _GEN_44; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_46 = 4'hd == _wnList_T[3:0] ? _wnList_res_im_T_87 : _GEN_45; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_47 = 4'he == _wnList_T[3:0] ? _wnList_res_im_T_103 : _GEN_46; // @[FFT.scala 104:{12,12}]
  wire [16:0] _wnList_res_im_T_200 = {1'h1,wnList_res_re_rawIn__sExp[5:3],wnList_res_re_rawIn__sExp[2:0],10'h0}; // @[Cat.scala 33:92]
  wire [16:0] _GEN_50 = 4'h1 == _wnList_T[3:0] ? _wnList_res_im_T_23 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_51 = 4'h2 == _wnList_T[3:0] ? _wnList_res_im_T_39 : _GEN_50; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_52 = 4'h3 == _wnList_T[3:0] ? _wnList_res_im_T_55 : _GEN_51; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_53 = 4'h4 == _wnList_T[3:0] ? _wnList_res_im_T_71 : _GEN_52; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_54 = 4'h5 == _wnList_T[3:0] ? _wnList_res_im_T_87 : _GEN_53; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_55 = 4'h6 == _wnList_T[3:0] ? _wnList_res_im_T_103 : _GEN_54; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_56 = 4'h7 == _wnList_T[3:0] ? _wnList_res_im_T_119 : _GEN_55; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_57 = 4'h8 == _wnList_T[3:0] ? _wnList_res_im_T_200 : _GEN_56; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_58 = 4'h9 == _wnList_T[3:0] ? _wnList_res_im_T_119 : _GEN_57; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_59 = 4'ha == _wnList_T[3:0] ? _wnList_res_im_T_103 : _GEN_58; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_60 = 4'hb == _wnList_T[3:0] ? _wnList_res_im_T_87 : _GEN_59; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_61 = 4'hc == _wnList_T[3:0] ? _wnList_res_im_T_71 : _GEN_60; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_62 = 4'hd == _wnList_T[3:0] ? _wnList_res_im_T_55 : _GEN_61; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_63 = 4'he == _wnList_T[3:0] ? _wnList_res_im_T_39 : _GEN_62; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_66 = 4'h1 == _wnList_T[3:0] ? _wnList_res_re_T_31 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_67 = 4'h2 == _wnList_T[3:0] ? _wnList_res_re_T_55 : _GEN_66; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_68 = 4'h3 == _wnList_T[3:0] ? _wnList_res_re_T_79 : _GEN_67; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_69 = 4'h4 == _wnList_T[3:0] ? _wnList_res_re_T_103 : _GEN_68; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_70 = 4'h5 == _wnList_T[3:0] ? _wnList_res_re_T_127 : _GEN_69; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_71 = 4'h6 == _wnList_T[3:0] ? _wnList_res_im_T_23 : _GEN_70; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_72 = 4'h7 == _wnList_T[3:0] ? _wnList_res_im_T_47 : _GEN_71; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_73 = 4'h8 == _wnList_T[3:0] ? _wnList_res_im_T_71 : _GEN_72; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_74 = 4'h9 == _wnList_T[3:0] ? _wnList_res_im_T_95 : _GEN_73; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_75 = 4'ha == _wnList_T[3:0] ? _wnList_res_im_T_119 : _GEN_74; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_76 = 4'hb == _wnList_T[3:0] ? _wnList_res_im_T_127 : _GEN_75; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_77 = 4'hc == _wnList_T[3:0] ? _wnList_res_im_T_103 : _GEN_76; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_78 = 4'hd == _wnList_T[3:0] ? _wnList_res_im_T_79 : _GEN_77; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_79 = 4'he == _wnList_T[3:0] ? _wnList_res_im_T_55 : _GEN_78; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_82 = 4'h1 == _wnList_T[3:0] ? _wnList_res_im_T_31 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_83 = 4'h2 == _wnList_T[3:0] ? _wnList_res_im_T_55 : _GEN_82; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_84 = 4'h3 == _wnList_T[3:0] ? _wnList_res_im_T_79 : _GEN_83; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_85 = 4'h4 == _wnList_T[3:0] ? _wnList_res_im_T_103 : _GEN_84; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_86 = 4'h5 == _wnList_T[3:0] ? _wnList_res_im_T_127 : _GEN_85; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_87 = 4'h6 == _wnList_T[3:0] ? _wnList_res_im_T_119 : _GEN_86; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_88 = 4'h7 == _wnList_T[3:0] ? _wnList_res_im_T_95 : _GEN_87; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_89 = 4'h8 == _wnList_T[3:0] ? _wnList_res_im_T_71 : _GEN_88; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_90 = 4'h9 == _wnList_T[3:0] ? _wnList_res_im_T_47 : _GEN_89; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_91 = 4'ha == _wnList_T[3:0] ? _wnList_res_im_T_23 : _GEN_90; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_92 = 4'hb == _wnList_T[3:0] ? _wnList_res_re_T_127 : _GEN_91; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_93 = 4'hc == _wnList_T[3:0] ? _wnList_res_re_T_103 : _GEN_92; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_94 = 4'hd == _wnList_T[3:0] ? _wnList_res_re_T_79 : _GEN_93; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_95 = 4'he == _wnList_T[3:0] ? _wnList_res_re_T_55 : _GEN_94; // @[FFT.scala 105:{12,12}]
  wire [4:0] _wnList_T_7 = 5'h4 + cnt_0; // @[FFT.scala 135:96]
  wire [16:0] _GEN_98 = 4'h1 == _wnList_T_7[3:0] ? _wnList_res_re_T_15 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_99 = 4'h2 == _wnList_T_7[3:0] ? _wnList_res_re_T_23 : _GEN_98; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_100 = 4'h3 == _wnList_T_7[3:0] ? _wnList_res_re_T_31 : _GEN_99; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_101 = 4'h4 == _wnList_T_7[3:0] ? _wnList_res_re_T_39 : _GEN_100; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_102 = 4'h5 == _wnList_T_7[3:0] ? _wnList_res_re_T_47 : _GEN_101; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_103 = 4'h6 == _wnList_T_7[3:0] ? _wnList_res_re_T_55 : _GEN_102; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_104 = 4'h7 == _wnList_T_7[3:0] ? _wnList_res_re_T_63 : _GEN_103; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_105 = 4'h8 == _wnList_T_7[3:0] ? _wnList_res_re_T_71 : _GEN_104; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_106 = 4'h9 == _wnList_T_7[3:0] ? _wnList_res_re_T_79 : _GEN_105; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_107 = 4'ha == _wnList_T_7[3:0] ? _wnList_res_re_T_87 : _GEN_106; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_108 = 4'hb == _wnList_T_7[3:0] ? _wnList_res_re_T_95 : _GEN_107; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_109 = 4'hc == _wnList_T_7[3:0] ? _wnList_res_re_T_103 : _GEN_108; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_110 = 4'hd == _wnList_T_7[3:0] ? _wnList_res_re_T_111 : _GEN_109; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_111 = 4'he == _wnList_T_7[3:0] ? _wnList_res_re_T_119 : _GEN_110; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_114 = 4'h1 == _wnList_T_7[3:0] ? _wnList_res_im_T_15 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_115 = 4'h2 == _wnList_T_7[3:0] ? _wnList_res_im_T_23 : _GEN_114; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_116 = 4'h3 == _wnList_T_7[3:0] ? _wnList_res_im_T_31 : _GEN_115; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_117 = 4'h4 == _wnList_T_7[3:0] ? _wnList_res_im_T_39 : _GEN_116; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_118 = 4'h5 == _wnList_T_7[3:0] ? _wnList_res_im_T_47 : _GEN_117; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_119 = 4'h6 == _wnList_T_7[3:0] ? _wnList_res_im_T_55 : _GEN_118; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_120 = 4'h7 == _wnList_T_7[3:0] ? _wnList_res_im_T_63 : _GEN_119; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_121 = 4'h8 == _wnList_T_7[3:0] ? _wnList_res_im_T_71 : _GEN_120; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_122 = 4'h9 == _wnList_T_7[3:0] ? _wnList_res_im_T_79 : _GEN_121; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_123 = 4'ha == _wnList_T_7[3:0] ? _wnList_res_im_T_87 : _GEN_122; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_124 = 4'hb == _wnList_T_7[3:0] ? _wnList_res_im_T_95 : _GEN_123; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_125 = 4'hc == _wnList_T_7[3:0] ? _wnList_res_im_T_103 : _GEN_124; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_126 = 4'hd == _wnList_T_7[3:0] ? _wnList_res_im_T_111 : _GEN_125; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_127 = 4'he == _wnList_T_7[3:0] ? _wnList_res_im_T_119 : _GEN_126; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_130 = 4'h1 == _wnList_T_7[3:0] ? _wnList_res_re_T_23 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_131 = 4'h2 == _wnList_T_7[3:0] ? _wnList_res_re_T_39 : _GEN_130; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_132 = 4'h3 == _wnList_T_7[3:0] ? _wnList_res_re_T_55 : _GEN_131; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_133 = 4'h4 == _wnList_T_7[3:0] ? _wnList_res_re_T_71 : _GEN_132; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_134 = 4'h5 == _wnList_T_7[3:0] ? _wnList_res_re_T_87 : _GEN_133; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_135 = 4'h6 == _wnList_T_7[3:0] ? _wnList_res_re_T_103 : _GEN_134; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_136 = 4'h7 == _wnList_T_7[3:0] ? _wnList_res_re_T_119 : _GEN_135; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_137 = 4'h8 == _wnList_T_7[3:0] ? _wnList_res_im_T_7 : _GEN_136; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_138 = 4'h9 == _wnList_T_7[3:0] ? _wnList_res_im_T_23 : _GEN_137; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_139 = 4'ha == _wnList_T_7[3:0] ? _wnList_res_im_T_39 : _GEN_138; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_140 = 4'hb == _wnList_T_7[3:0] ? _wnList_res_im_T_55 : _GEN_139; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_141 = 4'hc == _wnList_T_7[3:0] ? _wnList_res_im_T_71 : _GEN_140; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_142 = 4'hd == _wnList_T_7[3:0] ? _wnList_res_im_T_87 : _GEN_141; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_143 = 4'he == _wnList_T_7[3:0] ? _wnList_res_im_T_103 : _GEN_142; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_146 = 4'h1 == _wnList_T_7[3:0] ? _wnList_res_im_T_23 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_147 = 4'h2 == _wnList_T_7[3:0] ? _wnList_res_im_T_39 : _GEN_146; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_148 = 4'h3 == _wnList_T_7[3:0] ? _wnList_res_im_T_55 : _GEN_147; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_149 = 4'h4 == _wnList_T_7[3:0] ? _wnList_res_im_T_71 : _GEN_148; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_150 = 4'h5 == _wnList_T_7[3:0] ? _wnList_res_im_T_87 : _GEN_149; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_151 = 4'h6 == _wnList_T_7[3:0] ? _wnList_res_im_T_103 : _GEN_150; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_152 = 4'h7 == _wnList_T_7[3:0] ? _wnList_res_im_T_119 : _GEN_151; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_153 = 4'h8 == _wnList_T_7[3:0] ? _wnList_res_im_T_200 : _GEN_152; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_154 = 4'h9 == _wnList_T_7[3:0] ? _wnList_res_im_T_119 : _GEN_153; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_155 = 4'ha == _wnList_T_7[3:0] ? _wnList_res_im_T_103 : _GEN_154; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_156 = 4'hb == _wnList_T_7[3:0] ? _wnList_res_im_T_87 : _GEN_155; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_157 = 4'hc == _wnList_T_7[3:0] ? _wnList_res_im_T_71 : _GEN_156; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_158 = 4'hd == _wnList_T_7[3:0] ? _wnList_res_im_T_55 : _GEN_157; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_159 = 4'he == _wnList_T_7[3:0] ? _wnList_res_im_T_39 : _GEN_158; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_162 = 4'h1 == _wnList_T_7[3:0] ? _wnList_res_re_T_31 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_163 = 4'h2 == _wnList_T_7[3:0] ? _wnList_res_re_T_55 : _GEN_162; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_164 = 4'h3 == _wnList_T_7[3:0] ? _wnList_res_re_T_79 : _GEN_163; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_165 = 4'h4 == _wnList_T_7[3:0] ? _wnList_res_re_T_103 : _GEN_164; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_166 = 4'h5 == _wnList_T_7[3:0] ? _wnList_res_re_T_127 : _GEN_165; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_167 = 4'h6 == _wnList_T_7[3:0] ? _wnList_res_im_T_23 : _GEN_166; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_168 = 4'h7 == _wnList_T_7[3:0] ? _wnList_res_im_T_47 : _GEN_167; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_169 = 4'h8 == _wnList_T_7[3:0] ? _wnList_res_im_T_71 : _GEN_168; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_170 = 4'h9 == _wnList_T_7[3:0] ? _wnList_res_im_T_95 : _GEN_169; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_171 = 4'ha == _wnList_T_7[3:0] ? _wnList_res_im_T_119 : _GEN_170; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_172 = 4'hb == _wnList_T_7[3:0] ? _wnList_res_im_T_127 : _GEN_171; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_173 = 4'hc == _wnList_T_7[3:0] ? _wnList_res_im_T_103 : _GEN_172; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_174 = 4'hd == _wnList_T_7[3:0] ? _wnList_res_im_T_79 : _GEN_173; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_175 = 4'he == _wnList_T_7[3:0] ? _wnList_res_im_T_55 : _GEN_174; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_178 = 4'h1 == _wnList_T_7[3:0] ? _wnList_res_im_T_31 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_179 = 4'h2 == _wnList_T_7[3:0] ? _wnList_res_im_T_55 : _GEN_178; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_180 = 4'h3 == _wnList_T_7[3:0] ? _wnList_res_im_T_79 : _GEN_179; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_181 = 4'h4 == _wnList_T_7[3:0] ? _wnList_res_im_T_103 : _GEN_180; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_182 = 4'h5 == _wnList_T_7[3:0] ? _wnList_res_im_T_127 : _GEN_181; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_183 = 4'h6 == _wnList_T_7[3:0] ? _wnList_res_im_T_119 : _GEN_182; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_184 = 4'h7 == _wnList_T_7[3:0] ? _wnList_res_im_T_95 : _GEN_183; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_185 = 4'h8 == _wnList_T_7[3:0] ? _wnList_res_im_T_71 : _GEN_184; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_186 = 4'h9 == _wnList_T_7[3:0] ? _wnList_res_im_T_47 : _GEN_185; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_187 = 4'ha == _wnList_T_7[3:0] ? _wnList_res_im_T_23 : _GEN_186; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_188 = 4'hb == _wnList_T_7[3:0] ? _wnList_res_re_T_127 : _GEN_187; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_189 = 4'hc == _wnList_T_7[3:0] ? _wnList_res_re_T_103 : _GEN_188; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_190 = 4'hd == _wnList_T_7[3:0] ? _wnList_res_re_T_79 : _GEN_189; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_191 = 4'he == _wnList_T_7[3:0] ? _wnList_res_re_T_55 : _GEN_190; // @[FFT.scala 105:{12,12}]
  wire [4:0] _wnList_T_13 = 5'h8 + cnt_0; // @[FFT.scala 135:96]
  wire [16:0] _GEN_194 = 4'h1 == _wnList_T_13[3:0] ? _wnList_res_re_T_15 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_195 = 4'h2 == _wnList_T_13[3:0] ? _wnList_res_re_T_23 : _GEN_194; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_196 = 4'h3 == _wnList_T_13[3:0] ? _wnList_res_re_T_31 : _GEN_195; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_197 = 4'h4 == _wnList_T_13[3:0] ? _wnList_res_re_T_39 : _GEN_196; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_198 = 4'h5 == _wnList_T_13[3:0] ? _wnList_res_re_T_47 : _GEN_197; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_199 = 4'h6 == _wnList_T_13[3:0] ? _wnList_res_re_T_55 : _GEN_198; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_200 = 4'h7 == _wnList_T_13[3:0] ? _wnList_res_re_T_63 : _GEN_199; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_201 = 4'h8 == _wnList_T_13[3:0] ? _wnList_res_re_T_71 : _GEN_200; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_202 = 4'h9 == _wnList_T_13[3:0] ? _wnList_res_re_T_79 : _GEN_201; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_203 = 4'ha == _wnList_T_13[3:0] ? _wnList_res_re_T_87 : _GEN_202; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_204 = 4'hb == _wnList_T_13[3:0] ? _wnList_res_re_T_95 : _GEN_203; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_205 = 4'hc == _wnList_T_13[3:0] ? _wnList_res_re_T_103 : _GEN_204; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_206 = 4'hd == _wnList_T_13[3:0] ? _wnList_res_re_T_111 : _GEN_205; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_207 = 4'he == _wnList_T_13[3:0] ? _wnList_res_re_T_119 : _GEN_206; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_210 = 4'h1 == _wnList_T_13[3:0] ? _wnList_res_im_T_15 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_211 = 4'h2 == _wnList_T_13[3:0] ? _wnList_res_im_T_23 : _GEN_210; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_212 = 4'h3 == _wnList_T_13[3:0] ? _wnList_res_im_T_31 : _GEN_211; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_213 = 4'h4 == _wnList_T_13[3:0] ? _wnList_res_im_T_39 : _GEN_212; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_214 = 4'h5 == _wnList_T_13[3:0] ? _wnList_res_im_T_47 : _GEN_213; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_215 = 4'h6 == _wnList_T_13[3:0] ? _wnList_res_im_T_55 : _GEN_214; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_216 = 4'h7 == _wnList_T_13[3:0] ? _wnList_res_im_T_63 : _GEN_215; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_217 = 4'h8 == _wnList_T_13[3:0] ? _wnList_res_im_T_71 : _GEN_216; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_218 = 4'h9 == _wnList_T_13[3:0] ? _wnList_res_im_T_79 : _GEN_217; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_219 = 4'ha == _wnList_T_13[3:0] ? _wnList_res_im_T_87 : _GEN_218; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_220 = 4'hb == _wnList_T_13[3:0] ? _wnList_res_im_T_95 : _GEN_219; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_221 = 4'hc == _wnList_T_13[3:0] ? _wnList_res_im_T_103 : _GEN_220; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_222 = 4'hd == _wnList_T_13[3:0] ? _wnList_res_im_T_111 : _GEN_221; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_223 = 4'he == _wnList_T_13[3:0] ? _wnList_res_im_T_119 : _GEN_222; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_226 = 4'h1 == _wnList_T_13[3:0] ? _wnList_res_re_T_23 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_227 = 4'h2 == _wnList_T_13[3:0] ? _wnList_res_re_T_39 : _GEN_226; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_228 = 4'h3 == _wnList_T_13[3:0] ? _wnList_res_re_T_55 : _GEN_227; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_229 = 4'h4 == _wnList_T_13[3:0] ? _wnList_res_re_T_71 : _GEN_228; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_230 = 4'h5 == _wnList_T_13[3:0] ? _wnList_res_re_T_87 : _GEN_229; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_231 = 4'h6 == _wnList_T_13[3:0] ? _wnList_res_re_T_103 : _GEN_230; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_232 = 4'h7 == _wnList_T_13[3:0] ? _wnList_res_re_T_119 : _GEN_231; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_233 = 4'h8 == _wnList_T_13[3:0] ? _wnList_res_im_T_7 : _GEN_232; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_234 = 4'h9 == _wnList_T_13[3:0] ? _wnList_res_im_T_23 : _GEN_233; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_235 = 4'ha == _wnList_T_13[3:0] ? _wnList_res_im_T_39 : _GEN_234; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_236 = 4'hb == _wnList_T_13[3:0] ? _wnList_res_im_T_55 : _GEN_235; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_237 = 4'hc == _wnList_T_13[3:0] ? _wnList_res_im_T_71 : _GEN_236; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_238 = 4'hd == _wnList_T_13[3:0] ? _wnList_res_im_T_87 : _GEN_237; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_239 = 4'he == _wnList_T_13[3:0] ? _wnList_res_im_T_103 : _GEN_238; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_242 = 4'h1 == _wnList_T_13[3:0] ? _wnList_res_im_T_23 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_243 = 4'h2 == _wnList_T_13[3:0] ? _wnList_res_im_T_39 : _GEN_242; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_244 = 4'h3 == _wnList_T_13[3:0] ? _wnList_res_im_T_55 : _GEN_243; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_245 = 4'h4 == _wnList_T_13[3:0] ? _wnList_res_im_T_71 : _GEN_244; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_246 = 4'h5 == _wnList_T_13[3:0] ? _wnList_res_im_T_87 : _GEN_245; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_247 = 4'h6 == _wnList_T_13[3:0] ? _wnList_res_im_T_103 : _GEN_246; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_248 = 4'h7 == _wnList_T_13[3:0] ? _wnList_res_im_T_119 : _GEN_247; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_249 = 4'h8 == _wnList_T_13[3:0] ? _wnList_res_im_T_200 : _GEN_248; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_250 = 4'h9 == _wnList_T_13[3:0] ? _wnList_res_im_T_119 : _GEN_249; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_251 = 4'ha == _wnList_T_13[3:0] ? _wnList_res_im_T_103 : _GEN_250; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_252 = 4'hb == _wnList_T_13[3:0] ? _wnList_res_im_T_87 : _GEN_251; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_253 = 4'hc == _wnList_T_13[3:0] ? _wnList_res_im_T_71 : _GEN_252; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_254 = 4'hd == _wnList_T_13[3:0] ? _wnList_res_im_T_55 : _GEN_253; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_255 = 4'he == _wnList_T_13[3:0] ? _wnList_res_im_T_39 : _GEN_254; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_258 = 4'h1 == _wnList_T_13[3:0] ? _wnList_res_re_T_31 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_259 = 4'h2 == _wnList_T_13[3:0] ? _wnList_res_re_T_55 : _GEN_258; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_260 = 4'h3 == _wnList_T_13[3:0] ? _wnList_res_re_T_79 : _GEN_259; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_261 = 4'h4 == _wnList_T_13[3:0] ? _wnList_res_re_T_103 : _GEN_260; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_262 = 4'h5 == _wnList_T_13[3:0] ? _wnList_res_re_T_127 : _GEN_261; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_263 = 4'h6 == _wnList_T_13[3:0] ? _wnList_res_im_T_23 : _GEN_262; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_264 = 4'h7 == _wnList_T_13[3:0] ? _wnList_res_im_T_47 : _GEN_263; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_265 = 4'h8 == _wnList_T_13[3:0] ? _wnList_res_im_T_71 : _GEN_264; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_266 = 4'h9 == _wnList_T_13[3:0] ? _wnList_res_im_T_95 : _GEN_265; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_267 = 4'ha == _wnList_T_13[3:0] ? _wnList_res_im_T_119 : _GEN_266; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_268 = 4'hb == _wnList_T_13[3:0] ? _wnList_res_im_T_127 : _GEN_267; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_269 = 4'hc == _wnList_T_13[3:0] ? _wnList_res_im_T_103 : _GEN_268; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_270 = 4'hd == _wnList_T_13[3:0] ? _wnList_res_im_T_79 : _GEN_269; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_271 = 4'he == _wnList_T_13[3:0] ? _wnList_res_im_T_55 : _GEN_270; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_274 = 4'h1 == _wnList_T_13[3:0] ? _wnList_res_im_T_31 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_275 = 4'h2 == _wnList_T_13[3:0] ? _wnList_res_im_T_55 : _GEN_274; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_276 = 4'h3 == _wnList_T_13[3:0] ? _wnList_res_im_T_79 : _GEN_275; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_277 = 4'h4 == _wnList_T_13[3:0] ? _wnList_res_im_T_103 : _GEN_276; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_278 = 4'h5 == _wnList_T_13[3:0] ? _wnList_res_im_T_127 : _GEN_277; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_279 = 4'h6 == _wnList_T_13[3:0] ? _wnList_res_im_T_119 : _GEN_278; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_280 = 4'h7 == _wnList_T_13[3:0] ? _wnList_res_im_T_95 : _GEN_279; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_281 = 4'h8 == _wnList_T_13[3:0] ? _wnList_res_im_T_71 : _GEN_280; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_282 = 4'h9 == _wnList_T_13[3:0] ? _wnList_res_im_T_47 : _GEN_281; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_283 = 4'ha == _wnList_T_13[3:0] ? _wnList_res_im_T_23 : _GEN_282; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_284 = 4'hb == _wnList_T_13[3:0] ? _wnList_res_re_T_127 : _GEN_283; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_285 = 4'hc == _wnList_T_13[3:0] ? _wnList_res_re_T_103 : _GEN_284; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_286 = 4'hd == _wnList_T_13[3:0] ? _wnList_res_re_T_79 : _GEN_285; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_287 = 4'he == _wnList_T_13[3:0] ? _wnList_res_re_T_55 : _GEN_286; // @[FFT.scala 105:{12,12}]
  wire [4:0] _wnList_T_19 = 5'hc + cnt_0; // @[FFT.scala 135:96]
  wire [16:0] _GEN_290 = 4'h1 == _wnList_T_19[3:0] ? _wnList_res_re_T_15 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_291 = 4'h2 == _wnList_T_19[3:0] ? _wnList_res_re_T_23 : _GEN_290; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_292 = 4'h3 == _wnList_T_19[3:0] ? _wnList_res_re_T_31 : _GEN_291; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_293 = 4'h4 == _wnList_T_19[3:0] ? _wnList_res_re_T_39 : _GEN_292; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_294 = 4'h5 == _wnList_T_19[3:0] ? _wnList_res_re_T_47 : _GEN_293; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_295 = 4'h6 == _wnList_T_19[3:0] ? _wnList_res_re_T_55 : _GEN_294; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_296 = 4'h7 == _wnList_T_19[3:0] ? _wnList_res_re_T_63 : _GEN_295; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_297 = 4'h8 == _wnList_T_19[3:0] ? _wnList_res_re_T_71 : _GEN_296; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_298 = 4'h9 == _wnList_T_19[3:0] ? _wnList_res_re_T_79 : _GEN_297; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_299 = 4'ha == _wnList_T_19[3:0] ? _wnList_res_re_T_87 : _GEN_298; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_300 = 4'hb == _wnList_T_19[3:0] ? _wnList_res_re_T_95 : _GEN_299; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_301 = 4'hc == _wnList_T_19[3:0] ? _wnList_res_re_T_103 : _GEN_300; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_302 = 4'hd == _wnList_T_19[3:0] ? _wnList_res_re_T_111 : _GEN_301; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_303 = 4'he == _wnList_T_19[3:0] ? _wnList_res_re_T_119 : _GEN_302; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_306 = 4'h1 == _wnList_T_19[3:0] ? _wnList_res_im_T_15 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_307 = 4'h2 == _wnList_T_19[3:0] ? _wnList_res_im_T_23 : _GEN_306; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_308 = 4'h3 == _wnList_T_19[3:0] ? _wnList_res_im_T_31 : _GEN_307; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_309 = 4'h4 == _wnList_T_19[3:0] ? _wnList_res_im_T_39 : _GEN_308; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_310 = 4'h5 == _wnList_T_19[3:0] ? _wnList_res_im_T_47 : _GEN_309; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_311 = 4'h6 == _wnList_T_19[3:0] ? _wnList_res_im_T_55 : _GEN_310; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_312 = 4'h7 == _wnList_T_19[3:0] ? _wnList_res_im_T_63 : _GEN_311; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_313 = 4'h8 == _wnList_T_19[3:0] ? _wnList_res_im_T_71 : _GEN_312; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_314 = 4'h9 == _wnList_T_19[3:0] ? _wnList_res_im_T_79 : _GEN_313; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_315 = 4'ha == _wnList_T_19[3:0] ? _wnList_res_im_T_87 : _GEN_314; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_316 = 4'hb == _wnList_T_19[3:0] ? _wnList_res_im_T_95 : _GEN_315; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_317 = 4'hc == _wnList_T_19[3:0] ? _wnList_res_im_T_103 : _GEN_316; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_318 = 4'hd == _wnList_T_19[3:0] ? _wnList_res_im_T_111 : _GEN_317; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_319 = 4'he == _wnList_T_19[3:0] ? _wnList_res_im_T_119 : _GEN_318; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_322 = 4'h1 == _wnList_T_19[3:0] ? _wnList_res_re_T_23 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_323 = 4'h2 == _wnList_T_19[3:0] ? _wnList_res_re_T_39 : _GEN_322; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_324 = 4'h3 == _wnList_T_19[3:0] ? _wnList_res_re_T_55 : _GEN_323; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_325 = 4'h4 == _wnList_T_19[3:0] ? _wnList_res_re_T_71 : _GEN_324; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_326 = 4'h5 == _wnList_T_19[3:0] ? _wnList_res_re_T_87 : _GEN_325; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_327 = 4'h6 == _wnList_T_19[3:0] ? _wnList_res_re_T_103 : _GEN_326; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_328 = 4'h7 == _wnList_T_19[3:0] ? _wnList_res_re_T_119 : _GEN_327; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_329 = 4'h8 == _wnList_T_19[3:0] ? _wnList_res_im_T_7 : _GEN_328; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_330 = 4'h9 == _wnList_T_19[3:0] ? _wnList_res_im_T_23 : _GEN_329; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_331 = 4'ha == _wnList_T_19[3:0] ? _wnList_res_im_T_39 : _GEN_330; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_332 = 4'hb == _wnList_T_19[3:0] ? _wnList_res_im_T_55 : _GEN_331; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_333 = 4'hc == _wnList_T_19[3:0] ? _wnList_res_im_T_71 : _GEN_332; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_334 = 4'hd == _wnList_T_19[3:0] ? _wnList_res_im_T_87 : _GEN_333; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_335 = 4'he == _wnList_T_19[3:0] ? _wnList_res_im_T_103 : _GEN_334; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_338 = 4'h1 == _wnList_T_19[3:0] ? _wnList_res_im_T_23 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_339 = 4'h2 == _wnList_T_19[3:0] ? _wnList_res_im_T_39 : _GEN_338; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_340 = 4'h3 == _wnList_T_19[3:0] ? _wnList_res_im_T_55 : _GEN_339; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_341 = 4'h4 == _wnList_T_19[3:0] ? _wnList_res_im_T_71 : _GEN_340; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_342 = 4'h5 == _wnList_T_19[3:0] ? _wnList_res_im_T_87 : _GEN_341; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_343 = 4'h6 == _wnList_T_19[3:0] ? _wnList_res_im_T_103 : _GEN_342; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_344 = 4'h7 == _wnList_T_19[3:0] ? _wnList_res_im_T_119 : _GEN_343; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_345 = 4'h8 == _wnList_T_19[3:0] ? _wnList_res_im_T_200 : _GEN_344; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_346 = 4'h9 == _wnList_T_19[3:0] ? _wnList_res_im_T_119 : _GEN_345; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_347 = 4'ha == _wnList_T_19[3:0] ? _wnList_res_im_T_103 : _GEN_346; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_348 = 4'hb == _wnList_T_19[3:0] ? _wnList_res_im_T_87 : _GEN_347; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_349 = 4'hc == _wnList_T_19[3:0] ? _wnList_res_im_T_71 : _GEN_348; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_350 = 4'hd == _wnList_T_19[3:0] ? _wnList_res_im_T_55 : _GEN_349; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_351 = 4'he == _wnList_T_19[3:0] ? _wnList_res_im_T_39 : _GEN_350; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_354 = 4'h1 == _wnList_T_19[3:0] ? _wnList_res_re_T_31 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_355 = 4'h2 == _wnList_T_19[3:0] ? _wnList_res_re_T_55 : _GEN_354; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_356 = 4'h3 == _wnList_T_19[3:0] ? _wnList_res_re_T_79 : _GEN_355; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_357 = 4'h4 == _wnList_T_19[3:0] ? _wnList_res_re_T_103 : _GEN_356; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_358 = 4'h5 == _wnList_T_19[3:0] ? _wnList_res_re_T_127 : _GEN_357; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_359 = 4'h6 == _wnList_T_19[3:0] ? _wnList_res_im_T_23 : _GEN_358; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_360 = 4'h7 == _wnList_T_19[3:0] ? _wnList_res_im_T_47 : _GEN_359; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_361 = 4'h8 == _wnList_T_19[3:0] ? _wnList_res_im_T_71 : _GEN_360; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_362 = 4'h9 == _wnList_T_19[3:0] ? _wnList_res_im_T_95 : _GEN_361; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_363 = 4'ha == _wnList_T_19[3:0] ? _wnList_res_im_T_119 : _GEN_362; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_364 = 4'hb == _wnList_T_19[3:0] ? _wnList_res_im_T_127 : _GEN_363; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_365 = 4'hc == _wnList_T_19[3:0] ? _wnList_res_im_T_103 : _GEN_364; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_366 = 4'hd == _wnList_T_19[3:0] ? _wnList_res_im_T_79 : _GEN_365; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_367 = 4'he == _wnList_T_19[3:0] ? _wnList_res_im_T_55 : _GEN_366; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_370 = 4'h1 == _wnList_T_19[3:0] ? _wnList_res_im_T_31 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_371 = 4'h2 == _wnList_T_19[3:0] ? _wnList_res_im_T_55 : _GEN_370; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_372 = 4'h3 == _wnList_T_19[3:0] ? _wnList_res_im_T_79 : _GEN_371; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_373 = 4'h4 == _wnList_T_19[3:0] ? _wnList_res_im_T_103 : _GEN_372; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_374 = 4'h5 == _wnList_T_19[3:0] ? _wnList_res_im_T_127 : _GEN_373; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_375 = 4'h6 == _wnList_T_19[3:0] ? _wnList_res_im_T_119 : _GEN_374; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_376 = 4'h7 == _wnList_T_19[3:0] ? _wnList_res_im_T_95 : _GEN_375; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_377 = 4'h8 == _wnList_T_19[3:0] ? _wnList_res_im_T_71 : _GEN_376; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_378 = 4'h9 == _wnList_T_19[3:0] ? _wnList_res_im_T_47 : _GEN_377; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_379 = 4'ha == _wnList_T_19[3:0] ? _wnList_res_im_T_23 : _GEN_378; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_380 = 4'hb == _wnList_T_19[3:0] ? _wnList_res_re_T_127 : _GEN_379; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_381 = 4'hc == _wnList_T_19[3:0] ? _wnList_res_re_T_103 : _GEN_380; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_382 = 4'hd == _wnList_T_19[3:0] ? _wnList_res_re_T_79 : _GEN_381; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_383 = 4'he == _wnList_T_19[3:0] ? _wnList_res_re_T_55 : _GEN_382; // @[FFT.scala 105:{12,12}]
  wire [1:0] wnCtrl = cnt_1[1:0]; // @[FFT.scala 131:23]
  wire [2:0] _wnList_T_24 = {{1'd0}, wnCtrl}; // @[FFT.scala 135:96]
  wire [16:0] _GEN_386 = 2'h1 == _wnList_T_24[1:0] ? _wnList_res_re_T_39 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_387 = 2'h2 == _wnList_T_24[1:0] ? _wnList_res_re_T_71 : _GEN_386; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_390 = 2'h1 == _wnList_T_24[1:0] ? _wnList_res_im_T_39 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_391 = 2'h2 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_390; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_394 = 2'h1 == _wnList_T_24[1:0] ? _wnList_res_re_T_71 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_395 = 2'h2 == _wnList_T_24[1:0] ? _wnList_res_im_T_7 : _GEN_394; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_398 = 2'h1 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_399 = 2'h2 == _wnList_T_24[1:0] ? _wnList_res_im_T_200 : _GEN_398; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_402 = 2'h1 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _wnList_res_re_T_7; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_403 = 2'h2 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_402; // @[FFT.scala 104:{12,12}]
  wire [16:0] _GEN_406 = 2'h1 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _wnList_res_im_T_7; // @[FFT.scala 105:{12,12}]
  wire [16:0] _GEN_407 = 2'h2 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_406; // @[FFT.scala 105:{12,12}]
  reg [16:0] REG__0_re; // @[FFT.scala 157:67]
  reg [16:0] REG__0_im; // @[FFT.scala 157:67]
  reg [16:0] REG__1_re; // @[FFT.scala 157:67]
  reg [16:0] REG__1_im; // @[FFT.scala 157:67]
  reg [16:0] REG__2_re; // @[FFT.scala 157:67]
  reg [16:0] REG__2_im; // @[FFT.scala 157:67]
  reg [16:0] REG__3_re; // @[FFT.scala 157:67]
  reg [16:0] REG__3_im; // @[FFT.scala 157:67]
  reg [16:0] REG_1_0_re; // @[FFT.scala 157:67]
  reg [16:0] REG_1_0_im; // @[FFT.scala 157:67]
  reg [16:0] REG_1_1_re; // @[FFT.scala 157:67]
  reg [16:0] REG_1_1_im; // @[FFT.scala 157:67]
  reg [16:0] REG_1_2_re; // @[FFT.scala 157:67]
  reg [16:0] REG_1_2_im; // @[FFT.scala 157:67]
  reg [16:0] REG_1_3_re; // @[FFT.scala 157:67]
  reg [16:0] REG_1_3_im; // @[FFT.scala 157:67]
  reg [16:0] REG_2_0_re; // @[FFT.scala 157:67]
  reg [16:0] REG_2_0_im; // @[FFT.scala 157:67]
  reg [16:0] REG_2_1_re; // @[FFT.scala 157:67]
  reg [16:0] REG_2_1_im; // @[FFT.scala 157:67]
  reg [16:0] REG_2_2_re; // @[FFT.scala 157:67]
  reg [16:0] REG_2_2_im; // @[FFT.scala 157:67]
  reg [16:0] REG_2_3_re; // @[FFT.scala 157:67]
  reg [16:0] REG_2_3_im; // @[FFT.scala 157:67]
  reg [16:0] REG_3_0_re; // @[FFT.scala 157:67]
  reg [16:0] REG_3_0_im; // @[FFT.scala 157:67]
  reg [16:0] REG_3_1_re; // @[FFT.scala 157:67]
  reg [16:0] REG_3_1_im; // @[FFT.scala 157:67]
  reg [16:0] REG_3_2_re; // @[FFT.scala 157:67]
  reg [16:0] REG_3_2_im; // @[FFT.scala 157:67]
  reg [16:0] REG_3_3_re; // @[FFT.scala 157:67]
  reg [16:0] REG_3_3_im; // @[FFT.scala 157:67]
  wire [31:0] _T_1 = {io_dIn_0_re,io_dIn_0_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_4 = {io_dIn_1_re,io_dIn_1_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_7 = {io_dIn_2_re,io_dIn_2_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_10 = {io_dIn_3_re,io_dIn_3_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_13 = {io_dIn_4_re,io_dIn_4_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_16 = {io_dIn_5_re,io_dIn_5_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_19 = {io_dIn_6_re,io_dIn_6_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_22 = {io_dIn_7_re,io_dIn_7_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_25 = {io_dIn_8_re,io_dIn_8_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_28 = {io_dIn_9_re,io_dIn_9_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_31 = {io_dIn_10_re,io_dIn_10_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_34 = {io_dIn_11_re,io_dIn_11_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_37 = {io_dIn_12_re,io_dIn_12_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_40 = {io_dIn_13_re,io_dIn_13_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_43 = {io_dIn_14_re,io_dIn_14_im}; // @[FFT.scala 170:91]
  wire [31:0] _T_46 = {io_dIn_15_re,io_dIn_15_im}; // @[FFT.scala 170:91]
  reg [4:0] io_dout_valid_REG; // @[FFT.scala 179:27]
  wire [16:0] datao_0_re = dataotemp_inst_io_out_0_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_0_im = dataotemp_inst_io_out_0_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_49 = {datao_0_re,datao_0_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_4_re; // @[FFT.scala 181:64]
  reg [15:0] REG_4_im; // @[FFT.scala 181:64]
  wire [16:0] datao_1_re = dataotemp_inst_io_out_1_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_1_im = dataotemp_inst_io_out_1_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_52 = {datao_1_re,datao_1_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_5_re; // @[FFT.scala 181:64]
  reg [15:0] REG_5_im; // @[FFT.scala 181:64]
  wire [16:0] datao_2_re = dataotemp_inst_io_out_2_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_2_im = dataotemp_inst_io_out_2_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_55 = {datao_2_re,datao_2_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_6_re; // @[FFT.scala 181:64]
  reg [15:0] REG_6_im; // @[FFT.scala 181:64]
  wire [16:0] datao_3_re = dataotemp_inst_io_out_3_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_3_im = dataotemp_inst_io_out_3_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_58 = {datao_3_re,datao_3_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_7_re; // @[FFT.scala 181:64]
  reg [15:0] REG_7_im; // @[FFT.scala 181:64]
  wire [16:0] datao_4_re = dataotemp_inst_1_io_out_0_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_4_im = dataotemp_inst_1_io_out_0_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_61 = {datao_4_re,datao_4_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_8_re; // @[FFT.scala 181:64]
  reg [15:0] REG_8_im; // @[FFT.scala 181:64]
  wire [16:0] datao_5_re = dataotemp_inst_1_io_out_1_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_5_im = dataotemp_inst_1_io_out_1_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_64 = {datao_5_re,datao_5_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_9_re; // @[FFT.scala 181:64]
  reg [15:0] REG_9_im; // @[FFT.scala 181:64]
  wire [16:0] datao_6_re = dataotemp_inst_1_io_out_2_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_6_im = dataotemp_inst_1_io_out_2_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_67 = {datao_6_re,datao_6_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_10_re; // @[FFT.scala 181:64]
  reg [15:0] REG_10_im; // @[FFT.scala 181:64]
  wire [16:0] datao_7_re = dataotemp_inst_1_io_out_3_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_7_im = dataotemp_inst_1_io_out_3_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_70 = {datao_7_re,datao_7_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_11_re; // @[FFT.scala 181:64]
  reg [15:0] REG_11_im; // @[FFT.scala 181:64]
  wire [16:0] datao_8_re = dataotemp_inst_2_io_out_0_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_8_im = dataotemp_inst_2_io_out_0_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_73 = {datao_8_re,datao_8_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_12_re; // @[FFT.scala 181:64]
  reg [15:0] REG_12_im; // @[FFT.scala 181:64]
  wire [16:0] datao_9_re = dataotemp_inst_2_io_out_1_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_9_im = dataotemp_inst_2_io_out_1_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_76 = {datao_9_re,datao_9_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_13_re; // @[FFT.scala 181:64]
  reg [15:0] REG_13_im; // @[FFT.scala 181:64]
  wire [16:0] datao_10_re = dataotemp_inst_2_io_out_2_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_10_im = dataotemp_inst_2_io_out_2_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_79 = {datao_10_re,datao_10_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_14_re; // @[FFT.scala 181:64]
  reg [15:0] REG_14_im; // @[FFT.scala 181:64]
  wire [16:0] datao_11_re = dataotemp_inst_2_io_out_3_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_11_im = dataotemp_inst_2_io_out_3_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_82 = {datao_11_re,datao_11_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_15_re; // @[FFT.scala 181:64]
  reg [15:0] REG_15_im; // @[FFT.scala 181:64]
  wire [16:0] datao_12_re = dataotemp_inst_3_io_out_0_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_12_im = dataotemp_inst_3_io_out_0_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_85 = {datao_12_re,datao_12_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_16_re; // @[FFT.scala 181:64]
  reg [15:0] REG_16_im; // @[FFT.scala 181:64]
  wire [16:0] datao_13_re = dataotemp_inst_3_io_out_1_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_13_im = dataotemp_inst_3_io_out_1_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_88 = {datao_13_re,datao_13_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_17_re; // @[FFT.scala 181:64]
  reg [15:0] REG_17_im; // @[FFT.scala 181:64]
  wire [16:0] datao_14_re = dataotemp_inst_3_io_out_2_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_14_im = dataotemp_inst_3_io_out_2_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_91 = {datao_14_re,datao_14_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_18_re; // @[FFT.scala 181:64]
  reg [15:0] REG_18_im; // @[FFT.scala 181:64]
  wire [16:0] datao_15_re = dataotemp_inst_3_io_out_3_re; // @[FFT.scala 124:22 141:9]
  wire [16:0] datao_15_im = dataotemp_inst_3_io_out_3_im; // @[FFT.scala 124:22 141:9]
  wire [33:0] _T_94 = {datao_15_re,datao_15_im}; // @[FFT.scala 181:96]
  reg [15:0] REG_19_re; // @[FFT.scala 181:64]
  reg [15:0] REG_19_im; // @[FFT.scala 181:64]
  ButterflyMul inst ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_io_in_0_re),
    .io_in_0_im(inst_io_in_0_im),
    .io_in_1_re(inst_io_in_1_re),
    .io_in_1_im(inst_io_in_1_im),
    .io_in_2_re(inst_io_in_2_re),
    .io_in_2_im(inst_io_in_2_im),
    .io_in_3_re(inst_io_in_3_re),
    .io_in_3_im(inst_io_in_3_im),
    .io_out_0_re(inst_io_out_0_re),
    .io_out_0_im(inst_io_out_0_im),
    .io_out_1_re(inst_io_out_1_re),
    .io_out_1_im(inst_io_out_1_im),
    .io_out_2_re(inst_io_out_2_re),
    .io_out_2_im(inst_io_out_2_im),
    .io_out_3_re(inst_io_out_3_re),
    .io_out_3_im(inst_io_out_3_im),
    .io_wn_0_re(inst_io_wn_0_re),
    .io_wn_0_im(inst_io_wn_0_im),
    .io_wn_1_re(inst_io_wn_1_re),
    .io_wn_1_im(inst_io_wn_1_im),
    .io_wn_2_re(inst_io_wn_2_re),
    .io_wn_2_im(inst_io_wn_2_im)
  );
  ButterflyMul inst_1 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_1_io_in_0_re),
    .io_in_0_im(inst_1_io_in_0_im),
    .io_in_1_re(inst_1_io_in_1_re),
    .io_in_1_im(inst_1_io_in_1_im),
    .io_in_2_re(inst_1_io_in_2_re),
    .io_in_2_im(inst_1_io_in_2_im),
    .io_in_3_re(inst_1_io_in_3_re),
    .io_in_3_im(inst_1_io_in_3_im),
    .io_out_0_re(inst_1_io_out_0_re),
    .io_out_0_im(inst_1_io_out_0_im),
    .io_out_1_re(inst_1_io_out_1_re),
    .io_out_1_im(inst_1_io_out_1_im),
    .io_out_2_re(inst_1_io_out_2_re),
    .io_out_2_im(inst_1_io_out_2_im),
    .io_out_3_re(inst_1_io_out_3_re),
    .io_out_3_im(inst_1_io_out_3_im),
    .io_wn_0_re(inst_1_io_wn_0_re),
    .io_wn_0_im(inst_1_io_wn_0_im),
    .io_wn_1_re(inst_1_io_wn_1_re),
    .io_wn_1_im(inst_1_io_wn_1_im),
    .io_wn_2_re(inst_1_io_wn_2_re),
    .io_wn_2_im(inst_1_io_wn_2_im)
  );
  ButterflyMul inst_2 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_2_io_in_0_re),
    .io_in_0_im(inst_2_io_in_0_im),
    .io_in_1_re(inst_2_io_in_1_re),
    .io_in_1_im(inst_2_io_in_1_im),
    .io_in_2_re(inst_2_io_in_2_re),
    .io_in_2_im(inst_2_io_in_2_im),
    .io_in_3_re(inst_2_io_in_3_re),
    .io_in_3_im(inst_2_io_in_3_im),
    .io_out_0_re(inst_2_io_out_0_re),
    .io_out_0_im(inst_2_io_out_0_im),
    .io_out_1_re(inst_2_io_out_1_re),
    .io_out_1_im(inst_2_io_out_1_im),
    .io_out_2_re(inst_2_io_out_2_re),
    .io_out_2_im(inst_2_io_out_2_im),
    .io_out_3_re(inst_2_io_out_3_re),
    .io_out_3_im(inst_2_io_out_3_im),
    .io_wn_0_re(inst_2_io_wn_0_re),
    .io_wn_0_im(inst_2_io_wn_0_im),
    .io_wn_1_re(inst_2_io_wn_1_re),
    .io_wn_1_im(inst_2_io_wn_1_im),
    .io_wn_2_re(inst_2_io_wn_2_re),
    .io_wn_2_im(inst_2_io_wn_2_im)
  );
  ButterflyMul inst_3 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_3_io_in_0_re),
    .io_in_0_im(inst_3_io_in_0_im),
    .io_in_1_re(inst_3_io_in_1_re),
    .io_in_1_im(inst_3_io_in_1_im),
    .io_in_2_re(inst_3_io_in_2_re),
    .io_in_2_im(inst_3_io_in_2_im),
    .io_in_3_re(inst_3_io_in_3_re),
    .io_in_3_im(inst_3_io_in_3_im),
    .io_out_0_re(inst_3_io_out_0_re),
    .io_out_0_im(inst_3_io_out_0_im),
    .io_out_1_re(inst_3_io_out_1_re),
    .io_out_1_im(inst_3_io_out_1_im),
    .io_out_2_re(inst_3_io_out_2_re),
    .io_out_2_im(inst_3_io_out_2_im),
    .io_out_3_re(inst_3_io_out_3_re),
    .io_out_3_im(inst_3_io_out_3_im),
    .io_wn_0_re(inst_3_io_wn_0_re),
    .io_wn_0_im(inst_3_io_wn_0_im),
    .io_wn_1_re(inst_3_io_wn_1_re),
    .io_wn_1_im(inst_3_io_wn_1_im),
    .io_wn_2_re(inst_3_io_wn_2_re),
    .io_wn_2_im(inst_3_io_wn_2_im)
  );
  ButterflyMul inst_4 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_4_io_in_0_re),
    .io_in_0_im(inst_4_io_in_0_im),
    .io_in_1_re(inst_4_io_in_1_re),
    .io_in_1_im(inst_4_io_in_1_im),
    .io_in_2_re(inst_4_io_in_2_re),
    .io_in_2_im(inst_4_io_in_2_im),
    .io_in_3_re(inst_4_io_in_3_re),
    .io_in_3_im(inst_4_io_in_3_im),
    .io_out_0_re(inst_4_io_out_0_re),
    .io_out_0_im(inst_4_io_out_0_im),
    .io_out_1_re(inst_4_io_out_1_re),
    .io_out_1_im(inst_4_io_out_1_im),
    .io_out_2_re(inst_4_io_out_2_re),
    .io_out_2_im(inst_4_io_out_2_im),
    .io_out_3_re(inst_4_io_out_3_re),
    .io_out_3_im(inst_4_io_out_3_im),
    .io_wn_0_re(inst_4_io_wn_0_re),
    .io_wn_0_im(inst_4_io_wn_0_im),
    .io_wn_1_re(inst_4_io_wn_1_re),
    .io_wn_1_im(inst_4_io_wn_1_im),
    .io_wn_2_re(inst_4_io_wn_2_re),
    .io_wn_2_im(inst_4_io_wn_2_im)
  );
  ButterflyMul inst_5 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_5_io_in_0_re),
    .io_in_0_im(inst_5_io_in_0_im),
    .io_in_1_re(inst_5_io_in_1_re),
    .io_in_1_im(inst_5_io_in_1_im),
    .io_in_2_re(inst_5_io_in_2_re),
    .io_in_2_im(inst_5_io_in_2_im),
    .io_in_3_re(inst_5_io_in_3_re),
    .io_in_3_im(inst_5_io_in_3_im),
    .io_out_0_re(inst_5_io_out_0_re),
    .io_out_0_im(inst_5_io_out_0_im),
    .io_out_1_re(inst_5_io_out_1_re),
    .io_out_1_im(inst_5_io_out_1_im),
    .io_out_2_re(inst_5_io_out_2_re),
    .io_out_2_im(inst_5_io_out_2_im),
    .io_out_3_re(inst_5_io_out_3_re),
    .io_out_3_im(inst_5_io_out_3_im),
    .io_wn_0_re(inst_5_io_wn_0_re),
    .io_wn_0_im(inst_5_io_wn_0_im),
    .io_wn_1_re(inst_5_io_wn_1_re),
    .io_wn_1_im(inst_5_io_wn_1_im),
    .io_wn_2_re(inst_5_io_wn_2_re),
    .io_wn_2_im(inst_5_io_wn_2_im)
  );
  ButterflyMul inst_6 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_6_io_in_0_re),
    .io_in_0_im(inst_6_io_in_0_im),
    .io_in_1_re(inst_6_io_in_1_re),
    .io_in_1_im(inst_6_io_in_1_im),
    .io_in_2_re(inst_6_io_in_2_re),
    .io_in_2_im(inst_6_io_in_2_im),
    .io_in_3_re(inst_6_io_in_3_re),
    .io_in_3_im(inst_6_io_in_3_im),
    .io_out_0_re(inst_6_io_out_0_re),
    .io_out_0_im(inst_6_io_out_0_im),
    .io_out_1_re(inst_6_io_out_1_re),
    .io_out_1_im(inst_6_io_out_1_im),
    .io_out_2_re(inst_6_io_out_2_re),
    .io_out_2_im(inst_6_io_out_2_im),
    .io_out_3_re(inst_6_io_out_3_re),
    .io_out_3_im(inst_6_io_out_3_im),
    .io_wn_0_re(inst_6_io_wn_0_re),
    .io_wn_0_im(inst_6_io_wn_0_im),
    .io_wn_1_re(inst_6_io_wn_1_re),
    .io_wn_1_im(inst_6_io_wn_1_im),
    .io_wn_2_re(inst_6_io_wn_2_re),
    .io_wn_2_im(inst_6_io_wn_2_im)
  );
  ButterflyMul inst_7 ( // @[Modules.scala 287:22]
    .io_in_0_re(inst_7_io_in_0_re),
    .io_in_0_im(inst_7_io_in_0_im),
    .io_in_1_re(inst_7_io_in_1_re),
    .io_in_1_im(inst_7_io_in_1_im),
    .io_in_2_re(inst_7_io_in_2_re),
    .io_in_2_im(inst_7_io_in_2_im),
    .io_in_3_re(inst_7_io_in_3_re),
    .io_in_3_im(inst_7_io_in_3_im),
    .io_out_0_re(inst_7_io_out_0_re),
    .io_out_0_im(inst_7_io_out_0_im),
    .io_out_1_re(inst_7_io_out_1_re),
    .io_out_1_im(inst_7_io_out_1_im),
    .io_out_2_re(inst_7_io_out_2_re),
    .io_out_2_im(inst_7_io_out_2_im),
    .io_out_3_re(inst_7_io_out_3_re),
    .io_out_3_im(inst_7_io_out_3_im),
    .io_wn_0_re(inst_7_io_wn_0_re),
    .io_wn_0_im(inst_7_io_wn_0_im),
    .io_wn_1_re(inst_7_io_wn_1_re),
    .io_wn_1_im(inst_7_io_wn_1_im),
    .io_wn_2_re(inst_7_io_wn_2_re),
    .io_wn_2_im(inst_7_io_wn_2_im)
  );
  ButterflyAdd dataotemp_inst ( // @[Modules.scala 213:22]
    .io_in_0_re(dataotemp_inst_io_in_0_re),
    .io_in_0_im(dataotemp_inst_io_in_0_im),
    .io_in_1_re(dataotemp_inst_io_in_1_re),
    .io_in_1_im(dataotemp_inst_io_in_1_im),
    .io_in_2_re(dataotemp_inst_io_in_2_re),
    .io_in_2_im(dataotemp_inst_io_in_2_im),
    .io_in_3_re(dataotemp_inst_io_in_3_re),
    .io_in_3_im(dataotemp_inst_io_in_3_im),
    .io_out_0_re(dataotemp_inst_io_out_0_re),
    .io_out_0_im(dataotemp_inst_io_out_0_im),
    .io_out_1_re(dataotemp_inst_io_out_1_re),
    .io_out_1_im(dataotemp_inst_io_out_1_im),
    .io_out_2_re(dataotemp_inst_io_out_2_re),
    .io_out_2_im(dataotemp_inst_io_out_2_im),
    .io_out_3_re(dataotemp_inst_io_out_3_re),
    .io_out_3_im(dataotemp_inst_io_out_3_im)
  );
  ButterflyAdd dataotemp_inst_1 ( // @[Modules.scala 213:22]
    .io_in_0_re(dataotemp_inst_1_io_in_0_re),
    .io_in_0_im(dataotemp_inst_1_io_in_0_im),
    .io_in_1_re(dataotemp_inst_1_io_in_1_re),
    .io_in_1_im(dataotemp_inst_1_io_in_1_im),
    .io_in_2_re(dataotemp_inst_1_io_in_2_re),
    .io_in_2_im(dataotemp_inst_1_io_in_2_im),
    .io_in_3_re(dataotemp_inst_1_io_in_3_re),
    .io_in_3_im(dataotemp_inst_1_io_in_3_im),
    .io_out_0_re(dataotemp_inst_1_io_out_0_re),
    .io_out_0_im(dataotemp_inst_1_io_out_0_im),
    .io_out_1_re(dataotemp_inst_1_io_out_1_re),
    .io_out_1_im(dataotemp_inst_1_io_out_1_im),
    .io_out_2_re(dataotemp_inst_1_io_out_2_re),
    .io_out_2_im(dataotemp_inst_1_io_out_2_im),
    .io_out_3_re(dataotemp_inst_1_io_out_3_re),
    .io_out_3_im(dataotemp_inst_1_io_out_3_im)
  );
  ButterflyAdd dataotemp_inst_2 ( // @[Modules.scala 213:22]
    .io_in_0_re(dataotemp_inst_2_io_in_0_re),
    .io_in_0_im(dataotemp_inst_2_io_in_0_im),
    .io_in_1_re(dataotemp_inst_2_io_in_1_re),
    .io_in_1_im(dataotemp_inst_2_io_in_1_im),
    .io_in_2_re(dataotemp_inst_2_io_in_2_re),
    .io_in_2_im(dataotemp_inst_2_io_in_2_im),
    .io_in_3_re(dataotemp_inst_2_io_in_3_re),
    .io_in_3_im(dataotemp_inst_2_io_in_3_im),
    .io_out_0_re(dataotemp_inst_2_io_out_0_re),
    .io_out_0_im(dataotemp_inst_2_io_out_0_im),
    .io_out_1_re(dataotemp_inst_2_io_out_1_re),
    .io_out_1_im(dataotemp_inst_2_io_out_1_im),
    .io_out_2_re(dataotemp_inst_2_io_out_2_re),
    .io_out_2_im(dataotemp_inst_2_io_out_2_im),
    .io_out_3_re(dataotemp_inst_2_io_out_3_re),
    .io_out_3_im(dataotemp_inst_2_io_out_3_im)
  );
  ButterflyAdd dataotemp_inst_3 ( // @[Modules.scala 213:22]
    .io_in_0_re(dataotemp_inst_3_io_in_0_re),
    .io_in_0_im(dataotemp_inst_3_io_in_0_im),
    .io_in_1_re(dataotemp_inst_3_io_in_1_re),
    .io_in_1_im(dataotemp_inst_3_io_in_1_im),
    .io_in_2_re(dataotemp_inst_3_io_in_2_re),
    .io_in_2_im(dataotemp_inst_3_io_in_2_im),
    .io_in_3_re(dataotemp_inst_3_io_in_3_re),
    .io_in_3_im(dataotemp_inst_3_io_in_3_im),
    .io_out_0_re(dataotemp_inst_3_io_out_0_re),
    .io_out_0_im(dataotemp_inst_3_io_out_0_im),
    .io_out_1_re(dataotemp_inst_3_io_out_1_re),
    .io_out_1_im(dataotemp_inst_3_io_out_1_im),
    .io_out_2_re(dataotemp_inst_3_io_out_2_re),
    .io_out_2_im(dataotemp_inst_3_io_out_2_im),
    .io_out_3_re(dataotemp_inst_3_io_out_3_re),
    .io_out_3_im(dataotemp_inst_3_io_out_3_im)
  );
  Exchange exdata_inst ( // @[Modules.scala 331:22]
    .io_in_0_0_re(exdata_inst_io_in_0_0_re),
    .io_in_0_0_im(exdata_inst_io_in_0_0_im),
    .io_in_0_1_re(exdata_inst_io_in_0_1_re),
    .io_in_0_1_im(exdata_inst_io_in_0_1_im),
    .io_in_0_2_re(exdata_inst_io_in_0_2_re),
    .io_in_0_2_im(exdata_inst_io_in_0_2_im),
    .io_in_0_3_re(exdata_inst_io_in_0_3_re),
    .io_in_0_3_im(exdata_inst_io_in_0_3_im),
    .io_in_1_0_re(exdata_inst_io_in_1_0_re),
    .io_in_1_0_im(exdata_inst_io_in_1_0_im),
    .io_in_1_1_re(exdata_inst_io_in_1_1_re),
    .io_in_1_1_im(exdata_inst_io_in_1_1_im),
    .io_in_1_2_re(exdata_inst_io_in_1_2_re),
    .io_in_1_2_im(exdata_inst_io_in_1_2_im),
    .io_in_1_3_re(exdata_inst_io_in_1_3_re),
    .io_in_1_3_im(exdata_inst_io_in_1_3_im),
    .io_in_2_0_re(exdata_inst_io_in_2_0_re),
    .io_in_2_0_im(exdata_inst_io_in_2_0_im),
    .io_in_2_1_re(exdata_inst_io_in_2_1_re),
    .io_in_2_1_im(exdata_inst_io_in_2_1_im),
    .io_in_2_2_re(exdata_inst_io_in_2_2_re),
    .io_in_2_2_im(exdata_inst_io_in_2_2_im),
    .io_in_2_3_re(exdata_inst_io_in_2_3_re),
    .io_in_2_3_im(exdata_inst_io_in_2_3_im),
    .io_in_3_0_re(exdata_inst_io_in_3_0_re),
    .io_in_3_0_im(exdata_inst_io_in_3_0_im),
    .io_in_3_1_re(exdata_inst_io_in_3_1_re),
    .io_in_3_1_im(exdata_inst_io_in_3_1_im),
    .io_in_3_2_re(exdata_inst_io_in_3_2_re),
    .io_in_3_2_im(exdata_inst_io_in_3_2_im),
    .io_in_3_3_re(exdata_inst_io_in_3_3_re),
    .io_in_3_3_im(exdata_inst_io_in_3_3_im),
    .io_out_0_0_re(exdata_inst_io_out_0_0_re),
    .io_out_0_0_im(exdata_inst_io_out_0_0_im),
    .io_out_0_1_re(exdata_inst_io_out_0_1_re),
    .io_out_0_1_im(exdata_inst_io_out_0_1_im),
    .io_out_0_2_re(exdata_inst_io_out_0_2_re),
    .io_out_0_2_im(exdata_inst_io_out_0_2_im),
    .io_out_0_3_re(exdata_inst_io_out_0_3_re),
    .io_out_0_3_im(exdata_inst_io_out_0_3_im),
    .io_out_1_0_re(exdata_inst_io_out_1_0_re),
    .io_out_1_0_im(exdata_inst_io_out_1_0_im),
    .io_out_1_1_re(exdata_inst_io_out_1_1_re),
    .io_out_1_1_im(exdata_inst_io_out_1_1_im),
    .io_out_1_2_re(exdata_inst_io_out_1_2_re),
    .io_out_1_2_im(exdata_inst_io_out_1_2_im),
    .io_out_1_3_re(exdata_inst_io_out_1_3_re),
    .io_out_1_3_im(exdata_inst_io_out_1_3_im),
    .io_out_2_0_re(exdata_inst_io_out_2_0_re),
    .io_out_2_0_im(exdata_inst_io_out_2_0_im),
    .io_out_2_1_re(exdata_inst_io_out_2_1_re),
    .io_out_2_1_im(exdata_inst_io_out_2_1_im),
    .io_out_2_2_re(exdata_inst_io_out_2_2_re),
    .io_out_2_2_im(exdata_inst_io_out_2_2_im),
    .io_out_2_3_re(exdata_inst_io_out_2_3_re),
    .io_out_2_3_im(exdata_inst_io_out_2_3_im),
    .io_out_3_0_re(exdata_inst_io_out_3_0_re),
    .io_out_3_0_im(exdata_inst_io_out_3_0_im),
    .io_out_3_1_re(exdata_inst_io_out_3_1_re),
    .io_out_3_1_im(exdata_inst_io_out_3_1_im),
    .io_out_3_2_re(exdata_inst_io_out_3_2_re),
    .io_out_3_2_im(exdata_inst_io_out_3_2_im),
    .io_out_3_3_re(exdata_inst_io_out_3_3_re),
    .io_out_3_3_im(exdata_inst_io_out_3_3_im)
  );
  Switch inst_8 ( // @[Modules.scala 311:22]
    .clock(inst_8_clock),
    .io_in_0_re(inst_8_io_in_0_re),
    .io_in_0_im(inst_8_io_in_0_im),
    .io_in_1_re(inst_8_io_in_1_re),
    .io_in_1_im(inst_8_io_in_1_im),
    .io_in_2_re(inst_8_io_in_2_re),
    .io_in_2_im(inst_8_io_in_2_im),
    .io_in_3_re(inst_8_io_in_3_re),
    .io_in_3_im(inst_8_io_in_3_im),
    .io_out_0_re(inst_8_io_out_0_re),
    .io_out_0_im(inst_8_io_out_0_im),
    .io_out_1_re(inst_8_io_out_1_re),
    .io_out_1_im(inst_8_io_out_1_im),
    .io_out_2_re(inst_8_io_out_2_re),
    .io_out_2_im(inst_8_io_out_2_im),
    .io_out_3_re(inst_8_io_out_3_re),
    .io_out_3_im(inst_8_io_out_3_im),
    .io_sel(inst_8_io_sel)
  );
  Switch inst_9 ( // @[Modules.scala 311:22]
    .clock(inst_9_clock),
    .io_in_0_re(inst_9_io_in_0_re),
    .io_in_0_im(inst_9_io_in_0_im),
    .io_in_1_re(inst_9_io_in_1_re),
    .io_in_1_im(inst_9_io_in_1_im),
    .io_in_2_re(inst_9_io_in_2_re),
    .io_in_2_im(inst_9_io_in_2_im),
    .io_in_3_re(inst_9_io_in_3_re),
    .io_in_3_im(inst_9_io_in_3_im),
    .io_out_0_re(inst_9_io_out_0_re),
    .io_out_0_im(inst_9_io_out_0_im),
    .io_out_1_re(inst_9_io_out_1_re),
    .io_out_1_im(inst_9_io_out_1_im),
    .io_out_2_re(inst_9_io_out_2_re),
    .io_out_2_im(inst_9_io_out_2_im),
    .io_out_3_re(inst_9_io_out_3_re),
    .io_out_3_im(inst_9_io_out_3_im),
    .io_sel(inst_9_io_sel)
  );
  Switch inst_10 ( // @[Modules.scala 311:22]
    .clock(inst_10_clock),
    .io_in_0_re(inst_10_io_in_0_re),
    .io_in_0_im(inst_10_io_in_0_im),
    .io_in_1_re(inst_10_io_in_1_re),
    .io_in_1_im(inst_10_io_in_1_im),
    .io_in_2_re(inst_10_io_in_2_re),
    .io_in_2_im(inst_10_io_in_2_im),
    .io_in_3_re(inst_10_io_in_3_re),
    .io_in_3_im(inst_10_io_in_3_im),
    .io_out_0_re(inst_10_io_out_0_re),
    .io_out_0_im(inst_10_io_out_0_im),
    .io_out_1_re(inst_10_io_out_1_re),
    .io_out_1_im(inst_10_io_out_1_im),
    .io_out_2_re(inst_10_io_out_2_re),
    .io_out_2_im(inst_10_io_out_2_im),
    .io_out_3_re(inst_10_io_out_3_re),
    .io_out_3_im(inst_10_io_out_3_im),
    .io_sel(inst_10_io_sel)
  );
  Switch inst_11 ( // @[Modules.scala 311:22]
    .clock(inst_11_clock),
    .io_in_0_re(inst_11_io_in_0_re),
    .io_in_0_im(inst_11_io_in_0_im),
    .io_in_1_re(inst_11_io_in_1_re),
    .io_in_1_im(inst_11_io_in_1_im),
    .io_in_2_re(inst_11_io_in_2_re),
    .io_in_2_im(inst_11_io_in_2_im),
    .io_in_3_re(inst_11_io_in_3_re),
    .io_in_3_im(inst_11_io_in_3_im),
    .io_out_0_re(inst_11_io_out_0_re),
    .io_out_0_im(inst_11_io_out_0_im),
    .io_out_1_re(inst_11_io_out_1_re),
    .io_out_1_im(inst_11_io_out_1_im),
    .io_out_2_re(inst_11_io_out_2_re),
    .io_out_2_im(inst_11_io_out_2_im),
    .io_out_3_re(inst_11_io_out_3_re),
    .io_out_3_im(inst_11_io_out_3_im),
    .io_sel(inst_11_io_sel)
  );
  ComplexRecode inst_12 ( // @[Modules.scala 40:22]
    .io_in_re(inst_12_io_in_re),
    .io_in_im(inst_12_io_in_im),
    .io_out_re(inst_12_io_out_re),
    .io_out_im(inst_12_io_out_im)
  );
  ComplexRecode inst_13 ( // @[Modules.scala 40:22]
    .io_in_re(inst_13_io_in_re),
    .io_in_im(inst_13_io_in_im),
    .io_out_re(inst_13_io_out_re),
    .io_out_im(inst_13_io_out_im)
  );
  ComplexRecode inst_14 ( // @[Modules.scala 40:22]
    .io_in_re(inst_14_io_in_re),
    .io_in_im(inst_14_io_in_im),
    .io_out_re(inst_14_io_out_re),
    .io_out_im(inst_14_io_out_im)
  );
  ComplexRecode inst_15 ( // @[Modules.scala 40:22]
    .io_in_re(inst_15_io_in_re),
    .io_in_im(inst_15_io_in_im),
    .io_out_re(inst_15_io_out_re),
    .io_out_im(inst_15_io_out_im)
  );
  ComplexRecode inst_16 ( // @[Modules.scala 40:22]
    .io_in_re(inst_16_io_in_re),
    .io_in_im(inst_16_io_in_im),
    .io_out_re(inst_16_io_out_re),
    .io_out_im(inst_16_io_out_im)
  );
  ComplexRecode inst_17 ( // @[Modules.scala 40:22]
    .io_in_re(inst_17_io_in_re),
    .io_in_im(inst_17_io_in_im),
    .io_out_re(inst_17_io_out_re),
    .io_out_im(inst_17_io_out_im)
  );
  ComplexRecode inst_18 ( // @[Modules.scala 40:22]
    .io_in_re(inst_18_io_in_re),
    .io_in_im(inst_18_io_in_im),
    .io_out_re(inst_18_io_out_re),
    .io_out_im(inst_18_io_out_im)
  );
  ComplexRecode inst_19 ( // @[Modules.scala 40:22]
    .io_in_re(inst_19_io_in_re),
    .io_in_im(inst_19_io_in_im),
    .io_out_re(inst_19_io_out_re),
    .io_out_im(inst_19_io_out_im)
  );
  ComplexRecode inst_20 ( // @[Modules.scala 40:22]
    .io_in_re(inst_20_io_in_re),
    .io_in_im(inst_20_io_in_im),
    .io_out_re(inst_20_io_out_re),
    .io_out_im(inst_20_io_out_im)
  );
  ComplexRecode inst_21 ( // @[Modules.scala 40:22]
    .io_in_re(inst_21_io_in_re),
    .io_in_im(inst_21_io_in_im),
    .io_out_re(inst_21_io_out_re),
    .io_out_im(inst_21_io_out_im)
  );
  ComplexRecode inst_22 ( // @[Modules.scala 40:22]
    .io_in_re(inst_22_io_in_re),
    .io_in_im(inst_22_io_in_im),
    .io_out_re(inst_22_io_out_re),
    .io_out_im(inst_22_io_out_im)
  );
  ComplexRecode inst_23 ( // @[Modules.scala 40:22]
    .io_in_re(inst_23_io_in_re),
    .io_in_im(inst_23_io_in_im),
    .io_out_re(inst_23_io_out_re),
    .io_out_im(inst_23_io_out_im)
  );
  ComplexRecode inst_24 ( // @[Modules.scala 40:22]
    .io_in_re(inst_24_io_in_re),
    .io_in_im(inst_24_io_in_im),
    .io_out_re(inst_24_io_out_re),
    .io_out_im(inst_24_io_out_im)
  );
  ComplexRecode inst_25 ( // @[Modules.scala 40:22]
    .io_in_re(inst_25_io_in_re),
    .io_in_im(inst_25_io_in_im),
    .io_out_re(inst_25_io_out_re),
    .io_out_im(inst_25_io_out_im)
  );
  ComplexRecode inst_26 ( // @[Modules.scala 40:22]
    .io_in_re(inst_26_io_in_re),
    .io_in_im(inst_26_io_in_im),
    .io_out_re(inst_26_io_out_re),
    .io_out_im(inst_26_io_out_im)
  );
  ComplexRecode inst_27 ( // @[Modules.scala 40:22]
    .io_in_re(inst_27_io_in_re),
    .io_in_im(inst_27_io_in_im),
    .io_out_re(inst_27_io_out_re),
    .io_out_im(inst_27_io_out_im)
  );
  ComplexDecode inst_28 ( // @[Modules.scala 56:22]
    .io_in_re(inst_28_io_in_re),
    .io_in_im(inst_28_io_in_im),
    .io_out_re(inst_28_io_out_re),
    .io_out_im(inst_28_io_out_im)
  );
  ComplexDecode inst_29 ( // @[Modules.scala 56:22]
    .io_in_re(inst_29_io_in_re),
    .io_in_im(inst_29_io_in_im),
    .io_out_re(inst_29_io_out_re),
    .io_out_im(inst_29_io_out_im)
  );
  ComplexDecode inst_30 ( // @[Modules.scala 56:22]
    .io_in_re(inst_30_io_in_re),
    .io_in_im(inst_30_io_in_im),
    .io_out_re(inst_30_io_out_re),
    .io_out_im(inst_30_io_out_im)
  );
  ComplexDecode inst_31 ( // @[Modules.scala 56:22]
    .io_in_re(inst_31_io_in_re),
    .io_in_im(inst_31_io_in_im),
    .io_out_re(inst_31_io_out_re),
    .io_out_im(inst_31_io_out_im)
  );
  ComplexDecode inst_32 ( // @[Modules.scala 56:22]
    .io_in_re(inst_32_io_in_re),
    .io_in_im(inst_32_io_in_im),
    .io_out_re(inst_32_io_out_re),
    .io_out_im(inst_32_io_out_im)
  );
  ComplexDecode inst_33 ( // @[Modules.scala 56:22]
    .io_in_re(inst_33_io_in_re),
    .io_in_im(inst_33_io_in_im),
    .io_out_re(inst_33_io_out_re),
    .io_out_im(inst_33_io_out_im)
  );
  ComplexDecode inst_34 ( // @[Modules.scala 56:22]
    .io_in_re(inst_34_io_in_re),
    .io_in_im(inst_34_io_in_im),
    .io_out_re(inst_34_io_out_re),
    .io_out_im(inst_34_io_out_im)
  );
  ComplexDecode inst_35 ( // @[Modules.scala 56:22]
    .io_in_re(inst_35_io_in_re),
    .io_in_im(inst_35_io_in_im),
    .io_out_re(inst_35_io_out_re),
    .io_out_im(inst_35_io_out_im)
  );
  ComplexDecode inst_36 ( // @[Modules.scala 56:22]
    .io_in_re(inst_36_io_in_re),
    .io_in_im(inst_36_io_in_im),
    .io_out_re(inst_36_io_out_re),
    .io_out_im(inst_36_io_out_im)
  );
  ComplexDecode inst_37 ( // @[Modules.scala 56:22]
    .io_in_re(inst_37_io_in_re),
    .io_in_im(inst_37_io_in_im),
    .io_out_re(inst_37_io_out_re),
    .io_out_im(inst_37_io_out_im)
  );
  ComplexDecode inst_38 ( // @[Modules.scala 56:22]
    .io_in_re(inst_38_io_in_re),
    .io_in_im(inst_38_io_in_im),
    .io_out_re(inst_38_io_out_re),
    .io_out_im(inst_38_io_out_im)
  );
  ComplexDecode inst_39 ( // @[Modules.scala 56:22]
    .io_in_re(inst_39_io_in_re),
    .io_in_im(inst_39_io_in_im),
    .io_out_re(inst_39_io_out_re),
    .io_out_im(inst_39_io_out_im)
  );
  ComplexDecode inst_40 ( // @[Modules.scala 56:22]
    .io_in_re(inst_40_io_in_re),
    .io_in_im(inst_40_io_in_im),
    .io_out_re(inst_40_io_out_re),
    .io_out_im(inst_40_io_out_im)
  );
  ComplexDecode inst_41 ( // @[Modules.scala 56:22]
    .io_in_re(inst_41_io_in_re),
    .io_in_im(inst_41_io_in_im),
    .io_out_re(inst_41_io_out_re),
    .io_out_im(inst_41_io_out_im)
  );
  ComplexDecode inst_42 ( // @[Modules.scala 56:22]
    .io_in_re(inst_42_io_in_re),
    .io_in_im(inst_42_io_in_im),
    .io_out_re(inst_42_io_out_re),
    .io_out_im(inst_42_io_out_im)
  );
  ComplexDecode inst_43 ( // @[Modules.scala 56:22]
    .io_in_re(inst_43_io_in_re),
    .io_in_im(inst_43_io_in_im),
    .io_out_re(inst_43_io_out_re),
    .io_out_im(inst_43_io_out_im)
  );
  assign io_dOut_0_re = REG_4_re; // @[FFT.scala 181:13]
  assign io_dOut_0_im = REG_4_im; // @[FFT.scala 181:13]
  assign io_dOut_1_re = REG_5_re; // @[FFT.scala 181:13]
  assign io_dOut_1_im = REG_5_im; // @[FFT.scala 181:13]
  assign io_dOut_2_re = REG_6_re; // @[FFT.scala 181:13]
  assign io_dOut_2_im = REG_6_im; // @[FFT.scala 181:13]
  assign io_dOut_3_re = REG_7_re; // @[FFT.scala 181:13]
  assign io_dOut_3_im = REG_7_im; // @[FFT.scala 181:13]
  assign io_dOut_4_re = REG_8_re; // @[FFT.scala 181:13]
  assign io_dOut_4_im = REG_8_im; // @[FFT.scala 181:13]
  assign io_dOut_5_re = REG_9_re; // @[FFT.scala 181:13]
  assign io_dOut_5_im = REG_9_im; // @[FFT.scala 181:13]
  assign io_dOut_6_re = REG_10_re; // @[FFT.scala 181:13]
  assign io_dOut_6_im = REG_10_im; // @[FFT.scala 181:13]
  assign io_dOut_7_re = REG_11_re; // @[FFT.scala 181:13]
  assign io_dOut_7_im = REG_11_im; // @[FFT.scala 181:13]
  assign io_dOut_8_re = REG_12_re; // @[FFT.scala 181:13]
  assign io_dOut_8_im = REG_12_im; // @[FFT.scala 181:13]
  assign io_dOut_9_re = REG_13_re; // @[FFT.scala 181:13]
  assign io_dOut_9_im = REG_13_im; // @[FFT.scala 181:13]
  assign io_dOut_10_re = REG_14_re; // @[FFT.scala 181:13]
  assign io_dOut_10_im = REG_14_im; // @[FFT.scala 181:13]
  assign io_dOut_11_re = REG_15_re; // @[FFT.scala 181:13]
  assign io_dOut_11_im = REG_15_im; // @[FFT.scala 181:13]
  assign io_dOut_12_re = REG_16_re; // @[FFT.scala 181:13]
  assign io_dOut_12_im = REG_16_im; // @[FFT.scala 181:13]
  assign io_dOut_13_re = REG_17_re; // @[FFT.scala 181:13]
  assign io_dOut_13_im = REG_17_im; // @[FFT.scala 181:13]
  assign io_dOut_14_re = REG_18_re; // @[FFT.scala 181:13]
  assign io_dOut_14_im = REG_18_im; // @[FFT.scala 181:13]
  assign io_dOut_15_re = REG_19_re; // @[FFT.scala 181:13]
  assign io_dOut_15_im = REG_19_im; // @[FFT.scala 181:13]
  assign io_dout_valid = io_dout_valid_REG == 5'h4; // @[FFT.scala 179:36]
  assign io_busy = cnt_0 != 5'h0; // @[FFT.scala 114:21]
  assign inst_io_in_0_re = inst_12_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_io_in_0_im = inst_12_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_io_in_1_re = inst_13_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_io_in_1_im = inst_13_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_io_in_2_re = inst_14_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_io_in_2_im = inst_14_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_io_in_3_re = inst_15_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_io_in_3_im = inst_15_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_io_wn_0_re = 4'hf == _wnList_T[3:0] ? _wnList_res_re_T_127 : _GEN_15; // @[FFT.scala 104:{12,12}]
  assign inst_io_wn_0_im = 4'hf == _wnList_T[3:0] ? _wnList_res_im_T_127 : _GEN_31; // @[FFT.scala 105:{12,12}]
  assign inst_io_wn_1_re = 4'hf == _wnList_T[3:0] ? _wnList_res_im_T_119 : _GEN_47; // @[FFT.scala 104:{12,12}]
  assign inst_io_wn_1_im = 4'hf == _wnList_T[3:0] ? _wnList_res_im_T_23 : _GEN_63; // @[FFT.scala 105:{12,12}]
  assign inst_io_wn_2_re = 4'hf == _wnList_T[3:0] ? _wnList_res_im_T_31 : _GEN_79; // @[FFT.scala 104:{12,12}]
  assign inst_io_wn_2_im = 4'hf == _wnList_T[3:0] ? _wnList_res_re_T_31 : _GEN_95; // @[FFT.scala 105:{12,12}]
  assign inst_1_io_in_0_re = inst_16_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_1_io_in_0_im = inst_16_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_1_io_in_1_re = inst_17_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_1_io_in_1_im = inst_17_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_1_io_in_2_re = inst_18_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_1_io_in_2_im = inst_18_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_1_io_in_3_re = inst_19_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_1_io_in_3_im = inst_19_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_1_io_wn_0_re = 4'hf == _wnList_T_7[3:0] ? _wnList_res_re_T_127 : _GEN_111; // @[FFT.scala 104:{12,12}]
  assign inst_1_io_wn_0_im = 4'hf == _wnList_T_7[3:0] ? _wnList_res_im_T_127 : _GEN_127; // @[FFT.scala 105:{12,12}]
  assign inst_1_io_wn_1_re = 4'hf == _wnList_T_7[3:0] ? _wnList_res_im_T_119 : _GEN_143; // @[FFT.scala 104:{12,12}]
  assign inst_1_io_wn_1_im = 4'hf == _wnList_T_7[3:0] ? _wnList_res_im_T_23 : _GEN_159; // @[FFT.scala 105:{12,12}]
  assign inst_1_io_wn_2_re = 4'hf == _wnList_T_7[3:0] ? _wnList_res_im_T_31 : _GEN_175; // @[FFT.scala 104:{12,12}]
  assign inst_1_io_wn_2_im = 4'hf == _wnList_T_7[3:0] ? _wnList_res_re_T_31 : _GEN_191; // @[FFT.scala 105:{12,12}]
  assign inst_2_io_in_0_re = inst_20_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_2_io_in_0_im = inst_20_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_2_io_in_1_re = inst_21_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_2_io_in_1_im = inst_21_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_2_io_in_2_re = inst_22_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_2_io_in_2_im = inst_22_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_2_io_in_3_re = inst_23_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_2_io_in_3_im = inst_23_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_2_io_wn_0_re = 4'hf == _wnList_T_13[3:0] ? _wnList_res_re_T_127 : _GEN_207; // @[FFT.scala 104:{12,12}]
  assign inst_2_io_wn_0_im = 4'hf == _wnList_T_13[3:0] ? _wnList_res_im_T_127 : _GEN_223; // @[FFT.scala 105:{12,12}]
  assign inst_2_io_wn_1_re = 4'hf == _wnList_T_13[3:0] ? _wnList_res_im_T_119 : _GEN_239; // @[FFT.scala 104:{12,12}]
  assign inst_2_io_wn_1_im = 4'hf == _wnList_T_13[3:0] ? _wnList_res_im_T_23 : _GEN_255; // @[FFT.scala 105:{12,12}]
  assign inst_2_io_wn_2_re = 4'hf == _wnList_T_13[3:0] ? _wnList_res_im_T_31 : _GEN_271; // @[FFT.scala 104:{12,12}]
  assign inst_2_io_wn_2_im = 4'hf == _wnList_T_13[3:0] ? _wnList_res_re_T_31 : _GEN_287; // @[FFT.scala 105:{12,12}]
  assign inst_3_io_in_0_re = inst_24_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_3_io_in_0_im = inst_24_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_3_io_in_1_re = inst_25_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_3_io_in_1_im = inst_25_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_3_io_in_2_re = inst_26_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_3_io_in_2_im = inst_26_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_3_io_in_3_re = inst_27_io_out_re; // @[FFT.scala 122:65 170:19]
  assign inst_3_io_in_3_im = inst_27_io_out_im; // @[FFT.scala 122:65 170:19]
  assign inst_3_io_wn_0_re = 4'hf == _wnList_T_19[3:0] ? _wnList_res_re_T_127 : _GEN_303; // @[FFT.scala 104:{12,12}]
  assign inst_3_io_wn_0_im = 4'hf == _wnList_T_19[3:0] ? _wnList_res_im_T_127 : _GEN_319; // @[FFT.scala 105:{12,12}]
  assign inst_3_io_wn_1_re = 4'hf == _wnList_T_19[3:0] ? _wnList_res_im_T_119 : _GEN_335; // @[FFT.scala 104:{12,12}]
  assign inst_3_io_wn_1_im = 4'hf == _wnList_T_19[3:0] ? _wnList_res_im_T_23 : _GEN_351; // @[FFT.scala 105:{12,12}]
  assign inst_3_io_wn_2_re = 4'hf == _wnList_T_19[3:0] ? _wnList_res_im_T_31 : _GEN_367; // @[FFT.scala 104:{12,12}]
  assign inst_3_io_wn_2_im = 4'hf == _wnList_T_19[3:0] ? _wnList_res_re_T_31 : _GEN_383; // @[FFT.scala 105:{12,12}]
  assign inst_4_io_in_0_re = REG__0_re; // @[FFT.scala 122:65 157:57]
  assign inst_4_io_in_0_im = REG__0_im; // @[FFT.scala 122:65 157:57]
  assign inst_4_io_in_1_re = REG__1_re; // @[FFT.scala 122:65 157:57]
  assign inst_4_io_in_1_im = REG__1_im; // @[FFT.scala 122:65 157:57]
  assign inst_4_io_in_2_re = REG__2_re; // @[FFT.scala 122:65 157:57]
  assign inst_4_io_in_2_im = REG__2_im; // @[FFT.scala 122:65 157:57]
  assign inst_4_io_in_3_re = REG__3_re; // @[FFT.scala 122:65 157:57]
  assign inst_4_io_in_3_im = REG__3_im; // @[FFT.scala 122:65 157:57]
  assign inst_4_io_wn_0_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _GEN_387; // @[FFT.scala 104:{12,12}]
  assign inst_4_io_wn_0_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _GEN_391; // @[FFT.scala 105:{12,12}]
  assign inst_4_io_wn_1_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_395; // @[FFT.scala 104:{12,12}]
  assign inst_4_io_wn_1_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_399; // @[FFT.scala 105:{12,12}]
  assign inst_4_io_wn_2_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _GEN_403; // @[FFT.scala 104:{12,12}]
  assign inst_4_io_wn_2_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _GEN_407; // @[FFT.scala 105:{12,12}]
  assign inst_5_io_in_0_re = REG_1_0_re; // @[FFT.scala 122:65 157:57]
  assign inst_5_io_in_0_im = REG_1_0_im; // @[FFT.scala 122:65 157:57]
  assign inst_5_io_in_1_re = REG_1_1_re; // @[FFT.scala 122:65 157:57]
  assign inst_5_io_in_1_im = REG_1_1_im; // @[FFT.scala 122:65 157:57]
  assign inst_5_io_in_2_re = REG_1_2_re; // @[FFT.scala 122:65 157:57]
  assign inst_5_io_in_2_im = REG_1_2_im; // @[FFT.scala 122:65 157:57]
  assign inst_5_io_in_3_re = REG_1_3_re; // @[FFT.scala 122:65 157:57]
  assign inst_5_io_in_3_im = REG_1_3_im; // @[FFT.scala 122:65 157:57]
  assign inst_5_io_wn_0_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _GEN_387; // @[FFT.scala 104:{12,12}]
  assign inst_5_io_wn_0_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _GEN_391; // @[FFT.scala 105:{12,12}]
  assign inst_5_io_wn_1_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_395; // @[FFT.scala 104:{12,12}]
  assign inst_5_io_wn_1_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_399; // @[FFT.scala 105:{12,12}]
  assign inst_5_io_wn_2_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _GEN_403; // @[FFT.scala 104:{12,12}]
  assign inst_5_io_wn_2_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _GEN_407; // @[FFT.scala 105:{12,12}]
  assign inst_6_io_in_0_re = REG_2_0_re; // @[FFT.scala 122:65 157:57]
  assign inst_6_io_in_0_im = REG_2_0_im; // @[FFT.scala 122:65 157:57]
  assign inst_6_io_in_1_re = REG_2_1_re; // @[FFT.scala 122:65 157:57]
  assign inst_6_io_in_1_im = REG_2_1_im; // @[FFT.scala 122:65 157:57]
  assign inst_6_io_in_2_re = REG_2_2_re; // @[FFT.scala 122:65 157:57]
  assign inst_6_io_in_2_im = REG_2_2_im; // @[FFT.scala 122:65 157:57]
  assign inst_6_io_in_3_re = REG_2_3_re; // @[FFT.scala 122:65 157:57]
  assign inst_6_io_in_3_im = REG_2_3_im; // @[FFT.scala 122:65 157:57]
  assign inst_6_io_wn_0_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _GEN_387; // @[FFT.scala 104:{12,12}]
  assign inst_6_io_wn_0_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _GEN_391; // @[FFT.scala 105:{12,12}]
  assign inst_6_io_wn_1_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_395; // @[FFT.scala 104:{12,12}]
  assign inst_6_io_wn_1_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_399; // @[FFT.scala 105:{12,12}]
  assign inst_6_io_wn_2_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _GEN_403; // @[FFT.scala 104:{12,12}]
  assign inst_6_io_wn_2_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _GEN_407; // @[FFT.scala 105:{12,12}]
  assign inst_7_io_in_0_re = REG_3_0_re; // @[FFT.scala 122:65 157:57]
  assign inst_7_io_in_0_im = REG_3_0_im; // @[FFT.scala 122:65 157:57]
  assign inst_7_io_in_1_re = REG_3_1_re; // @[FFT.scala 122:65 157:57]
  assign inst_7_io_in_1_im = REG_3_1_im; // @[FFT.scala 122:65 157:57]
  assign inst_7_io_in_2_re = REG_3_2_re; // @[FFT.scala 122:65 157:57]
  assign inst_7_io_in_2_im = REG_3_2_im; // @[FFT.scala 122:65 157:57]
  assign inst_7_io_in_3_re = REG_3_3_re; // @[FFT.scala 122:65 157:57]
  assign inst_7_io_in_3_im = REG_3_3_im; // @[FFT.scala 122:65 157:57]
  assign inst_7_io_wn_0_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _GEN_387; // @[FFT.scala 104:{12,12}]
  assign inst_7_io_wn_0_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _GEN_391; // @[FFT.scala 105:{12,12}]
  assign inst_7_io_wn_1_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_395; // @[FFT.scala 104:{12,12}]
  assign inst_7_io_wn_1_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_71 : _GEN_399; // @[FFT.scala 105:{12,12}]
  assign inst_7_io_wn_2_re = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_im_T_103 : _GEN_403; // @[FFT.scala 104:{12,12}]
  assign inst_7_io_wn_2_im = 2'h3 == _wnList_T_24[1:0] ? _wnList_res_re_T_103 : _GEN_407; // @[FFT.scala 105:{12,12}]
  assign dataotemp_inst_io_in_0_re = inst_8_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_0_im = inst_8_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_1_re = inst_8_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_1_im = inst_8_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_2_re = inst_8_io_out_2_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_2_im = inst_8_io_out_2_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_3_re = inst_8_io_out_3_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_io_in_3_im = inst_8_io_out_3_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_0_re = inst_9_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_0_im = inst_9_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_1_re = inst_9_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_1_im = inst_9_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_2_re = inst_9_io_out_2_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_2_im = inst_9_io_out_2_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_3_re = inst_9_io_out_3_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_1_io_in_3_im = inst_9_io_out_3_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_2_io_in_0_re = inst_10_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_2_io_in_0_im = inst_10_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_2_io_in_1_re = inst_10_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_2_io_in_1_im = inst_10_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_2_io_in_2_re = inst_10_io_out_2_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_2_io_in_2_im = inst_10_io_out_2_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_2_io_in_3_re = inst_10_io_out_3_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_2_io_in_3_im = inst_10_io_out_3_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_3_io_in_0_re = inst_11_io_out_0_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_3_io_in_0_im = inst_11_io_out_0_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_3_io_in_1_re = inst_11_io_out_1_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_3_io_in_1_im = inst_11_io_out_1_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_3_io_in_2_re = inst_11_io_out_2_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_3_io_in_2_im = inst_11_io_out_2_im; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_3_io_in_3_re = inst_11_io_out_3_re; // @[FFT.scala 122:65 164:54]
  assign dataotemp_inst_3_io_in_3_im = inst_11_io_out_3_im; // @[FFT.scala 122:65 164:54]
  assign exdata_inst_io_in_0_0_re = inst_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_0_im = inst_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_1_re = inst_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_1_im = inst_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_2_re = inst_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_2_im = inst_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_3_re = inst_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_0_3_im = inst_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_0_re = inst_1_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_0_im = inst_1_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_1_re = inst_1_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_1_im = inst_1_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_2_re = inst_1_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_2_im = inst_1_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_3_re = inst_1_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_1_3_im = inst_1_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_2_0_re = inst_2_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_2_0_im = inst_2_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_2_1_re = inst_2_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_2_1_im = inst_2_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_2_2_re = inst_2_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_2_2_im = inst_2_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_2_3_re = inst_2_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_2_3_im = inst_2_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_3_0_re = inst_3_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_3_0_im = inst_3_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_3_1_re = inst_3_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_3_1_im = inst_3_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_3_2_re = inst_3_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_3_2_im = inst_3_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_3_3_re = inst_3_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign exdata_inst_io_in_3_3_im = inst_3_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign inst_8_clock = clock;
  assign inst_8_io_in_0_re = inst_4_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_8_io_in_0_im = inst_4_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_8_io_in_1_re = inst_4_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_8_io_in_1_im = inst_4_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_8_io_in_2_re = inst_4_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign inst_8_io_in_2_im = inst_4_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign inst_8_io_in_3_re = inst_4_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign inst_8_io_in_3_im = inst_4_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign inst_8_io_sel = cnt_1[1:0]; // @[FFT.scala 163:31]
  assign inst_9_clock = clock;
  assign inst_9_io_in_0_re = inst_5_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_9_io_in_0_im = inst_5_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_9_io_in_1_re = inst_5_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_9_io_in_1_im = inst_5_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_9_io_in_2_re = inst_5_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign inst_9_io_in_2_im = inst_5_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign inst_9_io_in_3_re = inst_5_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign inst_9_io_in_3_im = inst_5_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign inst_9_io_sel = cnt_1[1:0]; // @[FFT.scala 163:31]
  assign inst_10_clock = clock;
  assign inst_10_io_in_0_re = inst_6_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_0_im = inst_6_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_1_re = inst_6_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_1_im = inst_6_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_2_re = inst_6_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_2_im = inst_6_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_3_re = inst_6_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_in_3_im = inst_6_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign inst_10_io_sel = cnt_1[1:0]; // @[FFT.scala 163:31]
  assign inst_11_clock = clock;
  assign inst_11_io_in_0_re = inst_7_io_out_0_re; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_0_im = inst_7_io_out_0_im; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_1_re = inst_7_io_out_1_re; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_1_im = inst_7_io_out_1_im; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_2_re = inst_7_io_out_2_re; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_2_im = inst_7_io_out_2_im; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_3_re = inst_7_io_out_3_re; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_in_3_im = inst_7_io_out_3_im; // @[FFT.scala 123:69 136:19]
  assign inst_11_io_sel = cnt_1[1:0]; // @[FFT.scala 163:31]
  assign inst_12_io_in_re = _T_1[31:16]; // @[FFT.scala 170:91]
  assign inst_12_io_in_im = _T_1[15:0]; // @[FFT.scala 170:91]
  assign inst_13_io_in_re = _T_4[31:16]; // @[FFT.scala 170:91]
  assign inst_13_io_in_im = _T_4[15:0]; // @[FFT.scala 170:91]
  assign inst_14_io_in_re = _T_7[31:16]; // @[FFT.scala 170:91]
  assign inst_14_io_in_im = _T_7[15:0]; // @[FFT.scala 170:91]
  assign inst_15_io_in_re = _T_10[31:16]; // @[FFT.scala 170:91]
  assign inst_15_io_in_im = _T_10[15:0]; // @[FFT.scala 170:91]
  assign inst_16_io_in_re = _T_13[31:16]; // @[FFT.scala 170:91]
  assign inst_16_io_in_im = _T_13[15:0]; // @[FFT.scala 170:91]
  assign inst_17_io_in_re = _T_16[31:16]; // @[FFT.scala 170:91]
  assign inst_17_io_in_im = _T_16[15:0]; // @[FFT.scala 170:91]
  assign inst_18_io_in_re = _T_19[31:16]; // @[FFT.scala 170:91]
  assign inst_18_io_in_im = _T_19[15:0]; // @[FFT.scala 170:91]
  assign inst_19_io_in_re = _T_22[31:16]; // @[FFT.scala 170:91]
  assign inst_19_io_in_im = _T_22[15:0]; // @[FFT.scala 170:91]
  assign inst_20_io_in_re = _T_25[31:16]; // @[FFT.scala 170:91]
  assign inst_20_io_in_im = _T_25[15:0]; // @[FFT.scala 170:91]
  assign inst_21_io_in_re = _T_28[31:16]; // @[FFT.scala 170:91]
  assign inst_21_io_in_im = _T_28[15:0]; // @[FFT.scala 170:91]
  assign inst_22_io_in_re = _T_31[31:16]; // @[FFT.scala 170:91]
  assign inst_22_io_in_im = _T_31[15:0]; // @[FFT.scala 170:91]
  assign inst_23_io_in_re = _T_34[31:16]; // @[FFT.scala 170:91]
  assign inst_23_io_in_im = _T_34[15:0]; // @[FFT.scala 170:91]
  assign inst_24_io_in_re = _T_37[31:16]; // @[FFT.scala 170:91]
  assign inst_24_io_in_im = _T_37[15:0]; // @[FFT.scala 170:91]
  assign inst_25_io_in_re = _T_40[31:16]; // @[FFT.scala 170:91]
  assign inst_25_io_in_im = _T_40[15:0]; // @[FFT.scala 170:91]
  assign inst_26_io_in_re = _T_43[31:16]; // @[FFT.scala 170:91]
  assign inst_26_io_in_im = _T_43[15:0]; // @[FFT.scala 170:91]
  assign inst_27_io_in_re = _T_46[31:16]; // @[FFT.scala 170:91]
  assign inst_27_io_in_im = _T_46[15:0]; // @[FFT.scala 170:91]
  assign inst_28_io_in_re = _T_49[33:17]; // @[FFT.scala 181:96]
  assign inst_28_io_in_im = _T_49[16:0]; // @[FFT.scala 181:96]
  assign inst_29_io_in_re = _T_52[33:17]; // @[FFT.scala 181:96]
  assign inst_29_io_in_im = _T_52[16:0]; // @[FFT.scala 181:96]
  assign inst_30_io_in_re = _T_55[33:17]; // @[FFT.scala 181:96]
  assign inst_30_io_in_im = _T_55[16:0]; // @[FFT.scala 181:96]
  assign inst_31_io_in_re = _T_58[33:17]; // @[FFT.scala 181:96]
  assign inst_31_io_in_im = _T_58[16:0]; // @[FFT.scala 181:96]
  assign inst_32_io_in_re = _T_61[33:17]; // @[FFT.scala 181:96]
  assign inst_32_io_in_im = _T_61[16:0]; // @[FFT.scala 181:96]
  assign inst_33_io_in_re = _T_64[33:17]; // @[FFT.scala 181:96]
  assign inst_33_io_in_im = _T_64[16:0]; // @[FFT.scala 181:96]
  assign inst_34_io_in_re = _T_67[33:17]; // @[FFT.scala 181:96]
  assign inst_34_io_in_im = _T_67[16:0]; // @[FFT.scala 181:96]
  assign inst_35_io_in_re = _T_70[33:17]; // @[FFT.scala 181:96]
  assign inst_35_io_in_im = _T_70[16:0]; // @[FFT.scala 181:96]
  assign inst_36_io_in_re = _T_73[33:17]; // @[FFT.scala 181:96]
  assign inst_36_io_in_im = _T_73[16:0]; // @[FFT.scala 181:96]
  assign inst_37_io_in_re = _T_76[33:17]; // @[FFT.scala 181:96]
  assign inst_37_io_in_im = _T_76[16:0]; // @[FFT.scala 181:96]
  assign inst_38_io_in_re = _T_79[33:17]; // @[FFT.scala 181:96]
  assign inst_38_io_in_im = _T_79[16:0]; // @[FFT.scala 181:96]
  assign inst_39_io_in_re = _T_82[33:17]; // @[FFT.scala 181:96]
  assign inst_39_io_in_im = _T_82[16:0]; // @[FFT.scala 181:96]
  assign inst_40_io_in_re = _T_85[33:17]; // @[FFT.scala 181:96]
  assign inst_40_io_in_im = _T_85[16:0]; // @[FFT.scala 181:96]
  assign inst_41_io_in_re = _T_88[33:17]; // @[FFT.scala 181:96]
  assign inst_41_io_in_im = _T_88[16:0]; // @[FFT.scala 181:96]
  assign inst_42_io_in_re = _T_91[33:17]; // @[FFT.scala 181:96]
  assign inst_42_io_in_im = _T_91[16:0]; // @[FFT.scala 181:96]
  assign inst_43_io_in_re = _T_94[33:17]; // @[FFT.scala 181:96]
  assign inst_43_io_in_im = _T_94[16:0]; // @[FFT.scala 181:96]
  always @(posedge clock) begin
    if (reset) begin // @[FFT.scala 110:46]
      cnt_0 <= 5'h0; // @[FFT.scala 110:46]
    end else if (io_din_valid | busy) begin // @[FFT.scala 115:30]
      if (cnt_0 == 5'h8) begin // @[FFT.scala 116:18]
        cnt_0 <= 5'h0;
      end else begin
        cnt_0 <= _cnt_0_T_2;
      end
    end
    if (reset) begin // @[FFT.scala 110:46]
      cnt_1 <= 5'h0; // @[FFT.scala 110:46]
    end else begin
      cnt_1 <= cnt_0; // @[FFT.scala 112:16]
    end
    REG__0_re <= exdata_inst_io_out_0_0_re; // @[FFT.scala 157:67]
    REG__0_im <= exdata_inst_io_out_0_0_im; // @[FFT.scala 157:67]
    REG__1_re <= exdata_inst_io_out_0_1_re; // @[FFT.scala 157:67]
    REG__1_im <= exdata_inst_io_out_0_1_im; // @[FFT.scala 157:67]
    REG__2_re <= exdata_inst_io_out_0_2_re; // @[FFT.scala 157:67]
    REG__2_im <= exdata_inst_io_out_0_2_im; // @[FFT.scala 157:67]
    REG__3_re <= exdata_inst_io_out_0_3_re; // @[FFT.scala 157:67]
    REG__3_im <= exdata_inst_io_out_0_3_im; // @[FFT.scala 157:67]
    REG_1_0_re <= exdata_inst_io_out_1_0_re; // @[FFT.scala 157:67]
    REG_1_0_im <= exdata_inst_io_out_1_0_im; // @[FFT.scala 157:67]
    REG_1_1_re <= exdata_inst_io_out_1_1_re; // @[FFT.scala 157:67]
    REG_1_1_im <= exdata_inst_io_out_1_1_im; // @[FFT.scala 157:67]
    REG_1_2_re <= exdata_inst_io_out_1_2_re; // @[FFT.scala 157:67]
    REG_1_2_im <= exdata_inst_io_out_1_2_im; // @[FFT.scala 157:67]
    REG_1_3_re <= exdata_inst_io_out_1_3_re; // @[FFT.scala 157:67]
    REG_1_3_im <= exdata_inst_io_out_1_3_im; // @[FFT.scala 157:67]
    REG_2_0_re <= exdata_inst_io_out_2_0_re; // @[FFT.scala 157:67]
    REG_2_0_im <= exdata_inst_io_out_2_0_im; // @[FFT.scala 157:67]
    REG_2_1_re <= exdata_inst_io_out_2_1_re; // @[FFT.scala 157:67]
    REG_2_1_im <= exdata_inst_io_out_2_1_im; // @[FFT.scala 157:67]
    REG_2_2_re <= exdata_inst_io_out_2_2_re; // @[FFT.scala 157:67]
    REG_2_2_im <= exdata_inst_io_out_2_2_im; // @[FFT.scala 157:67]
    REG_2_3_re <= exdata_inst_io_out_2_3_re; // @[FFT.scala 157:67]
    REG_2_3_im <= exdata_inst_io_out_2_3_im; // @[FFT.scala 157:67]
    REG_3_0_re <= exdata_inst_io_out_3_0_re; // @[FFT.scala 157:67]
    REG_3_0_im <= exdata_inst_io_out_3_0_im; // @[FFT.scala 157:67]
    REG_3_1_re <= exdata_inst_io_out_3_1_re; // @[FFT.scala 157:67]
    REG_3_1_im <= exdata_inst_io_out_3_1_im; // @[FFT.scala 157:67]
    REG_3_2_re <= exdata_inst_io_out_3_2_re; // @[FFT.scala 157:67]
    REG_3_2_im <= exdata_inst_io_out_3_2_im; // @[FFT.scala 157:67]
    REG_3_3_re <= exdata_inst_io_out_3_3_re; // @[FFT.scala 157:67]
    REG_3_3_im <= exdata_inst_io_out_3_3_im; // @[FFT.scala 157:67]
    io_dout_valid_REG <= cnt_0; // @[FFT.scala 179:27]
    REG_4_re <= inst_28_io_out_re; // @[FFT.scala 181:64]
    REG_4_im <= inst_28_io_out_im; // @[FFT.scala 181:64]
    REG_5_re <= inst_29_io_out_re; // @[FFT.scala 181:64]
    REG_5_im <= inst_29_io_out_im; // @[FFT.scala 181:64]
    REG_6_re <= inst_30_io_out_re; // @[FFT.scala 181:64]
    REG_6_im <= inst_30_io_out_im; // @[FFT.scala 181:64]
    REG_7_re <= inst_31_io_out_re; // @[FFT.scala 181:64]
    REG_7_im <= inst_31_io_out_im; // @[FFT.scala 181:64]
    REG_8_re <= inst_32_io_out_re; // @[FFT.scala 181:64]
    REG_8_im <= inst_32_io_out_im; // @[FFT.scala 181:64]
    REG_9_re <= inst_33_io_out_re; // @[FFT.scala 181:64]
    REG_9_im <= inst_33_io_out_im; // @[FFT.scala 181:64]
    REG_10_re <= inst_34_io_out_re; // @[FFT.scala 181:64]
    REG_10_im <= inst_34_io_out_im; // @[FFT.scala 181:64]
    REG_11_re <= inst_35_io_out_re; // @[FFT.scala 181:64]
    REG_11_im <= inst_35_io_out_im; // @[FFT.scala 181:64]
    REG_12_re <= inst_36_io_out_re; // @[FFT.scala 181:64]
    REG_12_im <= inst_36_io_out_im; // @[FFT.scala 181:64]
    REG_13_re <= inst_37_io_out_re; // @[FFT.scala 181:64]
    REG_13_im <= inst_37_io_out_im; // @[FFT.scala 181:64]
    REG_14_re <= inst_38_io_out_re; // @[FFT.scala 181:64]
    REG_14_im <= inst_38_io_out_im; // @[FFT.scala 181:64]
    REG_15_re <= inst_39_io_out_re; // @[FFT.scala 181:64]
    REG_15_im <= inst_39_io_out_im; // @[FFT.scala 181:64]
    REG_16_re <= inst_40_io_out_re; // @[FFT.scala 181:64]
    REG_16_im <= inst_40_io_out_im; // @[FFT.scala 181:64]
    REG_17_re <= inst_41_io_out_re; // @[FFT.scala 181:64]
    REG_17_im <= inst_41_io_out_im; // @[FFT.scala 181:64]
    REG_18_re <= inst_42_io_out_re; // @[FFT.scala 181:64]
    REG_18_im <= inst_42_io_out_im; // @[FFT.scala 181:64]
    REG_19_re <= inst_43_io_out_re; // @[FFT.scala 181:64]
    REG_19_im <= inst_43_io_out_im; // @[FFT.scala 181:64]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cnt_0 = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  cnt_1 = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  REG__0_re = _RAND_2[16:0];
  _RAND_3 = {1{`RANDOM}};
  REG__0_im = _RAND_3[16:0];
  _RAND_4 = {1{`RANDOM}};
  REG__1_re = _RAND_4[16:0];
  _RAND_5 = {1{`RANDOM}};
  REG__1_im = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  REG__2_re = _RAND_6[16:0];
  _RAND_7 = {1{`RANDOM}};
  REG__2_im = _RAND_7[16:0];
  _RAND_8 = {1{`RANDOM}};
  REG__3_re = _RAND_8[16:0];
  _RAND_9 = {1{`RANDOM}};
  REG__3_im = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  REG_1_0_re = _RAND_10[16:0];
  _RAND_11 = {1{`RANDOM}};
  REG_1_0_im = _RAND_11[16:0];
  _RAND_12 = {1{`RANDOM}};
  REG_1_1_re = _RAND_12[16:0];
  _RAND_13 = {1{`RANDOM}};
  REG_1_1_im = _RAND_13[16:0];
  _RAND_14 = {1{`RANDOM}};
  REG_1_2_re = _RAND_14[16:0];
  _RAND_15 = {1{`RANDOM}};
  REG_1_2_im = _RAND_15[16:0];
  _RAND_16 = {1{`RANDOM}};
  REG_1_3_re = _RAND_16[16:0];
  _RAND_17 = {1{`RANDOM}};
  REG_1_3_im = _RAND_17[16:0];
  _RAND_18 = {1{`RANDOM}};
  REG_2_0_re = _RAND_18[16:0];
  _RAND_19 = {1{`RANDOM}};
  REG_2_0_im = _RAND_19[16:0];
  _RAND_20 = {1{`RANDOM}};
  REG_2_1_re = _RAND_20[16:0];
  _RAND_21 = {1{`RANDOM}};
  REG_2_1_im = _RAND_21[16:0];
  _RAND_22 = {1{`RANDOM}};
  REG_2_2_re = _RAND_22[16:0];
  _RAND_23 = {1{`RANDOM}};
  REG_2_2_im = _RAND_23[16:0];
  _RAND_24 = {1{`RANDOM}};
  REG_2_3_re = _RAND_24[16:0];
  _RAND_25 = {1{`RANDOM}};
  REG_2_3_im = _RAND_25[16:0];
  _RAND_26 = {1{`RANDOM}};
  REG_3_0_re = _RAND_26[16:0];
  _RAND_27 = {1{`RANDOM}};
  REG_3_0_im = _RAND_27[16:0];
  _RAND_28 = {1{`RANDOM}};
  REG_3_1_re = _RAND_28[16:0];
  _RAND_29 = {1{`RANDOM}};
  REG_3_1_im = _RAND_29[16:0];
  _RAND_30 = {1{`RANDOM}};
  REG_3_2_re = _RAND_30[16:0];
  _RAND_31 = {1{`RANDOM}};
  REG_3_2_im = _RAND_31[16:0];
  _RAND_32 = {1{`RANDOM}};
  REG_3_3_re = _RAND_32[16:0];
  _RAND_33 = {1{`RANDOM}};
  REG_3_3_im = _RAND_33[16:0];
  _RAND_34 = {1{`RANDOM}};
  io_dout_valid_REG = _RAND_34[4:0];
  _RAND_35 = {1{`RANDOM}};
  REG_4_re = _RAND_35[15:0];
  _RAND_36 = {1{`RANDOM}};
  REG_4_im = _RAND_36[15:0];
  _RAND_37 = {1{`RANDOM}};
  REG_5_re = _RAND_37[15:0];
  _RAND_38 = {1{`RANDOM}};
  REG_5_im = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  REG_6_re = _RAND_39[15:0];
  _RAND_40 = {1{`RANDOM}};
  REG_6_im = _RAND_40[15:0];
  _RAND_41 = {1{`RANDOM}};
  REG_7_re = _RAND_41[15:0];
  _RAND_42 = {1{`RANDOM}};
  REG_7_im = _RAND_42[15:0];
  _RAND_43 = {1{`RANDOM}};
  REG_8_re = _RAND_43[15:0];
  _RAND_44 = {1{`RANDOM}};
  REG_8_im = _RAND_44[15:0];
  _RAND_45 = {1{`RANDOM}};
  REG_9_re = _RAND_45[15:0];
  _RAND_46 = {1{`RANDOM}};
  REG_9_im = _RAND_46[15:0];
  _RAND_47 = {1{`RANDOM}};
  REG_10_re = _RAND_47[15:0];
  _RAND_48 = {1{`RANDOM}};
  REG_10_im = _RAND_48[15:0];
  _RAND_49 = {1{`RANDOM}};
  REG_11_re = _RAND_49[15:0];
  _RAND_50 = {1{`RANDOM}};
  REG_11_im = _RAND_50[15:0];
  _RAND_51 = {1{`RANDOM}};
  REG_12_re = _RAND_51[15:0];
  _RAND_52 = {1{`RANDOM}};
  REG_12_im = _RAND_52[15:0];
  _RAND_53 = {1{`RANDOM}};
  REG_13_re = _RAND_53[15:0];
  _RAND_54 = {1{`RANDOM}};
  REG_13_im = _RAND_54[15:0];
  _RAND_55 = {1{`RANDOM}};
  REG_14_re = _RAND_55[15:0];
  _RAND_56 = {1{`RANDOM}};
  REG_14_im = _RAND_56[15:0];
  _RAND_57 = {1{`RANDOM}};
  REG_15_re = _RAND_57[15:0];
  _RAND_58 = {1{`RANDOM}};
  REG_15_im = _RAND_58[15:0];
  _RAND_59 = {1{`RANDOM}};
  REG_16_re = _RAND_59[15:0];
  _RAND_60 = {1{`RANDOM}};
  REG_16_im = _RAND_60[15:0];
  _RAND_61 = {1{`RANDOM}};
  REG_17_re = _RAND_61[15:0];
  _RAND_62 = {1{`RANDOM}};
  REG_17_im = _RAND_62[15:0];
  _RAND_63 = {1{`RANDOM}};
  REG_18_re = _RAND_63[15:0];
  _RAND_64 = {1{`RANDOM}};
  REG_18_im = _RAND_64[15:0];
  _RAND_65 = {1{`RANDOM}};
  REG_19_re = _RAND_65[15:0];
  _RAND_66 = {1{`RANDOM}};
  REG_19_im = _RAND_66[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FFTtop(
  input         clock,
  input         reset,
  input  [15:0] io_dIn_0_re,
  input  [15:0] io_dIn_0_im,
  input  [15:0] io_dIn_1_re,
  input  [15:0] io_dIn_1_im,
  input  [15:0] io_dIn_2_re,
  input  [15:0] io_dIn_2_im,
  input  [15:0] io_dIn_3_re,
  input  [15:0] io_dIn_3_im,
  input  [15:0] io_dIn_4_re,
  input  [15:0] io_dIn_4_im,
  input  [15:0] io_dIn_5_re,
  input  [15:0] io_dIn_5_im,
  input  [15:0] io_dIn_6_re,
  input  [15:0] io_dIn_6_im,
  input  [15:0] io_dIn_7_re,
  input  [15:0] io_dIn_7_im,
  input  [15:0] io_dIn_8_re,
  input  [15:0] io_dIn_8_im,
  input  [15:0] io_dIn_9_re,
  input  [15:0] io_dIn_9_im,
  input  [15:0] io_dIn_10_re,
  input  [15:0] io_dIn_10_im,
  input  [15:0] io_dIn_11_re,
  input  [15:0] io_dIn_11_im,
  input  [15:0] io_dIn_12_re,
  input  [15:0] io_dIn_12_im,
  input  [15:0] io_dIn_13_re,
  input  [15:0] io_dIn_13_im,
  input  [15:0] io_dIn_14_re,
  input  [15:0] io_dIn_14_im,
  input  [15:0] io_dIn_15_re,
  input  [15:0] io_dIn_15_im,
  output [15:0] io_dOut_0_re,
  output [15:0] io_dOut_0_im,
  output [15:0] io_dOut_1_re,
  output [15:0] io_dOut_1_im,
  output [15:0] io_dOut_2_re,
  output [15:0] io_dOut_2_im,
  output [15:0] io_dOut_3_re,
  output [15:0] io_dOut_3_im,
  output [15:0] io_dOut_4_re,
  output [15:0] io_dOut_4_im,
  output [15:0] io_dOut_5_re,
  output [15:0] io_dOut_5_im,
  output [15:0] io_dOut_6_re,
  output [15:0] io_dOut_6_im,
  output [15:0] io_dOut_7_re,
  output [15:0] io_dOut_7_im,
  output [15:0] io_dOut_8_re,
  output [15:0] io_dOut_8_im,
  output [15:0] io_dOut_9_re,
  output [15:0] io_dOut_9_im,
  output [15:0] io_dOut_10_re,
  output [15:0] io_dOut_10_im,
  output [15:0] io_dOut_11_re,
  output [15:0] io_dOut_11_im,
  output [15:0] io_dOut_12_re,
  output [15:0] io_dOut_12_im,
  output [15:0] io_dOut_13_re,
  output [15:0] io_dOut_13_im,
  output [15:0] io_dOut_14_re,
  output [15:0] io_dOut_14_im,
  output [15:0] io_dOut_15_re,
  output [15:0] io_dOut_15_im,
  input         io_din_valid,
  output        io_dout_valid,
  output        io_busy
);
  wire  fft_clock; // @[Top.scala 15:19]
  wire  fft_reset; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_0_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_0_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_1_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_1_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_2_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_2_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_3_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_3_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_4_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_4_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_5_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_5_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_6_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_6_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_7_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_7_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_8_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_8_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_9_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_9_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_10_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_10_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_11_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_11_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_12_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_12_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_13_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_13_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_14_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_14_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_15_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dIn_15_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_0_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_0_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_1_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_1_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_2_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_2_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_3_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_3_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_4_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_4_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_5_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_5_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_6_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_6_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_7_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_7_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_8_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_8_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_9_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_9_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_10_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_10_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_11_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_11_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_12_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_12_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_13_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_13_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_14_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_14_im; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_15_re; // @[Top.scala 15:19]
  wire [15:0] fft_io_dOut_15_im; // @[Top.scala 15:19]
  wire  fft_io_din_valid; // @[Top.scala 15:19]
  wire  fft_io_dout_valid; // @[Top.scala 15:19]
  wire  fft_io_busy; // @[Top.scala 15:19]
  FFT fft ( // @[Top.scala 15:19]
    .clock(fft_clock),
    .reset(fft_reset),
    .io_dIn_0_re(fft_io_dIn_0_re),
    .io_dIn_0_im(fft_io_dIn_0_im),
    .io_dIn_1_re(fft_io_dIn_1_re),
    .io_dIn_1_im(fft_io_dIn_1_im),
    .io_dIn_2_re(fft_io_dIn_2_re),
    .io_dIn_2_im(fft_io_dIn_2_im),
    .io_dIn_3_re(fft_io_dIn_3_re),
    .io_dIn_3_im(fft_io_dIn_3_im),
    .io_dIn_4_re(fft_io_dIn_4_re),
    .io_dIn_4_im(fft_io_dIn_4_im),
    .io_dIn_5_re(fft_io_dIn_5_re),
    .io_dIn_5_im(fft_io_dIn_5_im),
    .io_dIn_6_re(fft_io_dIn_6_re),
    .io_dIn_6_im(fft_io_dIn_6_im),
    .io_dIn_7_re(fft_io_dIn_7_re),
    .io_dIn_7_im(fft_io_dIn_7_im),
    .io_dIn_8_re(fft_io_dIn_8_re),
    .io_dIn_8_im(fft_io_dIn_8_im),
    .io_dIn_9_re(fft_io_dIn_9_re),
    .io_dIn_9_im(fft_io_dIn_9_im),
    .io_dIn_10_re(fft_io_dIn_10_re),
    .io_dIn_10_im(fft_io_dIn_10_im),
    .io_dIn_11_re(fft_io_dIn_11_re),
    .io_dIn_11_im(fft_io_dIn_11_im),
    .io_dIn_12_re(fft_io_dIn_12_re),
    .io_dIn_12_im(fft_io_dIn_12_im),
    .io_dIn_13_re(fft_io_dIn_13_re),
    .io_dIn_13_im(fft_io_dIn_13_im),
    .io_dIn_14_re(fft_io_dIn_14_re),
    .io_dIn_14_im(fft_io_dIn_14_im),
    .io_dIn_15_re(fft_io_dIn_15_re),
    .io_dIn_15_im(fft_io_dIn_15_im),
    .io_dOut_0_re(fft_io_dOut_0_re),
    .io_dOut_0_im(fft_io_dOut_0_im),
    .io_dOut_1_re(fft_io_dOut_1_re),
    .io_dOut_1_im(fft_io_dOut_1_im),
    .io_dOut_2_re(fft_io_dOut_2_re),
    .io_dOut_2_im(fft_io_dOut_2_im),
    .io_dOut_3_re(fft_io_dOut_3_re),
    .io_dOut_3_im(fft_io_dOut_3_im),
    .io_dOut_4_re(fft_io_dOut_4_re),
    .io_dOut_4_im(fft_io_dOut_4_im),
    .io_dOut_5_re(fft_io_dOut_5_re),
    .io_dOut_5_im(fft_io_dOut_5_im),
    .io_dOut_6_re(fft_io_dOut_6_re),
    .io_dOut_6_im(fft_io_dOut_6_im),
    .io_dOut_7_re(fft_io_dOut_7_re),
    .io_dOut_7_im(fft_io_dOut_7_im),
    .io_dOut_8_re(fft_io_dOut_8_re),
    .io_dOut_8_im(fft_io_dOut_8_im),
    .io_dOut_9_re(fft_io_dOut_9_re),
    .io_dOut_9_im(fft_io_dOut_9_im),
    .io_dOut_10_re(fft_io_dOut_10_re),
    .io_dOut_10_im(fft_io_dOut_10_im),
    .io_dOut_11_re(fft_io_dOut_11_re),
    .io_dOut_11_im(fft_io_dOut_11_im),
    .io_dOut_12_re(fft_io_dOut_12_re),
    .io_dOut_12_im(fft_io_dOut_12_im),
    .io_dOut_13_re(fft_io_dOut_13_re),
    .io_dOut_13_im(fft_io_dOut_13_im),
    .io_dOut_14_re(fft_io_dOut_14_re),
    .io_dOut_14_im(fft_io_dOut_14_im),
    .io_dOut_15_re(fft_io_dOut_15_re),
    .io_dOut_15_im(fft_io_dOut_15_im),
    .io_din_valid(fft_io_din_valid),
    .io_dout_valid(fft_io_dout_valid),
    .io_busy(fft_io_busy)
  );
  assign io_dOut_0_re = fft_io_dOut_0_re; // @[Top.scala 27:13]
  assign io_dOut_0_im = fft_io_dOut_0_im; // @[Top.scala 27:13]
  assign io_dOut_1_re = fft_io_dOut_1_re; // @[Top.scala 27:13]
  assign io_dOut_1_im = fft_io_dOut_1_im; // @[Top.scala 27:13]
  assign io_dOut_2_re = fft_io_dOut_2_re; // @[Top.scala 27:13]
  assign io_dOut_2_im = fft_io_dOut_2_im; // @[Top.scala 27:13]
  assign io_dOut_3_re = fft_io_dOut_3_re; // @[Top.scala 27:13]
  assign io_dOut_3_im = fft_io_dOut_3_im; // @[Top.scala 27:13]
  assign io_dOut_4_re = fft_io_dOut_4_re; // @[Top.scala 27:13]
  assign io_dOut_4_im = fft_io_dOut_4_im; // @[Top.scala 27:13]
  assign io_dOut_5_re = fft_io_dOut_5_re; // @[Top.scala 27:13]
  assign io_dOut_5_im = fft_io_dOut_5_im; // @[Top.scala 27:13]
  assign io_dOut_6_re = fft_io_dOut_6_re; // @[Top.scala 27:13]
  assign io_dOut_6_im = fft_io_dOut_6_im; // @[Top.scala 27:13]
  assign io_dOut_7_re = fft_io_dOut_7_re; // @[Top.scala 27:13]
  assign io_dOut_7_im = fft_io_dOut_7_im; // @[Top.scala 27:13]
  assign io_dOut_8_re = fft_io_dOut_8_re; // @[Top.scala 27:13]
  assign io_dOut_8_im = fft_io_dOut_8_im; // @[Top.scala 27:13]
  assign io_dOut_9_re = fft_io_dOut_9_re; // @[Top.scala 27:13]
  assign io_dOut_9_im = fft_io_dOut_9_im; // @[Top.scala 27:13]
  assign io_dOut_10_re = fft_io_dOut_10_re; // @[Top.scala 27:13]
  assign io_dOut_10_im = fft_io_dOut_10_im; // @[Top.scala 27:13]
  assign io_dOut_11_re = fft_io_dOut_11_re; // @[Top.scala 27:13]
  assign io_dOut_11_im = fft_io_dOut_11_im; // @[Top.scala 27:13]
  assign io_dOut_12_re = fft_io_dOut_12_re; // @[Top.scala 27:13]
  assign io_dOut_12_im = fft_io_dOut_12_im; // @[Top.scala 27:13]
  assign io_dOut_13_re = fft_io_dOut_13_re; // @[Top.scala 27:13]
  assign io_dOut_13_im = fft_io_dOut_13_im; // @[Top.scala 27:13]
  assign io_dOut_14_re = fft_io_dOut_14_re; // @[Top.scala 27:13]
  assign io_dOut_14_im = fft_io_dOut_14_im; // @[Top.scala 27:13]
  assign io_dOut_15_re = fft_io_dOut_15_re; // @[Top.scala 27:13]
  assign io_dOut_15_im = fft_io_dOut_15_im; // @[Top.scala 27:13]
  assign io_dout_valid = fft_io_dout_valid; // @[Top.scala 28:19]
  assign io_busy = fft_io_busy; // @[Top.scala 29:13]
  assign fft_clock = clock;
  assign fft_reset = reset;
  assign fft_io_dIn_0_re = io_dIn_0_re; // @[Top.scala 16:14]
  assign fft_io_dIn_0_im = io_dIn_0_im; // @[Top.scala 16:14]
  assign fft_io_dIn_1_re = io_dIn_1_re; // @[Top.scala 16:14]
  assign fft_io_dIn_1_im = io_dIn_1_im; // @[Top.scala 16:14]
  assign fft_io_dIn_2_re = io_dIn_2_re; // @[Top.scala 16:14]
  assign fft_io_dIn_2_im = io_dIn_2_im; // @[Top.scala 16:14]
  assign fft_io_dIn_3_re = io_dIn_3_re; // @[Top.scala 16:14]
  assign fft_io_dIn_3_im = io_dIn_3_im; // @[Top.scala 16:14]
  assign fft_io_dIn_4_re = io_dIn_4_re; // @[Top.scala 16:14]
  assign fft_io_dIn_4_im = io_dIn_4_im; // @[Top.scala 16:14]
  assign fft_io_dIn_5_re = io_dIn_5_re; // @[Top.scala 16:14]
  assign fft_io_dIn_5_im = io_dIn_5_im; // @[Top.scala 16:14]
  assign fft_io_dIn_6_re = io_dIn_6_re; // @[Top.scala 16:14]
  assign fft_io_dIn_6_im = io_dIn_6_im; // @[Top.scala 16:14]
  assign fft_io_dIn_7_re = io_dIn_7_re; // @[Top.scala 16:14]
  assign fft_io_dIn_7_im = io_dIn_7_im; // @[Top.scala 16:14]
  assign fft_io_dIn_8_re = io_dIn_8_re; // @[Top.scala 16:14]
  assign fft_io_dIn_8_im = io_dIn_8_im; // @[Top.scala 16:14]
  assign fft_io_dIn_9_re = io_dIn_9_re; // @[Top.scala 16:14]
  assign fft_io_dIn_9_im = io_dIn_9_im; // @[Top.scala 16:14]
  assign fft_io_dIn_10_re = io_dIn_10_re; // @[Top.scala 16:14]
  assign fft_io_dIn_10_im = io_dIn_10_im; // @[Top.scala 16:14]
  assign fft_io_dIn_11_re = io_dIn_11_re; // @[Top.scala 16:14]
  assign fft_io_dIn_11_im = io_dIn_11_im; // @[Top.scala 16:14]
  assign fft_io_dIn_12_re = io_dIn_12_re; // @[Top.scala 16:14]
  assign fft_io_dIn_12_im = io_dIn_12_im; // @[Top.scala 16:14]
  assign fft_io_dIn_13_re = io_dIn_13_re; // @[Top.scala 16:14]
  assign fft_io_dIn_13_im = io_dIn_13_im; // @[Top.scala 16:14]
  assign fft_io_dIn_14_re = io_dIn_14_re; // @[Top.scala 16:14]
  assign fft_io_dIn_14_im = io_dIn_14_im; // @[Top.scala 16:14]
  assign fft_io_dIn_15_re = io_dIn_15_re; // @[Top.scala 16:14]
  assign fft_io_dIn_15_im = io_dIn_15_im; // @[Top.scala 16:14]
  assign fft_io_din_valid = io_din_valid; // @[Top.scala 17:20]
endmodule
