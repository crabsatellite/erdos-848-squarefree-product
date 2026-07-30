import Erdos848.TailHighRootFourthCoefficient
import Erdos848.TailGlobalMixedValuationPartition
import Erdos848.TailGlobalMixedHighCount
import Erdos848.TailGlobalMixedEvenHighCount

namespace Erdos848

/-!
# Unbounded actual transformed-root rows

The actual Hall pivot support has product at most `N`.  The fourth-power
support lemma and the uniform survivor bounds therefore control the literal
normal, five-twist, and two-adic transformed-root sets for every
`N ≥ 5_000_000`.  No finite numerical certificate occurs in this file.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem highRootCoefficient_div_le_fourth
    {N coefficient : Nat}
    (hCoefficient :
      coefficient ≤ highRootFourthCoefficientCeiling N) :
    (coefficient : Rat) / 100 ≤
      (highRootFourthCoefficientCeiling N : Rat) / 100 := by
  exact div_le_div_of_nonneg_right
    (by exact_mod_cast hCoefficient) (by norm_num)

private theorem actualHighFourthOddNormal_of_raw
    {N pivot baseResidue : Nat} {squareCoset : Bool}
    (hProduct : (fiveMillionPivotSupport pivot).prod ≤ N)
    (hRaw :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedRootCoefficient100
          (fiveMillionPivotSupport pivot).length
          (globalMixedNormalSurvivorCount
            (globalMixedActualMaskedSupport pivot) squareCoset) : Rat) /
          100) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (highRootFourthCoefficientCeiling N : Rat) / 100 := by
  apply hRaw.trans
  apply highRootCoefficient_div_le_fourth
  exact globalMixedNormalRootCoefficient100_le_fourthCeiling
    squareCoset hProduct

private theorem actualHighFourthOddTwist_of_raw
    {N pivot baseResidue : Nat} {squareCoset : Bool}
    (hProduct : (fiveMillionPivotSupport pivot).prod ≤ N)
    (hRaw :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedRootCoefficient100
          (fiveMillionPivotSupport pivot).length
          (globalMixedTwistSurvivorCount
            (globalMixedActualMaskedSupport pivot) squareCoset) : Rat) /
          100) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (highRootFourthCoefficientCeiling N : Rat) / 100 := by
  apply hRaw.trans
  apply highRootCoefficient_div_le_fourth
  exact globalMixedTwistRootCoefficient100_le_fourthCeiling
    squareCoset hProduct

private theorem actualHighFourthEvenNormal_of_raw
    (valuation : GlobalMixedEvenValuation)
    {N pivot baseResidue : Nat} {squareCoset : Bool}
    (hProduct : (fiveMillionPivotSupport pivot).prod ≤ N)
    (hRaw :
      let survivors := globalMixedRestrictSurvivors
        (globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset)
        (globalMixedEvenNormalModulus valuation)
        (globalMixedEvenNormalResidue valuation)
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation)
          (fiveMillionPivotSupport pivot).length survivors.card : Rat) /
          100) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (highRootFourthCoefficientCeiling N : Rat) / 100 := by
  dsimp only at hRaw
  apply hRaw.trans
  apply highRootCoefficient_div_le_fourth
  exact globalMixedEvenRootCoefficient100_le_fourthCeiling hProduct
    (globalMixedEvenNormalRestricted_weight_le valuation
      (globalMixedActualMaskedSupport pivot) squareCoset)

private theorem actualHighFourthEvenTwist_of_raw
    (valuation : GlobalMixedEvenValuation)
    {N pivot baseResidue : Nat} {squareCoset : Bool}
    (hProduct : (fiveMillionPivotSupport pivot).prod ≤ N)
    (hRaw :
      let survivors := globalMixedRestrictSurvivors
        (globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset)
        (globalMixedEvenTwistModulus valuation)
        (globalMixedEvenTwistResidue valuation)
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation)
          (fiveMillionPivotSupport pivot).length survivors.card : Rat) /
          100) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (highRootFourthCoefficientCeiling N : Rat) / 100 := by
  dsimp only at hRaw
  apply hRaw.trans
  apply highRootCoefficient_div_le_fourth
  exact globalMixedEvenRootCoefficient100_le_fourthCeiling hProduct
    (globalMixedEvenTwistRestricted_weight_le valuation
      (globalMixedActualMaskedSupport pivot) squareCoset)

theorem actualHighFourthHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {cls : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart : pivot ∈ fiveMillionValuationPart N B cls) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (highRootFourthCoefficientCeiling N : Rat) / 100 := by
  classical
  have hpivotResidual : pivot ∈ hallResidual N B :=
    fiveMillionValuationPart_subset_residual N B cls hpivotPart
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds :=
    Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)
  have hProduct :
      (fiveMillionPivotSupport pivot).prod ≤ N :=
    fiveMillionPivotSupport_prod_le hpivotBounds.1 hpivotBounds.2
  by_cases hEmpty :
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue = ∅
  · rw [hEmpty]
    simp only [Finset.card_empty, Nat.cast_zero]
    positivity
  obtain ⟨point, hpoint⟩ := Finset.nonempty_iff_ne_empty.mpr hEmpty
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointLow : point ∈ lowBaseSet N :=
    (Finset.mem_filter.mp hpointParts.1).1
  have hpointResidue : point % 25 = baseResidue := hpointParts.2
  have hconstantTwentyFive :
      ¬ 25 ∣ pivot * baseResidue + 1 :=
    fiveMillionBaseConstant_not_twentyFive_dvd
      (N := N) (B := B) (pivot := pivot) (point := point)
      (baseResidue := baseResidue)
      hBout hpivotResidual hpointLow hpointResidue
  by_cases hconstantFive : 5 ∣ pivot * baseResidue + 1
  · have hquotientFive :
        ¬ 5 ∣ (pivot * baseResidue + 1) / 5 :=
      not_five_dvd_div_five_of_not_twentyFive
        hconstantFive hconstantTwentyFive
    obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hquotientFive
    cases cls with
    | oddOne =>
        apply actualHighFourthOddTwist_of_raw hProduct
        exact globalMixedFiveTwistHighResidue_card_cast_le_coefficient
          hLower hBout hpivotResidual
          (fiveMillionValuationPart_odd (Or.inl rfl) hpivotPart)
          hconstantFive hconstantTwentyFive hcoset
    | oddThree =>
        apply actualHighFourthOddTwist_of_raw hProduct
        exact globalMixedFiveTwistHighResidue_card_cast_le_coefficient
          hLower hBout hpivotResidual
          (fiveMillionValuationPart_odd (Or.inr rfl) hpivotPart)
          hconstantFive hconstantTwentyFive hcoset
    | evenOne =>
        apply actualHighFourthEvenTwist_of_raw .one hProduct
        simpa [globalMixedEvenTwistModulus,
          globalMixedEvenTwistResidue, globalMixedEvenRootFactor] using
          (globalMixedFiveTwistHighResidue_card_cast_le_evenOne
            hLower hBout hpivotResidual
            (fiveMillionValuationPart_evenOne hpivotPart)
            hconstantFive hconstantTwentyFive hcoset)
    | evenTwo =>
        apply actualHighFourthEvenTwist_of_raw .two hProduct
        simpa [globalMixedEvenTwistModulus,
          globalMixedEvenTwistResidue, globalMixedEvenRootFactor] using
          (globalMixedFiveTwistHighResidue_card_cast_le_evenTwo
            hLower hBout hpivotResidual
            (fiveMillionValuationPart_evenTwo hpivotPart)
            hconstantFive hconstantTwentyFive hcoset)
    | evenThree =>
        apply actualHighFourthEvenTwist_of_raw .three hProduct
        simpa [globalMixedEvenTwistModulus,
          globalMixedEvenTwistResidue, globalMixedEvenRootFactor] using
          (globalMixedFiveTwistHighResidue_card_cast_le_evenThree
            hLower hBout hpivotResidual
            (fiveMillionValuationPart_evenThree hpivotPart)
            hconstantFive hconstantTwentyFive hcoset)
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    cases cls with
    | oddOne =>
        apply actualHighFourthOddNormal_of_raw hProduct
        exact globalMixedNormalHighResidue_card_cast_le_coefficient
          hLower hBout hpivotResidual
          (fiveMillionValuationPart_odd (Or.inl rfl) hpivotPart)
          hconstantFive hcoset
    | oddThree =>
        apply actualHighFourthOddNormal_of_raw hProduct
        exact globalMixedNormalHighResidue_card_cast_le_coefficient
          hLower hBout hpivotResidual
          (fiveMillionValuationPart_odd (Or.inr rfl) hpivotPart)
          hconstantFive hcoset
    | evenOne =>
        apply actualHighFourthEvenNormal_of_raw .one hProduct
        simpa [globalMixedEvenNormalModulus,
          globalMixedEvenNormalResidue, globalMixedEvenRootFactor] using
          (globalMixedNormalHighResidue_card_cast_le_evenOne
            hLower hBout hpivotResidual
            (fiveMillionValuationPart_evenOne hpivotPart)
            hconstantFive hcoset)
    | evenTwo =>
        apply actualHighFourthEvenNormal_of_raw .two hProduct
        simpa [globalMixedEvenNormalModulus,
          globalMixedEvenNormalResidue, globalMixedEvenRootFactor] using
          (globalMixedNormalHighResidue_card_cast_le_evenTwo
            hLower hBout hpivotResidual
            (fiveMillionValuationPart_evenTwo hpivotPart)
            hconstantFive hcoset)
    | evenThree =>
        apply actualHighFourthEvenNormal_of_raw .three hProduct
        simpa [globalMixedEvenNormalModulus,
          globalMixedEvenNormalResidue, globalMixedEvenRootFactor] using
          (globalMixedNormalHighResidue_card_cast_le_evenThree
            hLower hBout hpivotResidual
            (fiveMillionValuationPart_evenThree hpivotPart)
            hconstantFive hcoset)

theorem actualHighFourthHighPoints_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    {cls : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart : pivot ∈ fiveMillionValuationPart N B cls) :
    ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) ≤
      2 * (highRootFourthCoefficientCeiling N : Rat) / 100 := by
  have hcard :
      (twoBaseHighTailSquarePoints N pivot (N / 55)).card ≤
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  have hcardRat :
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) ≤
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card : Rat) := by
    exact_mod_cast hcard
  calc
    ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) ≤
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card : Rat) := hcardRat
    _ ≤ (highRootFourthCoefficientCeiling N : Rat) / 100 +
        (highRootFourthCoefficientCeiling N : Rat) / 100 :=
      add_le_add
        (actualHighFourthHighResidue_card_cast_le
          hLower hBout hpivotPart)
        (actualHighFourthHighResidue_card_cast_le
          hLower hBout hpivotPart)
    _ = 2 * (highRootFourthCoefficientCeiling N : Rat) / 100 := by ring

#print axioms actualHighFourthHighResidue_card_cast_le
#print axioms actualHighFourthHighPoints_card_cast_le

end Erdos848
