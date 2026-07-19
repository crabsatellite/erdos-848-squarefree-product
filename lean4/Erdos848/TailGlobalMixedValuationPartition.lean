import Erdos848.HallPartition

namespace Erdos848

/-! Literal five-way valuation partition of the actual Hall residual. -/

inductive FiveMillionValuationClass where
  | evenOne
  | evenTwo
  | evenThree
  | oddOne
  | oddThree
  deriving DecidableEq, Fintype

def fiveMillionValuationClassOf (x : Nat) : FiveMillionValuationClass :=
  match x % 8 with
  | 0 => .evenThree
  | 1 => .oddOne
  | 2 => .evenOne
  | 3 => .oddThree
  | 4 => .evenTwo
  | 5 => .oddOne
  | 6 => .evenOne
  | _ => .oddThree

def fiveMillionValuationPart
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) : Finset Nat :=
  (hallResidual N B).filter fun x => fiveMillionValuationClassOf x = cls

lemma fiveMillionValuationPart_subset_residual
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) :
    fiveMillionValuationPart N B cls ⊆ hallResidual N B :=
  Finset.filter_subset _ _

@[simp] lemma mem_fiveMillionValuationPart
    {N x : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass} :
    x ∈ fiveMillionValuationPart N B cls ↔
      x ∈ hallResidual N B ∧ fiveMillionValuationClassOf x = cls := by
  simp [fiveMillionValuationPart]

lemma fiveMillionValuationClassOf_evenOne
    {x : Nat} (h : fiveMillionValuationClassOf x = .evenOne) :
    x % 4 = 2 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationClassOf_evenTwo
    {x : Nat} (h : fiveMillionValuationClassOf x = .evenTwo) :
    x % 8 = 4 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationClassOf_evenThree
    {x : Nat} (h : fiveMillionValuationClassOf x = .evenThree) :
    x % 8 = 0 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationClassOf_oddOne
    {x : Nat} (h : fiveMillionValuationClassOf x = .oddOne) :
    x % 4 = 1 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationClassOf_oddThree
    {x : Nat} (h : fiveMillionValuationClassOf x = .oddThree) :
    x % 4 = 3 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationPart_evenOne
    {N x : Nat} {B : Finset Nat}
    (hx : x ∈ fiveMillionValuationPart N B .evenOne) :
    x % 4 = 2 :=
  fiveMillionValuationClassOf_evenOne (mem_fiveMillionValuationPart.mp hx).2

lemma fiveMillionValuationPart_evenTwo
    {N x : Nat} {B : Finset Nat}
    (hx : x ∈ fiveMillionValuationPart N B .evenTwo) :
    x % 8 = 4 :=
  fiveMillionValuationClassOf_evenTwo (mem_fiveMillionValuationPart.mp hx).2

lemma fiveMillionValuationPart_evenThree
    {N x : Nat} {B : Finset Nat}
    (hx : x ∈ fiveMillionValuationPart N B .evenThree) :
    x % 8 = 0 :=
  fiveMillionValuationClassOf_evenThree (mem_fiveMillionValuationPart.mp hx).2

lemma fiveMillionValuationPart_oddOne
    {N x : Nat} {B : Finset Nat}
    (hx : x ∈ fiveMillionValuationPart N B .oddOne) :
    x % 4 = 1 :=
  fiveMillionValuationClassOf_oddOne (mem_fiveMillionValuationPart.mp hx).2

lemma fiveMillionValuationPart_oddThree
    {N x : Nat} {B : Finset Nat}
    (hx : x ∈ fiveMillionValuationPart N B .oddThree) :
    x % 4 = 3 :=
  fiveMillionValuationClassOf_oddThree (mem_fiveMillionValuationPart.mp hx).2

lemma odd_of_mod_four_eq_one_or_three_core
    {x : Nat} (hmod : x % 4 = 1 ∨ x % 4 = 3) : Odd x := by
  have hmodTwo : x % 2 = 1 := (Nat.odd_mod_four_iff).2 hmod
  refine ⟨x / 2, ?_⟩
  have hdecomp := Nat.mod_add_div x 2
  omega

lemma fiveMillionValuationPart_odd
    {N x : Nat} {B : Finset Nat}
    {cls : FiveMillionValuationClass}
    (hcls : cls = .oddOne ∨ cls = .oddThree)
    (hx : x ∈ fiveMillionValuationPart N B cls) : Odd x := by
  rcases hcls with rfl | rfl
  · exact odd_of_mod_four_eq_one_or_three_core
      (Or.inl (fiveMillionValuationPart_oddOne hx))
  · exact odd_of_mod_four_eq_one_or_three_core
      (Or.inr (fiveMillionValuationPart_oddThree hx))

lemma fiveMillionValuationPart_disjoint
    (N : Nat) (B : Finset Nat)
    {left right : FiveMillionValuationClass} (hne : left ≠ right) :
    Disjoint (fiveMillionValuationPart N B left)
      (fiveMillionValuationPart N B right) := by
  rw [Finset.disjoint_left]
  intro x hxLeft hxRight
  have hleft := (mem_fiveMillionValuationPart.mp hxLeft).2
  have hright := (mem_fiveMillionValuationPart.mp hxRight).2
  exact hne (hleft.symm.trans hright)

theorem fiveMillionValuationParts_cover
    (N : Nat) (B : Finset Nat) :
    Finset.univ.biUnion (fiveMillionValuationPart N B) = hallResidual N B := by
  ext x
  simp [fiveMillionValuationPart]

theorem fiveMillionValuationParts_card_sum
    (N : Nat) (B : Finset Nat) :
    ∑ cls : FiveMillionValuationClass,
        (fiveMillionValuationPart N B cls).card =
      (hallResidual N B).card := by
  classical
  rw [← fiveMillionValuationParts_cover N B]
  rw [Finset.card_biUnion]
  intro left hleft right hright hne
  exact fiveMillionValuationPart_disjoint N B hne

theorem exists_fiveMillionValuationPart_card_gt
    {N bound : Nat} {B : Finset Nat}
    (hlarge : 5 * bound < (hallResidual N B).card) :
    ∃ cls : FiveMillionValuationClass,
      bound < (fiveMillionValuationPart N B cls).card := by
  classical
  by_contra hnone
  push Not at hnone
  have hsum :
      ∑ cls : FiveMillionValuationClass,
          (fiveMillionValuationPart N B cls).card <=
        ∑ _cls : FiveMillionValuationClass, bound := by
    exact Finset.sum_le_sum fun cls _ => hnone cls
  rw [fiveMillionValuationParts_card_sum] at hsum
  norm_num [FiveMillionValuationClass] at hsum
  have hcardClasses : Fintype.card FiveMillionValuationClass = 5 := by decide
  rw [hcardClasses] at hsum
  omega

#print axioms fiveMillionValuationParts_card_sum
#print axioms exists_fiveMillionValuationPart_card_gt

end Erdos848
