import Erdos848.TailFortyMillionRootCoefficientActualHigh
import Erdos848.TailFortyMillionRootPrimeSound
import Erdos848.TailGlobalMixedHighCount
import Erdos848.TailGlobalMixedEvenHighCount

namespace Erdos848

/-! Actual high-tail residue rows on `40M <= N < 200M`. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def FortyMillionHighResidueRow
    (block : FortyMillionTenBranchBlock)
    (rootClass : FortyMillionRootClass)
    (N pivot baseResidue : Nat) : Prop :=
  (((twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue).card : Rat) +
    ((Nat.primeCounting (N / 55) -
      Nat.primeCounting (fortyMillionRootPrimeCutoff rootClass) : Nat) :
        Rat)) / N <=
      (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
        1_000_000_000 / 6

private theorem fortyMillionHighResidueRow_of_card
    {block : FortyMillionTenBranchBlock}
    {rootClass : FortyMillionRootClass}
    {N pivot baseResidue coefficient : Nat}
    (hcover : block.Covers N)
    (hcard :
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) <=
        (coefficient : Rat) / 100)
    (hcoefficient : coefficient <=
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        N rootClass) :
    FortyMillionHighResidueRow block rootClass N pivot baseResidue := by
  have hNpos : (0 : Rat) < N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover ⊢ <;> omega
  have hceiling : coefficient <=
      fortyMillionRootCoefficientCeiling block rootClass := by
    rw [← fortyMillionCoefficientCeiling_eq_block hcover rootClass]
    exact hcoefficient
  unfold FortyMillionHighResidueRow
  calc
    (((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) +
        ((Nat.primeCounting (N / 55) -
          Nat.primeCounting
            (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N <=
      ((coefficient : Rat) / 100 +
        ((Nat.primeCounting (N / 55) -
          Nat.primeCounting
            (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N := by
            exact div_le_div_of_nonneg_right
              (add_le_add hcard le_rfl) hNpos.le
    _ <= (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
        1_000_000_000 / 6 :=
      fortyMillionFiniteRootPrimeAt hcover hceiling

private theorem fortyMillionPivotSupport_prod_le
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (fiveMillionPivotSupport pivot).prod <= N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds :=
    Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)
  exact fiveMillionPivotSupport_prod_le hpivotBounds.1 hpivotBounds.2

theorem actualFortyMillionOddHighResidue_row
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    FortyMillionHighResidueRow block .odd N pivot baseResidue := by
  classical
  have hLower : 5_000_000 <= N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;> omega
  have hUpper : N < 200_000_000 := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.upper] at hcover <;> omega
  have hProduct := fortyMillionPivotSupport_prod_le hBout hpivotResidual
  by_cases hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue = ∅
  · let coefficient := globalMixedRootCoefficient100
      (fiveMillionPivotSupport pivot).length
      (globalMixedNormalSurvivorCount
        (globalMixedActualMaskedSupport pivot) false)
    apply fortyMillionHighResidueRow_of_card
      (coefficient := coefficient) hcover
    · rw [hempty]
      simp
      positivity
    · simpa [coefficient, globalMixedActualMaskedSupport] using
        (actualMixedSupport_normalOddRootCoefficient_le
          (fiveMillionPivotSupport pivot) hLower hUpper
          (fiveMillionPivotSupport_primes pivot)
          (fiveMillionPivotSupport_increasing pivot) hProduct false)
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
        hconstantFive hconstantTwentyFive
    obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hquotientFive
    let coefficient := globalMixedRootCoefficient100
      (fiveMillionPivotSupport pivot).length
      (globalMixedTwistSurvivorCount
        (globalMixedActualMaskedSupport pivot) squareCoset)
    apply fortyMillionHighResidueRow_of_card
      (coefficient := coefficient) hcover
    · exact globalMixedFiveTwistHighResidue_card_cast_le_coefficient
        hLower hBout hpivotResidual hpivotOdd hconstantFive
          hconstantTwentyFive hcoset
    · simpa [coefficient, globalMixedActualMaskedSupport] using
        (actualMixedSupport_twistOddRootCoefficient_le
          (fiveMillionPivotSupport pivot) hLower hUpper
          (fiveMillionPivotSupport_primes pivot)
          (fiveMillionPivotSupport_increasing pivot) hProduct squareCoset)
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    let coefficient := globalMixedRootCoefficient100
      (fiveMillionPivotSupport pivot).length
      (globalMixedNormalSurvivorCount
        (globalMixedActualMaskedSupport pivot) squareCoset)
    apply fortyMillionHighResidueRow_of_card
      (coefficient := coefficient) hcover
    · exact globalMixedNormalHighResidue_card_cast_le_coefficient
        hLower hBout hpivotResidual hpivotOdd hconstantFive hcoset
    · simpa [coefficient, globalMixedActualMaskedSupport] using
        (actualMixedSupport_normalOddRootCoefficient_le
          (fiveMillionPivotSupport pivot) hLower hUpper
          (fiveMillionPivotSupport_primes pivot)
          (fiveMillionPivotSupport_increasing pivot) hProduct squareCoset)

private theorem actualFortyMillionEvenHighResidue_row_of_raw
    {valuation : GlobalMixedEvenValuation}
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hnormal : ∀ squareCoset,
      ¬ 5 ∣ pivot * baseResidue + 1 →
      modFiveCosetAccepts squareCoset
        (pivot * baseResidue + 1) = true →
      let survivors := globalMixedRestrictSurvivors
        (globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset)
        (globalMixedEvenNormalModulus valuation)
        (globalMixedEvenNormalResidue valuation)
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation)
          (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100)
    (htwist : ∀ squareCoset,
      5 ∣ pivot * baseResidue + 1 →
      ¬ 25 ∣ pivot * baseResidue + 1 →
      modFiveCosetAccepts squareCoset
        ((pivot * baseResidue + 1) / 5) = true →
      let survivors := globalMixedRestrictSurvivors
        (globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset)
        (globalMixedEvenTwistModulus valuation)
        (globalMixedEvenTwistResidue valuation)
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation)
          (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100) :
    FortyMillionHighResidueRow block
      (fortyMillionRootClassOfEvenValuation valuation)
      N pivot baseResidue := by
  classical
  have hLower : 5_000_000 <= N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;> omega
  have hUpper : N < 200_000_000 := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.upper] at hcover <;> omega
  have hProduct := fortyMillionPivotSupport_prod_le hBout hpivotResidual
  by_cases hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue = ∅
  · let coreCount := globalMixedCoreEvenRestrictedCount
      (globalMixedNormalSupportWords
        (globalMixedActualMaskedSupport pivot) false)
      (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
        valuation)
    let coefficient := globalMixedCoreEvenCoefficient100 valuation
      (fiveMillionPivotSupport pivot).length coreCount
    apply fortyMillionHighResidueRow_of_card
      (coefficient := coefficient) hcover
    · rw [hempty]
      simp
      positivity
    · simpa [coefficient, coreCount, globalMixedActualMaskedSupport] using
        (actualMixedSupport_normalEvenCoreCoefficient_le
          (fiveMillionPivotSupport pivot) hLower hUpper
          (fiveMillionPivotSupport_primes pivot)
          (fiveMillionPivotSupport_increasing pivot) hProduct
          valuation false)
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
        hconstantFive hconstantTwentyFive
    obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hquotientFive
    let survivors := globalMixedRestrictSurvivors
      (globalMixedTwistSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset)
      (globalMixedEvenTwistModulus valuation)
      (globalMixedEvenTwistResidue valuation)
    let coreCount := globalMixedCoreEvenRestrictedCount
      (globalMixedTwistSupportWords
        (globalMixedActualMaskedSupport pivot) squareCoset)
      (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
        valuation)
    let coefficient := globalMixedCoreEvenCoefficient100 valuation
      (fiveMillionPivotSupport pivot).length coreCount
    have hraw := htwist squareCoset hconstantFive
      hconstantTwentyFive hcoset
    have hsurvivors : survivors.card ≤ coreCount := by
      simpa [survivors, coreCount] using
        (globalMixedTwistRestrictedSurvivors_card_le_coreCount
          valuation (globalMixedActualMaskedSupport pivot) squareCoset)
    have hcoefficient :
        globalMixedEvenRootCoefficient100
            (globalMixedEvenRootFactor valuation)
            (fiveMillionPivotSupport pivot).length survivors.card ≤
          coefficient := by
      dsimp [coefficient, globalMixedCoreEvenCoefficient100]
      unfold globalMixedEvenRootCoefficient100
      gcongr
    apply fortyMillionHighResidueRow_of_card
      (coefficient := coefficient) hcover
    · calc
        ((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) baseResidue).card : Rat) ≤
            (globalMixedEvenRootCoefficient100
              (globalMixedEvenRootFactor valuation)
              (fiveMillionPivotSupport pivot).length survivors.card : Rat) /
              100 := by simpa [survivors] using hraw
        _ ≤ (coefficient : Rat) / 100 := by gcongr
    · simpa [coefficient, coreCount, globalMixedActualMaskedSupport] using
        (actualMixedSupport_twistEvenCoreCoefficient_le
          (fiveMillionPivotSupport pivot) hLower hUpper
          (fiveMillionPivotSupport_primes pivot)
          (fiveMillionPivotSupport_increasing pivot) hProduct
          valuation squareCoset)
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    let survivors := globalMixedRestrictSurvivors
      (globalMixedNormalSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset)
      (globalMixedEvenNormalModulus valuation)
      (globalMixedEvenNormalResidue valuation)
    let coreCount := globalMixedCoreEvenRestrictedCount
      (globalMixedNormalSupportWords
        (globalMixedActualMaskedSupport pivot) squareCoset)
      (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
        valuation)
    let coefficient := globalMixedCoreEvenCoefficient100 valuation
      (fiveMillionPivotSupport pivot).length coreCount
    have hraw := hnormal squareCoset hconstantFive hcoset
    have hsurvivors : survivors.card ≤ coreCount := by
      simpa [survivors, coreCount] using
        (globalMixedNormalRestrictedSurvivors_card_le_coreCount
          valuation (globalMixedActualMaskedSupport pivot) squareCoset)
    have hcoefficient :
        globalMixedEvenRootCoefficient100
            (globalMixedEvenRootFactor valuation)
            (fiveMillionPivotSupport pivot).length survivors.card ≤
          coefficient := by
      dsimp [coefficient, globalMixedCoreEvenCoefficient100]
      unfold globalMixedEvenRootCoefficient100
      gcongr
    apply fortyMillionHighResidueRow_of_card
      (coefficient := coefficient) hcover
    · calc
        ((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) baseResidue).card : Rat) ≤
            (globalMixedEvenRootCoefficient100
              (globalMixedEvenRootFactor valuation)
              (fiveMillionPivotSupport pivot).length survivors.card : Rat) /
              100 := by simpa [survivors] using hraw
        _ ≤ (coefficient : Rat) / 100 := by gcongr
    · simpa [coefficient, coreCount, globalMixedActualMaskedSupport] using
        (actualMixedSupport_normalEvenCoreCoefficient_le
          (fiveMillionPivotSupport pivot) hLower hUpper
          (fiveMillionPivotSupport_primes pivot)
          (fiveMillionPivotSupport_increasing pivot) hProduct
          valuation squareCoset)

theorem actualFortyMillionEvenOneHighResidue_row
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    FortyMillionHighResidueRow block .evenOne N pivot baseResidue := by
  apply actualFortyMillionEvenHighResidue_row_of_raw
    (valuation := .one) hcover hBout hpivotResidual
  · intro squareCoset hfive hcoset
    simpa [globalMixedEvenNormalModulus, globalMixedEvenNormalResidue,
      globalMixedEvenRootFactor] using
      (globalMixedNormalHighResidue_card_cast_le_evenOne
        (by
          cases block <;>
            simp [FortyMillionTenBranchBlock.Covers,
              FortyMillionTenBranchBlock.lower] at hcover <;> omega)
        hBout hpivotResidual hpivotMod hfive hcoset)
  · intro squareCoset hfive htwentyFive hcoset
    simpa [globalMixedEvenTwistModulus, globalMixedEvenTwistResidue,
      globalMixedEvenRootFactor] using
      (globalMixedFiveTwistHighResidue_card_cast_le_evenOne
        (by
          cases block <;>
            simp [FortyMillionTenBranchBlock.Covers,
              FortyMillionTenBranchBlock.lower] at hcover <;> omega)
        hBout hpivotResidual hpivotMod hfive htwentyFive hcoset)

theorem actualFortyMillionEvenTwoHighResidue_row
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    FortyMillionHighResidueRow block .evenTwo N pivot baseResidue := by
  apply actualFortyMillionEvenHighResidue_row_of_raw
    (valuation := .two) hcover hBout hpivotResidual
  · intro squareCoset hfive hcoset
    simpa [globalMixedEvenNormalModulus, globalMixedEvenNormalResidue,
      globalMixedEvenRootFactor] using
      (globalMixedNormalHighResidue_card_cast_le_evenTwo
        (by
          cases block <;>
            simp [FortyMillionTenBranchBlock.Covers,
              FortyMillionTenBranchBlock.lower] at hcover <;> omega)
        hBout hpivotResidual hpivotMod hfive hcoset)
  · intro squareCoset hfive htwentyFive hcoset
    simpa [globalMixedEvenTwistModulus, globalMixedEvenTwistResidue,
      globalMixedEvenRootFactor] using
      (globalMixedFiveTwistHighResidue_card_cast_le_evenTwo
        (by
          cases block <;>
            simp [FortyMillionTenBranchBlock.Covers,
              FortyMillionTenBranchBlock.lower] at hcover <;> omega)
        hBout hpivotResidual hpivotMod hfive htwentyFive hcoset)

theorem actualFortyMillionEvenThreeHighResidue_row
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    FortyMillionHighResidueRow block .evenThree N pivot baseResidue := by
  apply actualFortyMillionEvenHighResidue_row_of_raw
    (valuation := .three) hcover hBout hpivotResidual
  · intro squareCoset hfive hcoset
    simpa [globalMixedEvenNormalModulus, globalMixedEvenNormalResidue,
      globalMixedEvenRootFactor] using
      (globalMixedNormalHighResidue_card_cast_le_evenThree
        (by
          cases block <;>
            simp [FortyMillionTenBranchBlock.Covers,
              FortyMillionTenBranchBlock.lower] at hcover <;> omega)
        hBout hpivotResidual hpivotMod hfive hcoset)
  · intro squareCoset hfive htwentyFive hcoset
    simpa [globalMixedEvenTwistModulus, globalMixedEvenTwistResidue,
      globalMixedEvenRootFactor] using
      (globalMixedFiveTwistHighResidue_card_cast_le_evenThree
        (by
          cases block <;>
            simp [FortyMillionTenBranchBlock.Covers,
              FortyMillionTenBranchBlock.lower] at hcover <;> omega)
        hBout hpivotResidual hpivotMod hfive htwentyFive hcoset)

private theorem actualFortyMillionHighPoints_of_residueRows
    {block : FortyMillionTenBranchBlock}
    {rootClass : FortyMillionRootClass} {N pivot : Nat}
    (hseven : FortyMillionHighResidueRow
      block rootClass N pivot 7)
    (heighteen : FortyMillionHighResidueRow
      block rootClass N pivot 18) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / 55)).card : Rat) +
      2 * ((Nat.primeCounting (N / 55) -
        Nat.primeCounting
          (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N ≤
      (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
        1_000_000_000 / 3 := by
  unfold FortyMillionHighResidueRow at hseven heighteen
  have hcard :
      (twoBaseHighTailSquarePoints N pivot (N / 55)).card ≤
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  calc
    (((twoBaseHighTailSquarePoints
          N pivot (N / 55)).card : Rat) +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting
            (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N ≤
      (((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 18).card : Rat) +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting
            (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N := by
            gcongr
            exact_mod_cast hcard
    _ = ((((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 7).card : Rat) +
          ((Nat.primeCounting (N / 55) -
            Nat.primeCounting
              (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N) +
        ((((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 18).card : Rat) +
          ((Nat.primeCounting (N / 55) -
            Nat.primeCounting
              (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N) := by
      ring
    _ ≤ (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 6 +
        (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 6 := add_le_add hseven heighteen
    _ = (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
        1_000_000_000 / 3 := by ring

theorem actualFortyMillionOddHighPoints
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / 55)).card : Rat) +
      2 * ((Nat.primeCounting (N / 55) -
        Nat.primeCounting (fortyMillionRootPrimeCutoff .odd) : Nat) : Rat)) /
        N ≤
      (fortyMillionRootEnvelopeNumerator block .odd : Rat) /
        1_000_000_000 / 3 :=
  actualFortyMillionHighPoints_of_residueRows
    (actualFortyMillionOddHighResidue_row
      hcover hBout hpivotResidual hpivotOdd)
    (actualFortyMillionOddHighResidue_row
      hcover hBout hpivotResidual hpivotOdd)

theorem actualFortyMillionEvenOneHighPoints
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / 55)).card : Rat) +
      2 * ((Nat.primeCounting (N / 55) -
        Nat.primeCounting
          (fortyMillionRootPrimeCutoff .evenOne) : Nat) : Rat)) / N ≤
      (fortyMillionRootEnvelopeNumerator block .evenOne : Rat) /
        1_000_000_000 / 3 :=
  actualFortyMillionHighPoints_of_residueRows
    (actualFortyMillionEvenOneHighResidue_row
      hcover hBout hpivotResidual hpivotMod)
    (actualFortyMillionEvenOneHighResidue_row
      hcover hBout hpivotResidual hpivotMod)

theorem actualFortyMillionEvenTwoHighPoints
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / 55)).card : Rat) +
      2 * ((Nat.primeCounting (N / 55) -
        Nat.primeCounting
          (fortyMillionRootPrimeCutoff .evenTwo) : Nat) : Rat)) / N ≤
      (fortyMillionRootEnvelopeNumerator block .evenTwo : Rat) /
        1_000_000_000 / 3 :=
  actualFortyMillionHighPoints_of_residueRows
    (actualFortyMillionEvenTwoHighResidue_row
      hcover hBout hpivotResidual hpivotMod)
    (actualFortyMillionEvenTwoHighResidue_row
      hcover hBout hpivotResidual hpivotMod)

theorem actualFortyMillionEvenThreeHighPoints
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / 55)).card : Rat) +
      2 * ((Nat.primeCounting (N / 55) -
        Nat.primeCounting
          (fortyMillionRootPrimeCutoff .evenThree) : Nat) : Rat)) / N ≤
      (fortyMillionRootEnvelopeNumerator block .evenThree : Rat) /
        1_000_000_000 / 3 :=
  actualFortyMillionHighPoints_of_residueRows
    (actualFortyMillionEvenThreeHighResidue_row
      hcover hBout hpivotResidual hpivotMod)
    (actualFortyMillionEvenThreeHighResidue_row
      hcover hBout hpivotResidual hpivotMod)

#print axioms actualFortyMillionOddHighResidue_row
#print axioms actualFortyMillionEvenOneHighResidue_row
#print axioms actualFortyMillionEvenTwoHighResidue_row
#print axioms actualFortyMillionEvenThreeHighResidue_row
#print axioms actualFortyMillionOddHighPoints
#print axioms actualFortyMillionEvenOneHighPoints
#print axioms actualFortyMillionEvenTwoHighPoints
#print axioms actualFortyMillionEvenThreeHighPoints

end Erdos848
