import Erdos848.TailGlobalMixedEvenHighCount
import Erdos848.TailGlobalMixedEvenSupportSemantic
import Erdos848.TailR263EvenOneRoot23Actual

namespace Erdos848

/-! # Sharp cutoff-23 high-prime rows for actual `v₂ = 1` pivots -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def FiveMillionR263EvenOneHighResidueRow23
    (N pivot baseResidue : Nat) : Prop :=
  (((twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue).card : Rat) +
    (Nat.primeCounting (N / 55) - Nat.primeCounting 23 : Nat)) / N ≤
      fiveMillionR263EvenOneRoot23Envelope / 6

private theorem fiveMillionR263EvenOneRoot23Residue_of_card
    {N pivot baseResidue k checkedCount : Nat}
    {supportPrefix : List Nat} {fiveTwist squareCoset : Bool}
    (hcard :
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedEvenRootCoefficient100
          1 k checkedCount : Rat) / 100)
    (hrow :
      FiveMillionR263EvenOneRoot23RowBound
        k supportPrefix fiveTwist squareCoset N)
    (hcount :
      checkedCount =
        if fiveTwist then
          globalMixedEvenTerminalTwistCount .one
            (supportPrefix.filter fun p => decide (p ≤ 2843)) squareCoset
        else
          globalMixedEvenTerminalNormalCount .one
            (supportPrefix.filter fun p => decide (p ≤ 2843)) squareCoset) :
    FiveMillionR263EvenOneHighResidueRow23 N pivot baseResidue := by
  subst checkedCount
  unfold FiveMillionR263EvenOneRoot23RowBound at hrow
  dsimp only at hrow
  unfold FiveMillionR263EvenOneHighResidueRow23
  calc
    (((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) +
      (Nat.primeCounting (N / 55) - Nat.primeCounting 23 : Nat)) / N ≤
        ((globalMixedEvenRootCoefficient100 1 k
            (if fiveTwist then
              globalMixedEvenTerminalTwistCount .one
                (supportPrefix.filter fun p => decide (p ≤ 2843)) squareCoset
            else
              globalMixedEvenTerminalNormalCount .one
                (supportPrefix.filter fun p => decide (p ≤ 2843)) squareCoset) :
            Rat) / 100 +
          (Nat.primeCounting (N / 55) -
            Nat.primeCounting 23 : Nat)) / N := by
      gcongr
    _ ≤ fiveMillionR263EvenOneRoot23Envelope / 6 := hrow

private theorem fiveMillionR263EvenOneNormalHigh_card_le_checked
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset :
      modFiveCosetAccepts squareCoset
        (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100 1
        (fiveMillionPivotSupport pivot).length
        (globalMixedEvenTerminalNormalCount .one
          (globalMixedActualMaskedSupport pivot) squareCoset) : Rat) / 100 := by
  have hraw :=
    globalMixedNormalHighResidue_card_cast_le_evenOne
      hLower hBout hpivotResidual hpivotMod hconstantFive hcoset
  let survivors := globalMixedRestrictSurvivors
    (globalMixedNormalSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset) 2 1
  have hsurvivors :
      survivors.card ≤
        globalMixedEvenTerminalNormalCount .one
          (globalMixedActualMaskedSupport pivot) squareCoset := by
    simpa [survivors, globalMixedEvenTerminalNormalCount,
      globalMixedEvenNormalModulus, globalMixedEvenNormalResidue] using
      globalMixedNormalRestrictedSurvivors_card_le_coreCount
        .one (globalMixedActualMaskedSupport pivot) squareCoset
  have hcoefficient :
      globalMixedEvenRootCoefficient100 1
          (fiveMillionPivotSupport pivot).length survivors.card ≤
        globalMixedEvenRootCoefficient100 1
          (fiveMillionPivotSupport pivot).length
          (globalMixedEvenTerminalNormalCount .one
            (globalMixedActualMaskedSupport pivot) squareCoset) := by
    unfold globalMixedEvenRootCoefficient100
    gcongr
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedEvenRootCoefficient100 1
          (fiveMillionPivotSupport pivot).length survivors.card : Rat) /
          100 := by simpa [survivors] using hraw
    _ ≤ (globalMixedEvenRootCoefficient100 1
          (fiveMillionPivotSupport pivot).length
          (globalMixedEvenTerminalNormalCount .one
            (globalMixedActualMaskedSupport pivot) squareCoset) : Rat) /
          100 := by
      gcongr

private theorem fiveMillionR263EvenOneTwistHigh_card_le_checked
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset :
      modFiveCosetAccepts squareCoset
        ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100 1
        (fiveMillionPivotSupport pivot).length
        (globalMixedEvenTerminalTwistCount .one
          (globalMixedActualMaskedSupport pivot) squareCoset) : Rat) / 100 := by
  have hraw :=
    globalMixedFiveTwistHighResidue_card_cast_le_evenOne
      hLower hBout hpivotResidual hpivotMod hconstantFive
        hconstantTwentyFive hcoset
  let survivors := globalMixedRestrictSurvivors
    (globalMixedTwistSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset) 2 1
  have hsurvivors :
      survivors.card ≤
        globalMixedEvenTerminalTwistCount .one
          (globalMixedActualMaskedSupport pivot) squareCoset := by
    simpa [survivors, globalMixedEvenTerminalTwistCount,
      globalMixedEvenTwistModulus, globalMixedEvenTwistResidue] using
      globalMixedTwistRestrictedSurvivors_card_le_coreCount
        .one (globalMixedActualMaskedSupport pivot) squareCoset
  have hcoefficient :
      globalMixedEvenRootCoefficient100 1
          (fiveMillionPivotSupport pivot).length survivors.card ≤
        globalMixedEvenRootCoefficient100 1
          (fiveMillionPivotSupport pivot).length
          (globalMixedEvenTerminalTwistCount .one
            (globalMixedActualMaskedSupport pivot) squareCoset) := by
    unfold globalMixedEvenRootCoefficient100
    gcongr
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
        (globalMixedEvenRootCoefficient100 1
          (fiveMillionPivotSupport pivot).length survivors.card : Rat) /
          100 := by simpa [survivors] using hraw
    _ ≤ (globalMixedEvenRootCoefficient100 1
          (fiveMillionPivotSupport pivot).length
          (globalMixedEvenTerminalTwistCount .one
            (globalMixedActualMaskedSupport pivot) squareCoset) : Rat) /
          100 := by
      gcongr

theorem fiveMillionR263EvenOneHighResidue23
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    FiveMillionR263EvenOneHighResidueRow23 N pivot baseResidue := by
  classical
  have hrows := globalMixedActualPivot_evenOneRoot23Rows
    hLower hUpper hBout hpivotResidual
  have hmasked :
      (fiveMillionPivotSupport pivot).dropLast.filter
          (fun p => decide (p ≤ 2843)) =
        globalMixedActualMaskedSupport pivot := by
    rfl
  by_cases hempty :
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue = ∅
  · apply fiveMillionR263EvenOneRoot23Residue_of_card
      (k := (fiveMillionPivotSupport pivot).length)
      (supportPrefix := (fiveMillionPivotSupport pivot).dropLast)
      (fiveTwist := false) (squareCoset := false)
      (checkedCount :=
        globalMixedEvenTerminalNormalCount .one
          (globalMixedActualMaskedSupport pivot) false)
    · rw [hempty]
      simp
      positivity
    · exact hrows.1
    · simp [hmasked]
  · obtain ⟨point, hpoint⟩ := Finset.nonempty_iff_ne_empty.mpr hempty
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
      · apply fiveMillionR263EvenOneRoot23Residue_of_card
          (k := (fiveMillionPivotSupport pivot).length)
          (supportPrefix := (fiveMillionPivotSupport pivot).dropLast)
          (fiveTwist := true) (squareCoset := false)
          (checkedCount :=
            globalMixedEvenTerminalTwistCount .one
              (globalMixedActualMaskedSupport pivot) false)
        · exact fiveMillionR263EvenOneTwistHigh_card_le_checked
            hLower hBout hpivotResidual hpivotMod hconstantFive
              hconstantTwentyFive hcoset
        · exact hrows.2.2.1
        · simp [hmasked]
      · apply fiveMillionR263EvenOneRoot23Residue_of_card
          (k := (fiveMillionPivotSupport pivot).length)
          (supportPrefix := (fiveMillionPivotSupport pivot).dropLast)
          (fiveTwist := true) (squareCoset := true)
          (checkedCount :=
            globalMixedEvenTerminalTwistCount .one
              (globalMixedActualMaskedSupport pivot) true)
        · exact fiveMillionR263EvenOneTwistHigh_card_le_checked
            hLower hBout hpivotResidual hpivotMod hconstantFive
              hconstantTwentyFive hcoset
        · exact hrows.2.2.2
        · simp [hmasked]
    · obtain ⟨squareCoset, hcoset⟩ :=
        exists_modFiveCosetAccepts_of_not_dvd hconstantFive
      cases squareCoset
      · apply fiveMillionR263EvenOneRoot23Residue_of_card
          (k := (fiveMillionPivotSupport pivot).length)
          (supportPrefix := (fiveMillionPivotSupport pivot).dropLast)
          (fiveTwist := false) (squareCoset := false)
          (checkedCount :=
            globalMixedEvenTerminalNormalCount .one
              (globalMixedActualMaskedSupport pivot) false)
        · exact fiveMillionR263EvenOneNormalHigh_card_le_checked
            hLower hBout hpivotResidual hpivotMod hconstantFive hcoset
        · exact hrows.1
        · simp [hmasked]
      · apply fiveMillionR263EvenOneRoot23Residue_of_card
          (k := (fiveMillionPivotSupport pivot).length)
          (supportPrefix := (fiveMillionPivotSupport pivot).dropLast)
          (fiveTwist := false) (squareCoset := true)
          (checkedCount :=
            globalMixedEvenTerminalNormalCount .one
              (globalMixedActualMaskedSupport pivot) true)
        · exact fiveMillionR263EvenOneNormalHigh_card_le_checked
            hLower hBout hpivotResidual hpivotMod hconstantFive hcoset
        · exact hrows.2.1
        · simp [hmasked]

theorem fiveMillionR263EvenOneHighPoints23
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
      2 * ((Nat.primeCounting (N / 55) -
        Nat.primeCounting 23 : Nat) : Rat) / N ≤
      fiveMillionR263EvenOneRoot23Envelope / 3 := by
  have hseven := fiveMillionR263EvenOneHighResidue23
    (baseResidue := 7) hLower hUpper hBout hpivotResidual hpivotMod
  have heighteen := fiveMillionR263EvenOneHighResidue23
    (baseResidue := 18) hLower hUpper hBout hpivotResidual hpivotMod
  unfold FiveMillionR263EvenOneHighResidueRow23 at hseven heighteen
  have hcard :
      (twoBaseHighTailSquarePoints N pivot (N / 55)).card ≤
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  have hcardQ :
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) ≤
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card : Rat) := by
    exact_mod_cast hcard
  have hNpos : (0 : Rat) < N := by positivity
  calc
    ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting 23 : Nat) : Rat) / N ≤
      (((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card : Rat)) / N +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting 23 : Nat) : Rat) / N := by
      gcongr
    _ =
      ((((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 7).card : Rat) +
        (Nat.primeCounting (N / 55) -
          Nat.primeCounting 23 : Nat)) / N) +
      ((((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) 18).card : Rat) +
        (Nat.primeCounting (N / 55) -
          Nat.primeCounting 23 : Nat)) / N) := by ring
    _ ≤ fiveMillionR263EvenOneRoot23Envelope / 6 +
        fiveMillionR263EvenOneRoot23Envelope / 6 :=
      add_le_add hseven heighteen
    _ = fiveMillionR263EvenOneRoot23Envelope / 3 := by ring

#print axioms fiveMillionR263EvenOneHighResidue23
#print axioms fiveMillionR263EvenOneHighPoints23

end Erdos848
