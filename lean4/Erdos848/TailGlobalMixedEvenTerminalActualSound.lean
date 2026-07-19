import Erdos848.TailGlobalMixedEvenBitVecActualSemantic
import Erdos848.TailGlobalMixedEvenTerminalCountDefs

namespace Erdos848

/-!
# Actual-count soundness for generated even terminals

The generated terminal leaves certify eight `BitVec 64` population counts.
This module converts those counts to the literal natural-number survivor
counts used by `globalMixedEvenTerminalPrefixPasses_sound`.  The conversion
records the no-wrap condition explicitly.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def GlobalMixedEvenBitVecCounts.toNat :
    GlobalMixedEvenBitVecCounts -> GlobalMixedEvenCounts
  | (normalFalseTwo, normalTrueTwo, twistFalseTwo, twistTrueTwo,
      normalFalseThree, normalTrueThree, twistFalseThree, twistTrueThree) =>
    { normalFalseTwo := normalFalseTwo.toNat
      normalTrueTwo := normalTrueTwo.toNat
      twistFalseTwo := twistFalseTwo.toNat
      twistTrueTwo := twistTrueTwo.toNat
      normalFalseThree := normalFalseThree.toNat
      normalTrueThree := normalTrueThree.toNat
      twistFalseThree := twistFalseThree.toNat
      twistTrueThree := twistTrueThree.toNat }

def GlobalMixedEvenCounts.FitsBitVec64 (counts : GlobalMixedEvenCounts) : Prop :=
  counts.normalFalseTwo < 2 ^ 64 ∧
    counts.normalTrueTwo < 2 ^ 64 ∧
    counts.twistFalseTwo < 2 ^ 64 ∧
    counts.twistTrueTwo < 2 ^ 64 ∧
    counts.normalFalseThree < 2 ^ 64 ∧
    counts.normalTrueThree < 2 ^ 64 ∧
    counts.twistFalseThree < 2 ^ 64 ∧
    counts.twistTrueThree < 2 ^ 64

@[ext] theorem GlobalMixedEvenCounts.ext
    {left right : GlobalMixedEvenCounts}
    (hNormalFalseTwo : left.normalFalseTwo = right.normalFalseTwo)
    (hNormalTrueTwo : left.normalTrueTwo = right.normalTrueTwo)
    (hTwistFalseTwo : left.twistFalseTwo = right.twistFalseTwo)
    (hTwistTrueTwo : left.twistTrueTwo = right.twistTrueTwo)
    (hNormalFalseThree : left.normalFalseThree = right.normalFalseThree)
    (hNormalTrueThree : left.normalTrueThree = right.normalTrueThree)
    (hTwistFalseThree : left.twistFalseThree = right.twistFalseThree)
    (hTwistTrueThree : left.twistTrueThree = right.twistTrueThree) :
    left = right := by
  cases left
  cases right
  simp_all

theorem GlobalMixedEvenCounts.toNat_toBitVec
    (counts : GlobalMixedEvenCounts)
    (hfits : counts.FitsBitVec64) :
    counts.toBitVec.toNat = counts := by
  rcases counts with
    ⟨normalFalseTwo, normalTrueTwo, twistFalseTwo, twistTrueTwo,
      normalFalseThree, normalTrueThree, twistFalseThree, twistTrueThree⟩
  simp only [GlobalMixedEvenCounts.FitsBitVec64] at hfits
  rcases hfits with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
  norm_num at h0 h1 h2 h3 h4 h5 h6 h7
  apply GlobalMixedEvenCounts.ext <;>
    simp [GlobalMixedEvenCounts.toBitVec,
      GlobalMixedEvenBitVecCounts.toNat, Nat.mod_eq_of_lt,
      h0, h1, h2, h3, h4, h5, h6, h7]

def globalMixedEvenActualCounts (support : List Nat) : GlobalMixedEvenCounts :=
  { normalFalseTwo :=
      globalMixedEvenTerminalNormalCount .two support false
    normalTrueTwo :=
      globalMixedEvenTerminalNormalCount .two support true
    twistFalseTwo :=
      globalMixedEvenTerminalTwistCount .two support false
    twistTrueTwo :=
      globalMixedEvenTerminalTwistCount .two support true
    normalFalseThree :=
      globalMixedEvenTerminalNormalCount .three support false
    normalTrueThree :=
      globalMixedEvenTerminalNormalCount .three support true
    twistFalseThree :=
      globalMixedEvenTerminalTwistCount .three support false
    twistTrueThree :=
      globalMixedEvenTerminalTwistCount .three support true }

theorem globalMixedEvenActualCounts_eq_bitVecCounts
    (support : List Nat) :
    globalMixedEvenActualCounts support =
      (globalMixedBitVecRestrictedRows
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
        support).counts.toNat := by
  apply GlobalMixedEvenCounts.ext
  · simpa [globalMixedEvenActualCounts,
      globalMixedEvenTerminalNormalCount,
      GlobalMixedEvenBitVecCounts.toNat,
      GlobalMixedEvenBitVecRows.counts,
      GlobalMixedEvenBitVecRows.normalTwoWords] using
      globalMixedNormalTwoCoreCount_eq_bitVecRows support false
  · simpa [globalMixedEvenActualCounts,
      globalMixedEvenTerminalNormalCount,
      GlobalMixedEvenBitVecCounts.toNat,
      GlobalMixedEvenBitVecRows.counts,
      GlobalMixedEvenBitVecRows.normalTwoWords] using
      globalMixedNormalTwoCoreCount_eq_bitVecRows support true
  · simpa [globalMixedEvenActualCounts,
      globalMixedEvenTerminalTwistCount,
      GlobalMixedEvenBitVecCounts.toNat,
      GlobalMixedEvenBitVecRows.counts,
      GlobalMixedEvenBitVecRows.twistTwoWords] using
      globalMixedTwistTwoCoreCount_eq_bitVecRows support false
  · simpa [globalMixedEvenActualCounts,
      globalMixedEvenTerminalTwistCount,
      GlobalMixedEvenBitVecCounts.toNat,
      GlobalMixedEvenBitVecRows.counts,
      GlobalMixedEvenBitVecRows.twistTwoWords] using
      globalMixedTwistTwoCoreCount_eq_bitVecRows support true
  · simpa [globalMixedEvenActualCounts,
      globalMixedEvenTerminalNormalCount,
      GlobalMixedEvenBitVecCounts.toNat,
      GlobalMixedEvenBitVecRows.counts,
      GlobalMixedEvenBitVecRows.normalThreeWords] using
      globalMixedNormalThreeCoreCount_eq_bitVecRows support false
  · simpa [globalMixedEvenActualCounts,
      globalMixedEvenTerminalNormalCount,
      GlobalMixedEvenBitVecCounts.toNat,
      GlobalMixedEvenBitVecRows.counts,
      GlobalMixedEvenBitVecRows.normalThreeWords] using
      globalMixedNormalThreeCoreCount_eq_bitVecRows support true
  · simpa [globalMixedEvenActualCounts,
      globalMixedEvenTerminalTwistCount,
      GlobalMixedEvenBitVecCounts.toNat,
      GlobalMixedEvenBitVecRows.counts,
      GlobalMixedEvenBitVecRows.twistThreeWords] using
      globalMixedTwistThreeCoreCount_eq_bitVecRows support false
  · simpa [globalMixedEvenActualCounts,
      globalMixedEvenTerminalTwistCount,
      GlobalMixedEvenBitVecCounts.toNat,
      GlobalMixedEvenBitVecRows.counts,
      GlobalMixedEvenBitVecRows.twistThreeWords] using
      globalMixedTwistThreeCoreCount_eq_bitVecRows support true

theorem globalMixedEvenActualCounts_eq_of_bitVecCounts
    {support : List Nat} {counts : GlobalMixedEvenCounts}
    (hcounts :
      (globalMixedBitVecRestrictedRows
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
        support).counts = counts.toBitVec)
    (hfits : counts.FitsBitVec64) :
    globalMixedEvenActualCounts support = counts := by
  calc
    globalMixedEvenActualCounts support =
        (globalMixedBitVecRestrictedRows
          GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
          GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
          support).counts.toNat :=
      globalMixedEvenActualCounts_eq_bitVecCounts support
    _ = counts.toBitVec.toNat := congrArg GlobalMixedEvenBitVecCounts.toNat hcounts
    _ = counts := counts.toNat_toBitVec hfits

#print axioms globalMixedEvenActualCounts_eq_of_bitVecCounts

end Erdos848
