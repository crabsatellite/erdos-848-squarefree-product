import Erdos848.HallReduction

namespace Erdos848

/-!
## Exact mixed-defect interface for the forty-million tail

The analytic part of the archived proof gives lower bounds for the
squarefree degree of one genuinely non-base vertex into both sharp base
classes.  This file proves the set-theoretic implication used immediately
after those bounds.  In particular, it does not assume an asymptotic
threshold, change the Hall cut, or introduce a project axiom.
-/

/-- Squarefree neighbours of `t` inside a finite target set. -/
def squarefreeNeighbours (target : Finset ℕ) (t : ℕ) : Finset ℕ :=
  target.filter fun a => Squarefree (a * t + 1)

/-- The part of a Hall set outside the opposite sharp base class.  This is
the `B*` whose positive density drives every mixed-tail branch in the paper.
-/
def hallMixedResidual (N : ℕ) (B : Finset ℕ) : Finset ℕ :=
  B \ OriginalA18 N

lemma squarefreeNeighbours_subset (target : Finset ℕ) (t : ℕ) :
    squarefreeNeighbours target t ⊆ target := by
  intro a ha
  exact (Finset.mem_filter.mp ha).1

lemma hallNonNeighbours_disjoint_squarefreeNeighbours
    {N : ℕ} {B : Finset ℕ} {t : ℕ} (ht : t ∈ B) :
    Disjoint (hallNonNeighbours N B)
      (squarefreeNeighbours (OriginalA7 N) t) := by
  rw [Finset.disjoint_left]
  intro a haNon haEdge
  have hnot := (mem_hallNonNeighbours_iff.mp haNon).2 t ht
  exact hnot (Finset.mem_filter.mp haEdge).2

lemma hallNonNeighbours_card_add_degree_le
    {N : ℕ} {B : Finset ℕ} {t : ℕ} (ht : t ∈ B) :
    (hallNonNeighbours N B).card +
        (squarefreeNeighbours (OriginalA7 N) t).card ≤
      (OriginalA7 N).card := by
  have hsubset :
      hallNonNeighbours N B ∪ squarefreeNeighbours (OriginalA7 N) t ⊆
        OriginalA7 N := by
    intro a ha
    rcases Finset.mem_union.mp ha with haNon | haEdge
    · exact hallNonNeighbours_subset_originalA7 N B haNon
    · exact squarefreeNeighbours_subset (OriginalA7 N) t haEdge
  have hcard := Finset.card_le_card hsubset
  rw [Finset.card_union_of_disjoint
    (hallNonNeighbours_disjoint_squarefreeNeighbours ht)] at hcard
  exact hcard

lemma hallBaseIntersection_disjoint_squarefreeNeighbours
    {N : ℕ} {B : Finset ℕ} {t : ℕ}
    (ht : t ∈ B) (hBprop : NonSquarefreeProductProp B) :
    Disjoint (B ∩ OriginalA18 N)
      (squarefreeNeighbours (OriginalA18 N) t) := by
  rw [Finset.disjoint_left]
  intro a haBase haEdge
  have haB : a ∈ B := (Finset.mem_inter.mp haBase).1
  have hedge : Squarefree (a * t + 1) := (Finset.mem_filter.mp haEdge).2
  exact hBprop a haB t ht hedge

lemma hallBaseIntersection_card_add_degree_le
    {N : ℕ} {B : Finset ℕ} {t : ℕ}
    (ht : t ∈ B) (hBprop : NonSquarefreeProductProp B) :
    (B ∩ OriginalA18 N).card +
        (squarefreeNeighbours (OriginalA18 N) t).card ≤
      (OriginalA18 N).card := by
  have hsubset :
      (B ∩ OriginalA18 N) ∪
          squarefreeNeighbours (OriginalA18 N) t ⊆
        OriginalA18 N := by
    intro a ha
    rcases Finset.mem_union.mp ha with haBase | haEdge
    · exact (Finset.mem_inter.mp haBase).2
    · exact squarefreeNeighbours_subset (OriginalA18 N) t haEdge
  have hcard := Finset.card_le_card hsubset
  rw [Finset.card_union_of_disjoint
    (hallBaseIntersection_disjoint_squarefreeNeighbours ht hBprop)] at hcard
  exact hcard

/-- Exact forward--reverse degree subtraction for a mixed Hall defect.

If `B` violates the original Hall inequality and contains a vertex outside
`OriginalA18 N`, then the sum of that vertex's degrees into the two base
classes is strictly smaller than `|B*| + |OriginalA18 N|`.  This is the
integer statement behind both residual constants `0.00032208` and
`0.0003135517807` in the archived proof.
-/
theorem mixedHallDefect_residual_exact
    {N : ℕ} {B : Finset ℕ} {t : ℕ}
    (hBprop : NonSquarefreeProductProp B)
    (ht : t ∈ hallMixedResidual N B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    (squarefreeNeighbours (OriginalA7 N) t).card +
        (squarefreeNeighbours (OriginalA18 N) t).card <
      (hallMixedResidual N B).card + (OriginalA18 N).card := by
  have htB : t ∈ B := (Finset.mem_sdiff.mp ht).1
  have hforward := hallNonNeighbours_card_add_degree_le
    (N := N) (B := B) (t := t) htB
  have hreverse := hallBaseIntersection_card_add_degree_le
    (N := N) (B := B) (t := t) htB hBprop
  have hpartition :
      (hallMixedResidual N B).card + (B ∩ OriginalA18 N).card = B.card := by
    simpa [hallMixedResidual] using
      Finset.card_sdiff_add_card_inter B (OriginalA18 N)
  omega

/-- A producer may state the two degree bounds with natural-number lower
bounds.  The exact mixed-defect lemma then exposes the residual lower bound
without any division or rounding.
-/
theorem mixedHallDefect_residual_of_degree_bounds
    {N : ℕ} {B : Finset ℕ} {t d₇ d₁₈ cap₁₈ : ℕ}
    (hBprop : NonSquarefreeProductProp B)
    (ht : t ∈ hallMixedResidual N B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card)
    (hdegree₇ : d₇ ≤ (squarefreeNeighbours (OriginalA7 N) t).card)
    (hdegree₁₈ : d₁₈ ≤
      (squarefreeNeighbours (OriginalA18 N) t).card)
    (hcap₁₈ : (OriginalA18 N).card ≤ cap₁₈) :
    d₇ + d₁₈ < (hallMixedResidual N B).card + cap₁₈ := by
  have hexact := mixedHallDefect_residual_exact hBprop ht hdefect
  omega

/-- Rational form used verbatim by the TeX producers.  If both forward and
reverse degrees exceed `N/50 + delta*N`, then the mixed residual is strictly
larger than `2*delta*N - 1`.  The `-1` is the complete endpoint loss coming
from the exact cardinality of `OriginalA18`; no asymptotic rounding is hidden.
-/
theorem mixedHallDefect_residual_cast_lower
    {N : ℕ} {B : Finset ℕ} {t : ℕ} {delta : ℚ}
    (hBprop : NonSquarefreeProductProp B)
    (ht : t ∈ hallMixedResidual N B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card)
    (hdegree₇ : (N : ℚ) / 50 + delta * N <
      ((squarefreeNeighbours (OriginalA7 N) t).card : ℚ))
    (hdegree₁₈ : (N : ℚ) / 50 + delta * N <
      ((squarefreeNeighbours (OriginalA18 N) t).card : ℚ)) :
    2 * delta * N - 1 < (hallMixedResidual N B).card := by
  have hexactNat := mixedHallDefect_residual_exact hBprop ht hdefect
  have hexactQ :
      ((squarefreeNeighbours (OriginalA7 N) t).card : ℚ) +
          ((squarefreeNeighbours (OriginalA18 N) t).card : ℚ) <
        ((hallMixedResidual N B).card : ℚ) +
          ((OriginalA18 N).card : ℚ) := by
    exact_mod_cast hexactNat
  have hbase := originalA18_card_cast_upper N
  linarith

/-- The completion residual used for the terminal branch contains the mixed
residual `B*`; no cardinality is lost when passing from the degree argument
to the six exhaustive completion branches. -/
lemma hallMixedResidual_subset_completionResidual
    {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B) :
    hallMixedResidual N B ⊆
      hallCompletion N B \ (OriginalA7 N ∪ OriginalA18 N) := by
  intro t ht
  have htB : t ∈ B := (Finset.mem_sdiff.mp ht).1
  have htNot18 : t ∉ OriginalA18 N := (Finset.mem_sdiff.mp ht).2
  have htNot7 : t ∉ OriginalA7 N := by
    exact (Finset.mem_sdiff.mp (hBout htB)).2
  exact Finset.mem_sdiff.mpr ⟨Finset.mem_union_left _ htB, by
    intro htBase
    rcases Finset.mem_union.mp htBase with ht7 | ht18
    · exact htNot7 ht7
    · exact htNot18 ht18⟩

lemma hallMixedResidual_card_le_completionResidual
    {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B) :
    (hallMixedResidual N B).card ≤
      (hallCompletion N B \ (OriginalA7 N ∪ OriginalA18 N)).card :=
  Finset.card_le_card (hallMixedResidual_subset_completionResidual hBout)

/-- Lightweight terminal conversion shared by the tail blocks.  A strict
rational bound below the sharp residue target implies the natural-number
Hall inequality. -/
theorem hall_bound_of_completion_cast_lt_target_tail
    {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (htarget : ((hallCompletion N B).card : ℚ) <
      (N : ℚ) / 25 - 7 / 25) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hcardQ : ((hallCompletion N B).card : ℚ) <
      ((OriginalA7 N).card : ℚ) :=
    lt_of_lt_of_le htarget (originalA7_card_cast_lower N)
  have hcard : (hallCompletion N B).card < (OriginalA7 N).card := by
    exact_mod_cast hcardQ
  rw [hallCompletion_card hBout] at hcard
  exact Nat.le_of_lt hcard

/-! ## Direct close-pair extraction -/

/-- Exact pigeonhole form of the close-pair step used in every one of the
six mixed branches.  The map `x ↦ (x-1)/gap` partitions the literal interval
`[1,N]` into the required buckets; hence the statement has no hidden
asymptotic or endpoint error. -/
theorem exists_close_pair_of_card
    {S : Finset ℕ} {N gap : ℕ}
    (hgap : 0 < gap) (hS : S ⊆ Finset.Icc 1 N)
    (hcard : (N - 1) / gap + 1 < S.card) :
    ∃ x ∈ S, ∃ y ∈ S, x < y ∧ y - x < gap := by
  by_contra hno
  push Not at hno
  have hmap : ∀ x ∈ S, (x - 1) / gap ∈
      Finset.range ((N - 1) / gap + 1) := by
    intro x hx
    have hbounds := Finset.mem_Icc.mp (hS hx)
    have hsub : x - 1 ≤ N - 1 := Nat.sub_le_sub_right hbounds.2 1
    have hdiv : (x - 1) / gap ≤ (N - 1) / gap :=
      Nat.div_le_div_right hsub
    simpa only [Finset.mem_range] using Nat.lt_succ_of_le hdiv
  have hinj : Set.InjOn (fun x : ℕ => (x - 1) / gap) S := by
    intro x hx y hy heq
    change (x - 1) / gap = (y - 1) / gap at heq
    have hmulEq := congrArg (fun q : ℕ => gap * q) heq
    change gap * ((x - 1) / gap) = gap * ((y - 1) / gap) at hmulEq
    have hxpos := (Finset.mem_Icc.mp (hS hx)).1
    have hypos := (Finset.mem_Icc.mp (hS hy)).1
    by_contra hxy
    rcases Nat.lt_or_gt_of_ne hxy with hlt | hgt
    · have hxdecomp := Nat.mod_add_div (x - 1) gap
      have hydecomp := Nat.mod_add_div (y - 1) gap
      have hxrem := Nat.mod_lt (x - 1) hgap
      have hyrem := Nat.mod_lt (y - 1) hgap
      have hclose : y - x < gap := by omega
      exact (not_lt_of_ge (hno x hx y hy hlt)) hclose
    · have hxdecomp := Nat.mod_add_div (x - 1) gap
      have hydecomp := Nat.mod_add_div (y - 1) gap
      have hxrem := Nat.mod_lt (x - 1) hgap
      have hyrem := Nat.mod_lt (y - 1) hgap
      have hclose : x - y < gap := by omega
      exact (not_lt_of_ge (hno y hy x hx hgt)) hclose
  have hle : S.card ≤ (Finset.range ((N - 1) / gap + 1)).card :=
    Finset.card_le_card_of_injOn (fun x : ℕ => (x - 1) / gap) hmap hinj
  rw [Finset.card_range] at hle
  omega

end Erdos848
