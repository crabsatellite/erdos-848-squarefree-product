import Erdos848.TailFiniteSieve
import Erdos848.TailMixedHall

namespace Erdos848

/-!
# Direct pivot-sieve bridge for the Hall completion

The numerical tail files bound finite square-prime intersections and the
remaining one-form square tail.  This file connects those literal events to
the actual Hall completion.  In particular, the points being counted below
are not an abstract surrogate for a Hall set: they are exactly
`hallCompletion N B`.
-/

/-- The product with `pivot` is divisible by the square of a prime at most
`cutoff`. -/
def finiteSquarePrimeEvent (cutoff pivot point : ℕ) : Prop :=
  ∃ p : ℕ, Nat.Prime p ∧ p ≤ cutoff ∧ p ^ 2 ∣ pivot * point + 1

/-- The complementary square-prime event above `cutoff`. -/
def tailSquarePrimeEvent (cutoff pivot point : ℕ) : Prop :=
  ∃ p : ℕ, Nat.Prime p ∧ cutoff < p ∧ p ^ 2 ∣ pivot * point + 1

lemma finiteSquarePrimeEvent_or_tailSquarePrimeEvent
    {cutoff n : ℕ} (hn : ¬ Squarefree n) :
    (∃ p : ℕ, Nat.Prime p ∧ p ≤ cutoff ∧ p ^ 2 ∣ n) ∨
      (∃ p : ℕ, Nat.Prime p ∧ cutoff < p ∧ p ^ 2 ∣ n) := by
  rw [Nat.squarefree_iff_prime_squarefree] at hn
  push Not at hn
  obtain ⟨p, hp, hpSq⟩ := hn
  by_cases hpCutoff : p ≤ cutoff
  · exact Or.inl ⟨p, hp, hpCutoff, by simpa [pow_two] using hpSq⟩
  · exact Or.inr ⟨p, hp, Nat.lt_of_not_ge hpCutoff,
      by simpa [pow_two] using hpSq⟩

/-- Every selected pivot covers every point of the actual Hall completion by
one of the two literal square-prime events. -/
theorem hallCompletion_finite_or_tail
    {N cutoff : ℕ} {B pivots : Finset ℕ}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B) :
    ∀ point ∈ hallCompletion N B, ∀ pivot ∈ pivots,
      finiteSquarePrimeEvent cutoff pivot point ∨
        tailSquarePrimeEvent cutoff pivot point := by
  intro point hpoint pivot hpivot
  have hnotSquarefree :=
    hallCompletion_nonSquarefree hBprop point hpoint pivot (hpivots hpivot)
  rcases finiteSquarePrimeEvent_or_tailSquarePrimeEvent
      (cutoff := cutoff) hnotSquarefree with hfinite | htail
  · left
    simpa [finiteSquarePrimeEvent, mul_comm] using hfinite
  · right
    simpa [tailSquarePrimeEvent, mul_comm] using htail

/-- Exact finite-threshold term in the pointwise `k`-of-`n` Boolean sieve.
Unlike the sum of all `k`-fold intersections, this counts each point once;
it is therefore the literal quantity bounded by the periodic dynamic
programmes in the paper. -/
noncomputable def hallFiniteThresholdPayment
    (N : ℕ) (B pivots : Finset ℕ) (cutoff k : ℕ) : ℚ := by
  classical
  exact (((hallCompletion N B).filter fun point =>
    k ≤ (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card).card : ℚ)

/-- The coarser sum of all exact `k`-fold intersections.  It remains useful
for certificates which genuinely bound intersection multiplicity, but it is
not substituted for the threshold term in the five-million periodic row. -/
noncomputable def hallFiniteIntersectionPayment
    (N : ℕ) (B pivots : Finset ℕ) (cutoff k : ℕ) : ℚ := by
  classical
  exact ((∑ subset ∈ pivots.powersetCard k,
    (eventIntersection (hallCompletion N B)
      (finiteSquarePrimeEvent cutoff) subset).card : ℕ) : ℚ)

/-- Exact normalized one-form tail term paired with either finite payment. -/
noncomputable def hallTailSquarePayment
    (N : ℕ) (B pivots : Finset ℕ) (cutoff k : ℕ) : ℚ := by
  classical
  exact (∑ pivot ∈ pivots,
    (((hallCompletion N B).filter
      (tailSquarePrimeEvent cutoff pivot)).card : ℚ)) /
        (pivots.card - k + 1 : ℕ)

/-- Unconditional semantic Hall implication.  Once the pivots are members
of `hallCompletion N B`, the
completion cardinality is bounded by the exact finite-intersection and tail
payments above. -/
theorem hallCompletion_card_le_pivotSieve
    {N cutoff k : ℕ} {B pivots : Finset ℕ}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k ≤ pivots.card) :
    ((hallCompletion N B).card : ℚ) ≤
      hallFiniteIntersectionPayment N B pivots cutoff k +
        hallTailSquarePayment N B pivots cutoff k := by
  classical
  simpa [hallFiniteIntersectionPayment, hallTailSquarePayment] using
    (card_le_intersectionSum_add_tail_sum
      (points := hallCompletion N B) (indices := pivots)
      (finite := finiteSquarePrimeEvent cutoff)
      (tail := tailSquarePrimeEvent cutoff) hk
      (hallCompletion_finite_or_tail hBprop hpivots))

/-- The exact semantic bridge for the paper's periodic `k`-of-`n` rows.  No
intersection multiplicity is introduced: the first summand is precisely the
set of completion points on which at least `k` selected pivots have a finite
square-prime witness. -/
theorem hallCompletion_card_le_pivotThresholdSieve
    {N cutoff k : ℕ} {B pivots : Finset ℕ}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k ≤ pivots.card) :
    ((hallCompletion N B).card : ℚ) ≤
      hallFiniteThresholdPayment N B pivots cutoff k +
        hallTailSquarePayment N B pivots cutoff k := by
  classical
  simpa [hallFiniteThresholdPayment, hallTailSquarePayment] using
    (card_le_finite_threshold_add_tail_sum
      (points := hallCompletion N B) (indices := pivots)
      (finite := finiteSquarePrimeEvent cutoff)
      (tail := tailSquarePrimeEvent cutoff) hk
      (hallCompletion_finite_or_tail hBprop hpivots))

/-- Normalized version of `hallCompletion_card_le_pivotSieve`. -/
theorem hallCompletion_ratio_le_pivotSieve
    {N cutoff k : ℕ} {B pivots : Finset ℕ}
    (hN : 0 < N)
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k ≤ pivots.card) :
    ((hallCompletion N B).card : ℚ) / N ≤
      (hallFiniteIntersectionPayment N B pivots cutoff k +
        hallTailSquarePayment N B pivots cutoff k) / N := by
  have hNq : (0 : ℚ) ≤ N := by positivity
  exact div_le_div_of_nonneg_right
    (hallCompletion_card_le_pivotSieve hBprop hpivots hk) hNq

/-- Normalized threshold version used by the finite periodic certificate. -/
theorem hallCompletion_ratio_le_pivotThresholdSieve
    {N cutoff k : ℕ} {B pivots : Finset ℕ}
    (hN : 0 < N)
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k ≤ pivots.card) :
    ((hallCompletion N B).card : ℚ) / N ≤
      (hallFiniteThresholdPayment N B pivots cutoff k +
        hallTailSquarePayment N B pivots cutoff k) / N := by
  have hNq : (0 : ℚ) ≤ N := by positivity
  exact div_le_div_of_nonneg_right
    (hallCompletion_card_le_pivotThresholdSieve hBprop hpivots hk) hNq

/-- The common normalized Hall target for all four tail blocks. -/
def tailHallTarget (N : ℕ) : ℚ :=
  1 / 25 - 7 / (25 * (N : ℚ))

theorem tailHallTarget_mono {M N : ℕ}
    (hM : 0 < M) (hMN : M ≤ N) :
    tailHallTarget M ≤ tailHallTarget N := by
  have hMq : (0 : ℚ) < M := by exact_mod_cast hM
  have hN : 0 < N := lt_of_lt_of_le hM hMN
  have hNq : (0 : ℚ) < N := by exact_mod_cast hN
  have hMNq : (M : ℚ) ≤ N := by exact_mod_cast hMN
  have hdenM : (0 : ℚ) < 25 * M := mul_pos (by norm_num) hMq
  have hdenN : (0 : ℚ) < 25 * N := mul_pos (by norm_num) hNq
  have hfrac : (7 : ℚ) / (25 * N) ≤ 7 / (25 * M) := by
    exact div_le_div_of_nonneg_left (by norm_num) hdenM
      (mul_le_mul_of_nonneg_left hMNq (by norm_num))
  unfold tailHallTarget
  linarith

/-- Direct conversion from a normalized bound on the actual completion to
the literal integer Hall inequality. -/
theorem hall_bound_of_completion_ratio_le_tailTarget
    {N : ℕ} (hN : 0 < N) {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hRatio : ((hallCompletion N B).card : ℚ) / N ≤
      tailHallTarget N) :
    B.card + (hallNonNeighbours N B).card ≤
      (OriginalA7 N).card := by
  have hNq : (0 : ℚ) < N := by exact_mod_cast hN
  have hscaled :
      ((hallCompletion N B).card : ℚ) ≤
        (N : ℚ) / 25 - 7 / 25 := by
    have hmul := (div_le_iff₀ hNq).mp hRatio
    calc
      ((hallCompletion N B).card : ℚ) ≤ tailHallTarget N * N := hmul
      _ = (N : ℚ) / 25 - 7 / 25 := by
        simp only [tailHallTarget]
        field_simp [ne_of_gt hNq]
  have hcast :
      ((hallCompletion N B).card : ℚ) ≤
        ((OriginalA7 N).card : ℚ) :=
    hscaled.trans (originalA7_card_cast_lower N)
  have hnat : (hallCompletion N B).card ≤ (OriginalA7 N).card := by
    exact_mod_cast hcast
  rw [hallCompletion_card hBout] at hnat
  exact hnat

end Erdos848
