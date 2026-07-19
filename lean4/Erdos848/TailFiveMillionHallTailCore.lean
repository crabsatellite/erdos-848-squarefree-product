import Erdos848.TailFiveMillionSquareTailCore
import Erdos848.TailGlobalMixedFiveMillionConstants
import Erdos848.TailFiveMillionActualSupportCore
import Erdos848.TailPrimeProgressionCounting
import Erdos848.TailHallSieveBridge
import Erdos848.HallPartition

namespace Erdos848

/-!
# Lightweight literal Hall-tail core

This module contains only the actual one-pivot tail sets, their
intermediate/high split, and the six-pivot aggregation interface.  It is
independent of every interval-specific diagonal certificate.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def hallBaseTailSquarePoints
    (N : Nat) (B : Finset Nat) (cutoff pivot : Nat) : Finset Nat := by
  classical
  exact (hallBasePart N B).filter (tailSquarePrimeEvent cutoff pivot)

noncomputable def hallBaseTailSquareCount
    (N : Nat) (B : Finset Nat) (cutoff pivot : Nat) : Rat := by
  classical
  exact (((hallBasePart N B).filter
    (tailSquarePrimeEvent cutoff pivot)).card : Rat)

noncomputable def hallBaseTailSquarePayment
    (N : Nat) (B pivots : Finset Nat) (cutoff k : Nat) : Rat := by
  classical
  exact (∑ pivot ∈ pivots,
    hallBaseTailSquareCount N B cutoff pivot) /
      (pivots.card - k + 1 : Rat)

lemma hallBaseTailSquareCount_eq_card
    (N : Nat) (B : Finset Nat) (cutoff pivot : Nat) :
    hallBaseTailSquareCount N B cutoff pivot =
      ((hallBaseTailSquarePoints N B cutoff pivot).card : Rat) := by
  classical
  simp [hallBaseTailSquareCount, hallBaseTailSquarePoints]

theorem hallBaseTailSquarePoints_subset_intermediate_union_high
    (N : Nat) (B : Finset Nat) (pivot cutoff upper : Nat) :
    hallBaseTailSquarePoints N B cutoff pivot ⊆
      twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes cutoff upper) ∪
        twoBaseHighTailSquarePoints N pivot upper := by
  classical
  intro point hpoint
  have hparts := Finset.mem_filter.mp hpoint
  have hbase : point ∈ lowBaseSet N :=
    (Finset.mem_inter.mp hparts.1).2
  obtain ⟨p, hpPrime, hpCutoff, hpDiv⟩ := hparts.2
  by_cases hpUpper : p <= upper
  · apply Finset.mem_union_left
    exact Finset.mem_biUnion.mpr ⟨p,
      mem_tailIntermediatePrimes.mpr
        ⟨hpPrime, hpCutoff, hpUpper⟩,
      Finset.mem_filter.mpr ⟨hbase, hpDiv⟩⟩
  · apply Finset.mem_union_right
    exact Finset.mem_filter.mpr ⟨hbase,
      ⟨p, hpPrime, Nat.lt_of_not_ge hpUpper, hpDiv⟩⟩

theorem hallBaseTailSquarePoints_card_le_intermediate_add_high
    (N : Nat) (B : Finset Nat) (pivot cutoff upper : Nat) :
    (hallBaseTailSquarePoints N B cutoff pivot).card <=
      (twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff upper)).card +
        (twoBaseHighTailSquarePoints N pivot upper).card := by
  exact (Finset.card_le_card
    (hallBaseTailSquarePoints_subset_intermediate_union_high
      N B pivot cutoff upper)).trans (Finset.card_union_le _ _)

theorem hallBaseTailSquareCount_ratio_le_intermediate_add_high
    {N : Nat} (B : Finset Nat) (pivot cutoff upper : Nat)
    (hN : 0 < N) :
    hallBaseTailSquareCount N B cutoff pivot / N <=
      ((twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff upper)).card : Rat) / N +
        ((twoBaseHighTailSquarePoints N pivot upper).card : Rat) / N := by
  have hcard :
      ((hallBaseTailSquarePoints N B cutoff pivot).card : Rat) <=
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes cutoff upper)).card : Rat) +
          ((twoBaseHighTailSquarePoints N pivot upper).card : Rat) := by
    exact_mod_cast hallBaseTailSquarePoints_card_le_intermediate_add_high
      N B pivot cutoff upper
  rw [hallBaseTailSquareCount_eq_card, ← add_div]
  exact div_le_div_of_nonneg_right hcard (by positivity)

structure FiveMillionBaseTailCertificate
    (N : Nat) (B pivots : Finset Nat) : Prop where
  pivotsCard : pivots.card = 6
  perPivot : ∀ pivot ∈ pivots,
    hallBaseTailSquareCount N B 7 pivot / N <=
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3

theorem hallBaseTailSquarePayment_sixThree_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (certificate : FiveMillionBaseTailCertificate N B pivots) :
    hallBaseTailSquarePayment N B pivots 7 3 / N <=
      (1 / 2 : Rat) * fiveMillionOddRoot7Envelope +
        (1 / 2 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) <=
      6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      certificate.perPivot pivot hpivot
    simpa [certificate.pivotsCard] using h
  unfold hallBaseTailSquarePayment
  rw [certificate.pivotsCard]
  rw [show (((6 : Nat) : Rat) - ((3 : Nat) : Rat) + 1) = 4 by norm_num]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 4 / N <= _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 4 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 4 := by
      rw [← Finset.sum_div]
      ring
    _ <= (6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 4 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (1 / 2 : Rat) * fiveMillionOddRoot7Envelope +
        (1 / 2 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
      ring

#print axioms hallBaseTailSquareCount_ratio_le_intermediate_add_high
#print axioms hallBaseTailSquarePayment_sixThree_ratio_le

end Erdos848
