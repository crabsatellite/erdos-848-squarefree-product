import Erdos848.TailHighTenBranchArithmetic
import Erdos848.TailTwentyMillionResidualBudget

namespace Erdos848

/-!
# Semantic consumer for a high ten-branch budget

All valuation, parity, and Hall casework is discharged here.  A high-range
row only supplies diagonal ratio bounds for the eight selection shapes.
-/

private theorem highTenBranchGapChargeCap_ratio_le_delta
    {budget : HighTenBranchBudget} {N : Nat}
    (hlowerPositive : 0 < budget.lower)
    (hN : budget.lower ≤ N) :
    (twentyMillionGapChargeCap N : Rat) / N ≤ budget.delta := by
  have hNposNat : 0 < N := hlowerPositive.trans_le hN
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
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
      _ ≤ (N : Rat) / 20_001 + 1 := by gcongr
  have hratio :
      (twentyMillionGapChargeCap N : Rat) / N ≤
        1 / 20_001 + 1 / N := by
    calc
      (twentyMillionGapChargeCap N : Rat) / N ≤
          ((N : Rat) / 20_001 + 1) / N :=
        div_le_div_of_nonneg_right hcap hNpos.le
      _ = 1 / 20_001 + 1 / N := by
        field_simp [ne_of_gt hNpos]
  have hLowerQ : (budget.lower : Rat) ≤ N := by
    exact_mod_cast hN
  have hLowerPos : (0 : Rat) < budget.lower := by
    exact_mod_cast hlowerPositive
  have hinv : (1 : Rat) / N ≤ 1 / budget.lower :=
    div_le_div_of_nonneg_left (by norm_num) hLowerPos hLowerQ
  calc
    (twentyMillionGapChargeCap N : Rat) / N ≤
        1 / 20_001 + 1 / N := hratio
    _ ≤ 1 / 20_001 + 1 / budget.lower := by linarith
    _ = budget.delta := by rfl

private theorem highTenBranch_add_mul_gap_ratio_le
    {budget : HighTenBranchBudget} {N factor : Nat}
    {diagonal : Rat}
    (hgap :
      (twentyMillionGapChargeCap N : Rat) / N ≤ budget.delta) :
    diagonal +
        ((factor * twentyMillionGapChargeCap N : Nat) : Rat) / N ≤
      diagonal + factor * budget.delta := by
  have hfactor : (0 : Rat) ≤ factor := by positivity
  have hscaled := mul_le_mul_of_nonneg_left hgap hfactor
  calc
    diagonal +
        ((factor * twentyMillionGapChargeCap N : Nat) : Rat) / N =
      diagonal + factor *
        ((twentyMillionGapChargeCap N : Rat) / N) := by
      push_cast
      ring
    _ ≤ diagonal + factor * budget.delta := by linarith

theorem highTenBranch_residual_ratio_le
    {budget : HighTenBranchBudget}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hlowerPositive : 0 < budget.lower)
    (hN : budget.lower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hbranch : TwentyMillionBranchApplies N B branch)
    (hdiagonal :
      ∀ selection : PaperDiagonalSelection,
        paperDiagonalRatio N selection ≤ budget.diagonal selection) :
    ((hallResidual N B).card : Rat) / N ≤
      budget.residualPayment branch := by
  have hNpos : 0 < N := hlowerPositive.trans_le hN
  have hgap :=
    highTenBranchGapChargeCap_ratio_le_delta hlowerPositive hN
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
        (hdiagonal .unrestricted)
      simpa [HighTenBranchBudget.residualPayment,
        HighTenBranchBudget.diagonal] using hraw
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
        (hdiagonal (.concentrated ⟨2, by decide⟩ cell))
      simpa [HighTenBranchBudget.residualPayment,
        HighTenBranchBudget.diagonal] using hraw
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
        (hdiagonal .unrestricted)
      simpa [HighTenBranchBudget.residualPayment,
        HighTenBranchBudget.diagonal] using hraw
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
        (hdiagonal (.evenTwoCell cell))
      exact hraw.trans (by
        simpa [HighTenBranchBudget.residualPayment,
          HighTenBranchBudget.diagonal] using
          (highTenBranch_add_mul_gap_ratio_le
            (budget := budget) (factor := 1)
            (diagonal := budget.diagonal (.evenTwoCell cell)) hgap))
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
        (hdiagonal .lowTwoAdic)
      exact hraw.trans (by
        simpa [HighTenBranchBudget.residualPayment,
          HighTenBranchBudget.diagonal] using
          (highTenBranch_add_mul_gap_ratio_le
            (budget := budget) (factor := 2)
            (diagonal := budget.diagonal .lowTwoAdic) hgap))
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
        (hdiagonal .lowTwoAdic)
      exact hraw.trans (by
        simpa [HighTenBranchBudget.residualPayment,
          HighTenBranchBudget.diagonal] using
          (highTenBranch_add_mul_gap_ratio_le
            (budget := budget) (factor := 2)
            (diagonal := budget.diagonal .lowTwoAdic) hgap))
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
        (hdiagonal .oddUnion)
      exact hraw.trans (by
        simpa [HighTenBranchBudget.residualPayment,
          HighTenBranchBudget.diagonal] using
          (highTenBranch_add_mul_gap_ratio_le
            (budget := budget) (factor := 3)
            (diagonal := budget.diagonal .oddUnion) hgap))
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
        (hdiagonal (.oddPlusCell parity cell))
      exact hraw.trans (by
        simpa [HighTenBranchBudget.residualPayment,
          HighTenBranchBudget.diagonal] using
          (highTenBranch_add_mul_gap_ratio_le
            (budget := budget) (factor := 3)
            (diagonal := budget.diagonal
              (.oddPlusCell parity cell)) hgap))
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
        (hdiagonal (.oneOdd parity))
      exact hraw.trans (by
        simpa [HighTenBranchBudget.residualPayment,
          HighTenBranchBudget.diagonal] using
          (highTenBranch_add_mul_gap_ratio_le
            (budget := budget) (factor := 3)
            (diagonal := budget.diagonal (.oneOdd parity)) hgap))
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
        (hdiagonal (.oneOddCell parity cell))
      exact hraw.trans (by
        simpa [HighTenBranchBudget.residualPayment,
          HighTenBranchBudget.diagonal] using
          (highTenBranch_add_mul_gap_ratio_le
            (budget := budget) (factor := 3)
            (diagonal := budget.diagonal
              (.oneOddCell parity cell)) hgap))

#print axioms highTenBranch_residual_ratio_le

end Erdos848
