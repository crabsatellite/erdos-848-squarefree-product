import Erdos848.GeneratedTailR263Diagonal.Certificate
import Erdos848.TailGlobalMixedThreePivotActualBudget
import Erdos848.TailFiveMillionR263Terminal

namespace Erdos848

/-!
# Direct E2 one-cell terminal at the unchanged five-million cut

After at most ten `E1` points and the eight sparse `E2` cells are charged,
the literal residual is contained in the low-two-adic diagonal together with
one `v₂ = 2` mod-nine cell.  Three actual pivots in that cell feed the existing
kernel-checked cutoff-seven CRT and one-form-tail bounds.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionR263EvenTwoCell
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Finset Nat :=
  (fiveMillionValuationPart N B .evenTwo).filter fun x =>
    oddModNineResidue x = cell

def fiveMillionR263EvenTwoOneCellCharge
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Finset Nat :=
  fiveMillionValuationPart N B .evenOne ∪
    (fiveMillionValuationPart N B .evenTwo \
      fiveMillionR263EvenTwoCell N B cell)

lemma fiveMillionR263EvenTwoCell_subset_part
    (N : Nat) (B : Finset Nat) (cell : Fin 9) :
    fiveMillionR263EvenTwoCell N B cell ⊆
      fiveMillionValuationPart N B .evenTwo :=
  Finset.filter_subset _ _

lemma fiveMillionR263EvenTwoOneCellCharge_subset_residual
    (N : Nat) (B : Finset Nat) (cell : Fin 9) :
    fiveMillionR263EvenTwoOneCellCharge N B cell ⊆ hallResidual N B := by
  intro x hx
  rcases Finset.mem_union.mp hx with hxOne | hxTwo
  · exact fiveMillionValuationPart_subset_residual N B .evenOne hxOne
  · exact fiveMillionValuationPart_subset_residual N B .evenTwo
      (Finset.mem_sdiff.mp hxTwo).1

lemma fiveMillionR263EvenTwoOneCellCharge_card_le_eighteen
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hOne : (fiveMillionValuationPart N B .evenOne).card ≤ 10)
    (hSparse : (fiveMillionValuationPart N B .evenTwo \
      fiveMillionR263EvenTwoCell N B cell).card ≤ 8) :
    (fiveMillionR263EvenTwoOneCellCharge N B cell).card ≤ 18 := by
  calc
    (fiveMillionR263EvenTwoOneCellCharge N B cell).card ≤
        (fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo \
            fiveMillionR263EvenTwoCell N B cell).card := by
      exact Finset.card_union_le _ _
    _ ≤ 10 + 8 := Nat.add_le_add hOne hSparse
    _ = 18 := by norm_num

lemma tailR263LowTwo_accepts_of_not_evenOne_evenTwo
    {x : Nat}
    (hOne : fiveMillionValuationClassOf x ≠ .evenOne)
    (hTwo : fiveMillionValuationClassOf x ≠ .evenTwo) :
    TailR263DiagonalTarget.lowTwo.Accepts x := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod,
      TailR263DiagonalTarget.Accepts] at hOne hTwo ⊢

lemma fiveMillionStructuredResidual_subset_r263EvenTwoCellDiagonal
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    fiveMillionStructuredResidual N B
        (fiveMillionR263EvenTwoOneCellCharge N B cell) ⊆
      tailR263EvenTwoCellDiagonal N cell := by
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
  · exact False.elim (hxNotCharge (Finset.mem_union_left _
      (mem_fiveMillionValuationPart.mpr ⟨hxResidual, hOne⟩)))
  by_cases hTwo : fiveMillionValuationClassOf x = .evenTwo
  · have hxTwo : x ∈ fiveMillionValuationPart N B .evenTwo :=
      mem_fiveMillionValuationPart.mpr ⟨hxResidual, hTwo⟩
    have hxCell : x ∈ fiveMillionR263EvenTwoCell N B cell := by
      by_contra hnotCell
      apply hxNotCharge
      apply Finset.mem_union_right
      exact Finset.mem_sdiff.mpr ⟨hxTwo, hnotCell⟩
    apply Finset.mem_union_right
    apply Finset.mem_filter.mpr
    refine ⟨hxDiagonal, ?_⟩
    have hmodEight := fiveMillionValuationPart_evenTwo hxTwo
    have hcell := (Finset.mem_filter.mp hxCell).2
    exact ⟨hmodEight, by
      simpa [oddModNineResidue] using congrArg Fin.val hcell⟩
  · apply Finset.mem_union_left
    apply Finset.mem_filter.mpr
    exact ⟨hxDiagonal,
      tailR263LowTwo_accepts_of_not_evenOne_evenTwo hOne hTwo⟩

theorem fiveMillionR263BaseFiniteThresholdPayment_le_globalMixedBase
    (N : Nat) (B pivots : Finset Nat) (cutoff threshold : Nat) :
    fiveMillionR263BaseFiniteThresholdPayment N B pivots cutoff threshold ≤
      globalMixedBaseFiniteThresholdPayment N pivots cutoff threshold := by
  classical
  unfold fiveMillionR263BaseFiniteThresholdPayment
    globalMixedBaseFiniteThresholdPayment
  exact_mod_cast Finset.card_le_card (by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    exact Finset.mem_filter.mpr
      ⟨(Finset.mem_inter.mp hparts.1).2, hparts.2⟩)

noncomputable def fiveMillionR263EvenTwoOneCellTerminal
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (cell : Fin 9)
    (hOne : (fiveMillionValuationPart N B .evenOne).card ≤ 10)
    (hSparse : (fiveMillionValuationPart N B .evenTwo \
      fiveMillionR263EvenTwoCell N B cell).card ≤ 8)
    (hCell : 3 ≤ (fiveMillionR263EvenTwoCell N B cell).card) :
    FiveMillionR263TerminalCertificate N B := by
  classical
  let charged := fiveMillionR263EvenTwoOneCellCharge N B cell
  let pivotWitness := Finset.exists_subset_card_eq hCell
  let pivots := Classical.choose pivotWitness
  have hpivotsSpec := Classical.choose_spec pivotWitness
  have hpivotsCell : pivots ⊆ fiveMillionR263EvenTwoCell N B cell :=
    hpivotsSpec.1
  have hpivotsCard : pivots.card = 3 := hpivotsSpec.2
  have hpivotsPart : pivots ⊆ fiveMillionValuationPart N B .evenTwo :=
    hpivotsCell.trans (fiveMillionR263EvenTwoCell_subset_part N B cell)
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B .evenTwo
        (hpivotsPart hpivot))).1
  have hchargedSubset : charged ⊆ hallResidual N B := by
    simpa [charged] using
      fiveMillionR263EvenTwoOneCellCharge_subset_residual N B cell
  have hchargedCard : charged.card ≤ 18 := by
    simpa [charged] using
      fiveMillionR263EvenTwoOneCellCharge_card_le_eighteen hOne hSparse
  have hstructuredSubset : fiveMillionStructuredResidual N B charged ⊆
      tailR263EvenTwoCellDiagonal N cell := by
    simpa [charged] using
      fiveMillionStructuredResidual_subset_r263EvenTwoCellDiagonal hBout hBprop
  have hdiagonal :=
    (GeneratedTailR263Diagonal.fiveMillionR263Diagonal_kernel_close
      N hLower hUpper).evenTwoCell cell
  have hstructuredCard :
      (fiveMillionStructuredResidual N B charged).card ≤
        (tailR263EvenTwoCellDiagonal N cell).card :=
    Finset.card_le_card hstructuredSubset
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hstructuredRatio :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        tailR263EvenTwoCellDiagonalEnvelope := by
    have hcardQ :
        ((fiveMillionStructuredResidual N B charged).card : Rat) ≤
          ((tailR263EvenTwoCellDiagonal N cell).card : Rat) := by
      exact_mod_cast hstructuredCard
    exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans hdiagonal
  have hchargeRatio : (charged.card : Rat) / N ≤ 18 / N := by
    apply div_le_div_of_nonneg_right _ hNpos.le
    exact_mod_cast hchargedCard
  have hLowerQ : (5_000_000 : Rat) ≤ N := by exact_mod_cast hLower
  have hchargeAtCut : (18 : Rat) / N ≤ 18 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hresidual : ((hallResidual N B).card : Rat) / N ≤
      tailR263EvenTwoCellDiagonalEnvelope + 18 / 5_000_000 := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
            (charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hpartition.symm
      _ ≤ tailR263EvenTwoCellDiagonalEnvelope + 18 / N :=
        add_le_add hstructuredRatio hchargeRatio
      _ ≤ tailR263EvenTwoCellDiagonalEnvelope + 18 / 5_000_000 :=
        add_le_add le_rfl hchargeAtCut
  have hfiniteGlobal := globalMixedEvenThreePivotFinitePayment_ratio_le
    hLower hBout (by simp [IsGlobalMixedEvenValuationClass])
      hpivotsPart hpivotsCard
  have hfiniteAt := hfiniteGlobal.trans
    (globalMixedThreePivotFiniteEnvelope_le_atFiveMillion hLower)
  have hfiniteLocal :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 2 / N ≤
        globalMixedBaseFiniteThresholdPayment N pivots 7 2 / N := by
    exact div_le_div_of_nonneg_right
      (fiveMillionR263BaseFiniteThresholdPayment_le_globalMixedBase
        N B pivots 7 2) hNpos.le
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 2 / N ≤
        globalMixedThreePivotFiniteAtFiveMillion :=
    hfiniteLocal.trans hfiniteAt
  have htail := hallBaseTailSquarePayment_threeTwo_actual_ratio_le
    hLower hBout hpivotsPart hpivotsCard
  refine
    { branch := .evenTwoOneCell
      pivots := pivots
      cutoff := 7
      threshold := 2
      thresholdPositive := by norm_num
      thresholdCard := by omega
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        tailR263EvenTwoCellDiagonalEnvelope + 18 / 5_000_000
      finiteEnvelope := globalMixedThreePivotFiniteAtFiveMillion
      tailEnvelope := globalMixedThreePivotActualTailEnvelope .evenTwo
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  norm_num [fiveMillionR263BranchCeiling,
    tailR263EvenTwoCellDiagonalEnvelope,
    globalMixedThreePivotFiniteAtFiveMillion,
    globalMixedThreePivotFinite7Envelope,
    globalMixedThreePivotActualTailEnvelope,
    fiveMillionOddRoot7Envelope, fiveMillionSquareTail7Envelope]

#print axioms fiveMillionR263BaseFiniteThresholdPayment_le_globalMixedBase
#print axioms fiveMillionR263EvenTwoOneCellTerminal

end Erdos848
