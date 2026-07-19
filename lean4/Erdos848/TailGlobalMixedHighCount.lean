import Erdos848.TailGlobalMixedHighParameter
import Erdos848.TailGlobalMixedReciprocal
import Erdos848.TailFiveMillionTransformedRoot
import Erdos848.TailGlobalMixedOneRowSound

namespace Erdos848

/-!
# Actual global high-tail counts against one certified checker row
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- The fixed `441/100` term in the generated checker really covers the
endpoint and fibre-spacing payment at every ambient `N ≥ 5,000,000`. -/
theorem globalMixedSpacingPayment_le
    {N : ℕ} (hN : 5_000_000 ≤ N) :
    2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 55 : ℕ) : ℚ) ≤ 441 / 100 := by
  have hY : 0 < N / 55 := by omega
  have hnat : 200 * (N / 25 + 2) ≤ 441 * (N / 55) := by omega
  apply (div_le_iff₀ (by exact_mod_cast hY)).2
  have hnatQ :
      200 * ((N / 25 + 2 : ℕ) : ℚ) ≤
        441 * ((N / 55 : ℕ) : ℚ) := by
    exact_mod_cast hnat
  calc
    2 * ((N / 25 + 2 : ℕ) : ℚ) =
        (1 / 100 : ℚ) *
          (200 * ((N / 25 + 2 : ℕ) : ℚ)) := by ring
    _ ≤ (1 / 100 : ℚ) *
          (441 * ((N / 55 : ℕ) : ℚ)) := by
      exact mul_le_mul_of_nonneg_left hnatQ (by norm_num)
    _ = 441 / 100 * ((N / 55 : ℕ) : ℚ) := by ring

theorem globalMixedNormalHighResidue_card_cast_le_coefficient
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : ℚ) ≤
      (globalMixedRootCoefficient100
        (fiveMillionPivotSupport pivot).length
        (globalMixedNormalSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset) : ℚ) / 100 := by
  let survivors := globalMixedNormalSurvivorFinset
    (globalMixedActualMaskedSupport pivot) squareCoset
  let height := 2 ^ ((fiveMillionPivotSupport pivot).length + 1)
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hY : 0 < N / 55 := by omega
  have hcard := globalMixedNormalHighResidue_card_le_parameterSet
    hLower hBout hpivotResidual hconstantFive hcoset
  have hcardQ :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : ℚ) ≤
        ((transformedParameterSet (N / 25 + 2) (N / 55) (25 * pivot)
          (pivot * baseResidue + 1) survivors).card : ℚ) := by
    exact Nat.cast_le.mpr hcard
  have hparameter :
      ((transformedParameterSet (N / 25 + 2) (N / 55) (25 * pivot)
          (pivot * baseResidue + 1) survivors).card : ℚ) ≤
        height * ((survivors.card : ℚ) +
          2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 55 : ℕ) : ℚ)) := by
    apply transformedParameterSet_card_le survivors hY (by positivity)
    · intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
    · intro m hm
      exact fiveMillionNormalTransformedRoot_card_le
        hpivotPos hpivotOdd hconstantFive
    · exact globalMixedNormalSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport pivot) squareCoset
  have hsurvivors :
      (survivors.card : ℚ) ≤
        globalMixedNormalSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset := by
    exact_mod_cast globalMixedNormalSurvivorFinset_card_le
      (globalMixedActualMaskedSupport pivot) squareCoset
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : ℚ) ≤
        ((transformedParameterSet (N / 25 + 2) (N / 55) (25 * pivot)
          (pivot * baseResidue + 1) survivors).card : ℚ) := hcardQ
    _ ≤ height * ((survivors.card : ℚ) +
          2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 55 : ℕ) : ℚ)) := hparameter
    _ ≤ height *
        ((globalMixedNormalSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset : ℕ) +
          441 / 100) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      exact add_le_add hsurvivors (globalMixedSpacingPayment_le hLower)
    _ = (globalMixedRootCoefficient100
        (fiveMillionPivotSupport pivot).length
        (globalMixedNormalSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset) : ℚ) / 100 := by
      dsimp [height, globalMixedRootCoefficient100]
      push_cast
      ring

theorem globalMixedFiveTwistHighResidue_card_cast_le_coefficient
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : ℚ) ≤
      (globalMixedRootCoefficient100
        (fiveMillionPivotSupport pivot).length
        (globalMixedTwistSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset) : ℚ) / 100 := by
  let survivors := globalMixedTwistSurvivorFinset
    (globalMixedActualMaskedSupport pivot) squareCoset
  let height := 2 ^ ((fiveMillionPivotSupport pivot).length + 1)
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hY : 0 < N / 55 := by omega
  have hcard := globalMixedFiveTwistHighResidue_card_le_parameterSet
    hLower hBout hpivotResidual hconstantFive hconstantTwentyFive hcoset
  have hcardQ :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : ℚ) ≤
        ((transformedParameterSet (N / 25 + 2) (N / 55) (5 * pivot)
          ((pivot * baseResidue + 1) / 5) survivors).card : ℚ) := by
    exact Nat.cast_le.mpr hcard
  have hparameter :
      ((transformedParameterSet (N / 25 + 2) (N / 55) (5 * pivot)
          ((pivot * baseResidue + 1) / 5) survivors).card : ℚ) ≤
        height * ((survivors.card : ℚ) +
          2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 55 : ℕ) : ℚ)) := by
    apply transformedParameterSet_card_le survivors hY (by positivity)
    · intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
    · intro m hm
      exact fiveMillionFiveTwistTransformedRoot_card_le
        hpivotPos hpivotOdd hconstantFive hconstantTwentyFive
    · exact globalMixedTwistSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport pivot) squareCoset
  have hsurvivors :
      (survivors.card : ℚ) ≤
        globalMixedTwistSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset := by
    exact_mod_cast globalMixedTwistSurvivorFinset_card_le
      (globalMixedActualMaskedSupport pivot) squareCoset
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : ℚ) ≤
        ((transformedParameterSet (N / 25 + 2) (N / 55) (5 * pivot)
          ((pivot * baseResidue + 1) / 5) survivors).card : ℚ) := hcardQ
    _ ≤ height * ((survivors.card : ℚ) +
          2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 55 : ℕ) : ℚ)) := hparameter
    _ ≤ height *
        ((globalMixedTwistSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset : ℕ) +
          441 / 100) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      exact add_le_add hsurvivors (globalMixedSpacingPayment_le hLower)
    _ = (globalMixedRootCoefficient100
        (fiveMillionPivotSupport pivot).length
        (globalMixedTwistSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset) : ℚ) / 100 := by
      dsimp [height, globalMixedRootCoefficient100]
      push_cast
      ring

theorem globalMixedNormalHighResidue_row
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true)
    (hrow : globalMixedRowBound (fiveMillionPivotSupport pivot).length
      (fiveMillionPivotSupport pivot).dropLast false squareCoset N) :
    (((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : ℚ) +
      Nat.primeCounting (N / 55)) / N ≤
        fiveMillionOddRoot7Envelope / 6 := by
  have hcard := globalMixedNormalHighResidue_card_cast_le_coefficient
    hLower hBout hpivotResidual hpivotOdd hconstantFive hcoset
  unfold globalMixedRowBound at hrow
  dsimp [globalMixedActualMaskedSupport, globalMixedSplit] at hrow
  calc
    (((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : ℚ) +
      Nat.primeCounting (N / 55)) / N ≤
        ((globalMixedRootCoefficient100
          (fiveMillionPivotSupport pivot).length
          (globalMixedNormalSurvivorCount
            (globalMixedActualMaskedSupport pivot) squareCoset) : ℚ) / 100 +
          Nat.primeCounting (N / 55)) / N := by
      gcongr
    _ ≤ fiveMillionOddRoot7Envelope / 6 := by
      simpa [globalMixedActualMaskedSupport] using hrow

theorem globalMixedFiveTwistHighResidue_row
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true)
    (hrow : globalMixedRowBound (fiveMillionPivotSupport pivot).length
      (fiveMillionPivotSupport pivot).dropLast true squareCoset N) :
    (((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : ℚ) +
      Nat.primeCounting (N / 55)) / N ≤
        fiveMillionOddRoot7Envelope / 6 := by
  have hcard := globalMixedFiveTwistHighResidue_card_cast_le_coefficient
    hLower hBout hpivotResidual hpivotOdd hconstantFive
      hconstantTwentyFive hcoset
  unfold globalMixedRowBound at hrow
  dsimp [globalMixedActualMaskedSupport, globalMixedSplit] at hrow
  calc
    (((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : ℚ) +
      Nat.primeCounting (N / 55)) / N ≤
        ((globalMixedRootCoefficient100
          (fiveMillionPivotSupport pivot).length
          (globalMixedTwistSurvivorCount
            (globalMixedActualMaskedSupport pivot) squareCoset) : ℚ) / 100 +
          Nat.primeCounting (N / 55)) / N := by
      gcongr
    _ ≤ fiveMillionOddRoot7Envelope / 6 := by
      simpa [globalMixedActualMaskedSupport] using hrow

#print axioms globalMixedSpacingPayment_le
#print axioms globalMixedNormalHighResidue_card_cast_le_coefficient
#print axioms globalMixedFiveTwistHighResidue_card_cast_le_coefficient
#print axioms globalMixedNormalHighResidue_row
#print axioms globalMixedFiveTwistHighResidue_row

end Erdos848
