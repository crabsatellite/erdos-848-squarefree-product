import Erdos848.HallReduction
import Mathlib.Combinatorics.Hall.Basic

namespace Erdos848

/-!
Exact combinatorial lemmas shared by the direct `N >= 5_000_000` tail route.

This file contains no numerical envelope and introduces no replacement cut.
It kernelizes the unconditional valuation, finite/tail counting, and fibre
dichotomies used by the four mixed tail blocks in the paper proof.
-/

/-! ## Valuation quotient restrictions -/

lemma odd_sq_mod_eight {p : ℕ} (hp : p % 2 = 1) : p ^ 2 % 8 = 1 := by
  have hp8 : p % 8 = 1 ∨ p % 8 = 3 ∨ p % 8 = 5 ∨ p % 8 = 7 := by
    omega
  rcases hp8 with h | h | h | h <;>
    simp [pow_two, Nat.mul_mod, h]

lemma odd_sq_mod_four {p : ℕ} (hp : p % 2 = 1) : p ^ 2 % 4 = 1 := by
  have hp8 := odd_sq_mod_eight hp
  omega

lemma valuation_one_quotient_mod_two
    {a p t m : ℕ} (hp : p % 2 = 1) (ha : 2 ∣ a)
    (heq : p ^ 2 * m = a * t + 1) :
    m % 2 = 1 := by
  have ha0 : a % 2 = 0 := Nat.dvd_iff_mod_eq_zero.mp ha
  have hp2 : p ^ 2 % 2 = 1 := by
    have := odd_sq_mod_eight hp
    omega
  have heqMod := congrArg (fun n : ℕ => n % 2) heq
  have hleft := Nat.mul_mod (p ^ 2) m 2
  have hrightMul := Nat.mul_mod a t 2
  have hrightAdd := Nat.add_mod (a * t) 1 2
  norm_num [hp2] at hleft
  norm_num [ha0] at hrightMul
  norm_num [hrightMul] at hrightAdd
  exact hleft.symm.trans (heqMod.trans hrightAdd)

lemma valuation_two_quotient_mod_four
    {a p t m : ℕ} (hp : p % 2 = 1) (ha : 4 ∣ a)
    (heq : p ^ 2 * m = a * t + 1) :
    m % 4 = 1 := by
  have ha0 : a % 4 = 0 := Nat.dvd_iff_mod_eq_zero.mp ha
  have hp2 : p ^ 2 % 4 = 1 := odd_sq_mod_four hp
  have heqMod := congrArg (fun n : ℕ => n % 4) heq
  have hleft := Nat.mul_mod (p ^ 2) m 4
  have hrightMul := Nat.mul_mod a t 4
  have hrightAdd := Nat.add_mod (a * t) 1 4
  norm_num [hp2] at hleft
  norm_num [ha0] at hrightMul
  norm_num [hrightMul] at hrightAdd
  exact hleft.symm.trans (heqMod.trans hrightAdd)

lemma valuation_three_quotient_mod_eight
    {a p t m : ℕ} (hp : p % 2 = 1) (ha : 8 ∣ a)
    (heq : p ^ 2 * m = a * t + 1) :
    m % 8 = 1 := by
  have ha0 : a % 8 = 0 := Nat.dvd_iff_mod_eq_zero.mp ha
  have hp2 : p ^ 2 % 8 = 1 := odd_sq_mod_eight hp
  have heqMod := congrArg (fun n : ℕ => n % 8) heq
  have hleft := Nat.mul_mod (p ^ 2) m 8
  have hrightMul := Nat.mul_mod a t 8
  have hrightAdd := Nat.add_mod (a * t) 1 8
  norm_num [hp2] at hleft
  norm_num [ha0] at hrightMul
  norm_num [hrightMul] at hrightAdd
  exact hleft.symm.trans (heqMod.trans hrightAdd)

/-! ## Pointwise finite/tail counting -/

section FiniteTail

variable {ι : Type*} [DecidableEq ι]

def eventIndicator (P : Prop) [Decidable P] : ℚ :=
  if P then 1 else 0

/-- The half finite-intersection / half two-of-three inequality used on the
forty-million mixed block, stated pointwise under the three witness unions. -/
theorem mixed_half_finite_tail
    (F₁ F₂ F₃ H₁ H₂ H₃ : Prop)
    [Decidable F₁] [Decidable F₂] [Decidable F₃]
    [Decidable H₁] [Decidable H₂] [Decidable H₃]
    (h₁ : F₁ ∨ H₁) (h₂ : F₂ ∨ H₂) (h₃ : F₃ ∨ H₃) :
    (1 : ℚ) ≤
      (1 / 2 : ℚ) * eventIndicator (F₁ ∧ F₂ ∧ F₃) +
      (1 / 2 : ℚ) * eventIndicator
        ((F₁ ∧ F₂) ∨ (F₁ ∧ F₃) ∨ (F₂ ∧ F₃)) +
      (1 / 2 : ℚ) *
        (eventIndicator H₁ + eventIndicator H₂ + eventIndicator H₃) := by
  classical
  by_cases hF₁ : F₁ <;> by_cases hF₂ : F₂ <;> by_cases hF₃ : F₃ <;>
    by_cases hH₁ : H₁ <;> by_cases hH₂ : H₂ <;> by_cases hH₃ : H₃ <;>
    simp_all [eventIndicator] <;> norm_num

/-- The four-pivot Boolean inequality used in the valuation descent, in its
pointwise form under the four witness unions. -/
theorem four_pivot_finite_tail
    (F₁ F₂ F₃ F₄ H₁ H₂ H₃ H₄ : Prop)
    [Decidable F₁] [Decidable F₂] [Decidable F₃] [Decidable F₄]
    [Decidable H₁] [Decidable H₂] [Decidable H₃] [Decidable H₄]
    (h₁ : F₁ ∨ H₁) (h₂ : F₂ ∨ H₂)
    (h₃ : F₃ ∨ H₃) (h₄ : F₄ ∨ H₄) :
    (1 : ℚ) ≤
      (1 / 2 : ℚ) *
        (eventIndicator (F₁ ∧ F₂ ∧ F₃) +
          eventIndicator (F₁ ∧ F₂ ∧ F₄) +
          eventIndicator (F₁ ∧ F₃ ∧ F₄) +
          eventIndicator (F₂ ∧ F₃ ∧ F₄)) +
      (1 / 2 : ℚ) *
        (eventIndicator H₁ + eventIndicator H₂ +
          eventIndicator H₃ + eventIndicator H₄) := by
  classical
  by_cases hF₁ : F₁ <;> by_cases hF₂ : F₂ <;>
    by_cases hF₃ : F₃ <;> by_cases hF₄ : F₄ <;>
    by_cases hH₁ : H₁ <;> by_cases hH₂ : H₂ <;>
    by_cases hH₃ : H₃ <;> by_cases hH₄ : H₄ <;>
    simp_all [eventIndicator] <;> norm_num

theorem covered_card_le_finite_add_tail
    (indices : Finset ι) (finite tail : ι → Prop)
    [DecidablePred finite] [DecidablePred tail]
    (hcover : ∀ i ∈ indices, finite i ∨ tail i) :
    indices.card ≤
      (indices.filter finite).card + (indices.filter tail).card := by
  have hsubset :
      indices ⊆ indices.filter finite ∪ indices.filter tail := by
    intro i hi
    rcases hcover i hi with hfinite | htail
    · exact Finset.mem_union_left _ (Finset.mem_filter.mpr ⟨hi, hfinite⟩)
    · exact Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨hi, htail⟩)
  exact (Finset.card_le_card hsubset).trans
    (Finset.card_union_le (indices.filter finite) (indices.filter tail))

/-- If fewer than `k` of `n` covered forms are finite, at least
`n - k + 1` of them must be supplied by their tail events. -/
theorem all_union_forces_many_tail
    (indices : Finset ι) (finite tail : ι → Prop)
    [DecidablePred finite] [DecidablePred tail]
    {k : ℕ} (hk : k ≤ indices.card)
    (hcover : ∀ i ∈ indices, finite i ∨ tail i)
    (hfew : (indices.filter finite).card < k) :
    indices.card - k + 1 ≤ (indices.filter tail).card := by
  have hcard := covered_card_le_finite_add_tail indices finite tail hcover
  omega

/-- Indicator form of the general `n`-pivot inequality.  Either at least `k`
finite events occur, or the normalized one-form tail payment is at least one. -/
theorem n_pivot_finite_tail
    (indices : Finset ι) (finite tail : ι → Prop)
    [DecidablePred finite] [DecidablePred tail]
    {k : ℕ} (hk : k ≤ indices.card)
    (hcover : ∀ i ∈ indices, finite i ∨ tail i) :
    (1 : ℚ) ≤
      eventIndicator (k ≤ (indices.filter finite).card) +
        ((indices.filter tail).card : ℚ) /
          (indices.card - k + 1 : ℕ) := by
  have hdenNat : 0 < indices.card - k + 1 := by omega
  have hden : (0 : ℚ) < (indices.card - k + 1 : ℕ) := by
    exact_mod_cast hdenNat
  by_cases hmany : k ≤ (indices.filter finite).card
  · rw [eventIndicator, if_pos hmany]
    have hnum : (0 : ℚ) ≤ ((indices.filter tail).card : ℚ) := by
      positivity
    have hquot :
        (0 : ℚ) ≤ ((indices.filter tail).card : ℚ) /
          (indices.card - k + 1 : ℕ) :=
      div_nonneg hnum (le_of_lt hden)
    linarith
  · have hfew : (indices.filter finite).card < k := Nat.lt_of_not_ge hmany
    have htail := all_union_forces_many_tail indices finite tail hk hcover hfew
    have htailQ :
        ((indices.card - k + 1 : ℕ) : ℚ) ≤
          ((indices.filter tail).card : ℚ) := by
      exact_mod_cast htail
    rw [eventIndicator, if_neg hmany, zero_add]
    exact (le_div_iff₀ hden).2 (by simpa using htailQ)

end FiniteTail

/-! ## Two-coordinate fibre dichotomy -/

/-- If every pair agrees in at least one of two coordinates, then one of the
coordinates is constant.  This is the exact abstract form of the mod-49 /
mod-121 fibre dichotomy in the five-million block. -/
theorem two_coordinate_fibre
    {X R S : Type*} (r : X → R) (s : X → S)
    (hpair : ∀ x y, r x = r y ∨ s x = s y) :
    (∀ x y, r x = r y) ∨ (∀ x y, s x = s y) := by
  classical
  by_cases hr : ∀ x y, r x = r y
  · exact Or.inl hr
  · right
    push Not at hr
    obtain ⟨x, y, hxy⟩ := hr
    have hsxy : s x = s y := (hpair x y).resolve_left hxy
    have htoX : ∀ z, s z = s x := by
      intro z
      by_cases hzx : r z = r x
      · have hzy : r z ≠ r y := by
          intro h
          exact hxy (hzx.symm.trans h)
        exact ((hpair z y).resolve_left hzy).trans hsxy.symm
      · exact (hpair z x).resolve_left hzx
    intro u v
    exact (htoX u).trans (htoX v).symm

/-! ## Capacity-two Hall defect -/

section CapacityTwo

variable {L R : Type*} [Fintype L] [Fintype R]
  [DecidableEq L] [DecidableEq R]

def capacityTwoNeighbours (edge : L → R → Prop) [DecidableRel edge]
    (Y : Finset L) : Finset R :=
  Finset.univ.filter fun r => ∃ y ∈ Y, edge y r

omit [Fintype L] [DecidableEq L] [DecidableEq R] in
lemma capacityTwoSlot_card
    (edge : L → R → Prop) [DecidableRel edge] (Y : Finset L) :
    (Finset.univ.filter fun slot : R × Fin 2 =>
      ∃ y ∈ Y, edge y slot.1).card =
        2 * (capacityTwoNeighbours edge Y).card := by
  have heq :
      (Finset.univ.filter fun slot : R × Fin 2 =>
        ∃ y ∈ Y, edge y slot.1) =
      (capacityTwoNeighbours edge Y).product (Finset.univ : Finset (Fin 2)) := by
    ext slot
    simp [capacityTwoNeighbours]
  rw [heq]
  simp [Nat.mul_comm]

omit [Fintype L] [DecidableEq L] [DecidableEq R] in
/-- Failure of a capacity-two transversal produces a strict Hall-defect set.
The two copies of each right vertex turn the claim into the ordinary finite
Hall marriage theorem. -/
theorem exists_capacityTwo_defect
    (edge : L → R → Prop) [DecidableRel edge]
    (hno : ¬ ∃ f : L → R × Fin 2,
      Function.Injective f ∧ ∀ x, edge x (f x).1) :
    ∃ Y : Finset L,
      2 * (capacityTwoNeighbours edge Y).card < Y.card := by
  let slotEdge : L → R × Fin 2 → Prop := fun x slot => edge x slot.1
  letI : DecidableRel slotEdge := fun x slot => inferInstanceAs (Decidable (edge x slot.1))
  have hnotHall :
      ¬ ∀ Y : Finset L,
        Y.card ≤ (Finset.univ.filter fun slot : R × Fin 2 =>
          ∃ y ∈ Y, slotEdge y slot).card := by
    intro hHall
    obtain ⟨f, hinjective, hrespects⟩ :=
      (Fintype.all_card_le_filter_rel_iff_exists_injective slotEdge).mp hHall
    apply hno
    exact ⟨f, hinjective, fun x => hrespects x⟩
  push Not at hnotHall
  obtain ⟨Y, hY⟩ := hnotHall
  refine ⟨Y, ?_⟩
  have hslots := capacityTwoSlot_card edge Y
  change Y.card >
    (Finset.univ.filter fun slot : R × Fin 2 =>
      ∃ y ∈ Y, edge y slot.1).card at hY
  omega

/-! The `s = 9` branch in the five-million block needs a capacity-two
matching that may leave one pivot unmatched.  The next two statements prove
the more general version with `spare` universal dummy slots. -/

omit [Fintype L] [DecidableEq L] [DecidableEq R] in
noncomputable def capacityTwoSpareNeighbours
    (edge : L → R → Prop) [DecidableRel edge]
    (Y : Finset L) (spare : ℕ) : Finset ((R × Fin 2) ⊕ Fin spare) := by
  classical
  exact Finset.univ.filter fun slot =>
    match slot with
    | Sum.inl real => ∃ y ∈ Y, edge y real.1
    | Sum.inr _dummy => True

omit [Fintype L] [DecidableEq L] [DecidableEq R] in
lemma capacityTwoSpareSlot_card
    (edge : L → R → Prop) [DecidableRel edge]
    (Y : Finset L) (spare : ℕ) :
    (capacityTwoSpareNeighbours edge Y spare).card =
        2 * (capacityTwoNeighbours edge Y).card + spare := by
  classical
  have heq :
      capacityTwoSpareNeighbours edge Y spare =
      ((capacityTwoNeighbours edge Y).product (Finset.univ : Finset (Fin 2))).disjSum
        (Finset.univ : Finset (Fin spare)) := by
    ext slot
    cases slot <;> simp [capacityTwoSpareNeighbours, capacityTwoNeighbours]
  rw [heq, Finset.card_disjSum]
  simp [Nat.mul_comm]

omit [Fintype L] [DecidableEq L] [DecidableEq R] in
/-- Failure to assign every left vertex to a capacity-two right slot while
allowing `spare` unmatched vertices produces the strict generalized Hall
defect `2|Γ(Y)| + spare < |Y|`. -/
theorem exists_capacityTwo_defect_with_spare
    (edge : L → R → Prop) [DecidableRel edge] (spare : ℕ)
    (hno : ¬ ∃ f : L → (R × Fin 2) ⊕ Fin spare,
      Function.Injective f ∧ ∀ x,
        match f x with
        | Sum.inl real => edge x real.1
        | Sum.inr _dummy => True) :
    ∃ Y : Finset L,
      2 * (capacityTwoNeighbours edge Y).card + spare < Y.card := by
  let slotEdge : L → (R × Fin 2) ⊕ Fin spare → Prop := fun x slot =>
    match slot with
    | Sum.inl real => edge x real.1
    | Sum.inr _dummy => True
  letI : DecidableRel slotEdge := fun x slot => by
    cases slot with
    | inl real => exact inferInstanceAs (Decidable (edge x real.1))
    | inr _dummy => exact isTrue trivial
  have hnotHall :
      ¬ ∀ Y : Finset L,
        Y.card ≤ (Finset.univ.filter fun slot : (R × Fin 2) ⊕ Fin spare =>
          ∃ y ∈ Y, slotEdge y slot).card := by
    intro hHall
    obtain ⟨f, hinjective, hrespects⟩ :=
      (Fintype.all_card_le_filter_rel_iff_exists_injective slotEdge).mp hHall
    apply hno
    exact ⟨f, hinjective, fun x => hrespects x⟩
  push Not at hnotHall
  obtain ⟨Y, hY⟩ := hnotHall
  have hYnonempty : Y.Nonempty := by
    by_contra hnoY
    have hYempty : Y = ∅ := Finset.not_nonempty_iff_eq_empty.mp hnoY
    subst Y
    simp at hY
  refine ⟨Y, ?_⟩
  have hslots := capacityTwoSpareSlot_card edge Y spare
  have hfilter :
      (Finset.univ.filter fun slot : (R × Fin 2) ⊕ Fin spare =>
        ∃ y ∈ Y, slotEdge y slot) =
      capacityTwoSpareNeighbours edge Y spare := by
    classical
    ext slot
    cases slot with
    | inl real => simp [capacityTwoSpareNeighbours, slotEdge]
    | inr dummy =>
        simp [capacityTwoSpareNeighbours, slotEdge]
        exact hYnonempty
  have heq :
      (Finset.univ.filter fun slot : (R × Fin 2) ⊕ Fin spare =>
        ∃ y ∈ Y, slotEdge y slot).card =
        2 * (capacityTwoNeighbours edge Y).card + spare := by
    rw [hfilter, hslots]
  omega

end CapacityTwo

end Erdos848
