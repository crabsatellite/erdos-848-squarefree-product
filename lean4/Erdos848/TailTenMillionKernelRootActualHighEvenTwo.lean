import Erdos848.TailTenMillionKernelRootActualHighCoreNormal
import Erdos848.TailTenMillionKernelRootActualHighCoreTwist

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem four_dvd_of_mod_eight_eq_four
    {n : Nat} (hmod : n % 8 = 4) : 4 ∣ n := by
  apply Nat.dvd_iff_mod_eq_zero.mpr
  calc
    n % 4 = n % 8 % 4 :=
      (Nat.mod_mod_of_dvd n (by decide : 4 ∣ 8)).symm
    _ = 4 % 4 := congrArg (fun value => value % 4) hmod
    _ = 0 := by decide

theorem actualTenMillionEvenTwoNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TenMillionKernelRootRow.v2.split)
          baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient .v2
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 4 ∣ pivot :=
    four_dvd_of_mod_eight_eq_four hpivotMod
  apply actualTenMillionNormalHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hcoset
  · intro p m parameter hequation
    simpa [TenMillionKernelRootRow.quotientAccepts] using
      normalTransformedWitness_mod_four hpivotDiv hequation
  · intro m
    simpa [TenMillionKernelRootRow.rootFactor] using
      globalMixedNormalTransformedRoot_card_le_evenTwo
        hpivotPos hpivotMod hconstantFive (m := m)

theorem actualTenMillionEvenTwoTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TenMillionKernelRootRow.v2Twist.split)
          baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient .v2Twist
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 4 ∣ pivot :=
    four_dvd_of_mod_eight_eq_four hpivotMod
  apply actualTenMillionFiveTwistHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hconstantTwentyFive hcoset
  · intro p stored parameter hequation
    simpa [TenMillionKernelRootRow.quotientAccepts] using
      fiveTwistTransformedWitness_mod_four
        hpivotDiv hconstantFive hequation
  · intro m
    simpa [TenMillionKernelRootRow.rootFactor] using
      globalMixedFiveTwistTransformedRoot_card_le_evenTwo
        hpivotPos hpivotMod hconstantFive hconstantTwentyFive (m := m)

end Erdos848
