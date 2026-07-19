import Erdos848.TailGlobalMixedHighCount
import Erdos848.TailGlobalMixedActualRows

namespace Erdos848

/-!
# Selecting the certified normal/twist row for each actual residue
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def GlobalMixedHighResidueRow
    (N pivot baseResidue : ℕ) : Prop :=
  (((twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue).card : ℚ) +
    Nat.primeCounting (N / 55)) / N ≤
      fiveMillionOddRoot7Envelope / 6

lemma globalMixedEmptyHighResidue_row
    {N pivot baseResidue : ℕ}
    (hLower : 5_000_000 ≤ N)
    (hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue = ∅)
    (hrow : globalMixedRowBound (fiveMillionPivotSupport pivot).length
      (fiveMillionPivotSupport pivot).dropLast false false N) :
    GlobalMixedHighResidueRow N pivot baseResidue := by
  unfold GlobalMixedHighResidueRow
  rw [hempty]
  unfold globalMixedRowBound at hrow
  dsimp [globalMixedSplit] at hrow
  calc
    ((0 : ℚ) + Nat.primeCounting (N / 55)) / N ≤
        ((globalMixedRootCoefficient100
          (fiveMillionPivotSupport pivot).length
          (globalMixedNormalSurvivorCount
            ((fiveMillionPivotSupport pivot).dropLast.filter fun p =>
              decide (p ≤ 2843)) false) : ℚ) / 100 +
          Nat.primeCounting (N / 55)) / N := by
      gcongr
      positivity
    _ ≤ fiveMillionOddRoot7Envelope / 6 := by simpa using hrow

/-- A whole residue progression uses one of the four generated rows.  The
choice depends only on the fixed residue constant, never on an individual
point. -/
theorem globalMixedHighResidue_row_of_four
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hrows :
      globalMixedRowBound (fiveMillionPivotSupport pivot).length
          (fiveMillionPivotSupport pivot).dropLast false false N ∧
        globalMixedRowBound (fiveMillionPivotSupport pivot).length
          (fiveMillionPivotSupport pivot).dropLast false true N ∧
        globalMixedRowBound (fiveMillionPivotSupport pivot).length
          (fiveMillionPivotSupport pivot).dropLast true false N ∧
        globalMixedRowBound (fiveMillionPivotSupport pivot).length
          (fiveMillionPivotSupport pivot).dropLast true true N) :
    GlobalMixedHighResidueRow N pivot baseResidue := by
  classical
  by_cases hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue = ∅
  · exact globalMixedEmptyHighResidue_row hLower hempty hrows.1
  obtain ⟨point, hpoint⟩ := Finset.nonempty_iff_ne_empty.mpr hempty
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointLow : point ∈ lowBaseSet N :=
    (Finset.mem_filter.mp hpointParts.1).1
  have hpointResidue : point % 25 = baseResidue := hpointParts.2
  have hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1 :=
    fiveMillionBaseConstant_not_twentyFive_dvd
      (N := N) (B := B) (pivot := pivot) (point := point)
      (baseResidue := baseResidue)
      hBout hpivotResidual hpointLow hpointResidue
  by_cases hconstantFive : 5 ∣ pivot * baseResidue + 1
  · have hquotientFive : ¬ 5 ∣ (pivot * baseResidue + 1) / 5 :=
      not_five_dvd_div_five_of_not_twentyFive
        (constant := pivot * baseResidue + 1)
        hconstantFive hconstantTwentyFive
    obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hquotientFive
    cases squareCoset
    · exact globalMixedFiveTwistHighResidue_row
        hLower hBout hpivotResidual hpivotOdd hconstantFive
          hconstantTwentyFive hcoset hrows.2.2.1
    · exact globalMixedFiveTwistHighResidue_row
        hLower hBout hpivotResidual hpivotOdd hconstantFive
          hconstantTwentyFive hcoset hrows.2.2.2
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    cases squareCoset
    · exact globalMixedNormalHighResidue_row
        hLower hBout hpivotResidual hpivotOdd hconstantFive hcoset hrows.1
    · exact globalMixedNormalHighResidue_row
        hLower hBout hpivotResidual hpivotOdd hconstantFive hcoset hrows.2.1

/-- The two sharp base residues combine without loss: each pays one copy of
the prime-counting term and one sixth of the root envelope. -/
theorem globalMixedHighPoints_row_of_four
    {N : ℕ} {B : Finset ℕ} {pivot : ℕ}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hrows :
      globalMixedRowBound (fiveMillionPivotSupport pivot).length
          (fiveMillionPivotSupport pivot).dropLast false false N ∧
        globalMixedRowBound (fiveMillionPivotSupport pivot).length
          (fiveMillionPivotSupport pivot).dropLast false true N ∧
        globalMixedRowBound (fiveMillionPivotSupport pivot).length
          (fiveMillionPivotSupport pivot).dropLast true false N ∧
        globalMixedRowBound (fiveMillionPivotSupport pivot).length
          (fiveMillionPivotSupport pivot).dropLast true true N) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) +
      2 * Nat.primeCounting (N / 55)) / N ≤
        fiveMillionOddRoot7Envelope / 3 := by
  have hseven := globalMixedHighResidue_row_of_four
    (baseResidue := 7) hLower hBout hpivotResidual hpivotOdd hrows
  have heighteen := globalMixedHighResidue_row_of_four
    (baseResidue := 18) hLower hBout hpivotResidual hpivotOdd hrows
  unfold GlobalMixedHighResidueRow at hseven heighteen
  have hcard :
      (twoBaseHighTailSquarePoints N pivot (N / 55)).card ≤
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  calc
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) +
      2 * Nat.primeCounting (N / 55)) / N ≤
        (((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 7).card : ℚ) +
          ((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 18).card : ℚ) +
          2 * Nat.primeCounting (N / 55)) / N := by
      gcongr
      exact_mod_cast hcard
    _ = ((((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 7).card : ℚ) +
          Nat.primeCounting (N / 55)) / N) +
        ((((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 18).card : ℚ) +
          Nat.primeCounting (N / 55)) / N) := by ring
    _ ≤ fiveMillionOddRoot7Envelope / 6 +
        fiveMillionOddRoot7Envelope / 6 :=
      add_le_add hseven heighteen
    _ = fiveMillionOddRoot7Envelope / 3 := by ring

/-- Direct composition with the exhaustive finite-support checker branch. -/
theorem globalMixedHighPoints_finiteSupport
    {N : ℕ} {B : Finset ℕ} {pivot : ℕ}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hk : (fiveMillionPivotSupport pivot).length ≤ 8)
    (hFinite : (fiveMillionPivotSupport pivot).prod <
      globalMixedSupportProductThreshold
        (fiveMillionPivotSupport pivot).length) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) +
      2 * Nat.primeCounting (N / 55)) / N ≤
        fiveMillionOddRoot7Envelope / 3 := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hrows := actualMixedSupport_dropLast_rowBounds
    (k := (fiveMillionPivotSupport pivot).length) (N := N)
    (fiveMillionPivotSupport pivot)
    hk rfl (fiveMillionPivotSupport_primes pivot)
    (fiveMillionPivotSupport_increasing pivot) hFinite hLower
    (fiveMillionPivotSupport_prod_le
      (Finset.mem_Icc.mp hpivotBounds).1
      (Finset.mem_Icc.mp hpivotBounds).2)
  exact globalMixedHighPoints_row_of_four
    hLower hBout hpivotResidual hpivotOdd hrows

#print axioms globalMixedEmptyHighResidue_row
#print axioms globalMixedHighResidue_row_of_four
#print axioms globalMixedHighPoints_row_of_four
#print axioms globalMixedHighPoints_finiteSupport

end Erdos848
