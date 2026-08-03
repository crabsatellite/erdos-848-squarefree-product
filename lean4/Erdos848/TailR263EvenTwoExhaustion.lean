import Erdos848.TailR263EvenTwoTwoCell
import Erdos848.TailR263EvenOneMixedHalfTerminal

namespace Erdos848

/-!
# Exhausting the `E2` cell split at the R263 cut

This file contains only the finite nine-cell allocation which routes the
already checked `E2` terminals.  Two cells of size at least two feed the
four-pivot terminal.  Otherwise a cell of size at least three has at most
eight points outside it and feeds the one-cell terminal.  If neither happens,
the whole `E2` valuation part has cardinality at most ten and is passed as a
literal charge to the next (`E3`) row.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- The root assembler accepts both semantic terminal interfaces.  The
constructors contain actual kernel certificates, not final-ratio premises. -/
inductive FiveMillionR263KernelTerminal
    (N : Nat) (B : Finset Nat) : Type where
  | threshold (certificate : FiveMillionR263TerminalCertificate N B)
  | fourPivot (certificate : FiveMillionR263FourPivotTerminalCertificate N B)
  | mixedHalf (certificate :
      FiveMillionR263MixedHalfTerminalCertificate N B)

theorem FiveMillionR263KernelTerminal.completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBprop : NonSquarefreeProductProp B)
    (terminal : FiveMillionR263KernelTerminal N B) :
    ((hallCompletion N B).card : Rat) / N < tailHallTarget N := by
  cases terminal with
  | threshold certificate =>
      exact certificate.completion_ratio_lt_target hLower hBprop
  | fourPivot certificate =>
      exact certificate.completion_ratio_lt_target hLower hBprop
  | mixedHalf certificate =>
      exact certificate.completion_ratio_lt_target hLower hBprop

/-- Removing one fibre from nine cells leaves at most eight points when every
other fibre has cardinality at most one. -/
theorem card_sdiff_cellFibre_finNine_le_eight
    {X : Type*} [DecidableEq X]
    (points : Finset X) (cell : X -> Fin 9) (chosen : Fin 9)
    (hsparse : forall other : Fin 9, other ≠ chosen ->
      (cellFibre points cell other).card <= 1) :
    (points \ cellFibre points cell chosen).card <= 8 := by
  classical
  let outside := points \ cellFibre points cell chosen
  have hmaps : (outside : Set X).MapsTo cell
      (Finset.univ.erase chosen : Finset (Fin 9)) := by
    intro x hx
    have hxout : x ∈ points \ cellFibre points cell chosen := hx
    have hxpoint : x ∈ points := (Finset.mem_sdiff.mp hxout).1
    have hxnot : x ∉ cellFibre points cell chosen :=
      (Finset.mem_sdiff.mp hxout).2
    have hxcell : cell x ≠ chosen := by
      intro heq
      exact hxnot (Finset.mem_filter.mpr ⟨hxpoint, heq⟩)
    exact Finset.mem_erase.mpr ⟨hxcell, Finset.mem_univ _⟩
  rw [Finset.card_eq_sum_card_fiberwise hmaps]
  calc
    ∑ other ∈ (Finset.univ.erase chosen : Finset (Fin 9)),
        (outside.filter fun x => cell x = other).card <=
        ∑ _other ∈ (Finset.univ.erase chosen : Finset (Fin 9)), 1 := by
      apply Finset.sum_le_sum
      intro other hother
      have hne : other ≠ chosen := (Finset.mem_erase.mp hother).1
      have hsubset :
          (outside.filter fun x => cell x = other) ⊆
            cellFibre points cell other := by
        intro x hx
        have hxf := Finset.mem_filter.mp hx
        exact Finset.mem_filter.mpr
          ⟨(Finset.mem_sdiff.mp hxf.1).1, hxf.2⟩
      exact (Finset.card_le_card hsubset).trans (hsparse other hne)
    _ = 8 := by simp [Fintype.card_fin]

theorem fiveMillionR263EvenTwo_cell_dichotomy
    (N : Nat) (B : Finset Nat) :
    (exists left right : Fin 9, left ≠ right ∧
      2 <= (fiveMillionR263EvenTwoCell N B left).card ∧
      2 <= (fiveMillionR263EvenTwoCell N B right).card) ∨
    (exists chosen : Fin 9,
      3 <= (fiveMillionR263EvenTwoCell N B chosen).card ∧
      (fiveMillionValuationPart N B .evenTwo \
        fiveMillionR263EvenTwoCell N B chosen).card <= 8) ∨
    (fiveMillionValuationPart N B .evenTwo).card <= 10 := by
  classical
  let points := fiveMillionValuationPart N B .evenTwo
  let cell : Nat -> Fin 9 := oddModNineResidue
  have hfibre (residue : Fin 9) :
      cellFibre points cell residue =
        fiveMillionR263EvenTwoCell N B residue := by
    rfl
  by_cases htwo : exists left right : Fin 9, left ≠ right ∧
      2 <= (fiveMillionR263EvenTwoCell N B left).card ∧
      2 <= (fiveMillionR263EvenTwoCell N B right).card
  · exact Or.inl htwo
  by_cases hthree : exists chosen : Fin 9,
      3 <= (fiveMillionR263EvenTwoCell N B chosen).card
  · rcases hthree with ⟨chosen, hchosenThree⟩
    have hsparse : forall other : Fin 9, other ≠ chosen ->
        (cellFibre points cell other).card <= 1 := by
      intro other hne
      by_contra hnotSparse
      have hotherTwo : 2 <=
          (fiveMillionR263EvenTwoCell N B other).card := by
        rw [← hfibre]
        omega
      exact htwo ⟨chosen, other, hne.symm, by omega, hotherTwo⟩
    have hout := card_sdiff_cellFibre_finNine_le_eight
      points cell chosen hsparse
    exact Or.inr (Or.inl ⟨chosen, hchosenThree, by
      simpa [points, hfibre] using hout⟩)
  by_cases hone : exists chosen : Fin 9,
      2 <= (fiveMillionR263EvenTwoCell N B chosen).card
  · rcases hone with ⟨chosen, hchosenTwo⟩
    have hchosenLe :
        (fiveMillionR263EvenTwoCell N B chosen).card <= 2 := by
      by_contra hnot
      exact hthree ⟨chosen, by omega⟩
    have hsparse : forall other : Fin 9, other ≠ chosen ->
        (cellFibre points cell other).card <= 1 := by
      intro other hne
      by_contra hnotSparse
      have hotherTwo : 2 <=
          (fiveMillionR263EvenTwoCell N B other).card := by
        rw [← hfibre]
        omega
      exact htwo ⟨chosen, other, hne.symm, hchosenTwo, hotherTwo⟩
    have hout := card_sdiff_cellFibre_finNine_le_eight
      points cell chosen hsparse
    have hpartition :
        (points \ fiveMillionR263EvenTwoCell N B chosen).card +
          (fiveMillionR263EvenTwoCell N B chosen).card = points.card := by
      apply Finset.card_sdiff_add_card_eq_card
      exact fiveMillionR263EvenTwoCell_subset_part N B chosen
    exact Or.inr (Or.inr (by
      have hout' :
          (points \ fiveMillionR263EvenTwoCell N B chosen).card <= 8 := by
        simpa [hfibre] using hout
      simpa [points] using (show points.card <= 10 by omega)))
  · have hallSparse : forall residue : Fin 9,
        (cellFibre points cell residue).card <= 1 := by
      intro residue
      by_contra hnotSparse
      apply hone
      exact ⟨residue, by rw [← hfibre]; omega⟩
    have hcard := card_le_cellCount_mul_of_fibres_le
      points cell 1 hallSparse
    right
    right
    have hcardNine : points.card <= 9 := by
      simpa [Fintype.card_fin] using hcard
    simpa [points] using (show points.card <= 10 by omega)

/-- Complete local `E2` routing.  The only nonterminal output is the exact
ten-point charge required by the next `E3` row. -/
theorem fiveMillionR263EvenTwo_exhaustion
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hOne : (fiveMillionValuationPart N B .evenOne).card <= 10) :
    Nonempty (FiveMillionR263KernelTerminal N B) ∨
      (fiveMillionValuationPart N B .evenTwo).card <= 10 := by
  rcases fiveMillionR263EvenTwo_cell_dichotomy N B with
      htwo | hone | hsparse
  · rcases htwo with ⟨left, right, hne, hleft, hright⟩
    exact Or.inl ⟨.fourPivot
      (fiveMillionR263EvenTwoTwoCellTerminal
        hLower hUpper hBout hBprop left right hne hOne hleft hright)⟩
  · rcases hone with ⟨chosen, hthree, houtside⟩
    exact Or.inl ⟨.threshold
      (fiveMillionR263EvenTwoOneCellTerminal
        hLower hUpper hBout hBprop chosen hOne houtside hthree)⟩
  · exact Or.inr hsparse

#print axioms card_sdiff_cellFibre_finNine_le_eight
#print axioms fiveMillionR263EvenTwo_cell_dichotomy
#print axioms fiveMillionR263EvenTwo_exhaustion
#print axioms FiveMillionR263KernelTerminal.completion_ratio_lt_target

end Erdos848
