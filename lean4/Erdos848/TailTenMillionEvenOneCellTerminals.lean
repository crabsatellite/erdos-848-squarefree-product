import Erdos848.TailTenMillionEvenCellCap
import Erdos848.TailTenMillionEvenActualTail
import Erdos848.TailTenMillionCompactPaperDiagonal
import Erdos848.TailTenMillionR263Terminal
import Erdos848.TailR263EvenTwoOneCell

namespace Erdos848

/-!
# The three one-dense-cell terminals on the ten-million block

The selected pivots are literal members of the dense cell.  The finite term
uses the general three-pivot cutoff-seven theorem, the tail term uses the
ten-million kernel root certificate, and the residual term uses the compact
paper diagonal after charging only sparse cells.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure TenMillionEvenOneCellSelection
    (N : Nat) (B : Finset Nat)
    (valuation : FiveMillionValuationClass)
    (cell : Fin 9) : Type where
  pivots : Finset Nat
  pivotsCell :
    pivots ⊆
      cellFibre (fiveMillionValuationPart N B valuation)
        oddModNineResidue cell
  pivotsCard : pivots.card = 3

namespace TenMillionEvenOneCellSelection

lemma pivotsPart {N B valuation cell}
    (selection :
      TenMillionEvenOneCellSelection N B valuation cell) :
    selection.pivots ⊆ fiveMillionValuationPart N B valuation :=
  selection.pivotsCell.trans (Finset.filter_subset _ _)

lemma pivotsCompletion {N B valuation cell}
    (selection :
      TenMillionEvenOneCellSelection N B valuation cell) :
    selection.pivots ⊆ hallCompletion N B := by
  intro pivot hpivot
  exact (Finset.mem_sdiff.mp
    (fiveMillionValuationPart_subset_residual N B valuation
      (selection.pivotsPart hpivot))).1

end TenMillionEvenOneCellSelection

theorem tenMillionEvenOneCellSelection_nonempty
    {N : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    {cell : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hdense :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B valuation)
          oddModNineResidue cell).card) :
    Nonempty (TenMillionEvenOneCellSelection N B valuation cell) := by
  classical
  have hthree :
      3 ≤
        (cellFibre (fiveMillionValuationPart N B valuation)
          oddModNineResidue cell).card := by
    have hcap := tenMillionClosePairBucketCap_two_le hLower
    omega
  let witness := Finset.exists_subset_card_eq hthree
  let pivots := Classical.choose witness
  have hpivots := Classical.choose_spec witness
  exact ⟨
    { pivots := pivots
      pivotsCell := hpivots.1
      pivotsCard := hpivots.2 }⟩

private theorem tenMillionEvenOneCellFinite_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : tenMillionLower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3) :
    fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 2 / N ≤
      tenMillionFinitePayment
        tenMillionEvenCellDensity tenMillionEvenCellEndpoint := by
  have hNposNat : 0 < N := by
    exact lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hlocal :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 2 / N ≤
        globalMixedBaseFiniteThresholdPayment N pivots 7 2 / N :=
    div_le_div_of_nonneg_right
      (fiveMillionR263BaseFiniteThresholdPayment_le_globalMixedBase
        N B pivots 7 2) hNpos.le
  have hLowerNat : 10_000_000 ≤ N := by
    simpa [tenMillionLower] using hLower
  have hglobal :=
    globalMixedEvenThreePivotFinitePayment_ratio_le
      (le_trans (by norm_num) hLowerNat) hBout hvaluation hpivots hcard
  have hLowerQ : (10_000_000 : Rat) ≤ N := by
    exact_mod_cast hLowerNat
  have hendpoint :
      (116 : Rat) / N ≤ 116 / 10_000_000 :=
    div_le_div_of_nonneg_left
      (by norm_num) (by norm_num) hLowerQ
  calc
    fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 2 / N ≤
        globalMixedBaseFiniteThresholdPayment N pivots 7 2 / N := hlocal
    _ ≤ 2 / 25 * globalMixedThreePivotFinite7Envelope + 116 / N :=
      hglobal
    _ ≤ 2 / 25 * globalMixedThreePivotFinite7Envelope +
        116 / 10_000_000 := by
      exact add_le_add le_rfl hendpoint
    _ ≤ tenMillionFinitePayment
        tenMillionEvenCellDensity tenMillionEvenCellEndpoint := by
      norm_num [globalMixedThreePivotFinite7Envelope,
        tenMillionFinitePayment, tenMillionEvenCellDensity,
        tenMillionEvenCellEndpoint, tenMillionLower]

private theorem tenMillionPaperResidual_ratio_le
    {N factor : Nat} {B : Finset Nat}
    {selection : PaperDiagonalSelection}
    {diagonalEnvelope : Rat}
    (hLower : tenMillionLower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharge :
      (paperSelectionCharge (hallResidual N B) selection).card ≤
        factor * tenMillionClosePairBucketCap N)
    (hdiagonal :
      (((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) /
          N ≤ diagonalEnvelope) :
    ((hallResidual N B).card : Rat) / N ≤
      diagonalEnvelope + factor * tenMillionCellCharge := by
  have hNposNat : 0 < N := by
    exact lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower
  have hraw :=
    hallResidual_ratio_le_of_paperSelectionCharge
      (selection := selection) (lowerBound := N)
      (chargeCap := factor * tenMillionClosePairBucketCap N)
      hBout hBprop hNposNat le_rfl hcharge hdiagonal
  have hcap :=
    tenMillionClosePairBucketCap_ratio_le_cellCharge hLower
  have hfactor : (0 : Rat) ≤ factor := by positivity
  have hscaled := mul_le_mul_of_nonneg_left hcap hfactor
  calc
    ((hallResidual N B).card : Rat) / N ≤
        diagonalEnvelope +
          ((factor * tenMillionClosePairBucketCap N : Nat) : Rat) / N :=
      hraw
    _ = diagonalEnvelope +
        factor * ((tenMillionClosePairBucketCap N : Rat) / N) := by
      push_cast
      ring
    _ ≤ diagonalEnvelope + factor * tenMillionCellCharge := by
      exact add_le_add le_rfl hscaled

private noncomputable def tenMillionEvenOneCellTerminalOfComponents
    {N : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    {cell : Fin 9}
    {branch : TenMillionCorrectedEvenBranch}
    (hLower : tenMillionLower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (selection :
      TenMillionEvenOneCellSelection N B valuation cell)
    {residualEnvelope tailEnvelope : Rat}
    (hresidual :
      ((hallResidual N B).card : Rat) / N ≤ residualEnvelope)
    (htail :
      hallBaseTailSquarePayment N B selection.pivots 7 2 / N ≤
        tailEnvelope)
    (htotal :
      residualEnvelope +
        tenMillionFinitePayment
          tenMillionEvenCellDensity tenMillionEvenCellEndpoint +
        tailEnvelope ≤
          tenMillionCorrectedEvenBranchTotal branch) :
    TenMillionR263TerminalCertificate N B := by
  let hfinite := tenMillionEvenOneCellFinite_ratio_le
    hLower hBout hvaluation selection.pivotsPart selection.pivotsCard
  exact
    { branch := .even branch
      pivots := selection.pivots
      cutoff := 7
      threshold := 2
      thresholdPositive := by norm_num
      thresholdCard := by
        rw [selection.pivotsCard]
        norm_num
      pivotsCompletion := selection.pivotsCompletion
      residualEnvelope := residualEnvelope
      finiteEnvelope :=
        tenMillionFinitePayment
          tenMillionEvenCellDensity tenMillionEvenCellEndpoint
      tailEnvelope := tailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := by
        simpa [tenMillionR263BranchTotal] using htotal }

private theorem tenMillionEvenOneResidual_ratio_le
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hsparse :
      ∀ other : Fin 9, other ≠ cell →
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          oddModNineResidue other).card ≤
            tenMillionClosePairBucketCap N) :
    ((hallResidual N B).card : Rat) / N ≤
      tenMillionDiagonalConcentrated + 8 * tenMillionCellCharge := by
  let selection : PaperDiagonalSelection :=
    .concentrated ⟨2, by decide⟩ cell
  have hsparsePaper :
      ∀ other : Fin 9, other ≠ cell →
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          paperModNineCell other).card ≤
            tenMillionClosePairBucketCap N := by
    intro other hne
    simpa only [cellFibre, paperModNineCell_eq_oddModNineResidue] using
      hsparse other hne
  have hcharge :
      (paperSelectionCharge (hallResidual N B) selection).card ≤
        8 * tenMillionClosePairBucketCap N := by
    simpa [selection] using
      paperSelectionCharge_concentrated_evenOne_card_le
        N B cell (tenMillionClosePairBucketCap N) hsparsePaper
  have hdiagonal :=
    tenMillionCompactPaperDiagonalGridBound_kernel
      N hLower hUpper selection
  have hraw := tenMillionPaperResidual_ratio_le
    (factor := 8) hLower hBout hBprop hcharge hdiagonal
  simpa [selection, PaperDiagonalRegime.envelopeNumerator,
    tenMillionDiagonalConcentrated] using hraw

private theorem tenMillionEvenTwoResidual_ratio_le
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne :
      (fiveMillionValuationPart N B .evenOne).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hsparse :
      ∀ other : Fin 9, other ≠ cell →
        (cellFibre (fiveMillionValuationPart N B .evenTwo)
          oddModNineResidue other).card ≤
            tenMillionClosePairBucketCap N) :
    ((hallResidual N B).card : Rat) / N ≤
      tenMillionDiagonalE2Cell + 17 * tenMillionCellCharge := by
  let selection : PaperDiagonalSelection := .evenTwoCell cell
  have hsparsePaper :
      ∀ other : Fin 9, other ≠ cell →
        (cellFibre (fiveMillionValuationPart N B .evenTwo)
          paperModNineCell other).card ≤
            tenMillionClosePairBucketCap N := by
    intro other hne
    simpa only [cellFibre, paperModNineCell_eq_oddModNineResidue] using
      hsparse other hne
  have hcharge :
      (paperSelectionCharge (hallResidual N B) selection).card ≤
        17 * tenMillionClosePairBucketCap N := by
    rw [show selection = .evenTwoCell cell by rfl,
      paperSelectionCharge_evenTwoCell_eq]
    calc
      _ ≤ (fiveMillionValuationPart N B .evenOne).card +
          (paperValuationOutsideCellCharge
            N B .evenTwo cell).card :=
        Finset.card_union_le _ _
      _ ≤ 9 * tenMillionClosePairBucketCap N +
          8 * tenMillionClosePairBucketCap N := by
        gcongr
        exact paperValuationOutsideCellCharge_card_le
          N B .evenTwo cell (tenMillionClosePairBucketCap N)
            hsparsePaper
      _ = 17 * tenMillionClosePairBucketCap N := by omega
  have hdiagonal :=
    tenMillionCompactPaperDiagonalGridBound_kernel
      N hLower hUpper selection
  have hraw := tenMillionPaperResidual_ratio_le
    (factor := 17) hLower hBout hBprop hcharge hdiagonal
  convert hraw using 1 <;>
    norm_num [selection, PaperDiagonalRegime.envelopeNumerator,
      tenMillionDiagonalE2Cell]

private theorem tenMillionEvenThreeResidual_ratio_le
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne :
      (fiveMillionValuationPart N B .evenOne).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hEvenTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤
        9 * tenMillionClosePairBucketCap N) :
    ((hallResidual N B).card : Rat) / N ≤
      tenMillionDiagonalLowTwoAdic + 18 * tenMillionCellCharge := by
  let selection : PaperDiagonalSelection := .lowTwoAdic
  have hcharge :
      (paperSelectionCharge (hallResidual N B) selection).card ≤
        18 * tenMillionClosePairBucketCap N := by
    rw [show selection = .lowTwoAdic by rfl,
      paperSelectionCharge_lowTwoAdic_card]
    omega
  have hdiagonal :=
    tenMillionCompactPaperDiagonalGridBound_kernel
      N hLower hUpper selection
  have hraw := tenMillionPaperResidual_ratio_le
    (factor := 18) hLower hBout hBprop hcharge hdiagonal
  convert hraw using 1 <;>
    norm_num [selection, PaperDiagonalRegime.envelopeNumerator,
      tenMillionDiagonalLowTwoAdic]

noncomputable def tenMillionEvenOneOneDenseCellTerminal
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdense :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          oddModNineResidue cell).card)
    (hsparse :
      ∀ other : Fin 9, other ≠ cell →
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          oddModNineResidue other).card ≤
            tenMillionClosePairBucketCap N) :
    TenMillionR263TerminalCertificate N B := by
  let selection := Classical.choice
    (tenMillionEvenOneCellSelection_nonempty hLower hdense)
  have hresidual := tenMillionEvenOneResidual_ratio_le
    hLower hUpper hBout hBprop hsparse
  have htail :=
    hallBaseTailSquarePayment_threeTwo_tenMillion_evenOne7_ratio_le
      hLower hUpper hBout selection.pivotsPart selection.pivotsCard
  exact tenMillionEvenOneCellTerminalOfComponents
    (branch := .e1OneCell)
    hLower hBout hBprop (Or.inl rfl) selection hresidual htail (by
      unfold tenMillionCorrectedEvenBranchTotal
        TenMillionCorrectedEvenBranch.legacy tenMillionBranchTotal
      ring_nf
      apply le_rfl)

noncomputable def tenMillionEvenTwoOneDenseCellTerminal
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne :
      (fiveMillionValuationPart N B .evenOne).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hdense :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B .evenTwo)
          oddModNineResidue cell).card)
    (hsparse :
      ∀ other : Fin 9, other ≠ cell →
        (cellFibre (fiveMillionValuationPart N B .evenTwo)
          oddModNineResidue other).card ≤
            tenMillionClosePairBucketCap N) :
    TenMillionR263TerminalCertificate N B := by
  let selection := Classical.choice
    (tenMillionEvenOneCellSelection_nonempty hLower hdense)
  have hresidual := tenMillionEvenTwoResidual_ratio_le
    hLower hUpper hBout hBprop hEvenOne hsparse
  have htail :=
    hallBaseTailSquarePayment_threeTwo_tenMillion_evenTwo7_ratio_le
      hLower hUpper hBout selection.pivotsPart selection.pivotsCard
  exact tenMillionEvenOneCellTerminalOfComponents
    (branch := .e2OneCell)
    hLower hBout hBprop (Or.inr (Or.inl rfl)) selection
      hresidual htail (by
        unfold tenMillionCorrectedEvenBranchTotal
          TenMillionCorrectedEvenBranch.legacy tenMillionBranchTotal
        ring_nf
        apply le_rfl)

noncomputable def tenMillionEvenThreeDenseCellTerminal
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne :
      (fiveMillionValuationPart N B .evenOne).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hEvenTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hdense :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B .evenThree)
          oddModNineResidue cell).card) :
    TenMillionR263TerminalCertificate N B := by
  let selection := Classical.choice
    (tenMillionEvenOneCellSelection_nonempty hLower hdense)
  have hresidual := tenMillionEvenThreeResidual_ratio_le
    hLower hUpper hBout hBprop hEvenOne hEvenTwo
  have htail :=
    hallBaseTailSquarePayment_threeTwo_tenMillion_evenThree7_ratio_le
      hLower hUpper hBout selection.pivotsPart selection.pivotsCard
  exact tenMillionEvenOneCellTerminalOfComponents
    (branch := .e3Cell)
    hLower hBout hBprop (Or.inr (Or.inr rfl)) selection
      hresidual htail (by
        unfold tenMillionCorrectedEvenBranchTotal
          TenMillionCorrectedEvenBranch.legacy tenMillionBranchTotal
        ring_nf
        apply le_rfl)

end Erdos848
