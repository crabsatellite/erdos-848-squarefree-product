import Erdos848.TailGlobalMixedThreePivotActualTail
import Erdos848.TailGlobalMixedThreePivotFiniteBridge

namespace Erdos848

/-!
# Actual Hall reduction for the three-pivot route

The off-base residual is kept literal.  Only the actual base part is sent
through the finite/tail Boolean sieve, so the all-`N` one-form tail theorem is
used on exactly the set it counts.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hallBasePart_card_le_globalMixedFinite_actualTail
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k <= pivots.card) :
    ((hallBasePart N B).card : Rat) <=
      globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
        hallBaseTailSquarePayment N B pivots cutoff k := by
  classical
  have hraw := card_le_finite_threshold_add_tail_sum
    (points := hallBasePart N B) (indices := pivots)
    (finite := finiteSquarePrimeEvent cutoff)
    (tail := tailSquarePrimeEvent cutoff) hk
    (by
      intro point hpoint pivot hpivot
      exact hallCompletion_finite_or_tail hBprop hpivots point
        (Finset.mem_inter.mp hpoint).1 pivot hpivot)
  let completionFinite := (hallBasePart N B).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card
  let baseFinite := (lowBaseSet N).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card
  have hfiniteSubset : completionFinite ⊆ baseFinite := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    exact Finset.mem_filter.mpr
      ⟨(Finset.mem_inter.mp hparts.1).2, hparts.2⟩
  have hfiniteQ : (completionFinite.card : Rat) <=
      (baseFinite.card : Rat) := by
    exact_mod_cast Finset.card_le_card hfiniteSubset
  have hden : (((pivots.card - k : Nat) : Rat) + 1) =
      (pivots.card : Rat) - (k : Rat) + 1 := by
    rw [Nat.cast_sub hk]
  have hraw' : ((hallBasePart N B).card : Rat) <=
      (completionFinite.card : Rat) +
        hallBaseTailSquarePayment N B pivots cutoff k := by
    simpa [completionFinite, hallBaseTailSquarePayment,
      hallBaseTailSquareCount, hden] using hraw
  unfold globalMixedBaseFiniteThresholdPayment
  change (hallBasePart N B).card <=
    (baseFinite.card : Rat) +
      hallBaseTailSquarePayment N B pivots cutoff k
  exact hraw'.trans (add_le_add hfiniteQ le_rfl)

theorem hallCompletion_card_le_actualResidualFiniteTail
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k <= pivots.card) :
    ((hallCompletion N B).card : Rat) <=
      (hallResidual N B).card +
        globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          hallBaseTailSquarePayment N B pivots cutoff k := by
  have hbase := hallBasePart_card_le_globalMixedFinite_actualTail
    (cutoff := cutoff) (k := k) hBprop hpivots hk
  have hpartitionQ :
      ((hallResidual N B).card : Rat) +
          ((hallBasePart N B).card : Rat) =
        ((hallCompletion N B).card : Rat) := by
    exact_mod_cast hallCompletion_card_partition N B
  calc
    ((hallCompletion N B).card : Rat) =
        (hallResidual N B).card + (hallBasePart N B).card :=
      hpartitionQ.symm
    _ <= (hallResidual N B).card +
        (globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          hallBaseTailSquarePayment N B pivots cutoff k) :=
      add_le_add le_rfl hbase
    _ = (hallResidual N B).card +
        globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          hallBaseTailSquarePayment N B pivots cutoff k := by ring

#print axioms hallBasePart_card_le_globalMixedFinite_actualTail
#print axioms hallCompletion_card_le_actualResidualFiniteTail

end Erdos848
