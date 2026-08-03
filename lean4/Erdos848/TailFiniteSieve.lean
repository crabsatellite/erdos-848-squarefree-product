import Erdos848.TailCombinatorics
import Mathlib.Data.Nat.Choose.Sum

namespace Erdos848

/-!
Exact Bonferroni core for the direct mixed-tail sieve.

The finite sieve truncates inclusion--exclusion at degrees one through four.
The lemmas below prove those signs for an arbitrary number of active events,
so the generated tail certificates need only supply exact intersection
counts; no floating-point probability calculation enters the trusted base.
-/

def bonferroniPrefix (active degree : ℕ) : ℤ :=
  ∑ rank ∈ Finset.range (degree + 1),
    (-1 : ℤ) ^ rank * active.choose rank

lemma bonferroniPrefix_eq_choose {active degree : ℕ} (hactive : 0 < active) :
    bonferroniPrefix active degree =
      (-1 : ℤ) ^ degree * (active - 1).choose degree := by
  have hsum := Int.alternating_sum_range_choose_eq_choose
    (n := active - 1) (m := degree)
  have hactiveEq : active - 1 + 1 = active := Nat.sub_add_cancel hactive
  simpa [bonferroniPrefix, hactiveEq] using hsum

lemma bonferroniPrefix_zero (degree : ℕ) :
    bonferroniPrefix 0 degree = 1 := by
  rw [bonferroniPrefix, Finset.sum_eq_single 0]
  · norm_num
  · intro rank hrank hne
    have hpositive : 0 < rank := Nat.pos_of_ne_zero hne
    rw [Nat.choose_eq_zero_of_lt hpositive]
    simp
  · simp

/-- Odd truncations are lower bounds for the indicator that no event occurs. -/
theorem bonferroniPrefix_one_le_noEvent (active : ℕ) :
    bonferroniPrefix active 1 ≤ if active = 0 then 1 else 0 := by
  by_cases hzero : active = 0
  · subst active
    simp [bonferroniPrefix_zero]
  · have hpositive : 0 < active := Nat.pos_of_ne_zero hzero
    rw [bonferroniPrefix_eq_choose hpositive, if_neg hzero]
    norm_num

theorem bonferroniPrefix_three_le_noEvent (active : ℕ) :
    bonferroniPrefix active 3 ≤ if active = 0 then 1 else 0 := by
  by_cases hzero : active = 0
  · subst active
    simp [bonferroniPrefix_zero]
  · have hpositive : 0 < active := Nat.pos_of_ne_zero hzero
    rw [bonferroniPrefix_eq_choose hpositive, if_neg hzero]
    norm_num

/-- Even truncations are upper bounds for the same no-event indicator. -/
theorem noEvent_le_bonferroniPrefix_two (active : ℕ) :
    (if active = 0 then 1 else 0) ≤ bonferroniPrefix active 2 := by
  by_cases hzero : active = 0
  · subst active
    simp [bonferroniPrefix_zero]
  · have hpositive : 0 < active := Nat.pos_of_ne_zero hzero
    rw [bonferroniPrefix_eq_choose hpositive, if_neg hzero]
    norm_num

theorem noEvent_le_bonferroniPrefix_four (active : ℕ) :
    (if active = 0 then 1 else 0) ≤ bonferroniPrefix active 4 := by
  by_cases hzero : active = 0
  · subst active
    simp [bonferroniPrefix_zero]
  · have hpositive : 0 < active := Nat.pos_of_ne_zero hzero
    rw [bonferroniPrefix_eq_choose hpositive, if_neg hzero]
    norm_num

/-- The degree-six upper Bonferroni truncation used by the uniform prime
terminal sieve. -/
theorem noEvent_le_bonferroniPrefix_six (active : ℕ) :
    (if active = 0 then 1 else 0) ≤ bonferroniPrefix active 6 := by
  by_cases hzero : active = 0
  · subst active
    simp [bonferroniPrefix_zero]
  · have hpositive : 0 < active := Nat.pos_of_ne_zero hzero
    rw [bonferroniPrefix_eq_choose hpositive, if_neg hzero]
    norm_num

/-! ## Active-subset counting -/

section ActiveSubsets

variable {ι : Type*} [DecidableEq ι]

def activeIndices (indices : Finset ι) (event : ι → Prop)
    [DecidablePred event] : Finset ι :=
  indices.filter event

def activeSubsetsOfCard (indices : Finset ι) (event : ι → Prop)
    [DecidablePred event] (rank : ℕ) : Finset (Finset ι) :=
  (indices.powersetCard rank).filter fun subset =>
    ∀ i ∈ subset, event i

omit [DecidableEq ι] in
lemma activeSubsetsOfCard_eq
    (indices : Finset ι) (event : ι → Prop) [DecidablePred event]
    (rank : ℕ) :
    activeSubsetsOfCard indices event rank =
      (activeIndices indices event).powersetCard rank := by
  ext subset
  simp only [activeSubsetsOfCard, activeIndices, Finset.mem_filter,
    Finset.mem_powersetCard]
  constructor
  · rintro ⟨⟨hsubset, hcard⟩, hevent⟩
    refine ⟨?_, hcard⟩
    intro i hi
    exact Finset.mem_filter.mpr ⟨hsubset hi, hevent i hi⟩
  · rintro ⟨hsubset, hcard⟩
    refine ⟨⟨?_, hcard⟩, ?_⟩
    · intro i hi
      exact (Finset.mem_filter.mp (hsubset hi)).1
    · intro i hi
      exact (Finset.mem_filter.mp (hsubset hi)).2

omit [DecidableEq ι] in
theorem card_activeSubsetsOfCard
    (indices : Finset ι) (event : ι → Prop) [DecidablePred event]
    (rank : ℕ) :
    (activeSubsetsOfCard indices event rank).card =
      (activeIndices indices event).card.choose rank := by
  rw [activeSubsetsOfCard_eq, Finset.card_powersetCard]

variable {α : Type*}

def eventIntersection (points : Finset α) (event : ι → α → Prop)
    [DecidableRel event] (subset : Finset ι) : Finset α :=
  points.filter fun x => ∀ i ∈ subset, event i x

omit [DecidableEq ι] in
/-- Double-counting identity behind every finite Bonferroni certificate: the
sum of `rank`-fold active-event counts over points equals the sum of the exact
`rank`-fold intersection cardinalities. -/
theorem sum_choose_active_eq_sum_intersections
    (points : Finset α) (indices : Finset ι) (event : ι → α → Prop)
    [DecidableRel event] (rank : ℕ) :
    (∑ x ∈ points,
        (activeIndices indices (fun i => event i x)).card.choose rank) =
      ∑ subset ∈ indices.powersetCard rank,
        (eventIntersection points event subset).card := by
  calc
    (∑ x ∈ points,
        (activeIndices indices (fun i => event i x)).card.choose rank) =
        ∑ x ∈ points, ∑ subset ∈ indices.powersetCard rank,
          if (∀ i ∈ subset, event i x) then 1 else 0 := by
            apply Finset.sum_congr rfl
            intro x _hx
            rw [← card_activeSubsetsOfCard indices (fun i => event i x) rank]
            simp [activeSubsetsOfCard]
    _ = ∑ subset ∈ indices.powersetCard rank, ∑ x ∈ points,
          if (∀ i ∈ subset, event i x) then 1 else 0 := by
            rw [Finset.sum_comm]
    _ = ∑ subset ∈ indices.powersetCard rank,
          (eventIntersection points event subset).card := by
            apply Finset.sum_congr rfl
            intro subset _hsubset
            simp [eventIntersection]

def noEventPoints (points : Finset α) (indices : Finset ι)
    (event : ι → α → Prop) [DecidableRel event] : Finset α :=
  points.filter fun x => (activeIndices indices (fun i => event i x)).card = 0

def bonferroniIntersectionSum (points : Finset α) (indices : Finset ι)
    (event : ι → α → Prop) [DecidableRel event] (degree : ℕ) : ℤ :=
  ∑ rank ∈ Finset.range (degree + 1),
    (-1 : ℤ) ^ rank *
      ∑ subset ∈ indices.powersetCard rank,
        ((eventIntersection points event subset).card : ℤ)

omit [DecidableEq ι] in
lemma sum_bonferroniPrefix_eq_intersectionSum
    (points : Finset α) (indices : Finset ι) (event : ι → α → Prop)
    [DecidableRel event] (degree : ℕ) :
    (∑ x ∈ points,
      bonferroniPrefix
        (activeIndices indices (fun i => event i x)).card degree) =
      bonferroniIntersectionSum points indices event degree := by
  simp_rw [bonferroniPrefix]
  rw [bonferroniIntersectionSum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro rank _hrank
  rw [← Finset.mul_sum]
  congr 1
  exact_mod_cast
    sum_choose_active_eq_sum_intersections points indices event rank

omit [DecidableEq ι] in
lemma card_noEventPoints_cast
    (points : Finset α) (indices : Finset ι) (event : ι → α → Prop)
    [DecidableRel event] :
    ((noEventPoints points indices event).card : ℤ) =
      ∑ x ∈ points,
        if (activeIndices indices (fun i => event i x)).card = 0
        then 1 else 0 := by
  simp [noEventPoints]

omit [DecidableEq ι] in
theorem bonferroni_one_le_noEvent_card
    (points : Finset α) (indices : Finset ι) (event : ι → α → Prop)
    [DecidableRel event] :
    bonferroniIntersectionSum points indices event 1 ≤
      ((noEventPoints points indices event).card : ℤ) := by
  rw [← sum_bonferroniPrefix_eq_intersectionSum,
    card_noEventPoints_cast]
  exact Finset.sum_le_sum fun x _hx =>
    bonferroniPrefix_one_le_noEvent
      (activeIndices indices (fun i => event i x)).card

omit [DecidableEq ι] in
theorem bonferroni_three_le_noEvent_card
    (points : Finset α) (indices : Finset ι) (event : ι → α → Prop)
    [DecidableRel event] :
    bonferroniIntersectionSum points indices event 3 ≤
      ((noEventPoints points indices event).card : ℤ) := by
  rw [← sum_bonferroniPrefix_eq_intersectionSum,
    card_noEventPoints_cast]
  exact Finset.sum_le_sum fun x _hx =>
    bonferroniPrefix_three_le_noEvent
      (activeIndices indices (fun i => event i x)).card

omit [DecidableEq ι] in
theorem noEvent_card_le_bonferroni_two
    (points : Finset α) (indices : Finset ι) (event : ι → α → Prop)
    [DecidableRel event] :
    ((noEventPoints points indices event).card : ℤ) ≤
      bonferroniIntersectionSum points indices event 2 := by
  rw [← sum_bonferroniPrefix_eq_intersectionSum,
    card_noEventPoints_cast]
  exact Finset.sum_le_sum fun x _hx =>
    noEvent_le_bonferroniPrefix_two
      (activeIndices indices (fun i => event i x)).card

omit [DecidableEq ι] in
theorem noEvent_card_le_bonferroni_four
    (points : Finset α) (indices : Finset ι) (event : ι → α → Prop)
    [DecidableRel event] :
    ((noEventPoints points indices event).card : ℤ) ≤
      bonferroniIntersectionSum points indices event 4 := by
  rw [← sum_bonferroniPrefix_eq_intersectionSum,
    card_noEventPoints_cast]
  exact Finset.sum_le_sum fun x _hx =>
    noEvent_le_bonferroniPrefix_four
      (activeIndices indices (fun i => event i x)).card

omit [DecidableEq ι] in
theorem noEvent_card_le_bonferroni_six
    (points : Finset α) (indices : Finset ι) (event : ι → α → Prop)
    [DecidableRel event] :
    ((noEventPoints points indices event).card : ℤ) ≤
      bonferroniIntersectionSum points indices event 6 := by
  rw [← sum_bonferroniPrefix_eq_intersectionSum,
    card_noEventPoints_cast]
  exact Finset.sum_le_sum fun x _hx =>
    noEvent_le_bonferroniPrefix_six
      (activeIndices indices (fun i => event i x)).card

/-! ## Summed finite/tail inequalities -/

variable {α : Type*}

omit [DecidableEq ι] in
lemma sum_tail_card_double_count
    (points : Finset α) (indices : Finset ι)
    (tail : ι → α → Prop) [DecidableRel tail] :
    (∑ x ∈ points,
        ((indices.filter fun i => tail i x).card : ℚ)) =
      ∑ i ∈ indices,
        ((points.filter fun x => tail i x).card : ℚ) := by
  calc
    (∑ x ∈ points,
        ((indices.filter fun i => tail i x).card : ℚ)) =
        ∑ x ∈ points, ∑ i ∈ indices,
          if tail i x then (1 : ℚ) else 0 := by
            apply Finset.sum_congr rfl
            intro x _hx
            simp
    _ = ∑ i ∈ indices, ∑ x ∈ points,
          if tail i x then (1 : ℚ) else 0 := by
            rw [Finset.sum_comm]
    _ = ∑ i ∈ indices,
        ((points.filter fun x => tail i x).card : ℚ) := by
          apply Finset.sum_congr rfl
          intro i _hi
          simp

/-- Cardinality form of `n_pivot_finite_tail`.  This is the exact bridge from
the pointwise Boolean mechanism to the finite-event count plus the normalized
sum of one-form tail counts used in the mixed blocks. -/
theorem card_le_finite_threshold_add_tail_sum
    (points : Finset α) (indices : Finset ι)
    (finite tail : ι → α → Prop)
    [DecidableRel finite] [DecidableRel tail]
    {k : ℕ} (hk : k ≤ indices.card)
    (hcover : ∀ x ∈ points, ∀ i ∈ indices,
      finite i x ∨ tail i x) :
    (points.card : ℚ) ≤
      ((points.filter fun x =>
        k ≤ (indices.filter fun i => finite i x).card).card : ℚ) +
      (∑ i ∈ indices,
        ((points.filter fun x => tail i x).card : ℚ)) /
        (indices.card - k + 1 : ℕ) := by
  have hpointwise : ∀ x ∈ points,
      (1 : ℚ) ≤
        eventIndicator
          (k ≤ (indices.filter fun i => finite i x).card) +
        ((indices.filter fun i => tail i x).card : ℚ) /
          (indices.card - k + 1 : ℕ) := by
    intro x hx
    exact n_pivot_finite_tail indices (fun i => finite i x)
      (fun i => tail i x) hk (hcover x hx)
  have hsum := Finset.sum_le_sum fun x hx => hpointwise x hx
  rw [Finset.sum_add_distrib] at hsum
  have hdenNat : 0 < indices.card - k + 1 := by omega
  have hden : (0 : ℚ) < (indices.card - k + 1 : ℕ) := by
    exact_mod_cast hdenNat
  calc
    (points.card : ℚ) = ∑ x ∈ points, (1 : ℚ) := by simp
    _ ≤ ∑ x ∈ points,
          eventIndicator
            (k ≤ (indices.filter fun i => finite i x).card) +
        ∑ x ∈ points,
          ((indices.filter fun i => tail i x).card : ℚ) /
            (indices.card - k + 1 : ℕ) := hsum
    _ = ((points.filter fun x =>
          k ≤ (indices.filter fun i => finite i x).card).card : ℚ) +
        (∑ i ∈ indices,
          ((points.filter fun x => tail i x).card : ℚ)) /
          (indices.card - k + 1 : ℕ) := by
      rw [← sum_tail_card_double_count points indices tail]
      simp [eventIndicator, Finset.sum_div]

omit [DecidableEq ι] in
/-- The points on which at least `k` finite events occur are covered, with
multiplicity, by the exact `k`-fold event intersections. -/
theorem finiteThreshold_card_le_intersectionSum
    (points : Finset α) (indices : Finset ι)
    (finite : ι → α → Prop) [DecidableRel finite] (k : ℕ) :
    (points.filter fun x =>
      k ≤ (indices.filter fun i => finite i x).card).card ≤
      ∑ subset ∈ indices.powersetCard k,
        (eventIntersection points finite subset).card := by
  calc
    (points.filter fun x =>
      k ≤ (indices.filter fun i => finite i x).card).card =
        ∑ x ∈ points,
          if k ≤ (activeIndices indices (fun i => finite i x)).card
          then 1 else 0 := by
            change
              (points.filter fun x =>
                k ≤ (indices.filter fun i => finite i x).card).card =
              ∑ x ∈ points,
                if k ≤ (indices.filter fun i => finite i x).card
                then 1 else 0
            exact (Finset.sum_boole (R := ℕ)
              (fun x => k ≤ (indices.filter fun i => finite i x).card)
              points).symm
    _ ≤ ∑ x ∈ points,
        (activeIndices indices (fun i => finite i x)).card.choose k := by
          apply Finset.sum_le_sum
          intro x _hx
          by_cases hactive :
              k ≤ (activeIndices indices (fun i => finite i x)).card
          · simp only [if_pos hactive]
            exact Nat.choose_pos hactive
          · simp [hactive]
    _ = ∑ subset ∈ indices.powersetCard k,
        (eventIntersection points finite subset).card :=
          sum_choose_active_eq_sum_intersections points indices finite k

/-- Fully summed `n`-pivot finite/tail inequality.  After this theorem, a
concrete mixed-block certificate only has to bound exact finite intersections
and the literal one-form tail counts. -/
theorem card_le_intersectionSum_add_tail_sum
    (points : Finset α) (indices : Finset ι)
    (finite tail : ι → α → Prop)
    [DecidableRel finite] [DecidableRel tail]
    {k : ℕ} (hk : k ≤ indices.card)
    (hcover : ∀ x ∈ points, ∀ i ∈ indices,
      finite i x ∨ tail i x) :
    (points.card : ℚ) ≤
      ((∑ subset ∈ indices.powersetCard k,
        (eventIntersection points finite subset).card : ℕ) : ℚ) +
      (∑ i ∈ indices,
        ((points.filter fun x => tail i x).card : ℚ)) /
        (indices.card - k + 1 : ℕ) := by
  have hmain := card_le_finite_threshold_add_tail_sum
    points indices finite tail hk hcover
  have hfiniteNat :=
    finiteThreshold_card_le_intersectionSum points indices finite k
  have hfinite :
      ((points.filter fun x =>
        k ≤ (indices.filter fun i => finite i x).card).card : ℚ) ≤
      ((∑ subset ∈ indices.powersetCard k,
        (eventIntersection points finite subset).card : ℕ) : ℚ) := by
    exact_mod_cast hfiniteNat
  exact hmain.trans (add_le_add hfinite le_rfl)

end ActiveSubsets

end Erdos848
