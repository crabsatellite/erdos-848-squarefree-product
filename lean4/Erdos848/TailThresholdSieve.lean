import Erdos848.TailHallSieveBridge

namespace Erdos848

/-!
# Exact finite-threshold / tail-threshold sieve

If fewer than `k` finite events occur among `n` covered forms, at least
`n - k + 1` tail events occur.  Unlike the pair-tail sum, the tail threshold
below counts each point once, including a point covered by all selected
pivots through one common square prime.
-/

section TailThreshold

variable {ι α : Type*} [DecidableEq ι]

theorem n_pivot_finite_tailThreshold
    (indices : Finset ι) (finite tail : ι → Prop)
    [DecidablePred finite] [DecidablePred tail]
    {k : ℕ} (hk : k ≤ indices.card)
    (hcover : ∀ i ∈ indices, finite i ∨ tail i) :
    (1 : ℚ) ≤
      eventIndicator (k ≤ (indices.filter finite).card) +
        eventIndicator
          (indices.card - k + 1 ≤ (indices.filter tail).card) := by
  by_cases hmany : k ≤ (indices.filter finite).card
  · rw [eventIndicator, if_pos hmany]
    unfold eventIndicator
    split <;> norm_num
  · have hfew : (indices.filter finite).card < k :=
      Nat.lt_of_not_ge hmany
    have htail := all_union_forces_many_tail
      indices finite tail hk hcover hfew
    simp [eventIndicator, hmany, htail]

theorem card_le_finite_threshold_add_tailThreshold
    (points : Finset α) (indices : Finset ι)
    (finite tail : ι → α → Prop)
    [DecidableRel finite] [DecidableRel tail]
    {k : ℕ} (hk : k ≤ indices.card)
    (hcover : ∀ point ∈ points, ∀ i ∈ indices,
      finite i point ∨ tail i point) :
    (points.card : ℚ) ≤
      ((points.filter fun point =>
        k ≤ (indices.filter fun i => finite i point).card).card : ℚ) +
      ((points.filter fun point =>
        indices.card - k + 1 ≤
          (indices.filter fun i => tail i point).card).card : ℚ) := by
  have hpointwise : ∀ point ∈ points,
      (1 : ℚ) ≤
        eventIndicator
          (k ≤ (indices.filter fun i => finite i point).card) +
        eventIndicator
          (indices.card - k + 1 ≤
            (indices.filter fun i => tail i point).card) := by
    intro point hpoint
    exact n_pivot_finite_tailThreshold indices
      (fun i => finite i point) (fun i => tail i point) hk
      (hcover point hpoint)
  have hsum := Finset.sum_le_sum fun point hpoint =>
    hpointwise point hpoint
  rw [Finset.sum_add_distrib] at hsum
  calc
    (points.card : ℚ) = ∑ _point ∈ points, (1 : ℚ) := by simp
    _ ≤ ∑ point ∈ points,
          eventIndicator
            (k ≤ (indices.filter fun i => finite i point).card) +
        ∑ point ∈ points,
          eventIndicator
            (indices.card - k + 1 ≤
              (indices.filter fun i => tail i point).card) := hsum
    _ = ((points.filter fun point =>
          k ≤ (indices.filter fun i => finite i point).card).card : ℚ) +
        ((points.filter fun point =>
          indices.card - k + 1 ≤
            (indices.filter fun i => tail i point).card).card : ℚ) := by
      simp [eventIndicator]

end TailThreshold

#print axioms n_pivot_finite_tailThreshold
#print axioms card_le_finite_threshold_add_tailThreshold

end Erdos848
