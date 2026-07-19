import Erdos848.TailGlobalMixedEvenHighCount
import Erdos848.TailGlobalMixedEvenActualRows

namespace Erdos848

/-!
# Selecting actual high-tail rows for even pivots

The normal/five-twist and mod-five-coset choice is shared by all three
two-adic valuation classes.  The only class-dependent inputs are the literal
restricted survivor row and the sharp transformed-root count.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedEvenValuationEnvelope : GlobalMixedEvenValuation -> Rat
  | .one => fiveMillionOddRoot7Envelope / 6
  | .two => fiveMillionOddRoot7Envelope / 6
  | .three => (6 / 5 : Rat) * (fiveMillionOddRoot7Envelope / 6)

def GlobalMixedEvenHighResidueRow
    (valuation : GlobalMixedEvenValuation)
    (N pivot baseResidue : Nat) : Prop :=
  (((twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue).card : Rat) +
    Nat.primeCounting (N / 55)) / N <=
      globalMixedEvenValuationEnvelope valuation

private lemma globalMixedEvenHighResidue_row_of_card
    {valuation : GlobalMixedEvenValuation}
    {N pivot baseResidue k : Nat} {survivors : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hcard :
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) <=
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation) k survivors.card : Rat) / 100)
    (hrow : globalMixedEvenRowBound valuation k survivors.card N) :
    GlobalMixedEvenHighResidueRow valuation N pivot baseResidue := by
  unfold GlobalMixedEvenHighResidueRow
  calc
    (((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) +
      Nat.primeCounting (N / 55)) / N <=
        ((globalMixedEvenRootCoefficient100
            (globalMixedEvenRootFactor valuation) k survivors.card : Rat) / 100 +
          Nat.primeCounting (N / 55)) / N := by
      gcongr
    _ <= globalMixedEvenValuationEnvelope valuation := by
      cases valuation <;>
        simpa [globalMixedEvenRowBound, globalMixedEvenValuationEnvelope] using hrow

/-- Uniform normal/five-twist selection.  The callbacks contain exactly the
class-specific transformed-root estimate; all support and coset choices are
literal and shared. -/
theorem globalMixedEvenHighResidue_row_of_four
    {valuation : GlobalMixedEvenValuation}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hnormal : ∀ squareCoset,
      ¬ 5 ∣ pivot * baseResidue + 1 ->
      modFiveCosetAccepts squareCoset
        (pivot * baseResidue + 1) = true ->
      let survivors := globalMixedRestrictSurvivors
        (globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset)
        (globalMixedEvenNormalModulus valuation)
        (globalMixedEvenNormalResidue valuation)
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) <=
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation)
          (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100)
    (htwist : ∀ squareCoset,
      5 ∣ pivot * baseResidue + 1 ->
      ¬ 25 ∣ pivot * baseResidue + 1 ->
      modFiveCosetAccepts squareCoset
        ((pivot * baseResidue + 1) / 5) = true ->
      let survivors := globalMixedRestrictSurvivors
        (globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset)
        (globalMixedEvenTwistModulus valuation)
        (globalMixedEvenTwistResidue valuation)
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) <=
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation)
          (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100)
    (hrows : GlobalMixedEvenActualValuationRowsBound valuation
      (fiveMillionPivotSupport pivot).length
      (globalMixedActualMaskedSupport pivot) N) :
    GlobalMixedEvenHighResidueRow valuation N pivot baseResidue := by
  classical
  by_cases hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue = ∅
  · apply globalMixedEvenHighResidue_row_of_card hLower ?_ hrows.1
    rw [hempty]
    simp
    positivity
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
    · exact globalMixedEvenHighResidue_row_of_card hLower
        (htwist false hconstantFive hconstantTwentyFive hcoset) hrows.2.2.1
    · exact globalMixedEvenHighResidue_row_of_card hLower
        (htwist true hconstantFive hconstantTwentyFive hcoset) hrows.2.2.2
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    cases squareCoset
    · exact globalMixedEvenHighResidue_row_of_card hLower
        (hnormal false hconstantFive hcoset) hrows.1
    · exact globalMixedEvenHighResidue_row_of_card hLower
        (hnormal true hconstantFive hcoset) hrows.2.1

theorem globalMixedEvenOneHighResidue_row_of_four
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hrows : GlobalMixedEvenActualValuationRowsBound .one
      (fiveMillionPivotSupport pivot).length
      (globalMixedActualMaskedSupport pivot) N) :
    GlobalMixedEvenHighResidueRow .one N pivot baseResidue := by
  apply globalMixedEvenHighResidue_row_of_four hLower hBout hpivotResidual
  · intro squareCoset hfive hcoset
    exact globalMixedNormalHighResidue_card_cast_le_evenOne
      hLower hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact globalMixedFiveTwistHighResidue_card_cast_le_evenOne
      hLower hBout hpivotResidual hpivotMod hfive htwentyFive hcoset
  · exact hrows

theorem globalMixedEvenTwoHighResidue_row_of_four
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4)
    (hrows : GlobalMixedEvenActualValuationRowsBound .two
      (fiveMillionPivotSupport pivot).length
      (globalMixedActualMaskedSupport pivot) N) :
    GlobalMixedEvenHighResidueRow .two N pivot baseResidue := by
  apply globalMixedEvenHighResidue_row_of_four hLower hBout hpivotResidual
  · intro squareCoset hfive hcoset
    exact globalMixedNormalHighResidue_card_cast_le_evenTwo
      hLower hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact globalMixedFiveTwistHighResidue_card_cast_le_evenTwo
      hLower hBout hpivotResidual hpivotMod hfive htwentyFive hcoset
  · exact hrows

theorem globalMixedEvenThreeHighResidue_row_of_four
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0)
    (hrows : GlobalMixedEvenActualValuationRowsBound .three
      (fiveMillionPivotSupport pivot).length
      (globalMixedActualMaskedSupport pivot) N) :
    GlobalMixedEvenHighResidueRow .three N pivot baseResidue := by
  apply globalMixedEvenHighResidue_row_of_four hLower hBout hpivotResidual
  · intro squareCoset hfive hcoset
    exact globalMixedNormalHighResidue_card_cast_le_evenThree
      hLower hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact globalMixedFiveTwistHighResidue_card_cast_le_evenThree
      hLower hBout hpivotResidual hpivotMod hfive htwentyFive hcoset
  · exact hrows

private theorem globalMixedEvenHighPoints_of_residueRows
    {valuation : GlobalMixedEvenValuation}
    {N pivot : Nat}
    (hseven : GlobalMixedEvenHighResidueRow valuation N pivot 7)
    (heighteen : GlobalMixedEvenHighResidueRow valuation N pivot 18) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
      2 * Nat.primeCounting (N / 55)) / N <=
        2 * globalMixedEvenValuationEnvelope valuation := by
  unfold GlobalMixedEvenHighResidueRow at hseven heighteen
  have hcard :
      (twoBaseHighTailSquarePoints N pivot (N / 55)).card <=
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  calc
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
      2 * Nat.primeCounting (N / 55)) / N <=
        (((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 7).card : Rat) +
          ((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 18).card : Rat) +
          2 * Nat.primeCounting (N / 55)) / N := by
      gcongr
      exact_mod_cast hcard
    _ = ((((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 7).card : Rat) +
          Nat.primeCounting (N / 55)) / N) +
        ((((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / 55) 18).card : Rat) +
          Nat.primeCounting (N / 55)) / N) := by ring
    _ <= globalMixedEvenValuationEnvelope valuation +
        globalMixedEvenValuationEnvelope valuation := add_le_add hseven heighteen
    _ = 2 * globalMixedEvenValuationEnvelope valuation := by ring

theorem globalMixedEvenOneHighPoints_row_of_four
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hrows : GlobalMixedEvenActualValuationRowsBound .one
      (fiveMillionPivotSupport pivot).length
      (globalMixedActualMaskedSupport pivot) N) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
      2 * Nat.primeCounting (N / 55)) / N <=
        fiveMillionOddRoot7Envelope / 3 := by
  have hseven := globalMixedEvenOneHighResidue_row_of_four
    (baseResidue := 7) hLower hBout hpivotResidual hpivotMod hrows
  have heighteen := globalMixedEvenOneHighResidue_row_of_four
    (baseResidue := 18) hLower hBout hpivotResidual hpivotMod hrows
  calc
    _ <= 2 * globalMixedEvenValuationEnvelope .one :=
      globalMixedEvenHighPoints_of_residueRows hseven heighteen
    _ = fiveMillionOddRoot7Envelope / 3 := by
      simp [globalMixedEvenValuationEnvelope]
      ring

theorem globalMixedEvenTwoHighPoints_row_of_four
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4)
    (hrows : GlobalMixedEvenActualValuationRowsBound .two
      (fiveMillionPivotSupport pivot).length
      (globalMixedActualMaskedSupport pivot) N) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
      2 * Nat.primeCounting (N / 55)) / N <=
        fiveMillionOddRoot7Envelope / 3 := by
  have hseven := globalMixedEvenTwoHighResidue_row_of_four
    (baseResidue := 7) hLower hBout hpivotResidual hpivotMod hrows
  have heighteen := globalMixedEvenTwoHighResidue_row_of_four
    (baseResidue := 18) hLower hBout hpivotResidual hpivotMod hrows
  calc
    _ <= 2 * globalMixedEvenValuationEnvelope .two :=
      globalMixedEvenHighPoints_of_residueRows hseven heighteen
    _ = fiveMillionOddRoot7Envelope / 3 := by
      simp [globalMixedEvenValuationEnvelope]
      ring

theorem globalMixedEvenThreeHighPoints_row_of_four
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0)
    (hrows : GlobalMixedEvenActualValuationRowsBound .three
      (fiveMillionPivotSupport pivot).length
      (globalMixedActualMaskedSupport pivot) N) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
      2 * Nat.primeCounting (N / 55)) / N <=
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
  have hseven := globalMixedEvenThreeHighResidue_row_of_four
    (baseResidue := 7) hLower hBout hpivotResidual hpivotMod hrows
  have heighteen := globalMixedEvenThreeHighResidue_row_of_four
    (baseResidue := 18) hLower hBout hpivotResidual hpivotMod hrows
  calc
    _ <= 2 * globalMixedEvenValuationEnvelope .three :=
      globalMixedEvenHighPoints_of_residueRows hseven heighteen
    _ = (2 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
      simp [globalMixedEvenValuationEnvelope]
      ring

#print axioms globalMixedEvenHighResidue_row_of_four
#print axioms globalMixedEvenOneHighPoints_row_of_four
#print axioms globalMixedEvenTwoHighPoints_row_of_four
#print axioms globalMixedEvenThreeHighPoints_row_of_four

end Erdos848
