import Erdos848.TailTwentyMillionBranchAllocation
import Erdos848.TailTwentyMillionPaperDiagonalBridge
import Erdos848.TailPaperValuationChargeBridge

namespace Erdos848

/-!
# Literal residual payment for the twenty-million rows

The allocation evidence determines which paper diagonal selection contains
the Hall residual after its earlier valuation classes are charged.  This file
performs that exact finite-set bookkeeping and consumes the eight compact
diagonal bounds.  No finite-prime or transformed-root estimate is used here.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def twentyMillionBranchResidualPayment :
    TwentyMillionBranch → Rat
  | .evenOneGeneric => twentyMillionDiagonalUnrestricted
  | .evenOneCommonThree => twentyMillionDiagonalConcentrated
  | .evenTwoGeneric => twentyMillionDiagonalUnrestricted
  | .evenTwoCommonThree =>
      twentyMillionDiagonalEvenTwoCell + twentyMillionDelta
  | .evenThreeGeneric | .evenThreeCommonThree =>
      twentyMillionDiagonalLowTwoAdic + 2 * twentyMillionDelta
  | .oddTwoGeneric =>
      twentyMillionDiagonalOddUnion + twentyMillionEvenCharge
  | .oddTwoCommonThree =>
      twentyMillionDiagonalOddPlusCell + twentyMillionEvenCharge
  | .oddOneGeneric =>
      twentyMillionDiagonalOneOdd + twentyMillionEvenCharge
  | .oddOneCommonThree =>
      twentyMillionDiagonalOneOddCell + twentyMillionEvenCharge

theorem twentyMillionGapChargeCap_ratio_le_delta
    {N : Nat} (hLower : 20_000_000 ≤ N) :
    (twentyMillionGapChargeCap N : Rat) / N ≤
      twentyMillionDelta := by
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num) hLower)
  have hsubLe : N - 1 ≤ N := Nat.sub_le N 1
  have hdivCast :
      (((N - 1) / 20_001 : Nat) : Rat) ≤
        (N - 1 : Nat) / 20_001 := Nat.cast_div_le
  have hsubCast : ((N - 1 : Nat) : Rat) ≤ N := by
    exact_mod_cast hsubLe
  have hcap :
      (twentyMillionGapChargeCap N : Rat) ≤
        (N : Rat) / 20_001 + 1 := by
    simp only [twentyMillionGapChargeCap, Nat.cast_add, Nat.cast_one]
    calc
      (((N - 1) / 20_001 : Nat) : Rat) + 1 ≤
          (N - 1 : Nat) / 20_001 + 1 := by linarith
      _ ≤ (N : Rat) / 20_001 + 1 := by
        gcongr
  have hratio :
      (twentyMillionGapChargeCap N : Rat) / N ≤
        1 / 20_001 + 1 / N := by
    calc
      (twentyMillionGapChargeCap N : Rat) / N ≤
          ((N : Rat) / 20_001 + 1) / N :=
        div_le_div_of_nonneg_right hcap hNpos.le
      _ = 1 / 20_001 + 1 / N := by
        field_simp [ne_of_gt hNpos]
  have hLowerRat : (20_000_000 : Rat) ≤ N := by
    exact_mod_cast hLower
  have hinv :
      (1 : Rat) / N ≤ 1 / 20_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerRat
  calc
    (twentyMillionGapChargeCap N : Rat) / N ≤
        1 / 20_001 + 1 / N := hratio
    _ ≤ 1 / 20_001 + 1 / 20_000_000 := by linarith
    _ = twentyMillionDelta := by
      norm_num [twentyMillionDelta]

@[simp] theorem twentyMillion_paperModNineCell_eq
    (x : Nat) :
    TwentyMillion.paperModNineCell x = paperModNineCell x := by
  apply Fin.ext
  simp only [TwentyMillion.paperModNineCell_val, paperModNineCell_val]

@[simp] theorem twentyMillion_paperOddValuationClass_eq
    (parity : Bool) :
    TwentyMillion.paperOddValuationClass parity =
      paperOddValuationClass parity := by
  cases parity <;> rfl

@[simp] theorem twentyMillion_oppositeOddParity_eq
    (parity : Bool) :
    TwentyMillion.oppositeOddParity parity =
      oppositeOddParity parity := by
  cases parity <;> rfl

theorem paperValuationOutsideCellCharge_eq_empty_of_constant
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    {cell : Fin 9}
    (hconstant :
      ∀ pivot ∈ fiveMillionValuationPart N B cls,
        TwentyMillion.paperModNineCell pivot = cell) :
    paperValuationOutsideCellCharge N B cls cell = ∅ := by
  apply Finset.Subset.antisymm
  · intro pivot hpivot
    have hparts := Finset.mem_filter.mp hpivot
    exact False.elim
      (hparts.2 (by simpa using hconstant pivot hparts.1))
  · exact Finset.empty_subset _

theorem paperEvenValuationCharge_card_le_three_gap
    {N : Nat} {B : Finset Nat} {gap : Nat}
    (hOne :
      (fiveMillionValuationPart N B .evenOne).card ≤ gap)
    (hTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤ gap)
    (hThree :
      (fiveMillionValuationPart N B .evenThree).card ≤ gap) :
    (paperEvenValuationCharge N B).card ≤ 3 * gap := by
  have hcard :
      (paperEvenValuationCharge N B).card =
        (fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo).card +
            (fiveMillionValuationPart N B .evenThree).card := by
    rw [← paperSelectionCharge_oddUnion_eq_evenValuationCharge,
      paperSelectionCharge_oddUnion_card]
  omega

theorem paperOneOddValuationCharge_card_le_three_gap
    {N : Nat} {B : Finset Nat} {parity : Bool} {gap : Nat}
    (hOne :
      (fiveMillionValuationPart N B .evenOne).card ≤ gap)
    (hTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤ gap)
    (hThree :
      (fiveMillionValuationPart N B .evenThree).card ≤ gap)
    (hOtherEmpty :
      (fiveMillionValuationPart N B
        (paperOddValuationClass
          (oppositeOddParity parity))).card = 0) :
    (paperOneOddValuationCharge N B parity).card ≤ 3 * gap := by
  have hsum := fiveMillionValuationParts_card_explicit N B
  have hcharge :=
    paperSelectionCharge_oneOdd_card_add_selected N B parity
  rw [paperSelectionCharge_oneOdd_eq_valuationCharge] at hcharge
  cases parity
  · simp only [paperOddValuationClass, oppositeOddParity] at hOtherEmpty hcharge ⊢
    omega
  · simp only [paperOddValuationClass, oppositeOddParity] at hOtherEmpty hcharge ⊢
    omega

private theorem add_mul_gap_ratio_le
    {N factor : Nat} {diagonal : Rat}
    (hgap :
      (twentyMillionGapChargeCap N : Rat) / N ≤
        twentyMillionDelta) :
    diagonal +
        ((factor * twentyMillionGapChargeCap N : Nat) : Rat) / N ≤
      diagonal + factor * twentyMillionDelta := by
  have hfactor : (0 : Rat) ≤ factor := by positivity
  have hscaled := mul_le_mul_of_nonneg_left hgap hfactor
  calc
    diagonal +
        ((factor * twentyMillionGapChargeCap N : Nat) : Rat) / N =
      diagonal +
        factor * ((twentyMillionGapChargeCap N : Rat) / N) := by
          push_cast
          ring
    _ ≤ diagonal + factor * twentyMillionDelta := by linarith

theorem twentyMillionEvenCharge_eq_three_delta :
    twentyMillionEvenCharge = 3 * twentyMillionDelta := by
  norm_num [twentyMillionEvenCharge, twentyMillionDelta]

theorem twentyMillionBranch_residual_ratio_le
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hbranch : TwentyMillionBranchApplies N B branch)
    (hdiagonal : TwentyMillionPaperDiagonalCertificates) :
    ((hallResidual N B).card : Rat) / N ≤
      twentyMillionBranchResidualPayment branch := by
  have hLowerNat : 20_000_000 ≤ N := by
    simpa [twentyMillionLower] using hLower
  have hNpos : 0 < N := lt_of_lt_of_le (by norm_num) hLowerNat
  have hgap := twentyMillionGapChargeCap_ratio_le_delta hLowerNat
  cases branch with
  | evenOneGeneric =>
      obtain ⟨triple, _nonconstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            .unrestricted).card ≤ 0 := by
        rw [paperSelectionCharge_unrestricted_eq_empty]
        simp
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.unrestricted)
        (lowerBound := N) (chargeCap := 0)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.unrestricted N hLower hUpper)
      simpa [twentyMillionBranchResidualPayment] using hraw
  | evenOneCommonThree =>
      obtain ⟨cell, triple, _common, classConstant⟩ := hbranch
      have houtside :=
        paperValuationOutsideCellCharge_eq_empty_of_constant classConstant
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.concentrated ⟨2, by decide⟩ cell)).card ≤ 0 := by
        rw [paperSelectionCharge_concentrated_evenOne_eq, houtside]
        simp
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.concentrated
          ⟨2, by decide⟩ cell)
        (lowerBound := N) (chargeCap := 0)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.concentrated N hLower hUpper ⟨2, by decide⟩ cell)
      simpa [twentyMillionBranchResidualPayment] using hraw
  | evenTwoGeneric =>
      obtain ⟨_evenOneCharge, triple, _nonconstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            .unrestricted).card ≤ 0 := by
        rw [paperSelectionCharge_unrestricted_eq_empty]
        simp
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.unrestricted)
        (lowerBound := N) (chargeCap := 0)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.unrestricted N hLower hUpper)
      simpa [twentyMillionBranchResidualPayment] using hraw
  | evenTwoCommonThree =>
      obtain ⟨evenOneCharge, cell, triple, _common, classConstant⟩ := hbranch
      have houtside :=
        paperValuationOutsideCellCharge_eq_empty_of_constant classConstant
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.evenTwoCell cell)).card ≤
              twentyMillionGapChargeCap N := by
        rw [paperSelectionCharge_evenTwoCell_eq, houtside,
          Finset.union_empty]
        exact evenOneCharge
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.evenTwoCell cell)
        (lowerBound := N)
        (chargeCap := twentyMillionGapChargeCap N)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.evenTwoCell N hLower hUpper cell)
      exact hraw.trans (by
        simpa [twentyMillionBranchResidualPayment] using
          (add_mul_gap_ratio_le
            (factor := 1) (diagonal := twentyMillionDiagonalEvenTwoCell)
            hgap))
  | evenThreeGeneric =>
      obtain ⟨evenOneCharge, evenTwoCharge, triple, _nonconstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B) .lowTwoAdic).card ≤
            2 * twentyMillionGapChargeCap N := by
        rw [paperSelectionCharge_lowTwoAdic_card]
        omega
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.lowTwoAdic)
        (lowerBound := N)
        (chargeCap := 2 * twentyMillionGapChargeCap N)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.lowTwoAdic N hLower hUpper)
      exact hraw.trans (by
        simpa [twentyMillionBranchResidualPayment] using
          (add_mul_gap_ratio_le
            (factor := 2) (diagonal := twentyMillionDiagonalLowTwoAdic)
            hgap))
  | evenThreeCommonThree =>
      obtain ⟨evenOneCharge, evenTwoCharge, cell, triple, _common,
        _classConstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B) .lowTwoAdic).card ≤
            2 * twentyMillionGapChargeCap N := by
        rw [paperSelectionCharge_lowTwoAdic_card]
        omega
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.lowTwoAdic)
        (lowerBound := N)
        (chargeCap := 2 * twentyMillionGapChargeCap N)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.lowTwoAdic N hLower hUpper)
      exact hraw.trans (by
        simpa [twentyMillionBranchResidualPayment] using
          (add_mul_gap_ratio_le
            (factor := 2) (diagonal := twentyMillionDiagonalLowTwoAdic)
            hgap))
  | oddTwoGeneric =>
      obtain ⟨evenOneCharge, evenTwoCharge, evenThreeCharge,
        parity, triple, _nonconstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B) .oddUnion).card ≤
            3 * twentyMillionGapChargeCap N := by
        rw [paperSelectionCharge_oddUnion_card]
        omega
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.oddUnion)
        (lowerBound := N)
        (chargeCap := 3 * twentyMillionGapChargeCap N)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.oddUnion N hLower hUpper)
      exact hraw.trans (by
        simpa only [twentyMillionBranchResidualPayment,
          twentyMillionEvenCharge_eq_three_delta] using
          (add_mul_gap_ratio_le
            (factor := 3) (diagonal := twentyMillionDiagonalOddUnion)
            hgap))
  | oddTwoCommonThree =>
      obtain ⟨evenOneCharge, evenTwoCharge, evenThreeCharge,
        parity, cell, triple, _common, classConstant⟩ := hbranch
      have houtside :=
        paperValuationOutsideCellCharge_eq_empty_of_constant classConstant
      have houtside' :
          paperValuationOutsideCellCharge N B
              (paperOddValuationClass (oppositeOddParity parity)) cell =
            ∅ := by
        simpa using houtside
      have hevenCharge :
          (paperEvenValuationCharge N B).card ≤
            3 * twentyMillionGapChargeCap N :=
        paperEvenValuationCharge_card_le_three_gap
          evenOneCharge evenTwoCharge evenThreeCharge
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.oddPlusCell parity cell)).card ≤
              3 * twentyMillionGapChargeCap N := by
        rw [paperSelectionCharge_oddPlusCell_eq, houtside',
          Finset.union_empty]
        exact hevenCharge
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.oddPlusCell parity cell)
        (lowerBound := N)
        (chargeCap := 3 * twentyMillionGapChargeCap N)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.oddPlusCell N hLower hUpper parity cell)
      exact hraw.trans (by
        simpa only [twentyMillionBranchResidualPayment,
          twentyMillionEvenCharge_eq_three_delta] using
          (add_mul_gap_ratio_le
            (factor := 3) (diagonal := twentyMillionDiagonalOddPlusCell)
            hgap))
  | oddOneGeneric =>
      obtain ⟨evenOneCharge, evenTwoCharge, evenThreeCharge,
        parity, otherEmpty, triple, _nonconstant⟩ := hbranch
      have honeCharge :
          (paperOneOddValuationCharge N B parity).card ≤
            3 * twentyMillionGapChargeCap N :=
        paperOneOddValuationCharge_card_le_three_gap
          evenOneCharge evenTwoCharge evenThreeCharge otherEmpty
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.oneOdd parity)).card ≤
              3 * twentyMillionGapChargeCap N := by
        rw [paperSelectionCharge_oneOdd_eq_valuationCharge]
        exact honeCharge
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.oneOdd parity)
        (lowerBound := N)
        (chargeCap := 3 * twentyMillionGapChargeCap N)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.oneOdd N hLower hUpper parity)
      exact hraw.trans (by
        simpa only [twentyMillionBranchResidualPayment,
          twentyMillionEvenCharge_eq_three_delta] using
          (add_mul_gap_ratio_le
            (factor := 3) (diagonal := twentyMillionDiagonalOneOdd)
            hgap))
  | oddOneCommonThree =>
      obtain ⟨evenOneCharge, evenTwoCharge, evenThreeCharge,
        parity, otherEmpty, cell, triple, _common, classConstant⟩ := hbranch
      have houtside :=
        paperValuationOutsideCellCharge_eq_empty_of_constant classConstant
      have houtside' :
          paperValuationOutsideCellCharge N B
              (paperOddValuationClass parity) cell = ∅ := by
        simpa using houtside
      have honeCharge :
          (paperOneOddValuationCharge N B parity).card ≤
            3 * twentyMillionGapChargeCap N :=
        paperOneOddValuationCharge_card_le_three_gap
          evenOneCharge evenTwoCharge evenThreeCharge otherEmpty
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.oneOddCell parity cell)).card ≤
              3 * twentyMillionGapChargeCap N := by
        rw [paperSelectionCharge_oneOddCell_eq, houtside',
          Finset.union_empty]
        exact honeCharge
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.oneOddCell parity cell)
        (lowerBound := N)
        (chargeCap := 3 * twentyMillionGapChargeCap N)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal.oneOddCell N hLower hUpper parity cell)
      exact hraw.trans (by
        simpa only [twentyMillionBranchResidualPayment,
          twentyMillionEvenCharge_eq_three_delta] using
          (add_mul_gap_ratio_le
            (factor := 3) (diagonal := twentyMillionDiagonalOneOddCell)
            hgap))

#print axioms twentyMillionGapChargeCap_ratio_le_delta
#print axioms paperValuationOutsideCellCharge_eq_empty_of_constant
#print axioms paperEvenValuationCharge_card_le_three_gap
#print axioms paperOneOddValuationCharge_card_le_three_gap
#print axioms twentyMillionEvenCharge_eq_three_delta
#print axioms twentyMillionBranch_residual_ratio_le

end Erdos848
