import Erdos848.TailGlobalMixedEvenSupportCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0000
import Mathlib.Tactic

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def probeNormalLookup (p : Nat) : List Nat :=
  if p <= 61 then
    GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000 p else []

def probeTwistLookup (p : Nat) : List Nat :=
  if p <= 61 then
    GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000 p else []

def probeNormalWords :=
  globalMixedCoreSupportWordPair probeNormalLookup [3, 7]
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)

def probeCountWordsByte : List Nat -> Nat
  | [] => 0
  | word :: words =>
      globalMixedCoreWordCountAux word 8 + probeCountWordsByte words

def probeRestrictedCountByte (supportWords valuationWords : List Nat) : Nat :=
  probeCountWordsByte (globalMixedCoreIntersectWords supportWords valuationWords)

def probeExpectedWords : List Nat :=
  [68719476736, 0, 0, 1152921504606846977, 1048576, 4503599627436032, 0, 256,
    0, 68719476736, 72057598332895232, 4503599627370496, 16777216,
    17592186044416, 0, 0, 256, 268435472, 1152921504623624192, 0, 65536, 0,
    17592186044416, 1099511627776, 1152921504606846977, 4294967296,
    4503599627370496, 0, 0, 65536, 68719480832, 4294967296, 16, 16777216, 0,
    4503599627370496, 281474976710656, 256, 1099511627792,
    1152921504606846976, 0, 0, 16777216, 17592187092992, 1099511627776, 4096,
    4294967296, 0]

def probeBitVecCount : List (BitVec 64) -> BitVec 64
  | [] => 0
  | word :: words => word.cpop + probeBitVecCount words

def probeBitVecIntersect : List (BitVec 64) -> List (BitVec 64) -> List (BitVec 64)
  | left :: lefts, right :: rights =>
      (left &&& right) :: probeBitVecIntersect lefts rights
  | _, _ => []

def probeBitVecSupportWords
    (lookup : Nat -> List Nat) : List Nat -> List Nat -> List (BitVec 64)
  | [], cosetWords => cosetWords.map (BitVec.ofNat 64)
  | p :: support, cosetWords =>
      probeBitVecIntersect ((lookup p).map (BitVec.ofNat 64))
        (probeBitVecSupportWords lookup support cosetWords)

def probeBitVecRestrictedCount
    (supportWords valuationWords : List (BitVec 64)) : BitVec 64 :=
  probeBitVecCount (probeBitVecIntersect supportWords valuationWords)

theorem probe_bitvec_counts_full :
    (probeBitVecRestrictedCount
        (probeBitVecSupportWords probeNormalLookup [3, 7]
          (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false))
        ((GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords .two).map
          (BitVec.ofNat 64)),
      probeBitVecRestrictedCount
        (probeBitVecSupportWords probeNormalLookup [3, 7]
          (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true))
        ((GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords .two).map
          (BitVec.ofNat 64)),
      probeBitVecRestrictedCount
        (probeBitVecSupportWords probeTwistLookup [3, 7]
          (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false))
        ((GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords .two).map
          (BitVec.ofNat 64)),
      probeBitVecRestrictedCount
        (probeBitVecSupportWords probeTwistLookup [3, 7]
          (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true))
        ((GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords .two).map
          (BitVec.ofNat 64)),
      probeBitVecRestrictedCount
        (probeBitVecSupportWords probeNormalLookup [3, 7]
          (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false))
        ((GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords .three).map
          (BitVec.ofNat 64)),
      probeBitVecRestrictedCount
        (probeBitVecSupportWords probeNormalLookup [3, 7]
          (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true))
        ((GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords .three).map
          (BitVec.ofNat 64)),
      probeBitVecRestrictedCount
        (probeBitVecSupportWords probeTwistLookup [3, 7]
          (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false))
        ((GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords .three).map
          (BitVec.ofNat 64)),
      probeBitVecRestrictedCount
        (probeBitVecSupportWords probeTwistLookup [3, 7]
          (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true))
        ((GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords .three).map
          (BitVec.ofNat 64))) =
      ((43 : BitVec 64), (43 : BitVec 64), (8 : BitVec 64), (9 : BitVec 64),
        (21 : BitVec 64), (23 : BitVec 64), (3 : BitVec 64), (5 : BitVec 64)) := by
  simp (config := { maxSteps := 1000000 })
    [probeBitVecRestrictedCount, probeBitVecSupportWords,
      probeBitVecIntersect, probeBitVecCount, probeNormalLookup, probeTwistLookup,
      GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,
      GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords]

#print axioms probe_bitvec_counts_full

end Erdos848
