import Erdos848.TailHybridTenBranchArithmetic
import Erdos848.TailTwentyMillionResidualBudget
import Erdos848.TailHybridPaperDiagonalGridBounds

namespace Erdos848

/-!
# Semantic residual bounds on `200M ≤ N < 2B`

The finite diagonal grid supplies only checked atom counts.  The passage from
those counts and the ten structural branches to the Hall residual bound is
proved in this module.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hybridTenBranchGapChargeCap_ratio_le_delta
    {regime : HybridPaperDiagonalRegime} {N : Nat}
    (hcover : regime.Covers N) :
    (twentyMillionGapChargeCap N : Rat) / N ≤
      hybridTenBranchDelta regime := by
  have hNposNat : 0 < N := by
    cases regime <;>
      simp [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower] at hcover <;>
      omega
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
  have hLowerQ : (regime.lower : Rat) ≤ N := by
    exact_mod_cast hcover.1
  have hLowerPos : (0 : Rat) < regime.lower := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.lower]
  have hinv : (1 : Rat) / N ≤ 1 / regime.lower :=
    div_le_div_of_nonneg_left (by norm_num) hLowerPos hLowerQ
  calc
    (twentyMillionGapChargeCap N : Rat) / N ≤
        1 / 20_001 + 1 / N := hratio
    _ ≤ 1 / 20_001 + 1 / regime.lower := by linarith
    _ = hybridTenBranchDelta regime := by rfl

private theorem hybridTenBranch_add_mul_gap_ratio_le
    {regime : HybridPaperDiagonalRegime} {N factor : Nat}
    {diagonal : Rat}
    (hgap :
      (twentyMillionGapChargeCap N : Rat) / N ≤
        hybridTenBranchDelta regime) :
    diagonal +
        ((factor * twentyMillionGapChargeCap N : Nat) : Rat) / N ≤
      diagonal + factor * hybridTenBranchDelta regime := by
  have hfactor : (0 : Rat) ≤ factor := by positivity
  have hscaled := mul_le_mul_of_nonneg_left hgap hfactor
  calc
    diagonal +
        ((factor * twentyMillionGapChargeCap N : Nat) : Rat) / N =
      diagonal + factor *
        ((twentyMillionGapChargeCap N : Rat) / N) := by
      push_cast
      ring
    _ ≤ diagonal + factor * hybridTenBranchDelta regime := by
      linarith

private theorem hybridTenBranch_paperDiagonalRatio_le
    {regime : HybridPaperDiagonalRegime} {N : Nat}
    (hcover : regime.Covers N)
    (selection : PaperDiagonalSelection) :
    paperDiagonalRatio N selection ≤
      hybridTenBranchDiagonal regime selection := by
  have hLowerGrid : 200_000_000 ≤ N := by
    cases regime <;>
      simp [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower] at hcover <;>
      omega
  have hUpperGrid : N < 2_000_000_000 := by
    cases regime <;>
      simp [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.stop] at hcover <;>
      omega
  have hbound :=
    hybridPaperDiagonalGrid_ratio_le_envelope
      selection hLowerGrid hUpperGrid
  have hregime := regime.regimeAt_eq hcover
  simpa [paperDiagonalRatio, hybridTenBranchDiagonal,
    hregime] using hbound

private theorem hybridTenBranchDiagonal_concentrated_irrel
    (regime : HybridPaperDiagonalRegime)
    (residueClass : Fin 4) (cell : Fin 9) :
    hybridTenBranchDiagonal regime
        (.concentrated residueClass cell) =
      hybridTenBranchDiagonal regime (.concentrated 0 0) := by
  cases regime <;> rfl

private theorem hybridTenBranchDiagonal_evenTwoCell_irrel
    (regime : HybridPaperDiagonalRegime) (cell : Fin 9) :
    hybridTenBranchDiagonal regime (.evenTwoCell cell) =
      hybridTenBranchDiagonal regime (.evenTwoCell 0) := by
  cases regime <;> rfl

private theorem hybridTenBranchDiagonal_oddPlusCell_irrel
    (regime : HybridPaperDiagonalRegime)
    (parity : Bool) (cell : Fin 9) :
    hybridTenBranchDiagonal regime (.oddPlusCell parity cell) =
      hybridTenBranchDiagonal regime (.oddPlusCell false 0) := by
  cases regime <;> rfl

private theorem hybridTenBranchDiagonal_oneOdd_irrel
    (regime : HybridPaperDiagonalRegime) (parity : Bool) :
    hybridTenBranchDiagonal regime (.oneOdd parity) =
      hybridTenBranchDiagonal regime (.oneOdd false) := by
  cases regime <;> rfl

private theorem hybridTenBranchDiagonal_oneOddCell_irrel
    (regime : HybridPaperDiagonalRegime)
    (parity : Bool) (cell : Fin 9) :
    hybridTenBranchDiagonal regime (.oneOddCell parity cell) =
      hybridTenBranchDiagonal regime (.oneOddCell false 0) := by
  cases regime <;> rfl

theorem hybridTenBranch_residual_ratio_le
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    ((hallResidual N B).card : Rat) / N ≤
      hybridTenBranchResidualPayment regime branch := by
  have hNpos : 0 < N := by
    cases regime <;>
      simp [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower] at hcover <;>
      omega
  have hgap := hybridTenBranchGapChargeCap_ratio_le_delta hcover
  have hdiagonal := hybridTenBranch_paperDiagonalRatio_le hcover
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
      simpa [hybridTenBranchResidualPayment] using hraw
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
      rw [hybridTenBranchDiagonal_concentrated_irrel] at hraw
      simpa [hybridTenBranchResidualPayment] using hraw
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
      simpa [hybridTenBranchResidualPayment] using hraw
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
      have hscaled := hybridTenBranch_add_mul_gap_ratio_le
        (regime := regime) (factor := 1)
        (diagonal :=
          hybridTenBranchDiagonal regime (.evenTwoCell cell))
        hgap
      rw [hybridTenBranchDiagonal_evenTwoCell_irrel] at hscaled
      exact hraw.trans (by
        simpa [hybridTenBranchResidualPayment,
          hybridTenBranchDiagonal_evenTwoCell_irrel] using hscaled)
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
        simpa [hybridTenBranchResidualPayment] using
          (hybridTenBranch_add_mul_gap_ratio_le
            (regime := regime) (factor := 2)
            (diagonal := hybridTenBranchDiagonal regime .lowTwoAdic)
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
        (hdiagonal .lowTwoAdic)
      exact hraw.trans (by
        simpa [hybridTenBranchResidualPayment] using
          (hybridTenBranch_add_mul_gap_ratio_le
            (regime := regime) (factor := 2)
            (diagonal := hybridTenBranchDiagonal regime .lowTwoAdic)
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
        (hdiagonal .oddUnion)
      exact hraw.trans (by
        simpa [hybridTenBranchResidualPayment] using
          (hybridTenBranch_add_mul_gap_ratio_le
            (regime := regime) (factor := 3)
            (diagonal := hybridTenBranchDiagonal regime .oddUnion)
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
        (hdiagonal (.oddPlusCell parity cell))
      have hscaled := hybridTenBranch_add_mul_gap_ratio_le
        (regime := regime) (factor := 3)
        (diagonal := hybridTenBranchDiagonal regime
          (.oddPlusCell parity cell)) hgap
      rw [hybridTenBranchDiagonal_oddPlusCell_irrel] at hscaled
      exact hraw.trans (by
        simpa [hybridTenBranchResidualPayment,
          hybridTenBranchDiagonal_oddPlusCell_irrel] using hscaled)
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
      have hscaled := hybridTenBranch_add_mul_gap_ratio_le
        (regime := regime) (factor := 3)
        (diagonal := hybridTenBranchDiagonal regime
          (.oneOdd parity)) hgap
      rw [hybridTenBranchDiagonal_oneOdd_irrel] at hscaled
      exact hraw.trans (by
        simpa [hybridTenBranchResidualPayment,
          hybridTenBranchDiagonal_oneOdd_irrel] using hscaled)
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
      have hscaled := hybridTenBranch_add_mul_gap_ratio_le
        (regime := regime) (factor := 3)
        (diagonal := hybridTenBranchDiagonal regime
          (.oneOddCell parity cell)) hgap
      rw [hybridTenBranchDiagonal_oneOddCell_irrel] at hscaled
      exact hraw.trans (by
        simpa [hybridTenBranchResidualPayment,
          hybridTenBranchDiagonal_oneOddCell_irrel] using hscaled)

#print axioms hybridTenBranch_residual_ratio_le

end Erdos848
