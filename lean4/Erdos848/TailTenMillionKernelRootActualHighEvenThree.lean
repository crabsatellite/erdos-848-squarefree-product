import Erdos848.TailTenMillionKernelRootActualHighCoreNormal
import Erdos848.TailTenMillionKernelRootActualHighCoreTwist

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem actualTenMillionEvenThreeNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TenMillionKernelRootRow.v3.split)
          baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient .v3
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 8 ∣ pivot :=
    Nat.dvd_iff_mod_eq_zero.mpr hpivotMod
  apply actualTenMillionNormalHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hcoset
  · intro p m parameter hequation
    simpa [TenMillionKernelRootRow.quotientAccepts] using
      normalTransformedWitness_mod_eight hpivotDiv hequation
  · intro m
    simpa [TenMillionKernelRootRow.rootFactor] using
      globalMixedNormalTransformedRoot_card_le_anyParity
        hpivotPos hconstantFive (m := m)

theorem actualTenMillionEvenThreeTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TenMillionKernelRootRow.v3Twist.split)
          baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient .v3Twist
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 8 ∣ pivot :=
    Nat.dvd_iff_mod_eq_zero.mpr hpivotMod
  apply actualTenMillionFiveTwistHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hconstantTwentyFive hcoset
  · intro p stored parameter hequation
    simpa [TenMillionKernelRootRow.quotientAccepts] using
      fiveTwistTransformedWitness_mod_eight
        hpivotDiv hconstantFive hequation
  · intro m
    simpa [TenMillionKernelRootRow.rootFactor] using
      globalMixedFiveTwistTransformedRoot_card_le_anyParity
        hpivotPos hconstantFive hconstantTwentyFive (m := m)

end Erdos848
