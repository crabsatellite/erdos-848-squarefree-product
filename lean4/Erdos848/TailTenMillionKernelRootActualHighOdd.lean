import Erdos848.TailTenMillionKernelRootActualHighCoreNormal
import Erdos848.TailTenMillionKernelRootActualHighCoreTwist

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem actualTenMillionOddNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TenMillionKernelRootRow.odd7.split)
          baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient .odd7
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  apply actualTenMillionNormalHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hcoset
  · intro p m parameter hequation
    simp [TenMillionKernelRootRow.quotientAccepts]
  · intro m
    simpa [TenMillionKernelRootRow.rootFactor] using
      fiveMillionNormalTransformedRoot_card_le
        hpivotPos hpivotOdd hconstantFive (m := m)

theorem actualTenMillionOddTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TenMillionKernelRootRow.odd7Twist.split)
          baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient .odd7Twist
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  apply actualTenMillionFiveTwistHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hconstantTwentyFive hcoset
  · intro p stored parameter hequation
    simp [TenMillionKernelRootRow.quotientAccepts]
  · intro m
    simpa [TenMillionKernelRootRow.rootFactor] using
      fiveMillionFiveTwistTransformedRoot_card_le
        hpivotPos hpivotOdd hconstantFive hconstantTwentyFive (m := m)

end Erdos848
