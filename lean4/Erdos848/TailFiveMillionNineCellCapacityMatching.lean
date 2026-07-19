import Erdos848.TailFiveMillionEightCellMatchGenerated

namespace Erdos848

/-!
# Capacity-two matching with one spare slot for nine active cells
-/

noncomputable def fiveMillionEightPivotPatternOfNineCellSpareMatching
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 9)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (matching : cells ->
      (FiveMillionModFortyNine × Fin 2) ⊕ Fin 1)
    (hmatchingInjective : Function.Injective matching)
    (hmatchingEdge : ∀ cell : cells,
      match matching cell with
      | Sum.inl real =>
          fiveMillionCellModFortyNineEdge N B charged cell.1 real.1
      | Sum.inr _dummy => True) :
    Σ pivots : Finset Nat,
      { pattern : FiveMillionEightPivotPattern N B pivots //
        pivots ⊆ fiveMillionStructuredResidual N B charged } := by
  classical
  let realCells := (Finset.univ : Finset cells).filter fun cell =>
    ∃ real, matching cell = Sum.inl real
  have hcomplementCard :
      ((Finset.univ : Finset cells) \ realCells).card <= 1 := by
    apply Finset.card_le_one.mpr
    intro cell₁ hcell₁ cell₂ hcell₂
    have hnotReal₁ : ¬ ∃ real, matching cell₁ = Sum.inl real := by
      intro hreal
      exact (Finset.mem_sdiff.mp hcell₁).2
        (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hreal⟩)
    have hnotReal₂ : ¬ ∃ real, matching cell₂ = Sum.inl real := by
      intro hreal
      exact (Finset.mem_sdiff.mp hcell₂).2
        (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hreal⟩)
    cases hmatch₁ : matching cell₁ with
    | inl real => exact False.elim (hnotReal₁ ⟨real, hmatch₁⟩)
    | inr dummy₁ =>
        cases hmatch₂ : matching cell₂ with
        | inl real => exact False.elim (hnotReal₂ ⟨real, hmatch₂⟩)
        | inr dummy₂ =>
            apply hmatchingInjective
            rw [hmatch₁, hmatch₂]
            congr
            exact Subsingleton.elim _ _
  have hpartition :
      ((Finset.univ : Finset cells) \ realCells).card + realCells.card =
        (Finset.univ : Finset cells).card := by
    exact Finset.card_sdiff_add_card_eq_card (Finset.filter_subset _ _)
  have hunivCard : (Finset.univ : Finset cells).card = 9 := by
    simpa using hcellCard
  have hrealCard : 8 <= realCells.card := by omega
  let eightExists := Finset.exists_subset_card_eq hrealCard
  let eightCells : Finset cells := Classical.choose eightExists
  have heightSubset : eightCells ⊆ realCells :=
    (Classical.choose_spec eightExists).1
  have heightCard : eightCells.card = 8 :=
    (Classical.choose_spec eightExists).2
  let selectedCells : Finset (Fin 9) := eightCells.image fun cell => cell.1
  have hselectedCard : selectedCells.card = 8 := by
    dsimp [selectedCells]
    rw [Finset.card_image_of_injective]
    · exact heightCard
    · intro cell₁ cell₂ heq
      exact Subtype.ext heq
  have hsourceExists : ∀ cell : selectedCells,
      ∃ source ∈ eightCells, source.1 = cell.1 := by
    intro cell
    obtain ⟨source, hsource, heq⟩ := Finset.mem_image.mp cell.2
    exact ⟨source, hsource, heq⟩
  let sourceFor : selectedCells -> cells := fun cell =>
    Classical.choose (hsourceExists cell)
  have hsourceMem : ∀ cell : selectedCells,
      sourceFor cell ∈ eightCells := by
    intro cell
    exact (Classical.choose_spec (hsourceExists cell)).1
  have hsourceValue : ∀ cell : selectedCells,
      (sourceFor cell).1 = cell.1 := by
    intro cell
    exact (Classical.choose_spec (hsourceExists cell)).2
  have hsourceReal : ∀ cell : selectedCells,
      sourceFor cell ∈ realCells := by
    intro cell
    exact heightSubset (hsourceMem cell)
  have hslotExists : ∀ cell : selectedCells,
      ∃ real, matching (sourceFor cell) = Sum.inl real := by
    intro cell
    exact (Finset.mem_filter.mp (hsourceReal cell)).2
  let slotFor : selectedCells -> FiveMillionModFortyNine × Fin 2 :=
    fun cell => Classical.choose (hslotExists cell)
  have hslotEq : ∀ cell : selectedCells,
      matching (sourceFor cell) = Sum.inl (slotFor cell) := by
    intro cell
    exact Classical.choose_spec (hslotExists cell)
  have hslotInjective : Function.Injective slotFor := by
    intro cell₁ cell₂ hslot
    have hmatching : matching (sourceFor cell₁) =
        matching (sourceFor cell₂) := by
      rw [hslotEq cell₁, hslotEq cell₂, hslot]
    have hsource := hmatchingInjective hmatching
    apply Subtype.ext
    calc
      cell₁.1 = (sourceFor cell₁).1 := (hsourceValue cell₁).symm
      _ = (sourceFor cell₂).1 := congrArg Subtype.val hsource
      _ = cell₂.1 := hsourceValue cell₂
  have hslotEdge : ∀ cell : selectedCells,
      fiveMillionCellModFortyNineEdge N B charged cell.1
        (slotFor cell).1 := by
    intro cell
    have hedge := hmatchingEdge (sourceFor cell)
    rw [hslotEq cell] at hedge
    simpa [hsourceValue cell] using hedge
  exact fiveMillionEightPivotPatternWithStructuredOfCapacityMatching
    parity selectedCells hselectedCard hclass slotFor hslotInjective hslotEdge

theorem fiveMillionNineCellCapacityDichotomy
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 9)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    Nonempty (Σ pivots : Finset Nat,
      { pattern : FiveMillionEightPivotPattern N B pivots //
        pivots ⊆ fiveMillionStructuredResidual N B charged }) ∨
    (∃ Y : Finset cells,
      2 * (capacityTwoNeighbours
        (fun cell : cells =>
          fiveMillionCellModFortyNineEdge N B charged cell.1) Y).card + 1 <
        Y.card) := by
  classical
  by_cases hmatching : ∃ matching : cells ->
      (FiveMillionModFortyNine × Fin 2) ⊕ Fin 1,
      Function.Injective matching ∧
        ∀ cell,
          match matching cell with
          | Sum.inl real =>
              fiveMillionCellModFortyNineEdge N B charged cell.1 real.1
          | Sum.inr _dummy => True
  · left
    obtain ⟨matching, hinj, hedge⟩ := hmatching
    exact ⟨fiveMillionEightPivotPatternOfNineCellSpareMatching
      parity cells hcellCard hclass matching hinj hedge⟩
  · right
    apply exists_capacityTwo_defect_with_spare
      (fun cell : cells =>
        fiveMillionCellModFortyNineEdge N B charged cell.1) 1
    intro hexists
    obtain ⟨matching, hinjective, hrespects⟩ := hexists
    apply hmatching
    refine ⟨matching, hinjective, ?_⟩
    intro cell
    have h := hrespects cell
    cases hmatchingValue : matching cell with
    | inl real => simpa [hmatchingValue] using h
    | inr dummy => simp

#print axioms fiveMillionEightPivotPatternOfNineCellSpareMatching
#print axioms fiveMillionNineCellCapacityDichotomy

end Erdos848
