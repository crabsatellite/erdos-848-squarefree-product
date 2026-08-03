import Erdos848.ProblemCore

namespace Erdos848

/-!
The exact Hall cut used by the range proof.

For an outside compatible set `B`, `hallNonNeighbours N B` is the part of the
sharp residue class `OriginalA7 N` having no squarefree edge to `B`.  The Hall
defect inequality is therefore

`B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card`.

This file proves that inequality for every compatible outside set if and only
if the literal Erdős 848 upper bound holds.  No analytic estimate enters here;
it is the shared exact interface consumed by the low-range proofs.
-/

def hallNonNeighbours (N : ℕ) (B : Finset ℕ) : Finset ℕ :=
  (OriginalA7 N).filter fun a =>
    ∀ b ∈ B, ¬ Squarefree (a * b + 1)

/-- The second sharp residue class in the literal interval convention. -/
def OriginalA18 (N : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter fun n => n % 25 = 18

/-! These elementary residue lemmas are proved locally so that the exact Hall
interface does not import the unrelated asymptotic development. -/

private lemma mod25_divisibility_of_residue (r a b : ℕ)
    (hr : r * r % 25 = 24) (ha : a % 25 = r)
    (hb : b % 25 = r) : 25 ∣ (a * b + 1) := by
  have hmul : a * b % 25 = (a % 25) * (b % 25) % 25 :=
    Nat.mul_mod a b 25
  rw [ha, hb, hr] at hmul
  exact Nat.dvd_of_mod_eq_zero (by omega)

private lemma not_squarefree_of_dvd_25 {n : ℕ} (h : 25 ∣ n) :
    ¬ Squarefree n := by
  intro hsq
  have hunit : IsUnit (5 : ℕ) := hsq 5 (by simpa using h)
  have : (5 : ℕ) = 1 := Nat.isUnit_iff.mp hunit
  omega

lemma originalA7_nonSquarefree (N : ℕ) :
    NonSquarefreeProductProp (OriginalA7 N) := by
  intro a ha b hb
  have ha7 : a % 25 = 7 := (Finset.mem_filter.mp ha).2
  have hb7 : b % 25 = 7 := (Finset.mem_filter.mp hb).2
  apply not_squarefree_of_dvd_25
  exact mod25_divisibility_of_residue 7 a b (by norm_num) ha7 hb7

lemma originalA18_nonSquarefree (N : ℕ) :
    NonSquarefreeProductProp (OriginalA18 N) := by
  intro a ha b hb
  have ha18 : a % 25 = 18 := (Finset.mem_filter.mp ha).2
  have hb18 : b % 25 = 18 := (Finset.mem_filter.mp hb).2
  apply not_squarefree_of_dvd_25
  exact mod25_divisibility_of_residue 18 a b (by norm_num) ha18 hb18

/-- Exact cardinality of the sharp class in the literal `Icc 1 N`
convention. -/
lemma originalA7_card_exact (N : ℕ) :
    (OriginalA7 N).card = (N + 18) / 25 := by
  classical
  calc
    (OriginalA7 N).card = (Finset.range ((N + 18) / 25)).card := by
      apply Finset.card_bij (fun a _ha => a / 25)
      · intro a ha
        simp only [OriginalA7, Finset.mem_filter, Finset.mem_Icc] at ha
        rcases ha with ⟨⟨_ha1, haN⟩, ha7⟩
        have hdecomp := Nat.mod_add_div a 25
        have hmul : (a / 25 + 1) * 25 ≤ N + 18 := by omega
        have hquot : a / 25 + 1 ≤ (N + 18) / 25 :=
          (Nat.le_div_iff_mul_le (by norm_num)).2 hmul
        simpa only [Finset.mem_range] using
          (show a / 25 < (N + 18) / 25 by omega)
      · intro a₁ ha₁ a₂ ha₂ heq
        have hmod₁ := (Finset.mem_filter.mp ha₁).2
        have hmod₂ := (Finset.mem_filter.mp ha₂).2
        have hdecomp₁ := Nat.mod_add_div a₁ 25
        have hdecomp₂ := Nat.mod_add_div a₂ 25
        omega
      · intro k hk
        simp only [Finset.mem_range] at hk
        refine ⟨25 * k + 7, ?_, ?_⟩
        · simp only [OriginalA7, Finset.mem_filter, Finset.mem_Icc]
          constructor
          · omega
          · norm_num [Nat.add_mod, Nat.mul_mod]
        · omega
    _ = (N + 18) / 25 := Finset.card_range _

lemma originalA18_card_exact (N : ℕ) :
    (OriginalA18 N).card = (N + 7) / 25 := by
  classical
  calc
    (OriginalA18 N).card = (Finset.range ((N + 7) / 25)).card := by
      apply Finset.card_bij (fun a _ha => a / 25)
      · intro a ha
        simp only [OriginalA18, Finset.mem_filter, Finset.mem_Icc] at ha
        rcases ha with ⟨⟨_ha1, haN⟩, ha18⟩
        have hdecomp := Nat.mod_add_div a 25
        have hmul : (a / 25 + 1) * 25 ≤ N + 7 := by omega
        have hquot : a / 25 + 1 ≤ (N + 7) / 25 :=
          (Nat.le_div_iff_mul_le (by norm_num)).2 hmul
        simpa only [Finset.mem_range] using
          (show a / 25 < (N + 7) / 25 by omega)
      · intro a₁ ha₁ a₂ ha₂ heq
        have hmod₁ := (Finset.mem_filter.mp ha₁).2
        have hmod₂ := (Finset.mem_filter.mp ha₂).2
        have hdecomp₁ := Nat.mod_add_div a₁ 25
        have hdecomp₂ := Nat.mod_add_div a₂ 25
        omega
      · intro k hk
        simp only [Finset.mem_range] at hk
        refine ⟨25 * k + 18, ?_, ?_⟩
        · simp only [OriginalA18, Finset.mem_filter, Finset.mem_Icc]
          constructor
          · omega
          · norm_num [Nat.add_mod, Nat.mul_mod]
        · omega
    _ = (N + 7) / 25 := Finset.card_range _

lemma originalA18_card_le_quotient_add_one (N : ℕ) :
    (OriginalA18 N).card ≤ N / 25 + 1 := by
  rw [originalA18_card_exact]
  omega

lemma originalA18_card_cast_upper (N : ℕ) :
    ((OriginalA18 N).card : ℚ) ≤ (N : ℚ) / 25 + 1 := by
  rw [originalA18_card_exact]
  have hmul : 25 * ((N + 7) / 25) ≤ N + 7 := Nat.mul_div_le _ _
  have hmulQ :
      (25 : ℚ) * (((N + 7) / 25 : ℕ) : ℚ) ≤ (N : ℚ) + 7 := by
    exact_mod_cast hmul
  norm_num at hmulQ ⊢
  linarith

def hallCompletion (N : ℕ) (B : Finset ℕ) : Finset ℕ :=
  B ∪ hallNonNeighbours N B

def Erdos848OutsideSet (N : ℕ) (B : Finset ℕ) : Prop :=
  B ⊆ Finset.Icc 1 N \ OriginalA7 N

def Erdos848HallStatement (N : ℕ) : Prop :=
  ∀ B : Finset ℕ,
    Erdos848OutsideSet N B →
    NonSquarefreeProductProp B →
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card

lemma originalA7_subset_Icc (N : ℕ) :
    OriginalA7 N ⊆ Finset.Icc 1 N := by
  intro a ha
  exact (Finset.mem_filter.mp ha).1

lemma hallNonNeighbours_subset_originalA7 (N : ℕ) (B : Finset ℕ) :
    hallNonNeighbours N B ⊆ OriginalA7 N := by
  intro a ha
  exact (Finset.mem_filter.mp ha).1

lemma hallCompletion_disjoint {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B) :
    Disjoint B (hallNonNeighbours N B) := by
  rw [Finset.disjoint_left]
  intro b hbB hbT
  have hbNotC : b ∉ OriginalA7 N := (Finset.mem_sdiff.mp (hBout hbB)).2
  exact hbNotC (hallNonNeighbours_subset_originalA7 N B hbT)

lemma hallCompletion_card {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B) :
    (hallCompletion N B).card =
      B.card + (hallNonNeighbours N B).card := by
  rw [hallCompletion, Finset.card_union_of_disjoint (hallCompletion_disjoint hBout)]

lemma hallCompletion_subset_Icc {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B) :
    hallCompletion N B ⊆ Finset.Icc 1 N := by
  intro x hx
  rcases Finset.mem_union.mp hx with hxB | hxT
  · exact (Finset.mem_sdiff.mp (hBout hxB)).1
  · exact originalA7_subset_Icc N
      (hallNonNeighbours_subset_originalA7 N B hxT)

/-- The exact sharp-class cardinality is always at least the normalized
rational target used by the range certificates. -/
lemma originalA7_card_cast_lower (N : ℕ) :
    (N : ℚ) / 25 - 7 / 25 ≤ ((OriginalA7 N).card : ℚ) := by
  rw [originalA7_card_exact]
  have hquot : N + 18 < 25 * ((N + 18) / 25 + 1) := by omega
  have hquotQ :
      (N : ℚ) + 18 < 25 * (((N + 18) / 25 : ℕ) : ℚ) + 25 := by
    exact_mod_cast hquot
  norm_num at hquotQ ⊢
  linarith

lemma mem_hallNonNeighbours_iff {N : ℕ} {B : Finset ℕ} {a : ℕ} :
    a ∈ hallNonNeighbours N B ↔
      a ∈ OriginalA7 N ∧ ∀ b ∈ B, ¬ Squarefree (a * b + 1) := by
  simp [hallNonNeighbours]

lemma hallCompletion_nonSquarefree {N : ℕ} {B : Finset ℕ}
    (hBprop : NonSquarefreeProductProp B) :
    NonSquarefreeProductProp (hallCompletion N B) := by
  have hCprop : NonSquarefreeProductProp (OriginalA7 N) :=
    originalA7_nonSquarefree N
  intro x hx y hy
  rcases Finset.mem_union.mp hx with hxB | hxT <;>
    rcases Finset.mem_union.mp hy with hyB | hyT
  · exact hBprop x hxB y hyB
  · have hyNon := (mem_hallNonNeighbours_iff.mp hyT).2 x hxB
    simpa [mul_comm] using hyNon
  · exact (mem_hallNonNeighbours_iff.mp hxT).2 y hyB
  · exact hCprop x
      (hallNonNeighbours_subset_originalA7 N B hxT) y
      (hallNonNeighbours_subset_originalA7 N B hyT)

/-- The direct Hall-defect inequality implies the literal Erdős 848 bound. -/
theorem originalProblem_of_hallStatement {N : ℕ}
    (hHall : Erdos848HallStatement N) :
    OriginalProblem848Statement N := by
  intro A hA hprop
  let B := A \ OriginalA7 N
  have hBout : Erdos848OutsideSet N B := by
    intro b hb
    have hbA : b ∈ A := (Finset.mem_sdiff.mp hb).1
    exact Finset.mem_sdiff.mpr ⟨hA hbA, (Finset.mem_sdiff.mp hb).2⟩
  have hBprop : NonSquarefreeProductProp B := by
    intro x hx y hy
    exact hprop x (Finset.mem_sdiff.mp hx).1 y (Finset.mem_sdiff.mp hy).1
  have hinter : A ∩ OriginalA7 N ⊆ hallNonNeighbours N B := by
    intro a ha
    have haA : a ∈ A := (Finset.mem_inter.mp ha).1
    have haC : a ∈ OriginalA7 N := (Finset.mem_inter.mp ha).2
    apply mem_hallNonNeighbours_iff.mpr
    refine ⟨haC, ?_⟩
    intro b hb
    exact hprop a haA b (Finset.mem_sdiff.mp hb).1
  have hinterCard : (A ∩ OriginalA7 N).card ≤
      (hallNonNeighbours N B).card :=
    Finset.card_le_card hinter
  calc
    A.card = B.card + (A ∩ OriginalA7 N).card := by
      simpa [B] using (Finset.card_sdiff_add_card_inter A (OriginalA7 N)).symm
    _ ≤ B.card + (hallNonNeighbours N B).card :=
      Nat.add_le_add_left hinterCard B.card
    _ ≤ (OriginalA7 N).card := hHall B hBout hBprop

/-- The literal Erdős 848 bound implies the direct Hall-defect inequality. -/
theorem hallStatement_of_originalProblem {N : ℕ}
    (hOriginal : OriginalProblem848Statement N) :
    Erdos848HallStatement N := by
  intro B hBout hBprop
  have hcard := hOriginal (hallCompletion N B)
    (hallCompletion_subset_Icc hBout)
    (hallCompletion_nonSquarefree hBprop)
  rw [hallCompletion_card hBout] at hcard
  exact hcard

theorem erdos848HallStatement_iff_originalProblem (N : ℕ) :
    Erdos848HallStatement N ↔ OriginalProblem848Statement N := by
  exact ⟨originalProblem_of_hallStatement, hallStatement_of_originalProblem⟩

end Erdos848
