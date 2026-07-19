import Erdos848.TailCombinatorics
import Erdos848.TailFiveMillionEightPivotPeriodicProducer
import Erdos848.TailFiveMillionResidualCore

namespace Erdos848

/-!
# Actual capacity matching in eight active mod-9 cells

The graph is literal: a cell is adjacent to a mod-49 residue exactly when an
actual structured Hall-residual point occupies both.  A saturating
capacity-two matching produces eight actual pivots and the full periodic
pattern.  Failure produces the genuine capacitated Hall defect, without a
numerical surrogate.
-/

def fiveMillionCellModFortyNineEdge
    (N : Nat) (B charged : Finset Nat)
    (cell : Fin 9) (residue : FiveMillionModFortyNine) : Prop :=
  ∃ x ∈ fiveMillionStructuredResidual N B charged,
    oddModNineResidue x = cell ∧ x % 49 = residue.val

noncomputable instance fiveMillionCellModFortyNineEdgeDecidable
    (N : Nat) (B charged : Finset Nat) :
    DecidableRel (fiveMillionCellModFortyNineEdge N B charged) := by
  intro cell residue
  classical
  exact inferInstance

noncomputable def fiveMillionEightPivotPatternWithStructuredOfCapacityMatching
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 8)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (matching : cells -> FiveMillionModFortyNine × Fin 2)
    (hmatchingInjective : Function.Injective matching)
    (hmatchingEdge : ∀ cell : cells,
      fiveMillionCellModFortyNineEdge N B charged cell.1
        (matching cell).1) :
    Σ pivots : Finset Nat,
      { pattern : FiveMillionEightPivotPattern N B pivots //
        pivots ⊆ fiveMillionStructuredResidual N B charged } := by
  classical
  have hpickExists : ∀ cell : cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell.1 ∧ x % 49 = (matching cell).1.val := by
    intro cell
    exact hmatchingEdge cell
  let pick : cells -> Nat := fun cell => Classical.choose (hpickExists cell)
  have hpickMem : ∀ cell : cells,
      pick cell ∈ fiveMillionStructuredResidual N B charged := by
    intro cell
    exact (Classical.choose_spec (hpickExists cell)).1
  have hpickCell : ∀ cell : cells,
      oddModNineResidue (pick cell) = cell.1 := by
    intro cell
    exact (Classical.choose_spec (hpickExists cell)).2.1
  have hpickFortyNine : ∀ cell : cells,
      (⟨pick cell % 49, Nat.mod_lt _ (by norm_num)⟩ :
        FiveMillionModFortyNine) = (matching cell).1 := by
    intro cell
    apply Fin.ext
    exact (Classical.choose_spec (hpickExists cell)).2.2
  have hpickInjective : Function.Injective pick := by
    intro cell₁ cell₂ heq
    apply Subtype.ext
    rw [← hpickCell cell₁, ← hpickCell cell₂, heq]
  let pivots : Finset Nat := Finset.univ.image pick
  have hpivotsCard : pivots.card = 8 := by
    dsimp [pivots]
    rw [Finset.card_image_of_injective _ hpickInjective]
    simpa using hcellCard
  have hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B charged := by
    intro pivot hpivot
    obtain ⟨cell, _hcell, rfl⟩ := Finset.mem_image.mp hpivot
    exact hpickMem cell
  have hcellForIndex : ∀ i : Fin 8,
      ∃ cell : cells, pick cell = eightPivotAt pivots hpivotsCard i := by
    intro i
    have hpivot := eightPivotAt_mem pivots hpivotsCard i
    obtain ⟨cell, _hcell, heq⟩ := Finset.mem_image.mp hpivot
    exact ⟨cell, heq⟩
  let cellForIndex : Fin 8 -> cells := fun i =>
    Classical.choose (hcellForIndex i)
  have hpickIndex : ∀ i : Fin 8,
      pick (cellForIndex i) = eightPivotAt pivots hpivotsCard i := by
    intro i
    exact Classical.choose_spec (hcellForIndex i)
  let modFourClass : FiveMillionModFour :=
    ⟨if parity then 3 else 1, by cases parity <;> simp⟩
  refine ⟨pivots, ?_, hpivotsStructured⟩
  refine
    { pivotsCard := hpivotsCard
      pivotsResidual := ?_
      modFourClass := modFourClass
      commonModFour := ?_
      distinctModNine := ?_
      modFortyNineCapacity := ?_ }
  · intro pivot hpivot
    exact (Finset.mem_sdiff.mp (hpivotsStructured hpivot)).1
  · intro i
    have hpivotStructured := hpivotsStructured
      (eightPivotAt_mem pivots hpivotsCard i)
    have hpivotMod := hclass _ hpivotStructured
    rw [← ZMod.natCast_zmod_val
      (eightPivotAt pivots hpivotsCard i : ZMod 4)]
    change ((eightPivotAt pivots hpivotsCard i % 4 : Nat) : ZMod 4) =
      (modFourClass.val : ZMod 4)
    rw [hpivotMod]
  · intro i j hij
    have hmod : eightPivotAt pivots hpivotsCard i % 9 =
        eightPivotAt pivots hpivotsCard j % 9 := by
      have hval := congrArg ZMod.val hij
      simpa [ZMod.val_natCast] using hval
    have hcellEq : cellForIndex i = cellForIndex j := by
      apply Subtype.ext
      rw [← hpickCell (cellForIndex i), ← hpickCell (cellForIndex j)]
      apply Fin.ext
      simpa [oddModNineResidue, hpickIndex] using hmod
    apply eightPivotAt_injective pivots hpivotsCard
    rw [← hpickIndex i, ← hpickIndex j, hcellEq]
  · intro residue
    let source := (Finset.univ : Finset (Fin 8)).filter fun i =>
      eightPivotModFortyNine pivots hpivotsCard i = residue
    let slot : Fin 8 -> Fin 2 := fun i => (matching (cellForIndex i)).2
    have hmaps : Set.MapsTo slot (source : Set (Fin 8))
        (Finset.univ : Finset (Fin 2)) := by
      intro i hi
      exact Finset.mem_univ _
    have hinj : Set.InjOn slot (source : Set (Fin 8)) := by
      intro i hi j hj hslot
      have hiResidue :
          eightPivotModFortyNine pivots hpivotsCard i = residue :=
        (Finset.mem_filter.mp hi).2
      have hjResidue :
          eightPivotModFortyNine pivots hpivotsCard j = residue :=
        (Finset.mem_filter.mp hj).2
      have hfirstI : (matching (cellForIndex i)).1 = residue := by
        rw [← hiResidue, ← hpickFortyNine (cellForIndex i)]
        apply Fin.ext
        simp [eightPivotModFortyNine, hpickIndex]
      have hfirstJ : (matching (cellForIndex j)).1 = residue := by
        rw [← hjResidue, ← hpickFortyNine (cellForIndex j)]
        apply Fin.ext
        simp [eightPivotModFortyNine, hpickIndex]
      have hmatching : matching (cellForIndex i) =
          matching (cellForIndex j) := by
        apply Prod.ext
        · exact hfirstI.trans hfirstJ.symm
        · exact hslot
      have hcell := hmatchingInjective hmatching
      apply eightPivotAt_injective pivots hpivotsCard
      rw [← hpickIndex i, ← hpickIndex j, hcell]
    have hcard := Finset.card_le_card_of_injOn slot hmaps hinj
    simpa [source] using hcard

theorem fiveMillionEightCellCapacityDichotomy
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 8)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    Nonempty (Σ pivots : Finset Nat,
      { pattern : FiveMillionEightPivotPattern N B pivots //
        pivots ⊆ fiveMillionStructuredResidual N B charged }) ∨
    (∃ Y : Finset cells,
      2 * (capacityTwoNeighbours
        (fun cell : cells =>
          fiveMillionCellModFortyNineEdge N B charged cell.1) Y).card <
        Y.card) := by
  classical
  by_cases hmatching : ∃ matching : cells ->
      FiveMillionModFortyNine × Fin 2,
      Function.Injective matching ∧
        ∀ cell, fiveMillionCellModFortyNineEdge N B charged cell.1
          (matching cell).1
  · left
    obtain ⟨matching, hinj, hedge⟩ := hmatching
    exact ⟨fiveMillionEightPivotPatternWithStructuredOfCapacityMatching
      parity cells hcellCard hclass matching hinj hedge⟩
  · right
    exact exists_capacityTwo_defect
      (fun cell : cells =>
        fiveMillionCellModFortyNineEdge N B charged cell.1) hmatching

#print axioms fiveMillionEightPivotPatternWithStructuredOfCapacityMatching
#print axioms fiveMillionEightCellCapacityDichotomy

end Erdos848
