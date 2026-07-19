import Erdos848.TailFiveMillionPeriodicProducer
import Erdos848.TailGlobalMixedActualTail

namespace Erdos848

/-!
# All-`N` close of the controlling one-odd-class, six/seven-cell mechanism

This file contains no interval scan.  It starts with the literal residual
allocation data, produces six actual Hall pivots, applies the exact periodic
finite sieve and the global one-form tail theorem, and ends at the strict Hall
target for every `N >= 5,000,000`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedOneOddSevenCellDiagonalEnvelope : Rat :=
  492664032616705 / 100000000000000000

def globalMixedOneOddSevenCellFiniteEnvelope : Rat :=
  2 * (55 / 196 : Rat) / 25 +
    2 * ((55 / 196 : Rat) + 69795 / 196) / 5_000_000

def globalMixedOneOddSevenCellTailEnvelope : Rat :=
  (1 / 2 : Rat) * fiveMillionOddRoot7Envelope +
    (1 / 2 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25

def globalMixedOneOddSevenCellBudget : Rat :=
  globalMixedOneOddSevenCellDiagonalEnvelope +
    globalMixedOneOddSevenCellFiniteEnvelope +
      globalMixedOneOddSevenCellTailEnvelope + 128 / 5_000_000

theorem globalMixedOneOddSevenCellBudget_lt_fiveMillionTarget :
    globalMixedOneOddSevenCellBudget < tailHallTarget 5_000_000 := by
  norm_num [globalMixedOneOddSevenCellBudget,
    globalMixedOneOddSevenCellDiagonalEnvelope,
    globalMixedOneOddSevenCellFiniteEnvelope,
    globalMixedOneOddSevenCellTailEnvelope, tailHallTarget,
    fiveMillionOddRoot7Envelope, fiveMillionSquareTail7Envelope]

theorem globalMixedOneOddSevenCellBudget_lt_target
    {N : Nat} (hLower : 5_000_000 <= N) :
    globalMixedOneOddSevenCellBudget < tailHallTarget N :=
  globalMixedOneOddSevenCellBudget_lt_fiveMillionTarget.trans_le
    (tailHallTarget_mono (by norm_num) hLower)

noncomputable def globalMixedOneOddSevenCellFinitePayment
    (N : Nat) (B pivots : Finset Nat) : Rat := by
  classical
  exact (((hallBasePart N B).filter fun point =>
    3 <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 7 pivot point).card).card : Rat)

theorem hallBasePart_card_le_oneOddSevenCellFiniteTail
    {N : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hpivotsCard : pivots.card = 6) :
    ((hallBasePart N B).card : Rat) <=
      globalMixedOneOddSevenCellFinitePayment N B pivots +
        hallBaseTailSquarePayment N B pivots 7 3 := by
  classical
  have hk : 3 <= pivots.card := by omega
  have hraw := card_le_finite_threshold_add_tail_sum
    (points := hallBasePart N B) (indices := pivots)
    (finite := finiteSquarePrimeEvent 7)
    (tail := tailSquarePrimeEvent 7) hk (by
      intro point hpoint pivot hpivot
      exact hallCompletion_finite_or_tail hBprop hpivots point
        (Finset.mem_inter.mp hpoint).1 pivot hpivot)
  have hden : (((pivots.card - 3 : Nat) : Rat) + 1) =
      (pivots.card : Rat) - (3 : Rat) + 1 := by
    rw [Nat.cast_sub hk]
    norm_num
  simpa [globalMixedOneOddSevenCellFinitePayment,
    hallBaseTailSquarePayment, hallBaseTailSquareCount, hden] using hraw

theorem globalMixedOneOddSevenCellFinitePayment_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (certificate : FiveMillionBasePeriodicThresholdCertificate N B pivots) :
    globalMixedOneOddSevenCellFinitePayment N B pivots / N <=
      globalMixedOneOddSevenCellFiniteEnvelope := by
  simpa [globalMixedOneOddSevenCellFinitePayment,
    globalMixedOneOddSevenCellFiniteEnvelope,
    fiveMillionFiniteEventCount] using
      fiveMillionBasePeriodicThreshold_ratio_le hLower certificate

/-- Literal terminal data for the one-odd-class branch.  The diagonal field is
the only quantitative residual input: all pivot, CRT, finite-sieve, tail and
Hall-assembly obligations are discharged below. -/
structure GlobalMixedOneOddSevenCellCertificate
    (N : Nat) (B : Finset Nat) : Type where
  charged : Finset Nat
  parity : Bool
  cells : Finset (Fin 9)
  chargedSubset : charged ⊆ hallResidual N B
  chargedCard : charged.card <= 128
  cellsCardLower : 6 <= cells.card
  cellsCardUpper : cells.card <= 7
  structuredClass :
    ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1
  structuredCells :
    ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells
  activeCells :
    ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell
  structuredDiagonal :
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
      globalMixedOneOddSevenCellDiagonalEnvelope

/-- The complete mechanism: once the literal residual is allocated to one odd
mod-four class and six or seven active mod-nine cells with the stated diagonal
bound, the actual Hall completion is strictly below the target. -/
theorem globalMixedOneOddSevenCell_completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : GlobalMixedOneOddSevenCellCertificate N B) :
    ((hallCompletion N B).card : Rat) / N < tailHallTarget N := by
  classical
  let produced := fiveMillionSixPivotPatternWithStructuredOfActiveCells
    certificate.parity certificate.cells certificate.cellsCardLower
      certificate.activeCells certificate.structuredClass
  let pivots : Finset Nat := produced.1
  let pattern : FiveMillionSixPivotPattern N B pivots := produced.2.1
  have hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B certificate.charged :=
    produced.2.2
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp (pattern.pivotsResidual hpivot)).1
  have hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot := by
    intro pivot hpivot
    have hstructured := hpivotsStructured hpivot
    have hmod := certificate.structuredClass pivot hstructured
    have oddOfModFour (h : pivot % 4 = 1 ∨ pivot % 4 = 3) : Odd pivot := by
      have hmodTwo : pivot % 2 = 1 := (Nat.odd_mod_four_iff).2 h
      refine ⟨pivot / 2, ?_⟩
      have hdecomp := Nat.mod_add_div pivot 2
      omega
    cases hparity : certificate.parity with
    | false =>
        exact oddOfModFour
          (Or.inl (by simpa [hparity] using hmod))
    | true =>
        exact oddOfModFour
          (Or.inr (by simpa [hparity] using hmod))
  let tailCertificate := globalMixedBaseTailCertificate_actual
    hLower hBout pattern.pivotsCard pattern.pivotsResidual hpivotsOdd
  have hbase := hallBasePart_card_le_oneOddSevenCellFiniteTail
    hBprop hpivotsCompletion pattern.pivotsCard
  have hfinite := globalMixedOneOddSevenCellFinitePayment_ratio_le
    hLower (pattern.toPeriodicCertificate hBout)
  have htail := hallBaseTailSquarePayment_sixThree_ratio_le tailCertificate
  have hchargeRatio : (certificate.charged.card : Rat) / N <= 128 / N := by
    apply div_le_div_of_nonneg_right _ (by positivity)
    exact_mod_cast certificate.chargedCard
  have hresidualPartition :
      (fiveMillionStructuredResidual N B certificate.charged).card +
          certificate.charged.card = (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card certificate.chargedSubset
  have hresidual : ((hallResidual N B).card : Rat) / N <=
      globalMixedOneOddSevenCellDiagonalEnvelope + 128 / N := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B certificate.charged).card : Rat) / N +
            (certificate.charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hresidualPartition.symm
      _ <= globalMixedOneOddSevenCellDiagonalEnvelope + 128 / N :=
        add_le_add certificate.structuredDiagonal hchargeRatio
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hchargeAtCut : (128 : Rat) / N <= 128 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hpartitionQ :
      ((hallCompletion N B).card : Rat) =
        (hallResidual N B).card + (hallBasePart N B).card := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  have hbaseRatio : ((hallBasePart N B).card : Rat) / N <=
      globalMixedOneOddSevenCellFinitePayment N B pivots / N +
        hallBaseTailSquarePayment N B pivots 7 3 / N := by
    rw [← add_div]
    exact div_le_div_of_nonneg_right hbase (by positivity)
  calc
    ((hallCompletion N B).card : Rat) / N =
        ((hallResidual N B).card : Rat) / N +
          ((hallBasePart N B).card : Rat) / N := by
      rw [← add_div, hpartitionQ]
    _ <= (globalMixedOneOddSevenCellDiagonalEnvelope + 128 / N) +
        (globalMixedOneOddSevenCellFiniteEnvelope +
          globalMixedOneOddSevenCellTailEnvelope) := by
      apply add_le_add hresidual
      exact hbaseRatio.trans (add_le_add hfinite htail)
    _ <= globalMixedOneOddSevenCellBudget := by
      unfold globalMixedOneOddSevenCellBudget
      linarith
    _ < tailHallTarget N :=
      globalMixedOneOddSevenCellBudget_lt_target hLower

#print axioms globalMixedOneOddSevenCellBudget_lt_fiveMillionTarget
#print axioms hallBasePart_card_le_oneOddSevenCellFiniteTail
#print axioms globalMixedOneOddSevenCell_completion_ratio_lt_target

end Erdos848
