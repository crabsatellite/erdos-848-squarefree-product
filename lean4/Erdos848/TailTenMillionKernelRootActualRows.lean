import Erdos848.TailTenMillionKernelRootActualHighEvenOne
import Erdos848.TailTenMillionKernelRootActualHighEvenTwo
import Erdos848.TailTenMillionKernelRootActualHighEvenThree
import Erdos848.TailTenMillionKernelRootActualHighOdd
import Erdos848.TailTenMillionKernelRootProfileClose

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

def TenMillionHighResidueRow
    (row : TenMillionKernelRootRow)
    (N pivot baseResidue : Nat) : Prop :=
  (((twoBaseHighTailSquarePointsAtResidue
      N pivot (N / row.split) baseResidue).card : Rat) +
    ((Nat.primeCounting (N / row.split) -
      Nat.primeCounting row.cutoff : Nat) : Rat)) / N ≤
      row.envelope / 6

private theorem tenMillionHighResidueRow_of_card
    {row : TenMillionKernelRootRow}
    {N pivot baseResidue : Nat}
    (hN : 0 < N)
    (hcard :
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / row.split) baseResidue).card : Rat) ≤
        tenMillionKernelRootHighCoefficient row
          (fiveMillionPivotSupport pivot).length N)
    (hprofile :
      tenMillionKernelRootActualProfile row
          (fiveMillionPivotSupport pivot).length N ≤
        row.envelope) :
    TenMillionHighResidueRow row N pivot baseResidue := by
  have hNQ : (0 : Rat) < N := by exact_mod_cast hN
  unfold TenMillionHighResidueRow
  calc
    (((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / row.split) baseResidue).card : Rat) +
        ((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat)) / N ≤
      (tenMillionKernelRootHighCoefficient row
          (fiveMillionPivotSupport pivot).length N +
        ((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat)) / N := by
            exact div_le_div_of_nonneg_right
              (add_le_add hcard le_rfl) hNQ.le
    _ = (((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat) +
        tenMillionKernelRootHighCoefficient row
          (fiveMillionPivotSupport pivot).length N) / N := by ring
    _ ≤ row.envelope / 6 := by
      unfold tenMillionKernelRootActualProfile at hprofile
      have hscaled := div_le_div_of_nonneg_right hprofile
        (by norm_num : (0 : Rat) ≤ 6)
      convert hscaled using 1 <;> ring

private theorem tenMillionHighResidueRow_of_normal_twist
    {normalRow twistRow : TenMillionKernelRootRow}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
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
        tenMillionKernelRootHighCoefficient normalRow
          (fiveMillionPivotSupport pivot).length N)
    (htwist : ∀ squareCoset,
      5 ∣ pivot * baseResidue + 1 →
      ¬ 25 ∣ pivot * baseResidue + 1 →
      modFiveCosetAccepts squareCoset
        ((pivot * baseResidue + 1) / 5) = true →
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / twistRow.split) baseResidue).card : Rat) ≤
        tenMillionKernelRootHighCoefficient twistRow
          (fiveMillionPivotSupport pivot).length N) :
    TenMillionHighResidueRow normalRow N pivot baseResidue := by
  classical
  have hLower' : 10_000_000 ≤ N := by
    simpa [tenMillionLower] using hLower
  have hUpper' : N < 20_000_000 := by
    simpa [tenMillionUpper] using hUpper
  have hN : 0 < N := by omega
  have hk := actualTenMillionPivotSupport_length_le_six
    hUpper' hBout hpivotResidual
  have hLength : (fiveMillionPivotSupport pivot).length < 7 := by omega
  have hnormalProfile :=
    tenMillionKernelRootActualProfile_all_N_le normalRow
      (fiveMillionPivotSupport pivot).length N
      hLength hLower hUpper
  have htwistProfile :=
    tenMillionKernelRootActualProfile_all_N_le twistRow
      (fiveMillionPivotSupport pivot).length N
      hLength hLower hUpper
  have hYNormal : 0 < N / normalRow.split := by
    cases normalRow <;>
      norm_num [TenMillionKernelRootRow.split] at * <;> omega
  by_cases hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / normalRow.split) baseResidue = ∅
  · refine tenMillionHighResidueRow_of_card
      (row := normalRow) hN ?_ hnormalProfile
    rw [hempty]
    simp
    unfold tenMillionKernelRootHighCoefficient
    apply mul_nonneg
    · positivity
    · apply add_nonneg
      · positivity
      · apply mul_nonneg
        · exact div_nonneg (by positivity) (by positivity)
        · apply add_nonneg
          · norm_num
          · exact div_nonneg (by positivity) (by norm_num)
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
    have hrow := tenMillionHighResidueRow_of_card hN
      (htwist squareCoset hconstantFive hconstantTwentyFive hcoset)
      htwistProfile
    simpa [TenMillionHighResidueRow, hsplit, hcutoff, henvelope] using hrow
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    exact tenMillionHighResidueRow_of_card hN
      (hnormal squareCoset hconstantFive hcoset) hnormalProfile

theorem actualTenMillionEvenOneHighResidue_row
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    TenMillionHighResidueRow .v1 N pivot baseResidue := by
  apply tenMillionHighResidueRow_of_normal_twist
    (normalRow := .v1) (twistRow := .v1Twist)
    hLower hUpper hBout hpivotResidual (by rfl) (by rfl) (by rfl)
  · intro squareCoset hfive hcoset
    exact actualTenMillionEvenOneNormalHighResidue_card_cast_le
      (by simpa [tenMillionLower] using hLower)
      (by simpa [tenMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact actualTenMillionEvenOneTwistHighResidue_card_cast_le
      (by simpa [tenMillionLower] using hLower)
      (by simpa [tenMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive htwentyFive hcoset

theorem actualTenMillionEvenTwoHighResidue_row
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    TenMillionHighResidueRow .v2 N pivot baseResidue := by
  apply tenMillionHighResidueRow_of_normal_twist
    (normalRow := .v2) (twistRow := .v2Twist)
    hLower hUpper hBout hpivotResidual (by rfl) (by rfl) (by rfl)
  · intro squareCoset hfive hcoset
    exact actualTenMillionEvenTwoNormalHighResidue_card_cast_le
      (by simpa [tenMillionLower] using hLower)
      (by simpa [tenMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact actualTenMillionEvenTwoTwistHighResidue_card_cast_le
      (by simpa [tenMillionLower] using hLower)
      (by simpa [tenMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive htwentyFive hcoset

theorem actualTenMillionEvenThreeHighResidue_row
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    TenMillionHighResidueRow .v3 N pivot baseResidue := by
  apply tenMillionHighResidueRow_of_normal_twist
    (normalRow := .v3) (twistRow := .v3Twist)
    hLower hUpper hBout hpivotResidual (by rfl) (by rfl) (by rfl)
  · intro squareCoset hfive hcoset
    exact actualTenMillionEvenThreeNormalHighResidue_card_cast_le
      (by simpa [tenMillionLower] using hLower)
      (by simpa [tenMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact actualTenMillionEvenThreeTwistHighResidue_card_cast_le
      (by simpa [tenMillionLower] using hLower)
      (by simpa [tenMillionUpper] using hUpper)
      hBout hpivotResidual hpivotMod hfive htwentyFive hcoset

theorem actualTenMillionOddHighResidue_row
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    TenMillionHighResidueRow .odd7 N pivot baseResidue := by
  apply tenMillionHighResidueRow_of_normal_twist
    (normalRow := .odd7) (twistRow := .odd7Twist)
    hLower hUpper hBout hpivotResidual (by rfl) (by rfl) (by rfl)
  · intro squareCoset hfive hcoset
    exact actualTenMillionOddNormalHighResidue_card_cast_le
      (by simpa [tenMillionLower] using hLower)
      (by simpa [tenMillionUpper] using hUpper)
      hBout hpivotResidual hpivotOdd hfive hcoset
  · intro squareCoset hfive htwentyFive hcoset
    exact actualTenMillionOddTwistHighResidue_card_cast_le
      (by simpa [tenMillionLower] using hLower)
      (by simpa [tenMillionUpper] using hUpper)
      hBout hpivotResidual hpivotOdd hfive htwentyFive hcoset

private theorem actualTenMillionHighPoints_of_residueRows
    {row : TenMillionKernelRootRow} {N pivot : Nat}
    (hseven : TenMillionHighResidueRow row N pivot 7)
    (heighteen : TenMillionHighResidueRow row N pivot 18) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / row.split)).card : Rat) +
      2 * ((Nat.primeCounting (N / row.split) -
        Nat.primeCounting row.cutoff : Nat) : Rat)) / N ≤
      row.envelope / 3 := by
  unfold TenMillionHighResidueRow at hseven heighteen
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

theorem actualTenMillionEvenOneHighPoints
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / TenMillionKernelRootRow.v1.split)).card : Rat) +
      2 * ((Nat.primeCounting
          (N / TenMillionKernelRootRow.v1.split) -
        Nat.primeCounting TenMillionKernelRootRow.v1.cutoff :
          Nat) : Rat)) / N ≤
      TenMillionKernelRootRow.v1.envelope / 3 :=
  actualTenMillionHighPoints_of_residueRows
    (actualTenMillionEvenOneHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)
    (actualTenMillionEvenOneHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)

theorem actualTenMillionEvenTwoHighPoints
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / TenMillionKernelRootRow.v2.split)).card : Rat) +
      2 * ((Nat.primeCounting
          (N / TenMillionKernelRootRow.v2.split) -
        Nat.primeCounting TenMillionKernelRootRow.v2.cutoff :
          Nat) : Rat)) / N ≤
      TenMillionKernelRootRow.v2.envelope / 3 :=
  actualTenMillionHighPoints_of_residueRows
    (actualTenMillionEvenTwoHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)
    (actualTenMillionEvenTwoHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)

theorem actualTenMillionEvenThreeHighPoints
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / TenMillionKernelRootRow.v3.split)).card : Rat) +
      2 * ((Nat.primeCounting
          (N / TenMillionKernelRootRow.v3.split) -
        Nat.primeCounting TenMillionKernelRootRow.v3.cutoff :
          Nat) : Rat)) / N ≤
      TenMillionKernelRootRow.v3.envelope / 3 :=
  actualTenMillionHighPoints_of_residueRows
    (actualTenMillionEvenThreeHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)
    (actualTenMillionEvenThreeHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotMod)

theorem actualTenMillionOddHighPoints
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / TenMillionKernelRootRow.odd7.split)).card : Rat) +
      2 * ((Nat.primeCounting
          (N / TenMillionKernelRootRow.odd7.split) -
        Nat.primeCounting TenMillionKernelRootRow.odd7.cutoff :
          Nat) : Rat)) / N ≤
      TenMillionKernelRootRow.odd7.envelope / 3 :=
  actualTenMillionHighPoints_of_residueRows
    (actualTenMillionOddHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotOdd)
    (actualTenMillionOddHighResidue_row
      hLower hUpper hBout hpivotResidual hpivotOdd)

end Erdos848
