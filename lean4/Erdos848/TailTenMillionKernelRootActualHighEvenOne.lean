import Erdos848.TailTenMillionKernelRootActualHighCoreNormal
import Erdos848.TailTenMillionKernelRootActualHighCoreTwist

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem two_dvd_of_mod_four_eq_two
    {n : Nat} (hmod : n % 4 = 2) : 2 ∣ n := by
  apply Nat.dvd_iff_mod_eq_zero.mpr
  calc
    n % 2 = n % 4 % 2 :=
      (Nat.mod_mod_of_dvd n (by decide : 2 ∣ 4)).symm
    _ = 2 % 2 := congrArg (fun value => value % 2) hmod
    _ = 0 := by decide

theorem actualTenMillionEvenOneNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TenMillionKernelRootRow.v1.split)
          baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient .v1
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 2 ∣ pivot :=
    two_dvd_of_mod_four_eq_two hpivotMod
  apply actualTenMillionNormalHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hcoset
  · intro p m parameter hequation
    simpa [TenMillionKernelRootRow.quotientAccepts] using
      normalTransformedWitness_mod_two hpivotDiv hequation
  · intro m
    simpa [TenMillionKernelRootRow.rootFactor] using
      globalMixedNormalTransformedRoot_card_le_evenOne
        hpivotPos hpivotMod hconstantFive (m := m)

theorem actualTenMillionEvenOneTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TenMillionKernelRootRow.v1Twist.split)
          baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient .v1Twist
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 2 ∣ pivot :=
    two_dvd_of_mod_four_eq_two hpivotMod
  apply actualTenMillionFiveTwistHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hconstantTwentyFive hcoset
  · intro p stored parameter hequation
    simpa [TenMillionKernelRootRow.quotientAccepts] using
      fiveTwistTransformedWitness_mod_two
        hpivotDiv hconstantFive hequation
  · intro m
    simpa [TenMillionKernelRootRow.rootFactor] using
      globalMixedFiveTwistTransformedRoot_card_le_evenOne
        hpivotPos hpivotMod hconstantFive hconstantTwentyFive (m := m)

end Erdos848
