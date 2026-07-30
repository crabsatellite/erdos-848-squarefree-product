import Erdos848.HallPartition

namespace Erdos848

/-! A lightweight mod-four partition, independent of low-range arithmetic. -/

def tailMod4EvenPart (S : Finset Nat) : Finset Nat :=
  S.filter fun x => x % 4 = 0 ∨ x % 4 = 2

def tailMod4OnePart (S : Finset Nat) : Finset Nat :=
  S.filter fun x => x % 4 = 1

def tailMod4ThreePart (S : Finset Nat) : Finset Nat :=
  S.filter fun x => x % 4 = 3

def tailMod4Part (S : Finset Nat) (r : Nat) : Finset Nat :=
  S.filter fun x => x % 4 = r

private lemma tailMod4_partition (S : Finset Nat) :
    (tailMod4EvenPart S ∪ tailMod4OnePart S) ∪ tailMod4ThreePart S = S := by
  ext x
  simp only [Finset.mem_union, Finset.mem_filter, tailMod4EvenPart,
    tailMod4OnePart, tailMod4ThreePart]
  constructor
  · rintro ((⟨hxS, _⟩ | ⟨hxS, _⟩) | ⟨hxS, _⟩)
    all_goals exact hxS
  · intro hxS
    have hmod : x % 4 < 4 := Nat.mod_lt x (by norm_num)
    have hcases :
        x % 4 = 0 ∨ x % 4 = 1 ∨ x % 4 = 2 ∨ x % 4 = 3 := by
      omega
    rcases hcases with hzero | hone | htwo | hthree
    · exact Or.inl (Or.inl ⟨hxS, Or.inl hzero⟩)
    · exact Or.inl (Or.inr ⟨hxS, hone⟩)
    · exact Or.inl (Or.inl ⟨hxS, Or.inr htwo⟩)
    · exact Or.inr ⟨hxS, hthree⟩

private lemma tailMod4EvenPart_disjoint_one (S : Finset Nat) :
    Disjoint (tailMod4EvenPart S) (tailMod4OnePart S) := by
  rw [Finset.disjoint_left]
  intro x hxEven hxOne
  simp [tailMod4EvenPart] at hxEven
  simp [tailMod4OnePart] at hxOne
  omega

private lemma tailMod4EvenOne_disjoint_three (S : Finset Nat) :
    Disjoint (tailMod4EvenPart S ∪ tailMod4OnePart S)
      (tailMod4ThreePart S) := by
  rw [Finset.disjoint_left]
  intro x hx hxThree
  rcases Finset.mem_union.mp hx with hxEven | hxOne
  · simp [tailMod4EvenPart] at hxEven
    simp [tailMod4ThreePart] at hxThree
    omega
  · simp [tailMod4OnePart] at hxOne
    simp [tailMod4ThreePart] at hxThree
    omega

private lemma tailMod4_part_card_sum (S : Finset Nat) :
    (tailMod4EvenPart S).card + (tailMod4OnePart S).card +
      (tailMod4ThreePart S).card = S.card := by
  calc
    _ = (tailMod4EvenPart S ∪ tailMod4OnePart S).card +
        (tailMod4ThreePart S).card := by
      rw [Finset.card_union_of_disjoint
        (tailMod4EvenPart_disjoint_one S)]
    _ = ((tailMod4EvenPart S ∪ tailMod4OnePart S) ∪
        tailMod4ThreePart S).card := by
      rw [Finset.card_union_of_disjoint
        (tailMod4EvenOne_disjoint_three S)]
    _ = S.card := by rw [tailMod4_partition]

private lemma tailMod4EvenPart_eq_zero_union_two (S : Finset Nat) :
    tailMod4EvenPart S = tailMod4Part S 0 ∪ tailMod4Part S 2 := by
  ext x
  simp [tailMod4EvenPart, tailMod4Part]
  tauto

private lemma tailMod4Zero_disjoint_two (S : Finset Nat) :
    Disjoint (tailMod4Part S 0) (tailMod4Part S 2) := by
  rw [Finset.disjoint_left]
  intro x hxZero hxTwo
  simp [tailMod4Part] at hxZero hxTwo
  omega

theorem tailMod4_four_card_sum (S : Finset Nat) :
    (tailMod4Part S 0).card + (tailMod4Part S 1).card +
      (tailMod4Part S 2).card + (tailMod4Part S 3).card = S.card := by
  have heven : (tailMod4EvenPart S).card =
      (tailMod4Part S 0).card + (tailMod4Part S 2).card := by
    rw [tailMod4EvenPart_eq_zero_union_two,
      Finset.card_union_of_disjoint (tailMod4Zero_disjoint_two S)]
  have hone : tailMod4OnePart S = tailMod4Part S 1 := by
    ext x
    simp [tailMod4OnePart, tailMod4Part]
  have hthree : tailMod4ThreePart S = tailMod4Part S 3 := by
    ext x
    simp [tailMod4ThreePart, tailMod4Part]
  have hsum := tailMod4_part_card_sum S
  rw [heven, hone, hthree] at hsum
  omega

#print axioms tailMod4_four_card_sum

end Erdos848
