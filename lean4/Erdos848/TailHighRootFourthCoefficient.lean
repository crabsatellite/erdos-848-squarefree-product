import Erdos848.TailHighRootFourthPower
import Erdos848.TailGlobalMixedLargeProduct
import Erdos848.TailGlobalMixedEvenAllRows

namespace Erdos848

/-!
# Uniform coefficient bound for the unbounded transformed-root tail

The global quotient masks already prove that every normal or five-twist
survivor row has at most `1210` entries.  The fourth-power support theorem
therefore turns the existing exact coefficient into an explicit
`N^(1/4)`-type bound.  This removes the last dependence of the high-root
architecture on a fixed maximum support length.
-/

def highRootFourthCoefficientCeiling (N : Nat) : Nat :=
  2 * highRootFourthCeiling N * (100 * 1210 + 441)

theorem highRootFourthCoefficientCeiling_monotone :
    Monotone highRootFourthCoefficientCeiling := by
  intro left right hle
  unfold highRootFourthCoefficientCeiling
  gcongr
  exact highRootFourthCeiling_monotone hle

theorem globalMixedRootCoefficient100_le_fourthCeiling
    {N pivot survivors : Nat}
    (hproduct : (fiveMillionPivotSupport pivot).prod ≤ N)
    (hsurvivors : survivors ≤ 1210) :
    globalMixedRootCoefficient100
        (fiveMillionPivotSupport pivot).length survivors ≤
      highRootFourthCoefficientCeiling N := by
  have hheight :
      2 ^ ((fiveMillionPivotSupport pivot).length + 1) ≤
        2 * highRootFourthCeiling N := by
    rw [pow_succ]
    simpa [Nat.mul_comm] using
      Nat.mul_le_mul_right 2
        (Nat.le_of_lt
          (two_pow_fiveMillionPivotSupport_lt_fourthCeiling hproduct))
  unfold globalMixedRootCoefficient100
  unfold highRootFourthCoefficientCeiling
  exact Nat.mul_le_mul hheight <|
    Nat.add_le_add_right (Nat.mul_le_mul_left 100 hsurvivors) 441

theorem globalMixedNormalRootCoefficient100_le_fourthCeiling
    {N pivot : Nat} (squareCoset : Bool)
    (hproduct : (fiveMillionPivotSupport pivot).prod ≤ N) :
    globalMixedRootCoefficient100
        (fiveMillionPivotSupport pivot).length
        (globalMixedNormalSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset) ≤
      highRootFourthCoefficientCeiling N := by
  apply globalMixedRootCoefficient100_le_fourthCeiling hproduct
  exact globalMixedNormalSurvivorCount_le_bound
    (globalMixedActualMaskedSupport pivot) squareCoset

theorem globalMixedTwistRootCoefficient100_le_fourthCeiling
    {N pivot : Nat} (squareCoset : Bool)
    (hproduct : (fiveMillionPivotSupport pivot).prod ≤ N) :
    globalMixedRootCoefficient100
        (fiveMillionPivotSupport pivot).length
        (globalMixedTwistSurvivorCount
          (globalMixedActualMaskedSupport pivot) squareCoset) ≤
      highRootFourthCoefficientCeiling N := by
  apply globalMixedRootCoefficient100_le_fourthCeiling hproduct
  exact (globalMixedTwistSurvivorCount_le_bound
    (globalMixedActualMaskedSupport pivot) squareCoset).trans (by norm_num)

theorem globalMixedEvenRootCoefficient100_le_fourthCeiling
    {N pivot survivors : Nat}
    {valuation : GlobalMixedEvenValuation}
    (hproduct : (fiveMillionPivotSupport pivot).prod ≤ N)
    (hweight :
      globalMixedEvenRootFactor valuation *
          (100 * survivors + 441) ≤
        100 * 1210 + 441) :
    globalMixedEvenRootCoefficient100
        (globalMixedEvenRootFactor valuation)
        (fiveMillionPivotSupport pivot).length survivors ≤
      highRootFourthCoefficientCeiling N := by
  have hheight :
      2 ^ ((fiveMillionPivotSupport pivot).length + 1) ≤
        2 * highRootFourthCeiling N := by
    rw [pow_succ]
    simpa [Nat.mul_comm] using
      Nat.mul_le_mul_right 2
        (Nat.le_of_lt
          (two_pow_fiveMillionPivotSupport_lt_fourthCeiling hproduct))
  unfold globalMixedEvenRootCoefficient100
  unfold highRootFourthCoefficientCeiling
  calc
    (globalMixedEvenRootFactor valuation *
          2 ^ ((fiveMillionPivotSupport pivot).length + 1)) *
        (100 * survivors + 441) =
      2 ^ ((fiveMillionPivotSupport pivot).length + 1) *
        (globalMixedEvenRootFactor valuation *
          (100 * survivors + 441)) := by ring
    _ ≤ (2 * highRootFourthCeiling N) *
        (100 * 1210 + 441) :=
      Nat.mul_le_mul hheight hweight

#print axioms globalMixedRootCoefficient100_le_fourthCeiling
#print axioms highRootFourthCoefficientCeiling_monotone
#print axioms globalMixedNormalRootCoefficient100_le_fourthCeiling
#print axioms globalMixedTwistRootCoefficient100_le_fourthCeiling
#print axioms globalMixedEvenRootCoefficient100_le_fourthCeiling

end Erdos848
