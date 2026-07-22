import Erdos848.TailTwentyMillionRootActualHigh
import Erdos848.TailTwentyMillionRootProfileClose

namespace Erdos848

/-!
# Actual twenty-million root rows

The generated prefix certificate bounds one fixed normal or five-twist
residue.  This file makes the semantic choice forced by an actual Hall pivot,
then combines the two base progressions.  The only numerical input is the
kernel-checked all-`N` profile theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def TwentyMillionHighResidueRow
    (row : TwentyMillionRootRow)
    (N pivot baseResidue : Nat) : Prop :=
  (((twoBaseHighTailSquarePointsAtResidue
      N pivot (N / row.split) baseResidue).card : Rat) +
    ((Nat.primeCounting (N / row.split) -
      Nat.primeCounting row.cutoff : Nat) : Rat)) / N ≤
      row.envelope / 6

private theorem twentyMillionHighResidueRow_of_card
    {row : TwentyMillionRootRow}
    {N pivot baseResidue : Nat}
    (hN : 0 < N)
    (hcard :
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / row.split) baseResidue).card : Rat) ≤
        twentyMillionRootHighCoefficient row
          (fiveMillionPivotSupport pivot).length N)
    (hprofile :
      twentyMillionRootActualProfile row
          (fiveMillionPivotSupport pivot).length N ≤
        row.envelope) :
    TwentyMillionHighResidueRow row N pivot baseResidue := by
  have hNQ : (0 : Rat) < N := by exact_mod_cast hN
  unfold TwentyMillionHighResidueRow
  calc
    (((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / row.split) baseResidue).card : Rat) +
        ((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat)) / N ≤
      (twentyMillionRootHighCoefficient row
          (fiveMillionPivotSupport pivot).length N +
        ((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat)) / N := by
            exact div_le_div_of_nonneg_right
              (add_le_add_right hcard _) hNQ.le
    _ = (((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat) +
        twentyMillionRootHighCoefficient row
          (fiveMillionPivotSupport pivot).length N) / N := by ring
    _ ≤ row.envelope / 6 := by
      unfold twentyMillionRootActualProfile at hprofile
      linarith

private theorem twentyMillionHighResidueRow_of_normal_twist
    {normalRow twistRow : TwentyMillionRootRow}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hsplit : twistRow.split = normalRow.split)
    (hcutoff : twistRow.cutoff = normalRow.cutoff)
    (henvelope : twistRow.envelope = normalRow.envelope)
    (hnormal : ∀ squareCoset,
      ¬ 5 ∣ pivot * baseResidue + 1 →
      modFiveCosetAccepts squareCoset
        (pivot * baseResidue + 1) = true →
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / normalRow.split) baseResidue).card : Rat) ≤
        twentyMillionRootHighCoefficient normalRow
          (fiveMillionPivotSupport pivot).length N)
    (htwist : ∀ squareCoset,
      5 ∣ pivot * baseResidue + 1 →
      ¬ 25 ∣ pivot * baseResidue + 1 →
      modFiveCosetAccepts squareCoset
        ((pivot * baseResidue + 1) / 5) = true →
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / twistRow.split) baseResidue).card : Rat) ≤
        twentyMillionRootHighCoefficient twistRow
          (fiveMillionPivotSupport pivot).length N) :
    TwentyMillionHighResidueRow normalRow N pivot baseResidue := by
  classical
  have hLower' : 20_000_000 ≤ N := by
    simpa [twentyMillionLower] using hLower
  have hUpper' : N < 40_000_000 := by
    simpa [twentyMillionUpper] using hUpper
  have hN : 0 < N := by omega
  have hk := actualTwentyMillionPivotSupport_length_le_seven
    hUpper' hBout hpivotResidual
  have hLength : (fiveMillionPivotSupport pivot).length < 8 := by omega
  have hnormalProfile :=
    twentyMillionRootActualProfile_all_N_le normalRow
      (fiveMillionPivotSupport pivot).length N
      hLength hLower hUpper
  have htwistProfile :=
    twentyMillionRootActualProfile_all_N_le twistRow
      (fiveMillionPivotSupport pivot).length N
      hLength hLower hUpper
  by_cases hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / normalRow.split) baseResidue = ∅
  · refine twentyMillionHighResidueRow_of_card
      (row := normalRow) hN ?_ hnormalProfile
    rw [hempty]
    simp
    positivity
  have htwistNonempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / twistRow.split) baseResidue ≠ ∅ := by
    simpa [hsplit] using hempty
  obtain ⟨point, hpoint⟩ :=
    Finset.nonempty_iff_ne_empty.mpr htwistNonempty
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
    have hrow := twentyMillionHighResidueRow_of_card hN
      (htwist squareCoset hconstantFive hconstantTwentyFive hcoset)
      htwistProfile
    simpa [TwentyMillionHighResidueRow, hsplit, hcutoff, henvelope] using hrow
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    exact twentyMillionHighResidueRow_of_card hN
      (hnormal squareCoset hconstantFive hcoset) hnormalProfile

theorem actualTwentyMillionEvenOneHighResidue_row
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    TwentyMillionHighResidueRow .evenOne N pivot baseResidue := by
  apply twentyMillionHighResidueRow_of_normal_twist
    (normalRow := .evenOne) (twistRow := .evenOneTwist)
    hLower hUpper hBout hpivotResidual (by rfl) (by rfl) (by rfl)
  · intro squareCoset hfive hcoset
    exact actualTwentyMillionEvenOneNormalHighResidue_card_cast_le
      (by simpa [twentyMillionLower] using hLower)
      (by simpa [twentyMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact actualTwentyMillionEvenOneTwistHighResidue_card_cast_le
      (by simpa [twentyMillionLower] using hLower)
      (by simpa [twentyMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive htwentyFive hcoset

theorem actualTwentyMillionEvenTwoHighResidue_row
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    TwentyMillionHighResidueRow .evenTwo N pivot baseResidue := by
  apply twentyMillionHighResidueRow_of_normal_twist
    (normalRow := .evenTwo) (twistRow := .evenTwoTwist)
    hLower hUpper hBout hpivotResidual (by rfl) (by rfl) (by rfl)
  · intro squareCoset hfive hcoset
    exact actualTwentyMillionEvenTwoNormalHighResidue_card_cast_le
      (by simpa [twentyMillionLower] using hLower)
      (by simpa [twentyMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact actualTwentyMillionEvenTwoTwistHighResidue_card_cast_le
      (by simpa [twentyMillionLower] using hLower)
      (by simpa [twentyMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive htwentyFive hcoset

theorem actualTwentyMillionEvenThreeHighResidue_row
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    TwentyMillionHighResidueRow .evenThree N pivot baseResidue := by
  apply twentyMillionHighResidueRow_of_normal_twist
    (normalRow := .evenThree) (twistRow := .evenThreeTwist)
    hLower hUpper hBout hpivotResidual (by rfl) (by rfl) (by rfl)
  · intro squareCoset hfive hcoset
    exact actualTwentyMillionEvenThreeNormalHighResidue_card_cast_le
      (by simpa [twentyMillionLower] using hLower)
      (by simpa [twentyMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact actualTwentyMillionEvenThreeTwistHighResidue_card_cast_le
      (by simpa [twentyMillionLower] using hLower)
      (by simpa [twentyMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive htwentyFive hcoset

theorem actualTwentyMillionOddHighResidue_row
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    TwentyMillionHighResidueRow .odd N pivot baseResidue := by
  apply twentyMillionHighResidueRow_of_normal_twist
    (normalRow := .odd) (twistRow := .oddTwist)
    hLower hUpper hBout hpivotResidual (by rfl) (by rfl) (by rfl)
  · intro squareCoset hfive hcoset
    exact actualTwentyMillionOddNormalHighResidue_card_cast_le
      (by simpa [twentyMillionLower] using hLower)
      (by simpa [twentyMillionUpper] using hUpper)
      hBout hpivotResidual hpivotOdd hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact actualTwentyMillionOddTwistHighResidue_card_cast_le
      (by simpa [twentyMillionLower] using hLower)
      (by simpa [twentyMillionUpper] using hUpper)
      hBout hpivotResidual hpivotOdd hfive htwentyFive hcoset

private theorem actualTwentyMillionHighPoints_of_residueRows
    {row : TwentyMillionRootRow} {N pivot : Nat}
    (hseven : TwentyMillionHighResidueRow row N pivot 7)
    (heighteen : TwentyMillionHighResidueRow row N pivot 18) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / row.split)).card : Rat) +
      2 * ((Nat.primeCounting (N / row.split) -
        Nat.primeCounting row.cutoff : Nat) : Rat)) / N ≤
      row.envelope / 3 := by
  unfold TwentyMillionHighResidueRow at hseven heighteen
  have hcard :
      (twoBaseHighTailSquarePoints N pivot (N / row.split)).card ≤
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / row.split) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / row.split) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  calc
    (((twoBaseHighTailSquarePoints
          N pivot (N / row.split)).card : Rat) +
        2 * ((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat)) / N ≤
      (((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / row.split) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / row.split) 18).card : Rat) +
        2 * ((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat)) / N := by
            gcongr
            exact_mod_cast hcard
    _ = ((((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / row.split) 7).card : Rat) +
          ((Nat.primeCounting (N / row.split) -
            Nat.primeCounting row.cutoff : Nat) : Rat)) / N) +
        ((((twoBaseHighTailSquarePointsAtResidue
            N pivot (N / row.split) 18).card : Rat) +
          ((Nat.primeCounting (N / row.split) -
            Nat.primeCounting row.cutoff : Nat) : Rat)) / N) := by ring
    _ ≤ row.envelope / 6 + row.envelope / 6 :=
      add_le_add hseven heighteen
    _ = row.envelope / 3 := by ring

theorem actualTwentyMillionEvenOneHighPoints
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / TwentyMillionRootRow.evenOne.split)).card : Rat) +
      2 * ((Nat.primeCounting
          (N / TwentyMillionRootRow.evenOne.split) -
        Nat.primeCounting TwentyMillionRootRow.evenOne.cutoff :
          Nat) : Rat)) / N ≤
      TwentyMillionRootRow.evenOne.envelope / 3 :=
  actualTwentyMillionHighPoints_of_residueRows
    (actualTwentyMillionEvenOneHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)
    (actualTwentyMillionEvenOneHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)

theorem actualTwentyMillionEvenTwoHighPoints
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / TwentyMillionRootRow.evenTwo.split)).card : Rat) +
      2 * ((Nat.primeCounting
          (N / TwentyMillionRootRow.evenTwo.split) -
        Nat.primeCounting TwentyMillionRootRow.evenTwo.cutoff :
          Nat) : Rat)) / N ≤
      TwentyMillionRootRow.evenTwo.envelope / 3 :=
  actualTwentyMillionHighPoints_of_residueRows
    (actualTwentyMillionEvenTwoHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)
    (actualTwentyMillionEvenTwoHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)

theorem actualTwentyMillionEvenThreeHighPoints
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / TwentyMillionRootRow.evenThree.split)).card : Rat) +
      2 * ((Nat.primeCounting
          (N / TwentyMillionRootRow.evenThree.split) -
        Nat.primeCounting TwentyMillionRootRow.evenThree.cutoff :
          Nat) : Rat)) / N ≤
      TwentyMillionRootRow.evenThree.envelope / 3 :=
  actualTwentyMillionHighPoints_of_residueRows
    (actualTwentyMillionEvenThreeHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)
    (actualTwentyMillionEvenThreeHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)

theorem actualTwentyMillionOddHighPoints
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / TwentyMillionRootRow.odd.split)).card : Rat) +
      2 * ((Nat.primeCounting
          (N / TwentyMillionRootRow.odd.split) -
        Nat.primeCounting TwentyMillionRootRow.odd.cutoff :
          Nat) : Rat)) / N ≤
      TwentyMillionRootRow.odd.envelope / 3 :=
  actualTwentyMillionHighPoints_of_residueRows
    (actualTwentyMillionOddHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotOdd)
    (actualTwentyMillionOddHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotOdd)

#print axioms actualTwentyMillionEvenOneHighPoints
#print axioms actualTwentyMillionEvenTwoHighPoints
#print axioms actualTwentyMillionEvenThreeHighPoints
#print axioms actualTwentyMillionOddHighPoints

end Erdos848
