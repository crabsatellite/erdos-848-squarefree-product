import Erdos848.TailTwentyMillionRootCertificate
import Erdos848.TailGlobalMixedEvenSurvivors
import Erdos848.TailFiveMillionHighTransformedCore
import Erdos848.TailTwentyMillionRootActualHighNormal
import Erdos848.TailTwentyMillionRootActualHighTwist

namespace Erdos848

/-!
# Actual high-residue bounds from the twenty-million root certificate

This file is the semantic adapter between the generated two-table QR
certificate and the literal high-tail point sets.  The generator supplies
only checked lookup words.  Valuation congruences, mod-five splitting, root
heights, and the map from actual points to transformed parameters remain
ordinary Lean theorems.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem actualTwentyMillionEvenOneNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TwentyMillionRootRow.evenOne.split)
          baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient .evenOne
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 2 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  apply actualTwentyMillionNormalHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hcoset
  · intro p m parameter hequation
    simpa [TwentyMillionRootRow.quotientAccepts] using
      normalTransformedWitness_mod_two hpivotDiv hequation
  · intro m
    simpa [TwentyMillionRootRow.rootFactor] using
      globalMixedNormalTransformedRoot_card_le_evenOne
        hpivotPos hpivotMod hconstantFive (m := m)

theorem actualTwentyMillionEvenOneTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TwentyMillionRootRow.evenOneTwist.split)
          baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient .evenOneTwist
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 2 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  apply actualTwentyMillionFiveTwistHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hconstantTwentyFive hcoset
  · intro p stored parameter hequation
    simpa [TwentyMillionRootRow.quotientAccepts] using
      fiveTwistTransformedWitness_mod_two
        hpivotDiv hconstantFive hequation
  · intro m
    simpa [TwentyMillionRootRow.rootFactor] using
      globalMixedFiveTwistTransformedRoot_card_le_evenOne
        hpivotPos hpivotMod hconstantFive hconstantTwentyFive (m := m)

theorem actualTwentyMillionEvenTwoNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TwentyMillionRootRow.evenTwo.split)
          baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient .evenTwo
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 4 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  apply actualTwentyMillionNormalHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hcoset
  · intro p m parameter hequation
    simpa [TwentyMillionRootRow.quotientAccepts] using
      normalTransformedWitness_mod_four hpivotDiv hequation
  · intro m
    simpa [TwentyMillionRootRow.rootFactor] using
      globalMixedNormalTransformedRoot_card_le_evenTwo
        hpivotPos hpivotMod hconstantFive (m := m)

theorem actualTwentyMillionEvenTwoTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TwentyMillionRootRow.evenTwoTwist.split)
          baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient .evenTwoTwist
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 4 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  apply actualTwentyMillionFiveTwistHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hconstantTwentyFive hcoset
  · intro p stored parameter hequation
    simpa [TwentyMillionRootRow.quotientAccepts] using
      fiveTwistTransformedWitness_mod_four
        hpivotDiv hconstantFive hequation
  · intro m
    simpa [TwentyMillionRootRow.rootFactor] using
      globalMixedFiveTwistTransformedRoot_card_le_evenTwo
        hpivotPos hpivotMod hconstantFive hconstantTwentyFive (m := m)

theorem actualTwentyMillionEvenThreeNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TwentyMillionRootRow.evenThree.split)
          baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient .evenThree
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 8 ∣ pivot :=
    Nat.dvd_iff_mod_eq_zero.mpr hpivotMod
  apply actualTwentyMillionNormalHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hcoset
  · intro p m parameter hequation
    simpa [TwentyMillionRootRow.quotientAccepts] using
      normalTransformedWitness_mod_eight hpivotDiv hequation
  · intro m
    simpa [TwentyMillionRootRow.rootFactor] using
      globalMixedNormalTransformedRoot_card_le_anyParity
        hpivotPos hconstantFive (m := m)

theorem actualTwentyMillionEvenThreeTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TwentyMillionRootRow.evenThreeTwist.split)
          baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient .evenThreeTwist
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hpivotDiv : 8 ∣ pivot :=
    Nat.dvd_iff_mod_eq_zero.mpr hpivotMod
  apply actualTwentyMillionFiveTwistHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hconstantTwentyFive hcoset
  · intro p stored parameter hequation
    simpa [TwentyMillionRootRow.quotientAccepts] using
      fiveTwistTransformedWitness_mod_eight
        hpivotDiv hconstantFive hequation
  · intro m
    simpa [TwentyMillionRootRow.rootFactor] using
      globalMixedFiveTwistTransformedRoot_card_le_anyParity
        hpivotPos hconstantFive hconstantTwentyFive (m := m)

theorem actualTwentyMillionOddNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TwentyMillionRootRow.odd.split)
          baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient .odd
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  apply actualTwentyMillionNormalHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hcoset
  · intro p m parameter hequation
    simp [TwentyMillionRootRow.quotientAccepts]
  · intro m
    simpa [TwentyMillionRootRow.rootFactor] using
      fiveMillionNormalTransformedRoot_card_le
        hpivotPos hpivotOdd hconstantFive (m := m)

theorem actualTwentyMillionOddTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / TwentyMillionRootRow.oddTwist.split)
          baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient .oddTwist
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  apply actualTwentyMillionFiveTwistHighResidue_card_cast_le
    hLower hUpper hBout hpivotResidual (by rfl)
      hconstantFive hconstantTwentyFive hcoset
  · intro p stored parameter hequation
    simp [TwentyMillionRootRow.quotientAccepts]
  · intro m
    simpa [TwentyMillionRootRow.rootFactor] using
      fiveMillionFiveTwistTransformedRoot_card_le
        hpivotPos hpivotOdd hconstantFive hconstantTwentyFive (m := m)

end Erdos848
