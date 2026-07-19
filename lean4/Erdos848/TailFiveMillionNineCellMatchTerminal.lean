import Erdos848.TailFiveMillionNineCellCapacityMatching

namespace Erdos848

/-! # Complete R263 terminal producer for the nine-cell matching branch -/

def fiveMillionOneOddNineCellsDiagonalEnvelope : Rat :=
  6328567002752454 / 10^18

def fiveMillionOneOddNineCellsMatchBudget : Rat :=
  fiveMillionOneOddNineCellsDiagonalEnvelope + 128 / 5_000_000 +
    fiveMillionOneOddEightPivotFiniteEnvelope +
      fiveMillionOneOddEightPivotTailEnvelope

theorem fiveMillionOneOddNineCellsMatchBudget_le_branchCeiling :
    fiveMillionOneOddNineCellsMatchBudget <=
      fiveMillionR263BranchCeiling .oddOneNineCellsMatch := by
  norm_num [fiveMillionOneOddNineCellsMatchBudget,
    fiveMillionOneOddNineCellsDiagonalEnvelope,
    fiveMillionOneOddEightPivotFiniteEnvelope,
    fiveMillionOneOddEightPivotTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

noncomputable def fiveMillionOneOddNineCellsMatchR263Terminal
    {N : Nat} {B charged pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (parity : Bool)
    (hchargedSubset : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card <= 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (pattern : FiveMillionEightPivotPattern N B pivots)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B charged)
    (hstructuredDiagonal :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
        fiveMillionOneOddNineCellsDiagonalEnvelope) :
    FiveMillionR263TerminalCertificate N B := by
  classical
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
  let tailCertificate := globalMixedEightBaseTailCertificate_actual
    hLower hBout pattern.pivotsCard pattern.pivotsResidual hpivotsOdd
  have hfiniteOriginal := fiveMillionEightBasePeriodicThreshold_ratio_le
    hLower (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 4 / N <=
        fiveMillionOneOddEightPivotFiniteEnvelope := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionEightFiniteEventCount,
      fiveMillionOneOddEightPivotFiniteEnvelope] using hfiniteOriginal
  have htail : hallBaseTailSquarePayment N B pivots 7 4 / N <=
      fiveMillionOneOddEightPivotTailEnvelope := by
    simpa [fiveMillionOneOddEightPivotTailEnvelope] using
      hallBaseTailSquarePayment_eightFour_ratio_le tailCertificate
  have hchargeRatio : (charged.card : Rat) / N <= 128 / N := by
    apply div_le_div_of_nonneg_right _ (by positivity)
    exact_mod_cast hchargedCard
  have hresidualPartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hresidualN : ((hallResidual N B).card : Rat) / N <=
      fiveMillionOneOddNineCellsDiagonalEnvelope + 128 / N := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
            (charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hresidualPartition.symm
      _ <= fiveMillionOneOddNineCellsDiagonalEnvelope + 128 / N :=
        add_le_add hstructuredDiagonal hchargeRatio
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hchargeAtCut : (128 : Rat) / N <= 128 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hresidual : ((hallResidual N B).card : Rat) / N <=
      fiveMillionOneOddNineCellsDiagonalEnvelope + 128 / 5_000_000 := by
    linarith
  refine
    { branch := .oddOneNineCellsMatch
      pivots := pivots
      cutoff := 7
      threshold := 4
      thresholdPositive := by norm_num
      thresholdCard := by simpa [pattern.pivotsCard]
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        fiveMillionOneOddNineCellsDiagonalEnvelope + 128 / 5_000_000
      finiteEnvelope := fiveMillionOneOddEightPivotFiniteEnvelope
      tailEnvelope := fiveMillionOneOddEightPivotTailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  simpa [fiveMillionOneOddNineCellsMatchBudget] using
    fiveMillionOneOddNineCellsMatchBudget_le_branchCeiling

#print axioms fiveMillionOneOddNineCellsMatchBudget_le_branchCeiling
#print axioms fiveMillionOneOddNineCellsMatchR263Terminal

end Erdos848
