import Erdos848.TailDiagonalFiniteChecker

namespace Erdos848

/-!
## Exact mod-49 refinement of the odd mod-nine cell marker

The capacity-two Hall failure leaves a nonempty common set of mod-49
neighbours.  This module contains the small trusted checker which projects
each already certified odd cell marker into its forty-nine residue fibres.
Generated data supplies only sorted target markers, projection trees, exact
cutoffs, and finite three-state checks.
-/

namespace IndexedMarkerData

/-- A single pass over one odd mod-nine cell marker. -/
inductive ModFortyNineProjectionTree where
  | leaf (residue : Fin 49) (targetIndex : Nat)
  | node (left right : ModFortyNineProjectionTree)

namespace ModFortyNineProjectionTree

def size : ModFortyNineProjectionTree → Nat
  | .leaf _ _ => 1
  | .node left right => left.size + right.size

def check (tree : ModFortyNineProjectionTree)
    (source : IndexedMarkerData) (targets : Fin 49 → IndexedMarkerData)
    (start : Nat) : Bool :=
  match tree with
  | .leaf residue targetIndex =>
      decide (start < source.values.size ∧
        targetIndex < (targets residue).values.size ∧
        source.values.get start % 49 = residue ∧
        (targets residue).values.get targetIndex = source.values.get start)
  | .node left right =>
      left.check source targets start &&
        right.check source targets (start + left.size)

def RangeProjected (source : IndexedMarkerData)
    (targets : Fin 49 → IndexedMarkerData) (start stop : Nat) : Prop :=
  ∀ index, start ≤ index → index < stop →
    ∀ residue : Fin 49, source.values.get index % 49 = residue →
      (targets residue).Contains (source.values.get index)

theorem range {tree : ModFortyNineProjectionTree}
    {source : IndexedMarkerData} {targets : Fin 49 → IndexedMarkerData}
    {start : Nat} (hcheck : tree.check source targets start = true) :
    RangeProjected source targets start (start + tree.size) := by
  induction tree generalizing start with
  | leaf storedResidue targetIndex =>
      intro index hstart hstop residue haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          targetIndex < (targets storedResidue).values.size ∧
          source.values.get start % 49 = storedResidue ∧
          (targets storedResidue).values.get targetIndex =
            source.values.get start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      have hresidue : storedResidue = residue := by
        apply Fin.ext
        exact hvalid.2.2.1.symm.trans haccepts
      subst residue
      exact ⟨targetIndex, hvalid.2.1, hvalid.2.2.2⟩
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro index hstart hstop residue haccepts
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex residue haccepts
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop) residue haccepts

end ModFortyNineProjectionTree

def ProjectsModFortyNine (source : IndexedMarkerData)
    (targets : Fin 49 → IndexedMarkerData) : Prop :=
  ∀ index, index < source.values.size →
    ∀ residue : Fin 49, source.values.get index % 49 = residue →
      (targets residue).Contains (source.values.get index)

theorem projectsModFortyNine_of_range {source : IndexedMarkerData}
    {targets : Fin 49 → IndexedMarkerData}
    (hrange : ModFortyNineProjectionTree.RangeProjected source targets 0
      source.values.size) :
    source.ProjectsModFortyNine targets := by
  intro index hindex residue haccepts
  exact hrange index (Nat.zero_le index) hindex residue haccepts

theorem modFortyNineProjectionRangeAppend {source : IndexedMarkerData}
    {targets : Fin 49 → IndexedMarkerData} {start middle stop : Nat}
    (hleft : ModFortyNineProjectionTree.RangeProjected source targets
      start middle)
    (hright : ModFortyNineProjectionTree.RangeProjected source targets
      middle stop) :
    ModFortyNineProjectionTree.RangeProjected source targets start stop := by
  intro index hstart hstop residue haccepts
  by_cases hindex : index < middle
  · exact hleft index hstart hindex residue haccepts
  · exact hright index (Nat.le_of_not_gt hindex) hstop residue haccepts

theorem ProjectsModFortyNine.contains {source : IndexedMarkerData}
    {targets : Fin 49 → IndexedMarkerData}
    (hprojects : source.ProjectsModFortyNine targets)
    {residue : Fin 49} {value : Nat}
    (hcontains : source.Contains value) (haccepts : value % 49 = residue) :
    (targets residue).Contains value := by
  obtain ⟨index, hindex, hget⟩ := hcontains
  exact hget ▸ hprojects index hindex residue (hget ▸ haccepts)

end IndexedMarkerData

/-- The actual diagonal set in one `(mod 4, mod 9, mod 49)` fibre. -/
def tailDiagonalCellFortyNine (N : Nat) (cell : OddModNineCell)
    (residue : Fin 49) : Finset Nat :=
  (tailDiagonalCell N cell).filter fun x => x % 49 = residue

theorem tailDiagonalCellFortyNine_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (cellTargets : OddModNineCell → IndexedMarkerData)
    (hcellProjects : certificate.marker.ProjectsOddCells cellTargets)
    (fibreTargets : OddModNineCell → Fin 49 → IndexedMarkerData)
    (hfibreProjects : ∀ cell,
      (cellTargets cell).ProjectsModFortyNine (fibreTargets cell))
    {cell : OddModNineCell} {residue : Fin 49}
    (hordered : (fibreTargets cell residue).AdjacentOrdered)
    {upper count N : Nat}
    (hcutoff : (fibreTargets cell residue).Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNUpper : N ≤ upper) :
    (tailDiagonalCellFortyNine N cell residue).card ≤ count := by
  refine IndexedMarkerData.card_le_cutoff hordered hcutoff ?_ ?_
  · intro x hx
    have hxFibre := Finset.mem_filter.mp hx
    have hxCell := Finset.mem_filter.mp hxFibre.1
    exact (hfibreProjects cell).contains
      (hcellProjects.contains
        (certificate.contains_of_not_squarefree
          (bounds_of_mem_tailDiagonalBad hxCell.1).1
          ((bounds_of_mem_tailDiagonalBad hxCell.1).2.trans
            (hNUpper.trans hUpperLimit))
          (outside_of_mem_tailDiagonalBad hxCell.1)
          (not_squarefree_of_mem_tailDiagonalBad hxCell.1))
        hxCell.2)
      hxFibre.2
  · intro x hx
    exact (value_le_of_mem_tailDiagonalCell
      (Finset.mem_filter.mp hx).1).trans hNUpper

/-- Full cells remain unrestricted; witness cells are restricted to the
common Hall-neighbour residues modulo 49. -/
def tailDiagonalCapacityFailureCover (N : Nat) (parity : Bool)
    (cells restricted : Finset (Fin 9)) (residues : Finset (Fin 49)) :
    Finset Nat :=
  ((cells \ restricted).biUnion fun cell =>
      tailDiagonalCell N { parity := parity, residue := cell }) ∪
    (restricted.biUnion fun cell =>
      residues.biUnion fun residue =>
        tailDiagonalCellFortyNine N
          { parity := parity, residue := cell } residue)

theorem card_biUnion_le_mul {α β : Type*} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (f : α → Finset β) (bound : Nat)
    (hbound : ∀ x ∈ s, (f x).card ≤ bound) :
    (s.biUnion f).card ≤ s.card * bound := by
  calc
    (s.biUnion f).card ≤ ∑ x ∈ s, (f x).card := Finset.card_biUnion_le
    _ ≤ ∑ _x ∈ s, bound :=
      Finset.sum_le_sum fun x hx => hbound x hx
    _ = s.card * bound := by simp

theorem tailDiagonalCapacityFailureCover_card_le
    (N : Nat) (parity : Bool) (cells restricted : Finset (Fin 9))
    (residues : Finset (Fin 49)) (full fibre : Fin 9 → Nat)
    (hfull : ∀ cell ∈ cells \ restricted,
      (tailDiagonalCell N { parity := parity, residue := cell }).card ≤
        full cell)
    (hfibre : ∀ cell ∈ restricted, ∀ residue ∈ residues,
      (tailDiagonalCellFortyNine N
        { parity := parity, residue := cell } residue).card ≤ fibre cell) :
    (tailDiagonalCapacityFailureCover N parity cells restricted residues).card ≤
      (∑ cell ∈ cells \ restricted, full cell) +
        residues.card * (∑ cell ∈ restricted, fibre cell) := by
  let unrestrictedSet := (cells \ restricted).biUnion fun cell =>
    tailDiagonalCell N { parity := parity, residue := cell }
  let restrictedSet := restricted.biUnion fun cell =>
    residues.biUnion fun residue =>
      tailDiagonalCellFortyNine N
        { parity := parity, residue := cell } residue
  have hUnrestricted : unrestrictedSet.card ≤
      ∑ cell ∈ cells \ restricted, full cell := by
    calc
      unrestrictedSet.card ≤ ∑ cell ∈ cells \ restricted,
          (tailDiagonalCell N
            { parity := parity, residue := cell }).card :=
        Finset.card_biUnion_le
      _ ≤ ∑ cell ∈ cells \ restricted, full cell :=
        Finset.sum_le_sum fun cell hcell => hfull cell hcell
  have hRestrictedCell : ∀ cell ∈ restricted,
      (residues.biUnion fun residue =>
        tailDiagonalCellFortyNine N
          { parity := parity, residue := cell } residue).card ≤
        residues.card * fibre cell := by
    intro cell hcell
    exact card_biUnion_le_mul residues
      (fun residue => tailDiagonalCellFortyNine N
        { parity := parity, residue := cell } residue)
      (fibre cell) (fun residue hresidue =>
        hfibre cell hcell residue hresidue)
  have hRestricted : restrictedSet.card ≤
      residues.card * (∑ cell ∈ restricted, fibre cell) := by
    calc
      restrictedSet.card ≤ ∑ cell ∈ restricted,
          (residues.biUnion fun residue =>
            tailDiagonalCellFortyNine N
              { parity := parity, residue := cell } residue).card :=
        Finset.card_biUnion_le
      _ ≤ ∑ cell ∈ restricted, residues.card * fibre cell :=
        Finset.sum_le_sum fun cell hcell => hRestrictedCell cell hcell
      _ = residues.card * (∑ cell ∈ restricted, fibre cell) := by
        simp [Finset.mul_sum]
  calc
    (tailDiagonalCapacityFailureCover N parity cells restricted residues).card ≤
        unrestrictedSet.card + restrictedSet.card := by
      exact Finset.card_union_le _ _
    _ ≤ (∑ cell ∈ cells \ restricted, full cell) +
        residues.card * (∑ cell ∈ restricted, fibre cell) :=
      Nat.add_le_add hUnrestricted hRestricted

/-! A three-state cell checker: `0` is absent, `1` is unrestricted, and `2`
is Hall-restricted.  It retains the correlation between the two cell sums,
which is essential at the final decimal place of the cut. -/

def capacityCellState (cells restricted : Finset (Fin 9))
    (cell : Fin 9) : Fin 3 :=
  if cell ∈ restricted then 2 else if cell ∈ cells then 1 else 0

def stateFullCells (state : Fin 9 → Fin 3) : Finset (Fin 9) :=
  Finset.univ.filter fun cell => state cell = 1

def stateRestrictedCells (state : Fin 9 → Fin 3) : Finset (Fin 9) :=
  Finset.univ.filter fun cell => state cell = 2

def stateOccupiedCells (state : Fin 9 → Fin 3) : Finset (Fin 9) :=
  Finset.univ.filter fun cell => state cell ≠ 0

lemma stateFullCells_capacityCellState (cells restricted : Finset (Fin 9)) :
    stateFullCells (capacityCellState cells restricted) = cells \ restricted := by
  ext cell
  simp only [stateFullCells, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_sdiff]
  by_cases hr : cell ∈ restricted <;> by_cases hc : cell ∈ cells <;>
    simp [capacityCellState, hr, hc] at *

lemma stateRestrictedCells_capacityCellState
    (cells restricted : Finset (Fin 9)) :
    stateRestrictedCells (capacityCellState cells restricted) = restricted := by
  ext cell
  simp only [stateRestrictedCells, Finset.mem_filter, Finset.mem_univ, true_and]
  by_cases hr : cell ∈ restricted <;> by_cases hc : cell ∈ cells <;>
    simp [capacityCellState, hr, hc]

lemma stateOccupiedCells_capacityCellState {cells restricted : Finset (Fin 9)}
    (hsubset : restricted ⊆ cells) :
    stateOccupiedCells (capacityCellState cells restricted) = cells := by
  ext cell
  simp only [stateOccupiedCells, Finset.mem_filter, Finset.mem_univ, true_and]
  by_cases hr : cell ∈ restricted
  · have hc : cell ∈ cells := hsubset hr
    simp [capacityCellState, hr, hc]
  · by_cases hc : cell ∈ cells <;> simp [capacityCellState, hr, hc]

def capacityFailureCellBoundPasses
    (full fibre : Fin 9 → Nat) (cellCount need bound : Nat) : Bool :=
  decide (∀ state : Fin 9 → Fin 3, ∀ residueCount : Fin 5,
    0 < residueCount.val →
    (stateOccupiedCells state).card = cellCount →
    need + 2 * residueCount.val ≤ (stateRestrictedCells state).card →
    (∑ cell ∈ stateFullCells state, full cell) +
      residueCount.val * (∑ cell ∈ stateRestrictedCells state, fibre cell) ≤
        bound)

theorem capacityFailureCellBoundPasses_sound
    {full fibre : Fin 9 → Nat} {cellCount need bound : Nat}
    (hpasses : capacityFailureCellBoundPasses
      full fibre cellCount need bound = true)
    (cells restricted : Finset (Fin 9)) (residueCount : Nat)
    (hsubset : restricted ⊆ cells) (hresiduePositive : 0 < residueCount)
    (hresidueSmall : residueCount < 5) (hcells : cells.card = cellCount)
    (hdefect : need + 2 * residueCount ≤ restricted.card) :
    (∑ cell ∈ cells \ restricted, full cell) +
      residueCount * (∑ cell ∈ restricted, fibre cell) ≤ bound := by
  have hraw := of_decide_eq_true hpasses
    (capacityCellState cells restricted)
    (⟨residueCount, hresidueSmall⟩ : Fin 5)
    hresiduePositive
  rw [stateOccupiedCells_capacityCellState hsubset] at hraw
  specialize hraw hcells
  rw [stateRestrictedCells_capacityCellState cells restricted] at hraw
  specialize hraw hdefect
  simpa [stateFullCells_capacityCellState cells restricted,
    stateRestrictedCells_capacityCellState cells restricted] using hraw

theorem tailDiagonalCapacityFailure_ratio_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (cellTargets : OddModNineCell → IndexedMarkerData)
    (hcellProjects : certificate.marker.ProjectsOddCells cellTargets)
    (fibreTargets : OddModNineCell → Fin 49 → IndexedMarkerData)
    (hfibreProjects : ∀ cell,
      (cellTargets cell).ProjectsModFortyNine (fibreTargets cell))
    (parity : Bool) (fullCounts fibreCounts : Fin 9 → Nat)
    (fibreCutoffCounts : Fin 9 → Fin 49 → Nat)
    {cellCount need lower upper N bound : Nat}
    (hcellOrdered : ∀ cell : Fin 9,
      (cellTargets { parity := parity, residue := cell }).AdjacentOrdered)
    (hcellCutoff : ∀ cell : Fin 9,
      (cellTargets { parity := parity, residue := cell }).Cutoff
        upper (fullCounts cell))
    (hfibreOrdered : ∀ cell : Fin 9, ∀ residue : Fin 49,
      (fibreTargets { parity := parity, residue := cell } residue).AdjacentOrdered)
    (hfibreCutoff : ∀ cell : Fin 9, ∀ residue : Fin 49,
      (fibreTargets { parity := parity, residue := cell } residue).Cutoff
        upper (fibreCutoffCounts cell residue))
    (hfibreBound : ∀ cell : Fin 9, ∀ residue : Fin 49,
      fibreCutoffCounts cell residue ≤ fibreCounts cell)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hLowerPositive : 0 < lower) (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (hpasses : capacityFailureCellBoundPasses
      fullCounts fibreCounts cellCount need bound = true)
    (cells restricted : Finset (Fin 9)) (residues : Finset (Fin 49))
    (hsubset : restricted ⊆ cells) (hresiduePositive : 0 < residues.card)
    (hresidueSmall : residues.card < 5) (hcells : cells.card = cellCount)
    (hdefect : need + 2 * residues.card ≤ restricted.card) :
    ((tailDiagonalCapacityFailureCover N parity cells restricted residues).card :
        Rat) / N ≤ (bound : Rat) / lower := by
  apply natCardRatio_le_block hLowerPositive hNLower
  refine (tailDiagonalCapacityFailureCover_card_le N parity cells restricted
    residues fullCounts fibreCounts ?_ ?_).trans ?_
  · intro cell hcell
    exact tailDiagonalCell_card_le certificate cellTargets hcellProjects
      (hcellOrdered cell) (hcellCutoff cell) hUpperLimit hNUpper
  · intro cell hcell residue hresidue
    exact (tailDiagonalCellFortyNine_card_le certificate cellTargets
      hcellProjects fibreTargets hfibreProjects
      (hfibreOrdered cell residue) (hfibreCutoff cell residue)
      hUpperLimit hNUpper).trans (hfibreBound cell residue)
  · exact capacityFailureCellBoundPasses_sound hpasses cells restricted
      residues.card hsubset hresiduePositive hresidueSmall hcells hdefect

def TailDiagonalCapacityFailureRatioRange
    (cellCount need start stop : Nat) (envelope : Rat) : Prop :=
  ∀ N, start ≤ N → N < stop → ∀ parity cells restricted residues,
    restricted ⊆ cells → 0 < residues.card → residues.card < 5 →
    cells.card = cellCount →
    need + 2 * residues.card ≤ restricted.card →
    ((tailDiagonalCapacityFailureCover N parity cells restricted residues).card :
      Rat) / N ≤ envelope

theorem tailDiagonalCapacityFailureRatioRangeAppend
    {cellCount need start middle stop : Nat} {envelope : Rat}
    (hleft : TailDiagonalCapacityFailureRatioRange
      cellCount need start middle envelope)
    (hright : TailDiagonalCapacityFailureRatioRange
      cellCount need middle stop envelope) :
    TailDiagonalCapacityFailureRatioRange
      cellCount need start stop envelope := by
  intro N hstart hstop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  by_cases hN : N < middle
  · exact hleft N hstart hN parity cells restricted residues hsubset
      hpositive hsmall hcells hdefect
  · exact hright N (Nat.le_of_not_gt hN) hstop parity cells restricted
      residues hsubset hpositive hsmall hcells hdefect

end Erdos848
