import Erdos848.TailGlobalMixedOneOddFiveCell
import Erdos848.TailFiveMillionThreeCellPeriodicProducer
import Erdos848.GeneratedTailDiagonalCoverage.TailS3EnvelopeAggregate

namespace Erdos848

/-! Direct R263 terminal for the one-odd, three-active-cell row. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedOneOddThreeCellDiagonalEnvelope : Rat :=
  2117479004014482 / 10^18

def globalMixedOneOddThreeCellFiniteEnvelope : Rat :=
  2 * (57 / 196 : Rat) / 25 +
    2 * ((57 / 196 : Rat) + 71307 / 196) / 5_000_000

def globalMixedOneOddThreeCellTailEnvelope : Rat :=
  (1 / 2 : Rat) * fiveMillionOddRoot7Envelope +
    (1 / 2 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25

def globalMixedOneOddThreeCellBudget : Rat :=
  globalMixedOneOddThreeCellDiagonalEnvelope +
    globalMixedOneOddThreeCellFiniteEnvelope +
      globalMixedOneOddThreeCellTailEnvelope + 128 / 5_000_000

theorem globalMixedOneOddThreeCellBudget_le_branchCeiling :
    globalMixedOneOddThreeCellBudget <=
      fiveMillionR263BranchCeiling .oddOneThreeCells := by
  norm_num [globalMixedOneOddThreeCellBudget,
    globalMixedOneOddThreeCellDiagonalEnvelope,
    globalMixedOneOddThreeCellFiniteEnvelope,
    globalMixedOneOddThreeCellTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

theorem globalMixedOneOddThreeCellStructuredDiagonal_kernel_close
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 3)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
      globalMixedOneOddThreeCellDiagonalEnvelope := by
  have hsubset := fiveMillionStructuredResidual_subset_generatedCellUnion
    hBout hBprop parity cells hclass hcells
  have hcard := Finset.card_le_card hsubset
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
        ((tailDiagonalCellUnion N parity cells).card : Rat) / N := by
      apply div_le_div_of_nonneg_right _ hNPositive.le
      exact_mod_cast hcard
    _ <= globalMixedOneOddThreeCellDiagonalEnvelope := by
      simpa [globalMixedOneOddThreeCellDiagonalEnvelope] using
        GeneratedTailDiagonalCoverage.fiveMillionOneOddS3Diagonal_kernel_close
          N hLower hUpper parity cells (by omega)

noncomputable def globalMixedOneOddThreeCellR263Terminal_of_generated
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card <= 128)
    (hcellsCard : cells.card = 3)
    (hcellSize : ∀ cell ∈ cells,
      2 <= ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    FiveMillionR263TerminalCertificate N B := by
  classical
  let produced := fiveMillionThreeCellSixPivotPatternOfCells
    parity cells hcellsCard hcellSize hclass
  let pattern : FiveMillionThreeCellSixPivotPattern N B := produced.1
  let pivots : Finset Nat := pattern.pivots
  have hpivotsStructured : pivots ⊆
      fiveMillionStructuredResidual N B charged := by
    intro pivot hpivot
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
    exact produced.2 i
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      ((Finset.mem_sdiff.mp (hpivotsStructured hpivot)).1)).1
  have hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot := by
    intro pivot hpivot
    have hstructured := hpivotsStructured hpivot
    have hmod := hclass pivot hstructured
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
    hLower hBout pattern.pivots_card pattern.pivots_subset_residual hpivotsOdd
  have hfiniteOriginal :=
    fiveMillionThreeCellBasePeriodicThreshold_ratio_le hLower
      (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 3 / N <=
        globalMixedOneOddThreeCellFiniteEnvelope := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      globalMixedOneOddThreeCellFiniteEnvelope,
      fiveMillionFiniteEventCount] using hfiniteOriginal
  have htail : hallBaseTailSquarePayment N B pivots 7 3 / N <=
      globalMixedOneOddThreeCellTailEnvelope := by
    simpa [globalMixedOneOddThreeCellTailEnvelope] using
      hallBaseTailSquarePayment_sixThree_ratio_le tailCertificate
  have hstructuredDiagonal :=
    globalMixedOneOddThreeCellStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop parity cells hcellsCard hclass hcells
  have hchargeRatio : (charged.card : Rat) / N <= 128 / N := by
    apply div_le_div_of_nonneg_right _ (by positivity)
    exact_mod_cast hchargedCard
  have hresidualPartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hcharged
  have hresidualN : ((hallResidual N B).card : Rat) / N <=
      globalMixedOneOddThreeCellDiagonalEnvelope + 128 / N := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
            (charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hresidualPartition.symm
      _ <= globalMixedOneOddThreeCellDiagonalEnvelope + 128 / N :=
        add_le_add hstructuredDiagonal hchargeRatio
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hchargeAtCut : (128 : Rat) / N <= 128 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hresidual : ((hallResidual N B).card : Rat) / N <=
      globalMixedOneOddThreeCellDiagonalEnvelope + 128 / 5_000_000 := by
    linarith
  refine
    { branch := .oddOneThreeCells
      pivots := pivots
      cutoff := 7
      threshold := 3
      thresholdPositive := by norm_num
      thresholdCard := by
        have hcard := pattern.pivots_card
        simpa [pivots] using (show 3 <= pattern.pivots.card by omega)
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        globalMixedOneOddThreeCellDiagonalEnvelope + 128 / 5_000_000
      finiteEnvelope := globalMixedOneOddThreeCellFiniteEnvelope
      tailEnvelope := globalMixedOneOddThreeCellTailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  calc
    globalMixedOneOddThreeCellDiagonalEnvelope + 128 / 5_000_000 +
          globalMixedOneOddThreeCellFiniteEnvelope +
        globalMixedOneOddThreeCellTailEnvelope =
        globalMixedOneOddThreeCellBudget := by
          unfold globalMixedOneOddThreeCellBudget
          ring
    _ <= fiveMillionR263BranchCeiling .oddOneThreeCells :=
      globalMixedOneOddThreeCellBudget_le_branchCeiling

#print axioms globalMixedOneOddThreeCellBudget_le_branchCeiling
#print axioms globalMixedOneOddThreeCellStructuredDiagonal_kernel_close
#print axioms globalMixedOneOddThreeCellR263Terminal_of_generated

end Erdos848

