import Erdos848.TailHallSieveBridge

namespace Erdos848

/-!
# Threshold finite / pair-tail sieve

This is the exact kernel form of the paper's pointwise inequality.  If fewer
than `k` finite events occur among `n` covered forms, at least `n-k+1` tail
events occur and hence at least `choose (n-k+1) 2` tail pairs occur.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

section PairTail

variable {ι α : Type*} [DecidableEq ι]

theorem n_pivot_finite_pairTail
    (indices : Finset ι) (finite tail : ι → Prop)
    [DecidablePred finite] [DecidablePred tail]
    {k : Nat} (hk : k < indices.card)
    (hcover : ∀ i ∈ indices, finite i ∨ tail i) :
    (1 : Rat) <=
      eventIndicator (k <= (indices.filter finite).card) +
        (((indices.filter tail).card.choose 2 : Nat) : Rat) /
          ((indices.card - k + 1).choose 2 : Nat) := by
  have hkLe : k <= indices.card := hk.le
  have htwo : 2 <= indices.card - k + 1 := by omega
  have hdenNat : 0 < (indices.card - k + 1).choose 2 :=
    Nat.choose_pos htwo
  have hden : (0 : Rat) <
      ((indices.card - k + 1).choose 2 : Nat) := by
    exact_mod_cast hdenNat
  by_cases hmany : k <= (indices.filter finite).card
  · rw [eventIndicator, if_pos hmany]
    have hnonneg : (0 : Rat) <=
        (((indices.filter tail).card.choose 2 : Nat) : Rat) /
          ((indices.card - k + 1).choose 2 : Nat) := by positivity
    linarith
  · have hfew : (indices.filter finite).card < k := Nat.lt_of_not_ge hmany
    have htail := all_union_forces_many_tail
      indices finite tail hkLe hcover hfew
    have hchoose : (indices.card - k + 1).choose 2 <=
        (indices.filter tail).card.choose 2 :=
      Nat.choose_le_choose 2 htail
    have hchooseQ :
        (((indices.card - k + 1).choose 2 : Nat) : Rat) <=
          (((indices.filter tail).card.choose 2 : Nat) : Rat) := by
      exact_mod_cast hchoose
    rw [eventIndicator, if_neg hmany, zero_add]
    exact (le_div_iff₀ hden).2 (by simpa using hchooseQ)

theorem card_le_finite_threshold_add_pairTail_sum
    (points : Finset α) (indices : Finset ι)
    (finite tail : ι → α → Prop)
    [DecidableRel finite] [DecidableRel tail]
    {k : Nat} (hk : k < indices.card)
    (hcover : ∀ point ∈ points, ∀ i ∈ indices,
      finite i point ∨ tail i point) :
    (points.card : Rat) <=
      ((points.filter fun point =>
        k <= (indices.filter fun i => finite i point).card).card : Rat) +
      ((∑ subset ∈ indices.powersetCard 2,
          (eventIntersection points tail subset).card : Nat) : Rat) /
        ((indices.card - k + 1).choose 2 : Nat) := by
  have hpointwise : ∀ point ∈ points,
      (1 : Rat) <=
        eventIndicator
          (k <= (indices.filter fun i => finite i point).card) +
        (((indices.filter fun i => tail i point).card.choose 2 : Nat) : Rat) /
          ((indices.card - k + 1).choose 2 : Nat) := by
    intro point hpoint
    exact n_pivot_finite_pairTail indices
      (fun i => finite i point) (fun i => tail i point) hk
      (hcover point hpoint)
  have hsum := Finset.sum_le_sum fun point hpoint => hpointwise point hpoint
  rw [Finset.sum_add_distrib] at hsum
  have hchooseNat := sum_choose_active_eq_sum_intersections
    points indices tail 2
  have hchooseQ :
      (∑ point ∈ points,
          (((indices.filter fun i => tail i point).card.choose 2 : Nat) : Rat)) =
        ((∑ subset ∈ indices.powersetCard 2,
          (eventIntersection points tail subset).card : Nat) : Rat) := by
    exact_mod_cast hchooseNat
  calc
    (points.card : Rat) = ∑ _point ∈ points, (1 : Rat) := by simp
    _ <= ∑ point ∈ points,
          eventIndicator
            (k <= (indices.filter fun i => finite i point).card) +
        ∑ point ∈ points,
          (((indices.filter fun i => tail i point).card.choose 2 : Nat) : Rat) /
            ((indices.card - k + 1).choose 2 : Nat) := hsum
    _ = ((points.filter fun point =>
          k <= (indices.filter fun i => finite i point).card).card : Rat) +
        ((∑ subset ∈ indices.powersetCard 2,
          (eventIntersection points tail subset).card : Nat) : Rat) /
            ((indices.card - k + 1).choose 2 : Nat) := by
      rw [← Finset.sum_div, hchooseQ]
      simp [eventIndicator]

end PairTail

noncomputable def hallPairTailSquarePayment
    (N : Nat) (B pivots : Finset Nat) (cutoff k : Nat) : Rat := by
  classical
  exact
    ((∑ subset ∈ pivots.powersetCard 2,
      (eventIntersection (hallCompletion N B)
        (tailSquarePrimeEvent cutoff) subset).card : Nat) : Rat) /
      ((pivots.card - k + 1).choose 2 : Nat)

/-- Literal Hall-completion bridge for the `n=8, k=5` pair-tail mechanism
(and every other nonterminal threshold `k<n`). -/
theorem hallCompletion_card_le_pivotPairTailSieve
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k < pivots.card) :
    ((hallCompletion N B).card : Rat) <=
      hallFiniteThresholdPayment N B pivots cutoff k +
        hallPairTailSquarePayment N B pivots cutoff k := by
  classical
  simpa [hallFiniteThresholdPayment, hallPairTailSquarePayment] using
    (card_le_finite_threshold_add_pairTail_sum
      (points := hallCompletion N B) (indices := pivots)
      (finite := finiteSquarePrimeEvent cutoff)
      (tail := tailSquarePrimeEvent cutoff) hk
      (hallCompletion_finite_or_tail hBprop hpivots))

#print axioms n_pivot_finite_pairTail
#print axioms card_le_finite_threshold_add_pairTail_sum
#print axioms hallCompletion_card_le_pivotPairTailSieve

end Erdos848
