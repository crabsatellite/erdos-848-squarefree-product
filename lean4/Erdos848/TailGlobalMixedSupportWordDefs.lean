import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.CommonData
import Mathlib.Data.Nat.Bits

namespace Erdos848

/-! Lightweight public word-list definitions for the fixed-cut mixed support. -/

def globalMixedNormalSupportWord : List ℕ → Bool → ℕ → ℕ
  | [], squareCoset, wordIndex =>
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset).getD
        wordIndex 0
  | p :: support, squareCoset, wordIndex =>
      (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p).getD
          wordIndex 0 &&&
        globalMixedNormalSupportWord support squareCoset wordIndex

def globalMixedTwistSupportWord : List ℕ → Bool → ℕ → ℕ
  | [], squareCoset, wordIndex =>
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset).getD
        wordIndex 0
  | p :: support, squareCoset, wordIndex =>
      (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p).getD
          wordIndex 0 &&&
        globalMixedTwistSupportWord support squareCoset wordIndex

/-- Word-list intersection.  Whole-list evaluation dispatches each generated
prime table once rather than once per word. -/
def globalMixedIntersectWords : List ℕ → List ℕ → List ℕ
  | left :: lefts, right :: rights =>
      (left &&& right) :: globalMixedIntersectWords lefts rights
  | _, _ => []

def globalMixedNormalSupportWords : List ℕ → Bool → List ℕ
  | [], squareCoset =>
      GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset
  | p :: support, squareCoset =>
      globalMixedIntersectWords
        (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
        (globalMixedNormalSupportWords support squareCoset)

def globalMixedTwistSupportWords : List ℕ → Bool → List ℕ
  | [], squareCoset =>
      GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset
  | p :: support, squareCoset =>
      globalMixedIntersectWords
        (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p)
        (globalMixedTwistSupportWords support squareCoset)

def globalMixedCountWords : List ℕ → ℕ
  | [] => 0
  | word :: words => word.bits.count true + globalMixedCountWords words

def countGlobalMixedNormalWords
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | count + 1 =>
      (globalMixedNormalSupportWord support squareCoset start).bits.count true +
        countGlobalMixedNormalWords support squareCoset (start + 1) count

def countGlobalMixedTwistWords
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | count + 1 =>
      (globalMixedTwistSupportWord support squareCoset start).bits.count true +
        countGlobalMixedTwistWords support squareCoset (start + 1) count

def globalMixedNormalSurvivorCount
    (support : List ℕ) (squareCoset : Bool) : ℕ :=
  globalMixedCountWords (globalMixedNormalSupportWords support squareCoset)

def globalMixedTwistSurvivorCount
    (support : List ℕ) (squareCoset : Bool) : ℕ :=
  globalMixedCountWords (globalMixedTwistSupportWords support squareCoset)

end Erdos848
