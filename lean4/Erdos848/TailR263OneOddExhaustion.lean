import Erdos848.TailR263EvenThreeExhaustion
import Erdos848.TailGlobalMixedOneOddSevenCellAllocation

namespace Erdos848

/-!
# Exhausting a surviving one-odd valuation class at the R263 cut

All terminals for one through nine active mod-nine cells already exist.  This
module supplies the missing allocation glue: if at most 83 residual points
lie outside one odd valuation class and the residual has more than 128 points,
then at least one active cell survives, so one of those literal terminals
applies.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma fiveMillionR263OddValuationActiveCells_nonempty
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B cls).card <= 83)
    (hresidual : 128 < (hallResidual N B).card) :
    (fiveMillionR263ActiveModNineCellsAfterCharge N B
      (fiveMillionR263OutsideValuationCharge N B cls)).Nonempty := by
  classical
  let charged := fiveMillionR263OutsideValuationCharge N B cls
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  by_contra hnone
  have hcellsEmpty : cells = ∅ := Finset.not_nonempty_iff_eq_empty.mp hnone
  have hsparse :=
    fiveMillionR263SparseCellChargeAfter_card_le_fortyFive N B charged
  have hclassCard :
      (fiveMillionValuationPart N B cls).card <= 45 := by
    rw [← fiveMillionStructuredResidual_r263OutsideValuationCharge]
    simpa [charged, cells, fiveMillionR263SparseCellChargeAfter,
      hcellsEmpty] using hsparse
  have hpartition :
      charged.card + (fiveMillionValuationPart N B cls).card =
        (hallResidual N B).card := by
    simpa [charged, fiveMillionR263OutsideValuationCharge] using
      Finset.card_sdiff_add_card_eq_card
        (fiveMillionValuationPart_subset_residual N B cls)
  dsimp [charged] at hpartition
  omega

/-- Complete dispatcher for either odd mod-four valuation class. -/
noncomputable def fiveMillionR263OneOddValuationTerminal
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcls : cls = .oddOne ∨ cls = .oddThree)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B cls).card <= 83)
    (hresidual : 128 < (hallResidual N B).card) :
    FiveMillionR263TerminalCertificate N B := by
  classical
  let charged := fiveMillionR263OutsideValuationCharge N B cls
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  have hnonempty : cells.Nonempty := by
    simpa [charged, cells] using
      (fiveMillionR263OddValuationActiveCells_nonempty
        (cls := cls) houtside hresidual)
  have hpositive : 0 < cells.card := Finset.card_pos.mpr hnonempty
  have hupper : cells.card <= 9 := by
    calc
      cells.card <= Fintype.card (Fin 9) := Finset.card_le_univ cells
      _ = 9 := by simp
  cases cls with
  | evenOne => simp at hcls
  | evenTwo => simp at hcls
  | evenThree => simp at hcls
  | oddOne =>
      by_cases hsix : 6 <= cells.card
      · exact globalMixedOneOddAtLeastSixCellsR263Terminal_of_oddOneValuationPart
          hLower hUpper hBout hBprop houtside
            (by simpa [charged, cells] using hsix)
      · by_cases hfive : cells.card = 5
        · exact globalMixedOneOddExactlyFiveCellsR263Terminal_of_oddOneValuationPart
            hLower hUpper hBout hBprop houtside
              (by simpa [charged, cells] using hfive)
        · by_cases hfour : cells.card = 4
          · exact globalMixedOneOddExactlyFourCellsR263Terminal_of_oddOneValuationPart
              hLower hUpper hBout hBprop houtside
                (by simpa [charged, cells] using hfour)
          · by_cases hthree : cells.card = 3
            · exact globalMixedOneOddExactlyThreeCellsR263Terminal_of_oddOneValuationPart
                hLower hUpper hBout hBprop houtside
                  (by simpa [charged, cells] using hthree)
            · by_cases htwo : cells.card = 2
              · exact globalMixedOneOddExactlyTwoCellsR263Terminal_of_oddOneValuationPart
                  hLower hUpper hBout hBprop houtside
                    (by simpa [charged, cells] using htwo)
              · have hone : cells.card = 1 := by omega
                exact globalMixedOneOddExactlyOneCellR263Terminal_of_oddOneValuationPart
                  hLower hUpper hBout hBprop houtside
                    (by simpa [charged, cells] using hone)
  | oddThree =>
      by_cases hsix : 6 <= cells.card
      · exact globalMixedOneOddAtLeastSixCellsR263Terminal_of_oddThreeValuationPart
          hLower hUpper hBout hBprop houtside
            (by simpa [charged, cells] using hsix)
      · by_cases hfive : cells.card = 5
        · exact globalMixedOneOddExactlyFiveCellsR263Terminal_of_oddThreeValuationPart
            hLower hUpper hBout hBprop houtside
              (by simpa [charged, cells] using hfive)
        · by_cases hfour : cells.card = 4
          · exact globalMixedOneOddExactlyFourCellsR263Terminal_of_oddThreeValuationPart
              hLower hUpper hBout hBprop houtside
                (by simpa [charged, cells] using hfour)
          · by_cases hthree : cells.card = 3
            · exact globalMixedOneOddExactlyThreeCellsR263Terminal_of_oddThreeValuationPart
                hLower hUpper hBout hBprop houtside
                  (by simpa [charged, cells] using hthree)
            · by_cases htwo : cells.card = 2
              · exact globalMixedOneOddExactlyTwoCellsR263Terminal_of_oddThreeValuationPart
                  hLower hUpper hBout hBprop houtside
                    (by simpa [charged, cells] using htwo)
              · have hone : cells.card = 1 := by omega
                exact globalMixedOneOddExactlyOneCellR263Terminal_of_oddThreeValuationPart
                  hLower hUpper hBout hBprop houtside
                    (by simpa [charged, cells] using hone)

lemma fiveMillionR263OutsideOddOneCharge_card_le_83
    {N : Nat} {B : Finset Nat}
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (hOddThree : (fiveMillionValuationPart N B .oddThree).card <= 45) :
    (fiveMillionR263OutsideValuationCharge N B .oddOne).card <= 83 := by
  have hsubset :
      fiveMillionR263OutsideValuationCharge N B .oddOne ⊆
        ((fiveMillionValuationPart N B .evenOne ∪
            fiveMillionValuationPart N B .evenTwo) ∪
          fiveMillionValuationPart N B .evenThree) ∪
            fiveMillionValuationPart N B .oddThree := by
    intro x hx
    have hxParts := Finset.mem_sdiff.mp hx
    cases hclass : fiveMillionValuationClassOf x with
    | evenOne =>
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
    | evenTwo =>
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_right
        exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
    | evenThree =>
        apply Finset.mem_union_left
        apply Finset.mem_union_right
        exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
    | oddOne =>
        exact False.elim (hxParts.2
          (mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩))
    | oddThree =>
        apply Finset.mem_union_right
        exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
  calc
    (fiveMillionR263OutsideValuationCharge N B .oddOne).card <=
        (((fiveMillionValuationPart N B .evenOne ∪
            fiveMillionValuationPart N B .evenTwo) ∪
          fiveMillionValuationPart N B .evenThree) ∪
            fiveMillionValuationPart N B .oddThree).card :=
      Finset.card_le_card hsubset
    _ <= ((fiveMillionValuationPart N B .evenOne ∪
          fiveMillionValuationPart N B .evenTwo) ∪
        fiveMillionValuationPart N B .evenThree).card +
          (fiveMillionValuationPart N B .oddThree).card :=
      Finset.card_union_le _ _
    _ <= ((fiveMillionValuationPart N B .evenOne ∪
          fiveMillionValuationPart N B .evenTwo).card +
        (fiveMillionValuationPart N B .evenThree).card) +
          (fiveMillionValuationPart N B .oddThree).card := by
      gcongr
      exact Finset.card_union_le _ _
    _ <= (((fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo).card) +
        (fiveMillionValuationPart N B .evenThree).card) +
          (fiveMillionValuationPart N B .oddThree).card := by
      gcongr
      exact Finset.card_union_le _ _
    _ <= 83 := by omega

lemma fiveMillionR263OutsideOddThreeCharge_card_le_83
    {N : Nat} {B : Finset Nat}
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (hOddOne : (fiveMillionValuationPart N B .oddOne).card <= 45) :
    (fiveMillionR263OutsideValuationCharge N B .oddThree).card <= 83 := by
  have hsubset :
      fiveMillionR263OutsideValuationCharge N B .oddThree ⊆
        ((fiveMillionValuationPart N B .evenOne ∪
            fiveMillionValuationPart N B .evenTwo) ∪
          fiveMillionValuationPart N B .evenThree) ∪
            fiveMillionValuationPart N B .oddOne := by
    intro x hx
    have hxParts := Finset.mem_sdiff.mp hx
    cases hclass : fiveMillionValuationClassOf x with
    | evenOne =>
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
    | evenTwo =>
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_right
        exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
    | evenThree =>
        apply Finset.mem_union_left
        apply Finset.mem_union_right
        exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
    | oddOne =>
        apply Finset.mem_union_right
        exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
    | oddThree =>
        exact False.elim (hxParts.2
          (mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩))
  calc
    (fiveMillionR263OutsideValuationCharge N B .oddThree).card <=
        (((fiveMillionValuationPart N B .evenOne ∪
            fiveMillionValuationPart N B .evenTwo) ∪
          fiveMillionValuationPart N B .evenThree) ∪
            fiveMillionValuationPart N B .oddOne).card :=
      Finset.card_le_card hsubset
    _ <= ((fiveMillionValuationPart N B .evenOne ∪
          fiveMillionValuationPart N B .evenTwo) ∪
        fiveMillionValuationPart N B .evenThree).card +
          (fiveMillionValuationPart N B .oddOne).card :=
      Finset.card_union_le _ _
    _ <= ((fiveMillionValuationPart N B .evenOne ∪
          fiveMillionValuationPart N B .evenTwo).card +
        (fiveMillionValuationPart N B .evenThree).card) +
          (fiveMillionValuationPart N B .oddOne).card := by
      gcongr
      exact Finset.card_union_le _ _
    _ <= (((fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo).card) +
        (fiveMillionValuationPart N B .evenThree).card) +
          (fiveMillionValuationPart N B .oddOne).card := by
      gcongr
      exact Finset.card_union_le _ _
    _ <= 83 := by omega

/-- After the three even charges, either a one-odd terminal closes immediately
or both odd valuation classes contain at least 46 points.  The latter is the
literal input to the remaining two-odd allocation. -/
theorem fiveMillionR263OddAllocation_exhaustion
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (hresidual : 128 < (hallResidual N B).card) :
    Nonempty (FiveMillionR263KernelTerminal N B) ∨
      (46 <= (fiveMillionValuationPart N B .oddOne).card ∧
        46 <= (fiveMillionValuationPart N B .oddThree).card) := by
  by_cases hOddThree :
      (fiveMillionValuationPart N B .oddThree).card <= 45
  · have houtside := fiveMillionR263OutsideOddOneCharge_card_le_83
      hEvenOne hEvenTwo hEvenThree hOddThree
    exact Or.inl ⟨.threshold
      (fiveMillionR263OneOddValuationTerminal hLower hUpper hBout hBprop
        (Or.inl rfl) houtside hresidual)⟩
  · by_cases hOddOne :
        (fiveMillionValuationPart N B .oddOne).card <= 45
    · have houtside := fiveMillionR263OutsideOddThreeCharge_card_le_83
        hEvenOne hEvenTwo hEvenThree hOddOne
      exact Or.inl ⟨.threshold
        (fiveMillionR263OneOddValuationTerminal hLower hUpper hBout hBprop
          (Or.inr rfl) houtside hresidual)⟩
    · exact Or.inr ⟨by omega, by omega⟩

#print axioms fiveMillionR263OddValuationActiveCells_nonempty
#print axioms fiveMillionR263OneOddValuationTerminal
#print axioms fiveMillionR263OddAllocation_exhaustion

end Erdos848
