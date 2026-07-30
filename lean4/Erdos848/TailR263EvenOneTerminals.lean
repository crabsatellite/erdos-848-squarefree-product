import Erdos848.GeneratedTailR263EvenOneDiagonal.Certificate
import Erdos848.TailR263EvenOneFourPivotFinite
import Erdos848.TailR263EvenOneCellTriple
import Erdos848.TailR263EvenOneMixedHalfTerminal
import Erdos848.TailR263EvenOneTail23
import Erdos848.TailR263EvenTwoOneCell
import Erdos848.TailFiveMillionResidual

namespace Erdos848

/-!
# Direct E1 terminals at the unchanged Hall cut

The two-good row uses the unrestricted diagonal and four sharp good
three-subsets.  The one-cell row charges the eight remaining singleton cells,
uses the concentrated diagonal, and applies the classification-free
three-pivot mixed-half payment.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def fiveMillionR263EvenOneTwoGoodTerminal
    [E1Finite23SharpCertificate]
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    (hx49 : selection.x0 % 49 ≠ selection.x1 % 49)
    (hx121 : selection.x0 % 121 ≠ selection.x1 % 121)
    (hy49 : selection.y0 % 49 ≠ selection.y1 % 49)
    (hy121 : selection.y0 % 121 ≠ selection.y1 % 121) :
    FiveMillionR263FourPivotTerminalCertificate N B := by
  have hpivotsPart := selection.pivots_subset_part
  have hpivotsCard := selection.pivots_card
  have hpivotsCompletion : selection.pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B .evenOne
        (hpivotsPart hpivot))).1
  have hdiagonal :=
    (_root_.Erdos848.GeneratedTailR263EvenOneDiagonal.fiveMillionR263EvenOneDiagonal_kernel_close
        N hLower hUpper).unrestricted
  have hresidualSubset :=
    hallResidual_subset_tailDiagonalBad hBout hBprop
  have hresidualCard :
      ((hallResidual N B).card : Rat) <=
        ((tailDiagonalBad N).card : Rat) := by
    exact_mod_cast Finset.card_le_card hresidualSubset
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hresidual :
      ((hallResidual N B).card : Rat) / N <=
        tailR263EvenOneUnrestrictedDiagonalEnvelope :=
    (div_le_div_of_nonneg_right hresidualCard hNpos.le).trans hdiagonal
  have hfinite :=
    fiveMillionR263EvenOneFourPivotFinite_ratio_le_twoGood
      hLower hUpper hBout selection hx49 hx121 hy49 hy121
  have htail :=
    hallBaseTailSquarePayment_fourThree_r263_evenOne23_ratio_le
      hLower hUpper hBout hpivotsPart hpivotsCard
  refine
    { branch := .evenOneTwoGood
      pivots := selection.pivots
      pivotsCard := hpivotsCard
      cutoff := 23
      pivotsCompletion := hpivotsCompletion
      residualEnvelope := tailR263EvenOneUnrestrictedDiagonalEnvelope
      finiteEnvelope := 4 * e1FiniteSharpFourTargetRat .good
      tailEnvelope :=
        4 * fiveMillionSquareTail23Envelope / 25 +
          2 * fiveMillionR263EvenOneRoot23Envelope / 3
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  norm_num [fiveMillionR263BranchCeiling,
    tailR263EvenOneUnrestrictedDiagonalEnvelope,
    e1FiniteSharpFourTargetRat, e1FiniteSharpFourTargetMillion,
    fiveMillionSquareTail23Envelope,
    fiveMillionR263EvenOneRoot23Envelope]

def fiveMillionR263EvenOneOneCellCharge
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Finset Nat :=
  fiveMillionValuationPart N B .evenOne \
    fiveMillionR263EvenOneCell N B cell

lemma fiveMillionR263EvenOneOneCellCharge_subset_residual
    (N : Nat) (B : Finset Nat) (cell : Fin 9) :
    fiveMillionR263EvenOneOneCellCharge N B cell ⊆ hallResidual N B := by
  intro x hx
  exact fiveMillionValuationPart_subset_residual N B .evenOne
    (Finset.mem_sdiff.mp hx).1

lemma fiveMillionR263EvenOneOneCellCharge_card_le_eight
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hsparse : ∀ other : Fin 9, other ≠ cell →
      (fiveMillionR263EvenOneCell N B other).card <= 1) :
    (fiveMillionR263EvenOneOneCellCharge N B cell).card <= 8 := by
  have hraw := card_sdiff_cellFibre_finNine_le_eight_mul
    (fiveMillionValuationPart N B .evenOne)
    oddModNineResidue cell 1 (by
      intro other hne
      simpa [cellFibre, fiveMillionR263EvenOneCell] using
        hsparse other hne)
  simpa [fiveMillionR263EvenOneOneCellCharge, cellFibre,
    fiveMillionR263EvenOneCell] using hraw

lemma fiveMillionStructuredResidual_subset_r263EvenOneConcentrated
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    fiveMillionStructuredResidual N B
        (fiveMillionR263EvenOneOneCellCharge N B cell) ⊆
      tailR263EvenOneConcentratedDiagonal N cell := by
  intro x hx
  have hxParts := Finset.mem_sdiff.mp hx
  have hxResidual : x ∈ hallResidual N B := hxParts.1
  have hxNotCharge := hxParts.2
  have hxDiagonal : x ∈ tailDiagonalBad N := by
    have hglobal := hallResidual_subset_globalMixedTailDiagonalBad
      hBout hBprop hxResidual
    have hparts := Finset.mem_filter.mp hglobal
    apply Finset.mem_filter.mpr
    exact ⟨hparts.1,
      ⟨⟨hparts.2.1, hparts.2.2.1⟩, hparts.2.2.2⟩⟩
  by_cases hOne : fiveMillionValuationClassOf x = .evenOne
  · have hxOne : x ∈ fiveMillionValuationPart N B .evenOne :=
      mem_fiveMillionValuationPart.mpr ⟨hxResidual, hOne⟩
    have hxCell : x ∈ fiveMillionR263EvenOneCell N B cell := by
      by_contra hnotCell
      exact hxNotCharge (Finset.mem_sdiff.mpr ⟨hxOne, hnotCell⟩)
    apply Finset.mem_union_right
    apply Finset.mem_filter.mpr
    refine ⟨hxDiagonal, fiveMillionValuationPart_evenOne hxOne, ?_⟩
    simpa [oddModNineResidue] using
      congrArg Fin.val (Finset.mem_filter.mp hxCell).2
  · by_cases hTwo : fiveMillionValuationClassOf x = .evenTwo
    · have hxTwo : x ∈ fiveMillionValuationPart N B .evenTwo :=
        mem_fiveMillionValuationPart.mpr ⟨hxResidual, hTwo⟩
      apply Finset.mem_union_left
      apply Finset.mem_union_right
      apply Finset.mem_biUnion.mpr
      let residue : Fin 9 := ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩
      refine ⟨residue, Finset.mem_univ _, ?_⟩
      apply Finset.mem_filter.mpr
      exact ⟨hxDiagonal,
        fiveMillionValuationPart_evenTwo hxTwo, rfl⟩
    · apply Finset.mem_union_left
      apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hxDiagonal,
        tailR263LowTwo_accepts_of_not_evenOne_evenTwo hOne hTwo⟩

lemma fiveMillionStructuredResidual_subset_r263EvenOneSingleFibre
    {N : Nat} {B : Finset Nat} {cell : Fin 9} {residue : Fin 49}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcontained : ∀ x ∈ fiveMillionR263EvenOneCell N B cell,
      x % 49 = residue.val) :
    fiveMillionStructuredResidual N B
        (fiveMillionR263EvenOneOneCellCharge N B cell) ⊆
      tailR263EvenOneFibreCoverDiagonal N {cell} (fun _ => residue) := by
  intro x hx
  have hxParts := Finset.mem_sdiff.mp hx
  have hxResidual : x ∈ hallResidual N B := hxParts.1
  have hxNotCharge := hxParts.2
  have hxDiagonal : x ∈ tailDiagonalBad N := by
    have hglobal := hallResidual_subset_globalMixedTailDiagonalBad
      hBout hBprop hxResidual
    have hparts := Finset.mem_filter.mp hglobal
    apply Finset.mem_filter.mpr
    exact ⟨hparts.1,
      ⟨hparts.2.1, hparts.2.2.1⟩, hparts.2.2.2⟩
  by_cases hOne : fiveMillionValuationClassOf x = .evenOne
  · have hxOne : x ∈ fiveMillionValuationPart N B .evenOne :=
      mem_fiveMillionValuationPart.mpr ⟨hxResidual, hOne⟩
    have hxCell : x ∈ fiveMillionR263EvenOneCell N B cell := by
      by_contra hnotCell
      exact hxNotCharge (Finset.mem_sdiff.mpr ⟨hxOne, hnotCell⟩)
    apply Finset.mem_union_right
    apply Finset.mem_biUnion.mpr
    refine ⟨cell, by simp, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_filter.mpr
      ⟨hxDiagonal, fiveMillionValuationPart_evenOne hxOne, ?_⟩, ?_⟩
    · simpa [oddModNineResidue] using
        congrArg Fin.val (Finset.mem_filter.mp hxCell).2
    · exact hcontained x hxCell
  · by_cases hTwo : fiveMillionValuationClassOf x = .evenTwo
    · have hxTwo : x ∈ fiveMillionValuationPart N B .evenTwo :=
        mem_fiveMillionValuationPart.mpr ⟨hxResidual, hTwo⟩
      apply Finset.mem_union_left
      apply Finset.mem_union_right
      apply Finset.mem_biUnion.mpr
      let residue9 : Fin 9 := ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩
      refine ⟨residue9, Finset.mem_univ _, ?_⟩
      apply Finset.mem_filter.mpr
      exact ⟨hxDiagonal,
        fiveMillionValuationPart_evenTwo hxTwo, rfl⟩
    · apply Finset.mem_union_left
      apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hxDiagonal,
        tailR263LowTwo_accepts_of_not_evenOne_evenTwo hOne hTwo⟩

private theorem fiveMillionR263EvenOneOneCellResidual_ratio_le
    {N : Nat} {B diagonal : Finset Nat} {cell : Fin 9}
    {envelope : Rat}
    (hLower : 5_000_000 ≤ N)
    (hSparse : ∀ other : Fin 9, other ≠ cell →
      (fiveMillionR263EvenOneCell N B other).card ≤ 1)
    (hstructuredSubset :
      fiveMillionStructuredResidual N B
          (fiveMillionR263EvenOneOneCellCharge N B cell) ⊆ diagonal)
    (hdiagonal : (diagonal.card : Rat) / N ≤ envelope) :
    ((hallResidual N B).card : Rat) / N ≤
      envelope + 8 / 5_000_000 := by
  let charged := fiveMillionR263EvenOneOneCellCharge N B cell
  have hchargedSubset : charged ⊆ hallResidual N B := by
    simpa [charged] using
      fiveMillionR263EvenOneOneCellCharge_subset_residual N B cell
  have hchargedCard : charged.card ≤ 8 := by
    simpa [charged] using
      fiveMillionR263EvenOneOneCellCharge_card_le_eight hSparse
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hstructuredCard :
      (fiveMillionStructuredResidual N B charged).card ≤ diagonal.card :=
    Finset.card_le_card (by simpa [charged] using hstructuredSubset)
  have hstructuredRatio :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        envelope := by
    have hcardQ :
        ((fiveMillionStructuredResidual N B charged).card : Rat) ≤
          (diagonal.card : Rat) := by
      exact_mod_cast hstructuredCard
    exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans hdiagonal
  have hchargeRatio : (charged.card : Rat) / N ≤ 8 / 5_000_000 := by
    have hcardQ : (charged.card : Rat) ≤ 8 := by
      exact_mod_cast hchargedCard
    have hLowerQ : (5_000_000 : Rat) ≤ N := by
      exact_mod_cast hLower
    calc
      (charged.card : Rat) / N ≤ 8 / N :=
        div_le_div_of_nonneg_right hcardQ hNpos.le
      _ ≤ 8 / 5_000_000 :=
        div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  calc
    ((hallResidual N B).card : Rat) / N =
        ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
          (charged.card : Rat) / N := by
      rw [← add_div]
      congr 1
      exact_mod_cast hpartition.symm
    _ ≤ envelope + 8 / 5_000_000 :=
      add_le_add hstructuredRatio hchargeRatio

private theorem fiveMillionR263EvenOneOneCellConcentratedResidual_ratio_le
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hSparse : ∀ other : Fin 9, other ≠ cell →
      (fiveMillionR263EvenOneCell N B other).card ≤ 1) :
    ((hallResidual N B).card : Rat) / N ≤
      tailR263EvenOneConcentratedDiagonalEnvelope + 8 / 5_000_000 := by
  apply fiveMillionR263EvenOneOneCellResidual_ratio_le
    hLower hSparse
      (fiveMillionStructuredResidual_subset_r263EvenOneConcentrated
        hBout hBprop)
  exact
    (_root_.Erdos848.GeneratedTailR263EvenOneDiagonal.fiveMillionR263EvenOneDiagonal_kernel_close
      N hLower hUpper).concentrated cell

private theorem fiveMillionR263EvenOneOneCellFibreResidual_ratio_le
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hSparse : ∀ other : Fin 9, other ≠ cell →
      (fiveMillionR263EvenOneCell N B other).card ≤ 1)
    (hcontained : fiveMillionR263EvenOneCellContained49 N B cell) :
    ((hallResidual N B).card : Rat) / N ≤
      tailR263EvenOneFibreCoverDiagonalEnvelope + 8 / 5_000_000 := by
  obtain ⟨residue, hresidue⟩ := hcontained
  apply fiveMillionR263EvenOneOneCellResidual_ratio_le
    hLower hSparse
      (fiveMillionStructuredResidual_subset_r263EvenOneSingleFibre
        hBout hBprop hresidue)
  exact
    (_root_.Erdos848.GeneratedTailR263EvenOneDiagonal.fiveMillionR263EvenOneDiagonal_kernel_close
      N hLower hUpper).fibreCover {cell} (fun _ => residue)

private noncomputable def fiveMillionR263EvenOneOneCellProfileTerminal
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (selection : FiveMillionR263EvenOneCellTripleSelection N B cell)
    (branch : FiveMillionR263Branch)
    (cellType : E1FiniteCellType)
    (residualEnvelope : Rat)
    (hresidual :
      ((hallResidual N B).card : Rat) / N ≤ residualEnvelope)
    (hseven :
      e1FiniteTripleCommonAt selection.pivots selection.card 1 ↔
        cellType = .seven ∨ cellType = .both)
    (heleven :
      e1FiniteTripleCommonAt selection.pivots selection.card 2 ↔
        cellType = .eleven ∨ cellType = .both)
    (hcomponent :
      residualEnvelope + e1FiniteThreeTargetRat cellType +
          (3 * fiveMillionSquareTail23Envelope / 25 +
            fiveMillionR263EvenOneRoot23Envelope / 2) ≤
        fiveMillionR263BranchCeiling branch) :
    FiveMillionR263MixedHalfTerminalCertificate N B := by
  have hpivotsPart :
      selection.pivots ⊆ fiveMillionValuationPart N B .evenOne :=
    selection.subsetCell.trans
      (fiveMillionR263EvenOneCell_subset_part N B cell)
  have hpivotsCompletion : selection.pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B .evenOne
        (hpivotsPart hpivot))).1
  have hthree :
      e1FiniteTripleCommonAt selection.pivots selection.card 0 := by
    refine ⟨⟨cell.val, cell.isLt⟩, ?_⟩
    intro index
    have hpivotCell := selection.subsetCell
      (globalMixedThreePivotAt_mem
        selection.pivots selection.card index)
    have hcell := (Finset.mem_filter.mp hpivotCell).2
    simpa [e1FiniteModulus, oddModNineResidue] using
      congrArg Fin.val hcell
  have hfinite :=
    e1FiniteHallBaseMixedHalfPayment_ratio_le_profile
      hLower hBout hpivotsPart selection.card cellType
        hthree hseven heleven
  have htail :=
    hallBaseTailSquarePayment_threeTwo_r263_evenOne23_ratio_le
      hLower hUpper hBout hpivotsPart selection.card
  exact
    { branch := branch
      pivots := selection.pivots
      pivotsCard := selection.card
      cutoff := 23
      pivotsCompletion := hpivotsCompletion
      residualEnvelope := residualEnvelope
      finiteEnvelope := e1FiniteThreeTargetRat cellType
      tailEnvelope :=
        3 * fiveMillionSquareTail23Envelope / 25 +
          fiveMillionR263EvenOneRoot23Envelope / 2
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := hcomponent }

noncomputable def fiveMillionR263EvenOneOneCellTerminal
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (cell : Fin 9)
    (hCell : 3 <= (fiveMillionR263EvenOneCell N B cell).card)
    (hSparse : ∀ other : Fin 9, other ≠ cell →
      (fiveMillionR263EvenOneCell N B other).card <= 1) :
    FiveMillionR263MixedHalfTerminalCertificate N B := by
  classical
  let selection :=
    Classical.choice (fiveMillionR263EvenOneCell_exists_exact_triple hCell)
  by_cases h49 : fiveMillionR263EvenOneCellContained49 N B cell
  · have hresidual :=
      fiveMillionR263EvenOneOneCellFibreResidual_ratio_le
        hLower hUpper hBout hBprop hSparse h49
    by_cases h121 : fiveMillionR263EvenOneCellContained121 N B cell
    · apply fiveMillionR263EvenOneOneCellProfileTerminal
        hLower hUpper hBout selection .evenOneOneCellBoth .both
          (tailR263EvenOneFibreCoverDiagonalEnvelope + 8 / 5_000_000)
          hresidual
      · simpa [selection, h49] using selection.common49
      · simpa [selection, h121] using selection.common121
      · norm_num [fiveMillionR263BranchCeiling,
          tailR263EvenOneFibreCoverDiagonalEnvelope,
          e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion,
          fiveMillionSquareTail23Envelope,
          fiveMillionR263EvenOneRoot23Envelope]
    · apply fiveMillionR263EvenOneOneCellProfileTerminal
        hLower hUpper hBout selection .evenOneOneCellSeven .seven
          (tailR263EvenOneFibreCoverDiagonalEnvelope + 8 / 5_000_000)
          hresidual
      · simpa [selection, h49] using selection.common49
      · simpa [selection, h121] using selection.common121
      · norm_num [fiveMillionR263BranchCeiling,
          tailR263EvenOneFibreCoverDiagonalEnvelope,
          e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion,
          fiveMillionSquareTail23Envelope,
          fiveMillionR263EvenOneRoot23Envelope]
  · have hresidual :=
      fiveMillionR263EvenOneOneCellConcentratedResidual_ratio_le
        hLower hUpper hBout hBprop hSparse
    by_cases h121 : fiveMillionR263EvenOneCellContained121 N B cell
    · apply fiveMillionR263EvenOneOneCellProfileTerminal
        hLower hUpper hBout selection .evenOneOneCellEleven .eleven
          (tailR263EvenOneConcentratedDiagonalEnvelope + 8 / 5_000_000)
          hresidual
      · simpa [selection, h49] using selection.common49
      · simpa [selection, h121] using selection.common121
      · norm_num [fiveMillionR263BranchCeiling,
          tailR263EvenOneConcentratedDiagonalEnvelope,
          e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion,
          fiveMillionSquareTail23Envelope,
          fiveMillionR263EvenOneRoot23Envelope]
    · apply fiveMillionR263EvenOneOneCellProfileTerminal
        hLower hUpper hBout selection .evenOneOneCellGood .good
          (tailR263EvenOneConcentratedDiagonalEnvelope + 8 / 5_000_000)
          hresidual
      · simpa [selection, h49] using selection.common49
      · simpa [selection, h121] using selection.common121
      · norm_num [fiveMillionR263BranchCeiling,
          tailR263EvenOneConcentratedDiagonalEnvelope,
          e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion,
          fiveMillionSquareTail23Envelope,
          fiveMillionR263EvenOneRoot23Envelope]
  /-
  classical
  let pivotWitness := Finset.exists_subset_card_eq hCell
  let pivots := Classical.choose pivotWitness
  have hpivotsSpec := Classical.choose_spec pivotWitness
  have hpivotsCell : pivots ⊆
      fiveMillionR263EvenOneCell N B cell := hpivotsSpec.1
  have hpivotsCard : pivots.card = 3 := hpivotsSpec.2
  have hpivotsPart : pivots ⊆
      fiveMillionValuationPart N B .evenOne :=
    hpivotsCell.trans
      (fiveMillionR263EvenOneCell_subset_part N B cell)
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B .evenOne
        (hpivotsPart hpivot))).1
  have hthree : e1FiniteTripleCommonAt pivots hpivotsCard 0 := by
    refine ⟨⟨cell.val, cell.isLt⟩, ?_⟩
    intro index
    have hpivotCell := hpivotsCell
      (globalMixedThreePivotAt_mem pivots hpivotsCard index)
    have hcell := (Finset.mem_filter.mp hpivotCell).2
    simpa [e1FiniteModulus, oddModNineResidue] using
      congrArg Fin.val hcell
  let charged := fiveMillionR263EvenOneOneCellCharge N B cell
  have hchargedSubset : charged ⊆ hallResidual N B := by
    simpa [charged] using
      fiveMillionR263EvenOneOneCellCharge_subset_residual N B cell
  have hchargedCard : charged.card <= 8 := by
    simpa [charged] using
      fiveMillionR263EvenOneOneCellCharge_card_le_eight hSparse
  have hstructuredSubset :
      fiveMillionStructuredResidual N B charged ⊆
        tailR263EvenOneConcentratedDiagonal N cell := by
    simpa [charged] using
      fiveMillionStructuredResidual_subset_r263EvenOneConcentrated
        hBout hBprop
  have hdiagonal :=
    (_root_.Erdos848.GeneratedTailR263EvenOneDiagonal.fiveMillionR263EvenOneDiagonal_kernel_close
        N hLower hUpper).concentrated cell
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hstructuredCard :
      (fiveMillionStructuredResidual N B charged).card <=
        (tailR263EvenOneConcentratedDiagonal N cell).card :=
    Finset.card_le_card hstructuredSubset
  have hstructuredRatio :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
        tailR263EvenOneConcentratedDiagonalEnvelope := by
    have hcardQ :
        ((fiveMillionStructuredResidual N B charged).card : Rat) <=
          ((tailR263EvenOneConcentratedDiagonal N cell).card : Rat) := by
      exact_mod_cast hstructuredCard
    exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans hdiagonal
  have hchargeRatio : (charged.card : Rat) / N <= 8 / 5_000_000 := by
    have hcardQ : (charged.card : Rat) <= 8 := by exact_mod_cast hchargedCard
    have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
    calc
      (charged.card : Rat) / N <= 8 / N :=
        div_le_div_of_nonneg_right hcardQ hNpos.le
      _ <= 8 / 5_000_000 :=
        div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hresidual :
      ((hallResidual N B).card : Rat) / N <=
        tailR263EvenOneConcentratedDiagonalEnvelope + 8 / 5_000_000 := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
            (charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hpartition.symm
      _ <= tailR263EvenOneConcentratedDiagonalEnvelope +
          8 / 5_000_000 :=
        add_le_add hstructuredRatio hchargeRatio
  have hfinite :=
    e1FiniteHallBaseMixedHalfPayment_ratio_le_worst
      hLower hBout hpivotsPart hpivotsCard hthree
  have htail :=
    hallBaseTailSquarePayment_threeTwo_r263_evenOne23_ratio_le
      hLower hUpper hBout hpivotsPart hpivotsCard
  refine
    { branch := .evenOneOneCellBoth
      pivots := pivots
      pivotsCard := hpivotsCard
      cutoff := 23
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        tailR263EvenOneConcentratedDiagonalEnvelope + 8 / 5_000_000
      finiteEnvelope := e1FiniteThreeTargetRat .both
      tailEnvelope :=
        3 * fiveMillionSquareTail23Envelope / 25 +
          fiveMillionR263EvenOneRoot23Envelope / 2
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  norm_num [fiveMillionR263BranchCeiling,
    tailR263EvenOneConcentratedDiagonalEnvelope,
    e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion,
    fiveMillionSquareTail23Envelope,
    fiveMillionR263EvenOneRoot23Envelope]
  -/

noncomputable def fiveMillionR263EvenOneOneGoodTerminal
    [E1Finite23SharpCertificate]
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    (hx49 : selection.x0 % 49 ≠ selection.x1 % 49)
    (hx121 : selection.x0 % 121 ≠ selection.x1 % 121)
    (hOther : ∀ other : Fin 9, other ≠ left →
      (fiveMillionR263EvenOneCell N B other).card <= N ⌈/⌉ 1764) :
    FiveMillionR263FourPivotTerminalCertificate N B := by
  let charged := fiveMillionR263EvenOneOneCellCharge N B left
  have hchargedSubset : charged ⊆ hallResidual N B := by
    simpa [charged] using
      fiveMillionR263EvenOneOneCellCharge_subset_residual N B left
  have hchargedCard : charged.card <= 8 * (N ⌈/⌉ 1764) := by
    have hraw := card_sdiff_cellFibre_finNine_le_eight_mul
      (fiveMillionValuationPart N B .evenOne)
      oddModNineResidue left (N ⌈/⌉ 1764) (by
        intro other hne
        simpa [cellFibre, fiveMillionR263EvenOneCell] using
          hOther other hne)
    simpa [charged, fiveMillionR263EvenOneOneCellCharge,
      cellFibre, fiveMillionR263EvenOneCell] using hraw
  have hstructuredSubset :
      fiveMillionStructuredResidual N B charged ⊆
        tailR263EvenOneConcentratedDiagonal N left := by
    simpa [charged] using
      fiveMillionStructuredResidual_subset_r263EvenOneConcentrated
        hBout hBprop
  have hdiagonal :=
    (_root_.Erdos848.GeneratedTailR263EvenOneDiagonal.fiveMillionR263EvenOneDiagonal_kernel_close
        N hLower hUpper).concentrated left
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hstructuredRatio :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
        tailR263EvenOneConcentratedDiagonalEnvelope := by
    have hcard :
        (fiveMillionStructuredResidual N B charged).card <=
          (tailR263EvenOneConcentratedDiagonal N left).card :=
      Finset.card_le_card hstructuredSubset
    have hcardQ :
        ((fiveMillionStructuredResidual N B charged).card : Rat) <=
          ((tailR263EvenOneConcentratedDiagonal N left).card : Rat) := by
      exact_mod_cast hcard
    exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans hdiagonal
  have hceil := ceilDiv_cast_le_div_add_one N 1764 (by norm_num)
  have hchargeRatio :
      (charged.card : Rat) / N <=
        8 / 1764 + 8 / 5_000_000 := by
    have hcardQ :
        (charged.card : Rat) <=
          8 * ((N ⌈/⌉ 1764 : Nat) : Rat) := by
      exact_mod_cast hchargedCard
    have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
    have hmul :
        (8 : Rat) * (N ⌈/⌉ 1764 : Nat) ≤
          8 * ((N : Rat) / 1764 + 1) :=
      mul_le_mul_of_nonneg_left hceil (by norm_num)
    have hdiv : (8 : Rat) / N ≤ 8 / 5_000_000 :=
      div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
    calc
      (charged.card : Rat) / N <=
          (8 * ((N ⌈/⌉ 1764 : Nat) : Rat)) / N :=
        div_le_div_of_nonneg_right hcardQ hNpos.le
      _ <= (8 * ((N : Rat) / 1764 + 1)) / N :=
        div_le_div_of_nonneg_right hmul hNpos.le
      _ = 8 / 1764 + 8 / N := by field_simp
      _ <= 8 / 1764 + 8 / 5_000_000 :=
        add_le_add_right hdiv (8 / 1764)
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hresidual :
      ((hallResidual N B).card : Rat) / N <=
        tailR263EvenOneConcentratedDiagonalEnvelope +
          8 / 1764 + 8 / 5_000_000 := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
            (charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hpartition.symm
      _ <= tailR263EvenOneConcentratedDiagonalEnvelope +
          (8 / 1764 + 8 / 5_000_000) :=
        add_le_add hstructuredRatio hchargeRatio
      _ = tailR263EvenOneConcentratedDiagonalEnvelope +
          8 / 1764 + 8 / 5_000_000 := by ring
  have hpivotsPart := selection.pivots_subset_part
  have hpivotsCard := selection.pivots_card
  have hpivotsCompletion : selection.pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B .evenOne
        (hpivotsPart hpivot))).1
  have hfinite :=
    fiveMillionR263EvenOneFourPivotFinite_ratio_le_oneGood
      hLower hUpper hBout selection hx49 hx121
  have htail :=
    hallBaseTailSquarePayment_fourThree_r263_evenOne23_ratio_le
      hLower hUpper hBout hpivotsPart hpivotsCard
  refine
    { branch := .evenOneOneGood
      pivots := selection.pivots
      pivotsCard := hpivotsCard
      cutoff := 23
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        tailR263EvenOneConcentratedDiagonalEnvelope +
          8 / 1764 + 8 / 5_000_000
      finiteEnvelope :=
        2 * e1FiniteSharpFourTargetRat .good +
          2 * e1FiniteSharpFourTargetRat .both
      tailEnvelope :=
        4 * fiveMillionSquareTail23Envelope / 25 +
          2 * fiveMillionR263EvenOneRoot23Envelope / 3
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  norm_num [fiveMillionR263BranchCeiling,
    tailR263EvenOneConcentratedDiagonalEnvelope,
    e1FiniteSharpFourTargetRat, e1FiniteSharpFourTargetMillion,
    fiveMillionSquareTail23Envelope,
    fiveMillionR263EvenOneRoot23Envelope]

def fiveMillionR263EvenOneFibreCoverCharge
    (N : Nat) (B : Finset Nat) (cells : Finset (Fin 9)) :
    Finset Nat :=
  (fiveMillionValuationPart N B .evenOne).filter fun x =>
    oddModNineResidue x ∉ cells

lemma fiveMillionR263EvenOneFibreCoverCharge_subset_residual
    (N : Nat) (B : Finset Nat) (cells : Finset (Fin 9)) :
    fiveMillionR263EvenOneFibreCoverCharge N B cells ⊆
      hallResidual N B := by
  intro x hx
  exact fiveMillionValuationPart_subset_residual N B .evenOne
    (Finset.mem_filter.mp hx).1

lemma fiveMillionR263EvenOneFibreCoverCharge_card_le
    {N : Nat} {B : Finset Nat} {cells : Finset (Fin 9)}
    (hOutside : ∀ cell : Fin 9, cell ∉ cells →
      (fiveMillionR263EvenOneCell N B cell).card <= N ⌈/⌉ 4356) :
    (fiveMillionR263EvenOneFibreCoverCharge N B cells).card <=
      9 * (N ⌈/⌉ 4356) := by
  apply card_le_cellCount_mul_of_fibres_le
    (fiveMillionR263EvenOneFibreCoverCharge N B cells)
    oddModNineResidue (N ⌈/⌉ 4356)
  intro cell
  by_cases hcell : cell ∈ cells
  · have hempty :
        cellFibre (fiveMillionR263EvenOneFibreCoverCharge N B cells)
          oddModNineResidue cell = ∅ := by
      ext x
      constructor
      · intro hx
        have hparts := Finset.mem_filter.mp hx
        have hcharge := Finset.mem_filter.mp hparts.1
        have hforbidden : oddModNineResidue x ∈ cells := by
          rw [hparts.2]
          exact hcell
        exact (hcharge.2 hforbidden).elim
      · simp
    simp [hempty]
  · have hsubset :
        cellFibre (fiveMillionR263EvenOneFibreCoverCharge N B cells)
            oddModNineResidue cell ⊆
          fiveMillionR263EvenOneCell N B cell := by
      intro x hx
      have hparts := Finset.mem_filter.mp hx
      have hcharge := Finset.mem_filter.mp hparts.1
      exact Finset.mem_filter.mpr ⟨hcharge.1, hparts.2⟩
    exact (Finset.card_le_card hsubset).trans (hOutside cell hcell)

lemma fiveMillionStructuredResidual_subset_r263EvenOneFibreCover
    {N : Nat} {B : Finset Nat} {cells : Finset (Fin 9)}
    {residues : Fin 9 → Fin 49}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcover : ∀ cell ∈ cells,
      ∀ x ∈ fiveMillionR263EvenOneCell N B cell,
        x % 49 = (residues cell).val) :
    fiveMillionStructuredResidual N B
        (fiveMillionR263EvenOneFibreCoverCharge N B cells) ⊆
      tailR263EvenOneFibreCoverDiagonal N cells residues := by
  intro x hx
  have hxParts := Finset.mem_sdiff.mp hx
  have hxResidual : x ∈ hallResidual N B := hxParts.1
  have hxNotCharge := hxParts.2
  have hxDiagonal : x ∈ tailDiagonalBad N := by
    have hglobal := hallResidual_subset_globalMixedTailDiagonalBad
      hBout hBprop hxResidual
    have hparts := Finset.mem_filter.mp hglobal
    apply Finset.mem_filter.mpr
    exact ⟨hparts.1,
      ⟨⟨hparts.2.1, hparts.2.2.1⟩, hparts.2.2.2⟩⟩
  by_cases hOne : fiveMillionValuationClassOf x = .evenOne
  · have hxOne : x ∈ fiveMillionValuationPart N B .evenOne :=
      mem_fiveMillionValuationPart.mpr ⟨hxResidual, hOne⟩
    let cell : Fin 9 := oddModNineResidue x
    have hcellMem : cell ∈ cells := by
      by_contra hnot
      apply hxNotCharge
      exact Finset.mem_filter.mpr ⟨hxOne, hnot⟩
    have hxCell : x ∈ fiveMillionR263EvenOneCell N B cell :=
      Finset.mem_filter.mpr ⟨hxOne, rfl⟩
    apply Finset.mem_union_right
    apply Finset.mem_biUnion.mpr
    refine ⟨cell, hcellMem, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_filter.mpr ⟨hxDiagonal,
      fiveMillionValuationPart_evenOne hxOne, ?_⟩, ?_⟩
    · rfl
    · exact hcover cell hcellMem x hxCell
  · by_cases hTwo : fiveMillionValuationClassOf x = .evenTwo
    · have hxTwo : x ∈ fiveMillionValuationPart N B .evenTwo :=
        mem_fiveMillionValuationPart.mpr ⟨hxResidual, hTwo⟩
      apply Finset.mem_union_left
      apply Finset.mem_union_right
      apply Finset.mem_biUnion.mpr
      let residue : Fin 9 := ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩
      refine ⟨residue, Finset.mem_univ _, ?_⟩
      apply Finset.mem_filter.mpr
      exact ⟨hxDiagonal,
        fiveMillionValuationPart_evenTwo hxTwo, rfl⟩
    · apply Finset.mem_union_left
      apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hxDiagonal,
        tailR263LowTwo_accepts_of_not_evenOne_evenTwo hOne hTwo⟩

noncomputable def fiveMillionR263EvenOneNoGoodTerminal
    [E1Finite23SharpCertificate]
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    (cells : Finset (Fin 9)) (residues : Fin 9 → Fin 49)
    (hcover : ∀ cell ∈ cells,
      ∀ x ∈ fiveMillionR263EvenOneCell N B cell,
        x % 49 = (residues cell).val)
    (hOutside : ∀ cell : Fin 9, cell ∉ cells →
      (fiveMillionR263EvenOneCell N B cell).card <= N ⌈/⌉ 4356) :
    FiveMillionR263FourPivotTerminalCertificate N B := by
  let charged := fiveMillionR263EvenOneFibreCoverCharge N B cells
  have hchargedSubset : charged ⊆ hallResidual N B := by
    simpa [charged] using
      fiveMillionR263EvenOneFibreCoverCharge_subset_residual N B cells
  have hchargedCard : charged.card <= 9 * (N ⌈/⌉ 4356) := by
    simpa [charged] using
      fiveMillionR263EvenOneFibreCoverCharge_card_le hOutside
  have hstructuredSubset :
      fiveMillionStructuredResidual N B charged ⊆
        tailR263EvenOneFibreCoverDiagonal N cells residues := by
    simpa [charged] using
      fiveMillionStructuredResidual_subset_r263EvenOneFibreCover
        hBout hBprop hcover
  have hdiagonal :=
    (_root_.Erdos848.GeneratedTailR263EvenOneDiagonal.fiveMillionR263EvenOneDiagonal_kernel_close
        N hLower hUpper).fibreCover cells residues
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hstructuredRatio :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
    have hcard :
        (fiveMillionStructuredResidual N B charged).card <=
          (tailR263EvenOneFibreCoverDiagonal N cells residues).card :=
      Finset.card_le_card hstructuredSubset
    have hcardQ :
        ((fiveMillionStructuredResidual N B charged).card : Rat) <=
          ((tailR263EvenOneFibreCoverDiagonal N cells residues).card :
            Rat) := by
      exact_mod_cast hcard
    exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans hdiagonal
  have hceil := ceilDiv_cast_le_div_add_one N 4356 (by norm_num)
  have hchargeRatio :
      (charged.card : Rat) / N <=
        9 / 4356 + 9 / 5_000_000 := by
    have hcardQ :
        (charged.card : Rat) <=
          9 * ((N ⌈/⌉ 4356 : Nat) : Rat) := by
      exact_mod_cast hchargedCard
    have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
    have hmul :
        (9 : Rat) * (N ⌈/⌉ 4356 : Nat) ≤
          9 * ((N : Rat) / 4356 + 1) :=
      mul_le_mul_of_nonneg_left hceil (by norm_num)
    have hdiv : (9 : Rat) / N ≤ 9 / 5_000_000 :=
      div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
    calc
      (charged.card : Rat) / N <=
          (9 * ((N ⌈/⌉ 4356 : Nat) : Rat)) / N :=
        div_le_div_of_nonneg_right hcardQ hNpos.le
      _ <= (9 * ((N : Rat) / 4356 + 1)) / N :=
        div_le_div_of_nonneg_right hmul hNpos.le
      _ = 9 / 4356 + 9 / N := by field_simp
      _ <= 9 / 4356 + 9 / 5_000_000 :=
        add_le_add_right hdiv (9 / 4356)
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hresidual :
      ((hallResidual N B).card : Rat) / N <=
        tailR263EvenOneFibreCoverDiagonalEnvelope +
          9 / 4356 + 9 / 5_000_000 := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
            (charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hpartition.symm
      _ <= tailR263EvenOneFibreCoverDiagonalEnvelope +
          (9 / 4356 + 9 / 5_000_000) :=
        add_le_add hstructuredRatio hchargeRatio
      _ = tailR263EvenOneFibreCoverDiagonalEnvelope +
          9 / 4356 + 9 / 5_000_000 := by ring
  have hpivotsPart := selection.pivots_subset_part
  have hpivotsCard := selection.pivots_card
  have hpivotsCompletion : selection.pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B .evenOne
        (hpivotsPart hpivot))).1
  have hfinite :=
    fiveMillionR263EvenOneFourPivotFinite_ratio_le_worst
      hLower hUpper hBout selection
  have htail :=
    hallBaseTailSquarePayment_fourThree_r263_evenOne23_ratio_le
      hLower hUpper hBout hpivotsPart hpivotsCard
  refine
    { branch := .evenOneNoGood
      pivots := selection.pivots
      pivotsCard := hpivotsCard
      cutoff := 23
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        tailR263EvenOneFibreCoverDiagonalEnvelope +
          9 / 4356 + 9 / 5_000_000
      finiteEnvelope := 4 * e1FiniteSharpFourTargetRat .both
      tailEnvelope :=
        4 * fiveMillionSquareTail23Envelope / 25 +
          2 * fiveMillionR263EvenOneRoot23Envelope / 3
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  norm_num [fiveMillionR263BranchCeiling,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    e1FiniteSharpFourTargetRat, e1FiniteSharpFourTargetMillion,
    fiveMillionSquareTail23Envelope,
    fiveMillionR263EvenOneRoot23Envelope]

#print axioms fiveMillionR263EvenOneTwoGoodTerminal
#print axioms fiveMillionR263EvenOneOneCellTerminal
#print axioms fiveMillionR263EvenOneOneGoodTerminal
#print axioms fiveMillionR263EvenOneNoGoodTerminal

end Erdos848
