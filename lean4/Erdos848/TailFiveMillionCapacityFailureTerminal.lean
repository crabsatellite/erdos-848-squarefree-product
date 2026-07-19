import Erdos848.TailFiveMillionCapacityFailureActual
import Erdos848.TailFiveMillionR263Terminal

namespace Erdos848

/-! # Complete R263 terminals for the capacity-failure branches -/

def fiveMillionOneOddEightCellsFailureBudget : Rat :=
  fiveMillionOneOddEightCellsFailureDiagonalEnvelope + 128 / 5_000_000 +
    globalMixedOneOddSevenCellFiniteEnvelope +
      globalMixedOneOddSevenCellTailEnvelope

def fiveMillionOneOddNineCellsFailureBudget : Rat :=
  fiveMillionOneOddNineCellsFailureDiagonalEnvelope + 128 / 5_000_000 +
    globalMixedOneOddSevenCellFiniteEnvelope +
      globalMixedOneOddSevenCellTailEnvelope

theorem fiveMillionOneOddEightCellsFailureBudget_le_branchCeiling :
    fiveMillionOneOddEightCellsFailureBudget ≤
      fiveMillionR263BranchCeiling .oddOneEightCellsFailure := by
  norm_num [fiveMillionOneOddEightCellsFailureBudget,
    fiveMillionOneOddEightCellsFailureDiagonalEnvelope,
    globalMixedOneOddSevenCellFiniteEnvelope,
    globalMixedOneOddSevenCellTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

theorem fiveMillionOneOddNineCellsFailureBudget_le_branchCeiling :
    fiveMillionOneOddNineCellsFailureBudget ≤
      fiveMillionR263BranchCeiling .oddOneNineCellsFailure := by
  norm_num [fiveMillionOneOddNineCellsFailureBudget,
    fiveMillionOneOddNineCellsFailureDiagonalEnvelope,
    globalMixedOneOddSevenCellFiniteEnvelope,
    globalMixedOneOddSevenCellTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

noncomputable def fiveMillionOneOddCapacityFailureR263Terminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellLower : 6 ≤ cells.card)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hchargedSubset : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (branch : FiveMillionR263Branch) (diagonalEnvelope : Rat)
    (hstructuredDiagonal :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        diagonalEnvelope)
    (hcomponent :
      diagonalEnvelope + 128 / 5_000_000 +
          globalMixedOneOddSevenCellFiniteEnvelope +
            globalMixedOneOddSevenCellTailEnvelope ≤
        fiveMillionR263BranchCeiling branch) :
    FiveMillionR263TerminalCertificate N B := by
  classical
  let produced := fiveMillionSixPivotPatternWithStructuredOfActiveCells
    parity cells hcellLower hactive hclass
  let pivots : Finset Nat := produced.1
  let pattern : FiveMillionSixPivotPattern N B pivots := produced.2.1
  have hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B charged := produced.2.2
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp (pattern.pivotsResidual hpivot)).1
  have hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot := by
    intro pivot hpivot
    have hmod := hclass pivot (hpivotsStructured hpivot)
    have oddOfModFour (h : pivot % 4 = 1 ∨ pivot % 4 = 3) : Odd pivot := by
      have hmodTwo : pivot % 2 = 1 := (Nat.odd_mod_four_iff).2 h
      refine ⟨pivot / 2, ?_⟩
      have hdecomp := Nat.mod_add_div pivot 2
      omega
    cases hparity : parity with
    | false =>
        exact oddOfModFour (Or.inl (by simpa [hparity] using hmod))
    | true =>
        exact oddOfModFour (Or.inr (by simpa [hparity] using hmod))
  let tailCertificate := globalMixedBaseTailCertificate_actual
    hLower hBout pattern.pivotsCard pattern.pivotsResidual hpivotsOdd
  have hfiniteOriginal := globalMixedOneOddSevenCellFinitePayment_ratio_le
    hLower (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 3 / N ≤
        globalMixedOneOddSevenCellFiniteEnvelope := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      globalMixedOneOddSevenCellFinitePayment] using hfiniteOriginal
  have htail : hallBaseTailSquarePayment N B pivots 7 3 / N ≤
      globalMixedOneOddSevenCellTailEnvelope := by
    simpa [globalMixedOneOddSevenCellTailEnvelope] using
      hallBaseTailSquarePayment_sixThree_ratio_le tailCertificate
  have hchargeRatio : (charged.card : Rat) / N ≤ 128 / N := by
    apply div_le_div_of_nonneg_right _ (by positivity)
    exact_mod_cast hchargedCard
  have hresidualPartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hresidualN : ((hallResidual N B).card : Rat) / N ≤
      diagonalEnvelope + 128 / N := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
            (charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hresidualPartition.symm
      _ ≤ diagonalEnvelope + 128 / N :=
        add_le_add hstructuredDiagonal hchargeRatio
  have hLowerQ : (5_000_000 : Rat) ≤ N := by exact_mod_cast hLower
  have hchargeAtCut : (128 : Rat) / N ≤ 128 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hresidual : ((hallResidual N B).card : Rat) / N ≤
      diagonalEnvelope + 128 / 5_000_000 := by
    linarith
  refine
    { branch := branch
      pivots := pivots
      cutoff := 7
      threshold := 3
      thresholdPositive := by norm_num
      thresholdCard := by simpa [pattern.pivotsCard]
      pivotsCompletion := hpivotsCompletion
      residualEnvelope := diagonalEnvelope + 128 / 5_000_000
      finiteEnvelope := globalMixedOneOddSevenCellFiniteEnvelope
      tailEnvelope := globalMixedOneOddSevenCellTailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  simpa [add_assoc] using hcomponent

noncomputable def fiveMillionOneOddEightCellsFailureR263Terminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 8)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hchargedSubset : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hstructuredDiagonal :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        fiveMillionOneOddEightCellsFailureDiagonalEnvelope) :
    FiveMillionR263TerminalCertificate N B := by
  exact fiveMillionOneOddCapacityFailureR263Terminal
    hLower hBout parity cells (by omega) hactive hchargedSubset hchargedCard
      hclass .oddOneEightCellsFailure
      fiveMillionOneOddEightCellsFailureDiagonalEnvelope hstructuredDiagonal
      (by simpa [fiveMillionOneOddEightCellsFailureBudget] using
        fiveMillionOneOddEightCellsFailureBudget_le_branchCeiling)

noncomputable def fiveMillionOneOddNineCellsFailureR263Terminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 9)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hchargedSubset : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hstructuredDiagonal :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        fiveMillionOneOddNineCellsFailureDiagonalEnvelope) :
    FiveMillionR263TerminalCertificate N B := by
  exact fiveMillionOneOddCapacityFailureR263Terminal
    hLower hBout parity cells (by omega) hactive hchargedSubset hchargedCard
      hclass .oddOneNineCellsFailure
      fiveMillionOneOddNineCellsFailureDiagonalEnvelope hstructuredDiagonal
      (by simpa [fiveMillionOneOddNineCellsFailureBudget] using
        fiveMillionOneOddNineCellsFailureBudget_le_branchCeiling)

#print axioms fiveMillionOneOddEightCellsFailureBudget_le_branchCeiling
#print axioms fiveMillionOneOddNineCellsFailureBudget_le_branchCeiling
#print axioms fiveMillionOneOddCapacityFailureR263Terminal
#print axioms fiveMillionOneOddEightCellsFailureR263Terminal
#print axioms fiveMillionOneOddNineCellsFailureR263Terminal

end Erdos848
