import Erdos848.TailFiveMillionOneOddCertificate

namespace Erdos848

def fiveMillionResidualModNineCell
    (N : ℕ) (B : Finset ℕ) (cell : Fin 9) : Finset ℕ :=
  (hallResidual N B).filter fun x => oddModNineResidue x = cell

def fiveMillionActiveModNineCells
    (N : ℕ) (B : Finset ℕ) : Finset (Fin 9) :=
  Finset.univ.filter fun cell =>
    6 ≤ (fiveMillionResidualModNineCell N B cell).card

def fiveMillionSparseCellCharge
    (N : ℕ) (B : Finset ℕ) : Finset ℕ :=
  (hallResidual N B).filter fun x =>
    oddModNineResidue x ∉ fiveMillionActiveModNineCells N B

lemma fiveMillionSparseCellCharge_subset_residual
    (N : ℕ) (B : Finset ℕ) :
    fiveMillionSparseCellCharge N B ⊆ hallResidual N B := by
  intro x hx
  exact (Finset.mem_filter.mp hx).1

lemma fiveMillionSparseCellCharge_subset_inactive_union
    (N : ℕ) (B : Finset ℕ) :
    fiveMillionSparseCellCharge N B ⊆
      (Finset.univ \ fiveMillionActiveModNineCells N B).biUnion
        (fiveMillionResidualModNineCell N B) := by
  intro x hx
  have hxParts := Finset.mem_filter.mp hx
  apply Finset.mem_biUnion.mpr
  refine ⟨oddModNineResidue x, ?_, ?_⟩
  · exact Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hxParts.2⟩
  · exact Finset.mem_filter.mpr ⟨hxParts.1, rfl⟩

lemma fiveMillionInactiveModNineCell_card_le_five
    {N : ℕ} {B : Finset ℕ} {cell : Fin 9}
    (hcell : cell ∈ Finset.univ \ fiveMillionActiveModNineCells N B) :
    (fiveMillionResidualModNineCell N B cell).card ≤ 5 := by
  have hnotActive := (Finset.mem_sdiff.mp hcell).2
  have hnotSix : ¬ 6 ≤
      (fiveMillionResidualModNineCell N B cell).card := by
    intro hsix
    exact hnotActive (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hsix⟩)
  omega

theorem fiveMillionSparseCellCharge_card_le_fortyFive
    (N : ℕ) (B : Finset ℕ) :
    (fiveMillionSparseCellCharge N B).card ≤ 45 := by
  let inactive := Finset.univ \ fiveMillionActiveModNineCells N B
  have hsubset := fiveMillionSparseCellCharge_subset_inactive_union N B
  calc
    (fiveMillionSparseCellCharge N B).card ≤
        (inactive.biUnion (fiveMillionResidualModNineCell N B)).card :=
      Finset.card_le_card hsubset
    _ ≤ ∑ cell ∈ inactive,
        (fiveMillionResidualModNineCell N B cell).card := by
      simpa using Finset.card_biUnion_le
        (s := inactive) (t := fiveMillionResidualModNineCell N B)
    _ ≤ ∑ _cell ∈ inactive, 5 := by
      apply Finset.sum_le_sum
      intro cell hcell
      exact fiveMillionInactiveModNineCell_card_le_five hcell
    _ = inactive.card * 5 := by simp
    _ ≤ 9 * 5 := by
      gcongr
      exact Finset.card_le_univ inactive
    _ = 45 := by norm_num

lemma fiveMillionActiveCell_has_structured_point
    {N : ℕ} {B : Finset ℕ}
    {cell : Fin 9}
    (hcell : cell ∈ fiveMillionActiveModNineCells N B) :
    ∃ x ∈ fiveMillionStructuredResidual N B
        (fiveMillionSparseCellCharge N B),
      oddModNineResidue x = cell := by
  have hcellParts := Finset.mem_filter.mp hcell
  have hnonempty :
      (fiveMillionResidualModNineCell N B cell).Nonempty := by
    exact Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) hcellParts.2)
  obtain ⟨x, hx⟩ := hnonempty
  have hxParts := Finset.mem_filter.mp hx
  refine ⟨x, ?_, hxParts.2⟩
  apply Finset.mem_sdiff.mpr
  refine ⟨hxParts.1, ?_⟩
  intro hxCharge
  exact (Finset.mem_filter.mp hxCharge).2 (by simpa [hxParts.2] using hcell)

lemma fiveMillionStructuredResidual_mem_activeCell
    {N : ℕ} {B : Finset ℕ}
    {x : ℕ}
    (hx : x ∈ fiveMillionStructuredResidual N B
      (fiveMillionSparseCellCharge N B)) :
    oddModNineResidue x ∈ fiveMillionActiveModNineCells N B := by
  have hxParts := Finset.mem_sdiff.mp hx
  by_contra hnot
  exact hxParts.2 (Finset.mem_filter.mpr ⟨hxParts.1, hnot⟩)

/-- Literal allocation theorem for the one-odd branch with six or seven
active mod-nine cells.  Sparse cells are charged automatically and cost at
most 45, well below the controlling allowance 128. -/
theorem fiveMillionPivotSieveWitness_of_oneOddSixSevenActiveCells
    {N : ℕ} {B : Finset ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool)
    (hclass : ∀ x ∈ hallResidual N B,
      x % 4 = if parity then 3 else 1)
    (hcellsLower : 6 ≤ (fiveMillionActiveModNineCells N B).card)
    (hcellsUpper : (fiveMillionActiveModNineCells N B).card ≤ 7) :
    FiveMillionPivotSieveWitness N B := by
  apply fiveMillionPivotSieveWitness_of_oneOddActiveCells
    hLower hUpper hBout hBprop parity (fiveMillionActiveModNineCells N B)
  · exact fiveMillionSparseCellCharge_subset_residual N B
  · exact (fiveMillionSparseCellCharge_card_le_fortyFive N B).trans
      (by norm_num)
  · exact hcellsLower
  · exact hcellsUpper
  · intro cell hcell
    exact fiveMillionActiveCell_has_structured_point hcell
  · intro x hx
    exact hclass x (Finset.mem_sdiff.mp hx).1
  · intro x hx
    exact fiveMillionStructuredResidual_mem_activeCell hx

#print axioms fiveMillionSparseCellCharge_card_le_fortyFive
#print axioms fiveMillionPivotSieveWitness_of_oneOddSixSevenActiveCells

end Erdos848
