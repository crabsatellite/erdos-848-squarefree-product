import Erdos848.TailFortyMillionTenBranchArithmetic
import Erdos848.TailTwentyMillionResidualChargeHelpers
import Erdos848.TailPaperDiagonalGridBounds

namespace Erdos848

/-! Semantic residual bounds for the reused ten-branch exhaustion on
`40M <= N < 200M`.  The generated grid is consumed through its proved
selection interface; no generated final inequality is trusted. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem fortyMillionTenBranchGapChargeCap_ratio_le_delta
    {block : FortyMillionTenBranchBlock} {N : Nat}
    (hcover : block.Covers N) :
    (twentyMillionGapChargeCap N : Rat) / N <=
      fortyMillionTenBranchDelta block := by
  have hNposNat : 0 < N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;>
      omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hsubLe : N - 1 <= N := Nat.sub_le N 1
  have hdivCast :
      (((N - 1) / 20_001 : Nat) : Rat) <=
        (N - 1 : Nat) / 20_001 := Nat.cast_div_le
  have hsubCast : ((N - 1 : Nat) : Rat) <= N := by
    exact_mod_cast hsubLe
  have hcap :
      (twentyMillionGapChargeCap N : Rat) <=
        (N : Rat) / 20_001 + 1 := by
    simp only [twentyMillionGapChargeCap, Nat.cast_add, Nat.cast_one]
    calc
      (((N - 1) / 20_001 : Nat) : Rat) + 1 <=
          (N - 1 : Nat) / 20_001 + 1 := by linarith
      _ <= (N : Rat) / 20_001 + 1 := by gcongr
  have hratio :
      (twentyMillionGapChargeCap N : Rat) / N <=
        1 / 20_001 + 1 / N := by
    calc
      (twentyMillionGapChargeCap N : Rat) / N <=
          ((N : Rat) / 20_001 + 1) / N :=
        div_le_div_of_nonneg_right hcap hNpos.le
      _ = 1 / 20_001 + 1 / N := by
        field_simp [ne_of_gt hNpos]
  have hLowerQ : (block.lower : Rat) <= N := by
    exact_mod_cast hcover.1
  have hLowerPos : (0 : Rat) < block.lower := by
    cases block <;>
      norm_num [FortyMillionTenBranchBlock.lower]
  have hinv : (1 : Rat) / N <= 1 / block.lower :=
    div_le_div_of_nonneg_left (by norm_num) hLowerPos hLowerQ
  calc
    (twentyMillionGapChargeCap N : Rat) / N <=
        1 / 20_001 + 1 / N := hratio
    _ <= 1 / 20_001 + 1 / block.lower := by linarith
    _ = fortyMillionTenBranchDelta block := by
      rfl

private theorem fortyMillionTenBranch_add_mul_gap_ratio_le
    {block : FortyMillionTenBranchBlock} {N factor : Nat}
    {diagonal : Rat}
    (hgap :
      (twentyMillionGapChargeCap N : Rat) / N <=
        fortyMillionTenBranchDelta block) :
    diagonal +
        ((factor * twentyMillionGapChargeCap N : Nat) : Rat) / N <=
      diagonal + factor * fortyMillionTenBranchDelta block := by
  have hfactor : (0 : Rat) <= factor := by positivity
  have hscaled := mul_le_mul_of_nonneg_left hgap hfactor
  calc
    diagonal +
        ((factor * twentyMillionGapChargeCap N : Nat) : Rat) / N =
      diagonal + factor *
        ((twentyMillionGapChargeCap N : Rat) / N) := by
          push_cast
          ring
    _ <= diagonal + factor * fortyMillionTenBranchDelta block := by
      linarith

private theorem fortyMillionTenBranch_paperDiagonalRatio_le
    {block : FortyMillionTenBranchBlock} {N : Nat}
    (hcover : block.Covers N) (hUpper : N < 200_000_000)
    (selection : PaperDiagonalSelection) :
    paperDiagonalRatio N selection <=
      fortyMillionTenBranchDiagonal block selection := by
  have hLowerGrid : 10_000_000 <= N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;>
      omega
  have hbound := paperDiagonalGrid_ratio_le_envelope
    selection hLowerGrid hUpper
  have hregime := FortyMillionTenBranchBlock.regimeAt_eq hcover
  simpa [paperDiagonalRatio, fortyMillionTenBranchDiagonal,
    hregime] using hbound

private theorem fortyMillionTenBranchDiagonal_concentrated_irrel
    (block : FortyMillionTenBranchBlock)
    (residueClass : Fin 4) (cell : Fin 9) :
    fortyMillionTenBranchDiagonal block
        (.concentrated residueClass cell) =
      fortyMillionTenBranchDiagonal block (.concentrated 0 0) := by
  cases block <;> rfl

private theorem fortyMillionTenBranchDiagonal_evenTwoCell_irrel
    (block : FortyMillionTenBranchBlock) (cell : Fin 9) :
    fortyMillionTenBranchDiagonal block (.evenTwoCell cell) =
      fortyMillionTenBranchDiagonal block (.evenTwoCell 0) := by
  cases block <;> rfl

private theorem fortyMillionTenBranchDiagonal_oddPlusCell_irrel
    (block : FortyMillionTenBranchBlock)
    (parity : Bool) (cell : Fin 9) :
    fortyMillionTenBranchDiagonal block (.oddPlusCell parity cell) =
      fortyMillionTenBranchDiagonal block (.oddPlusCell false 0) := by
  cases block <;> rfl

private theorem fortyMillionTenBranchDiagonal_oneOdd_irrel
    (block : FortyMillionTenBranchBlock) (parity : Bool) :
    fortyMillionTenBranchDiagonal block (.oneOdd parity) =
      fortyMillionTenBranchDiagonal block (.oneOdd false) := by
  cases block <;> rfl

private theorem fortyMillionTenBranchDiagonal_oneOddCell_irrel
    (block : FortyMillionTenBranchBlock)
    (parity : Bool) (cell : Fin 9) :
    fortyMillionTenBranchDiagonal block (.oneOddCell parity cell) =
      fortyMillionTenBranchDiagonal block (.oneOddCell false 0) := by
  cases block <;> rfl

theorem fortyMillionTenBranch_residual_ratio_le
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hcover : block.Covers N)
    (hUpper : N < 200_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    ((hallResidual N B).card : Rat) / N <=
      fortyMillionTenBranchResidualPayment block branch := by
  have hNpos : 0 < N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;>
      omega
  have hgap :=
    fortyMillionTenBranchGapChargeCap_ratio_le_delta hcover
  have hdiagonal :=
    fortyMillionTenBranch_paperDiagonalRatio_le hcover hUpper
  cases branch with
  | evenOneGeneric =>
      obtain ⟨triple, _nonconstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            .unrestricted).card <= 0 := by
        rw [paperSelectionCharge_unrestricted_eq_empty]
        simp
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.unrestricted)
        (lowerBound := N) (chargeCap := 0)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal .unrestricted)
      simpa [fortyMillionTenBranchResidualPayment] using hraw
  | evenOneCommonThree =>
      obtain ⟨cell, triple, _common, classConstant⟩ := hbranch
      have houtside :=
        paperValuationOutsideCellCharge_eq_empty_of_constant classConstant
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.concentrated ⟨2, by decide⟩ cell)).card <= 0 := by
        rw [paperSelectionCharge_concentrated_evenOne_eq, houtside]
        simp
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.concentrated
          ⟨2, by decide⟩ cell)
        (lowerBound := N) (chargeCap := 0)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal (.concentrated ⟨2, by decide⟩ cell))
      rw [fortyMillionTenBranchDiagonal_concentrated_irrel] at hraw
      simpa [fortyMillionTenBranchResidualPayment] using hraw
  | evenTwoGeneric =>
      obtain ⟨_evenOneCharge, triple, _nonconstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            .unrestricted).card <= 0 := by
        rw [paperSelectionCharge_unrestricted_eq_empty]
        simp
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.unrestricted)
        (lowerBound := N) (chargeCap := 0)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal .unrestricted)
      simpa [fortyMillionTenBranchResidualPayment] using hraw
  | evenTwoCommonThree =>
      obtain ⟨evenOneCharge, cell, triple, _common, classConstant⟩ := hbranch
      have houtside :=
        paperValuationOutsideCellCharge_eq_empty_of_constant classConstant
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.evenTwoCell cell)).card <=
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
      have hscaled := fortyMillionTenBranch_add_mul_gap_ratio_le
        (block := block) (factor := 1)
        (diagonal :=
          fortyMillionTenBranchDiagonal block (.evenTwoCell cell))
        hgap
      rw [fortyMillionTenBranchDiagonal_evenTwoCell_irrel] at hscaled
      exact hraw.trans (by
        simpa [fortyMillionTenBranchResidualPayment,
          fortyMillionTenBranchDiagonal_evenTwoCell_irrel] using hscaled)
  | evenThreeGeneric =>
      obtain ⟨evenOneCharge, evenTwoCharge, triple, _nonconstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B) .lowTwoAdic).card <=
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
        simpa [fortyMillionTenBranchResidualPayment] using
          (fortyMillionTenBranch_add_mul_gap_ratio_le
            (block := block) (factor := 2)
            (diagonal :=
              fortyMillionTenBranchDiagonal block .lowTwoAdic)
            hgap))
  | evenThreeCommonThree =>
      obtain ⟨evenOneCharge, evenTwoCharge, cell, triple, _common,
        _classConstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B) .lowTwoAdic).card <=
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
        simpa [fortyMillionTenBranchResidualPayment] using
          (fortyMillionTenBranch_add_mul_gap_ratio_le
            (block := block) (factor := 2)
            (diagonal :=
              fortyMillionTenBranchDiagonal block .lowTwoAdic)
            hgap))
  | oddTwoGeneric =>
      obtain ⟨evenOneCharge, evenTwoCharge, evenThreeCharge,
        parity, triple, _nonconstant⟩ := hbranch
      have hcharge :
          (paperSelectionCharge (hallResidual N B) .oddUnion).card <=
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
        simpa [fortyMillionTenBranchResidualPayment] using
          (fortyMillionTenBranch_add_mul_gap_ratio_le
            (block := block) (factor := 3)
            (diagonal :=
              fortyMillionTenBranchDiagonal block .oddUnion)
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
          (paperEvenValuationCharge N B).card <=
            3 * twentyMillionGapChargeCap N :=
        paperEvenValuationCharge_card_le_three_gap
          evenOneCharge evenTwoCharge evenThreeCharge
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.oddPlusCell parity cell)).card <=
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
      have hscaled := fortyMillionTenBranch_add_mul_gap_ratio_le
        (block := block) (factor := 3)
        (diagonal := fortyMillionTenBranchDiagonal block
          (.oddPlusCell parity cell)) hgap
      rw [fortyMillionTenBranchDiagonal_oddPlusCell_irrel] at hscaled
      exact hraw.trans (by
        simpa [fortyMillionTenBranchResidualPayment,
          fortyMillionTenBranchDiagonal_oddPlusCell_irrel] using hscaled)
  | oddOneGeneric =>
      obtain ⟨evenOneCharge, evenTwoCharge, evenThreeCharge,
        parity, otherEmpty, triple, _nonconstant⟩ := hbranch
      have honeCharge :
          (paperOneOddValuationCharge N B parity).card <=
            3 * twentyMillionGapChargeCap N :=
        paperOneOddValuationCharge_card_le_three_gap
          evenOneCharge evenTwoCharge evenThreeCharge otherEmpty
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.oneOdd parity)).card <=
              3 * twentyMillionGapChargeCap N := by
        rw [paperSelectionCharge_oneOdd_eq_valuationCharge]
        exact honeCharge
      have hraw := hallResidual_ratio_le_of_paperSelectionCharge
        (selection := PaperDiagonalSelection.oneOdd parity)
        (lowerBound := N)
        (chargeCap := 3 * twentyMillionGapChargeCap N)
        hBout hBprop hNpos le_rfl hcharge
        (hdiagonal (.oneOdd parity))
      have hscaled := fortyMillionTenBranch_add_mul_gap_ratio_le
        (block := block) (factor := 3)
        (diagonal := fortyMillionTenBranchDiagonal block
          (.oneOdd parity)) hgap
      rw [fortyMillionTenBranchDiagonal_oneOdd_irrel] at hscaled
      exact hraw.trans (by
        simpa [fortyMillionTenBranchResidualPayment,
          fortyMillionTenBranchDiagonal_oneOdd_irrel] using hscaled)
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
          (paperOneOddValuationCharge N B parity).card <=
            3 * twentyMillionGapChargeCap N :=
        paperOneOddValuationCharge_card_le_three_gap
          evenOneCharge evenTwoCharge evenThreeCharge otherEmpty
      have hcharge :
          (paperSelectionCharge (hallResidual N B)
            (.oneOddCell parity cell)).card <=
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
      have hscaled := fortyMillionTenBranch_add_mul_gap_ratio_le
        (block := block) (factor := 3)
        (diagonal := fortyMillionTenBranchDiagonal block
          (.oneOddCell parity cell)) hgap
      rw [fortyMillionTenBranchDiagonal_oneOddCell_irrel] at hscaled
      exact hraw.trans (by
        simpa [fortyMillionTenBranchResidualPayment,
          fortyMillionTenBranchDiagonal_oneOddCell_irrel] using hscaled)

#print axioms fortyMillionTenBranch_residual_ratio_le

end Erdos848
