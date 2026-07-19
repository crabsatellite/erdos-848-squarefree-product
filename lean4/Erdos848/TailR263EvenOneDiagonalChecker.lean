import Erdos848.TailR263DiagonalChecker
import Erdos848.TailDiagonalModFortyNineChecker

namespace Erdos848

/-!
# Exact E1 cell and mod-49-fibre diagonal projection

The base away from valuation one is already
`tailR263EvenTwoAllDiagonal`.  This checker projects only the missing
valuation-one part of the existing sound outside-base marker into its nine
mod-9 cells and then into the 49 fibres inside each cell.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace IndexedMarkerData

inductive TailR263EvenOneCellProjectionTree where
  | skip
  | leaf (cell : Fin 9) (targetIndex : Nat)
  | node (left right : TailR263EvenOneCellProjectionTree)

namespace TailR263EvenOneCellProjectionTree

def size : TailR263EvenOneCellProjectionTree -> Nat
  | .skip => 1
  | .leaf _ _ => 1
  | .node left right => left.size + right.size

def check (tree : TailR263EvenOneCellProjectionTree)
    (source : IndexedMarkerData) (targets : Fin 9 -> IndexedMarkerData)
    (start : Nat) : Bool :=
  match tree with
  | .skip =>
      decide (start < source.values.size ∧ source.values.get start % 4 ≠ 2)
  | .leaf cell targetIndex =>
      decide (start < source.values.size ∧
        targetIndex < (targets cell).values.size ∧
        source.values.get start % 4 = 2 ∧
        source.values.get start % 9 = cell ∧
        (targets cell).values.get targetIndex = source.values.get start)
  | .node left right =>
      left.check source targets start &&
        right.check source targets (start + left.size)

def RangeProjected (source : IndexedMarkerData)
    (targets : Fin 9 -> IndexedMarkerData) (start stop : Nat) : Prop :=
  ∀ index, start <= index -> index < stop ->
    ∀ cell : Fin 9,
      source.values.get index % 4 = 2 ->
      source.values.get index % 9 = cell ->
      (targets cell).Contains (source.values.get index)

theorem range {tree : TailR263EvenOneCellProjectionTree}
    {source : IndexedMarkerData} {targets : Fin 9 -> IndexedMarkerData}
    {start : Nat} (hcheck : tree.check source targets start = true) :
    RangeProjected source targets start (start + tree.size) := by
  induction tree generalizing start with
  | skip =>
      intro index hstart hstop cell hfour _hnine
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid :
          start < source.values.size ∧ source.values.get start % 4 ≠ 2 :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact False.elim (hvalid.2 hfour)
  | leaf storedCell targetIndex =>
      intro index hstart hstop cell hfour hnine
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid :
          start < source.values.size ∧
          targetIndex < (targets storedCell).values.size ∧
          source.values.get start % 4 = 2 ∧
          source.values.get start % 9 = storedCell ∧
          (targets storedCell).values.get targetIndex =
            source.values.get start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      have hcell : storedCell = cell := by
        apply Fin.ext
        exact hvalid.2.2.2.1.symm.trans hnine
      subst cell
      exact ⟨targetIndex, hvalid.2.1, hvalid.2.2.2.2⟩
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro index hstart hstop cell hfour hnine
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex cell hfour hnine
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop) cell hfour hnine

end TailR263EvenOneCellProjectionTree

def ProjectsTailR263EvenOneCells (source : IndexedMarkerData)
    (targets : Fin 9 -> IndexedMarkerData) : Prop :=
  ∀ index, index < source.values.size ->
    ∀ cell : Fin 9,
      source.values.get index % 4 = 2 ->
      source.values.get index % 9 = cell ->
      (targets cell).Contains (source.values.get index)

theorem projectsTailR263EvenOneCells_of_range
    {source : IndexedMarkerData} {targets : Fin 9 -> IndexedMarkerData}
    (hrange : TailR263EvenOneCellProjectionTree.RangeProjected
      source targets 0 source.values.size) :
    source.ProjectsTailR263EvenOneCells targets := by
  intro index hindex cell hfour hnine
  exact hrange index (Nat.zero_le index) hindex cell hfour hnine

theorem tailR263EvenOneCellProjectionRangeAppend
    {source : IndexedMarkerData} {targets : Fin 9 -> IndexedMarkerData}
    {start middle stop : Nat}
    (hleft : TailR263EvenOneCellProjectionTree.RangeProjected
      source targets start middle)
    (hright : TailR263EvenOneCellProjectionTree.RangeProjected
      source targets middle stop) :
    TailR263EvenOneCellProjectionTree.RangeProjected
      source targets start stop := by
  intro index hstart hstop cell hfour hnine
  by_cases hindex : index < middle
  · exact hleft index hstart hindex cell hfour hnine
  · exact hright index (Nat.le_of_not_gt hindex) hstop cell hfour hnine

theorem ProjectsTailR263EvenOneCells.contains
    {source : IndexedMarkerData} {targets : Fin 9 -> IndexedMarkerData}
    (hprojects : source.ProjectsTailR263EvenOneCells targets)
    {cell : Fin 9} {value : Nat}
    (hcontains : source.Contains value)
    (hfour : value % 4 = 2) (hnine : value % 9 = cell) :
    (targets cell).Contains value := by
  obtain ⟨index, hindex, hget⟩ := hcontains
  exact hget ▸ hprojects index hindex cell (hget ▸ hfour) (hget ▸ hnine)

end IndexedMarkerData

def tailR263EvenOneCellDiagonal (N : Nat) (cell : Fin 9) : Finset Nat :=
  (tailDiagonalBad N).filter fun x => x % 4 = 2 ∧ x % 9 = cell

def tailR263EvenOneCellFibreDiagonal
    (N : Nat) (cell : Fin 9) (residue : Fin 49) : Finset Nat :=
  (tailR263EvenOneCellDiagonal N cell).filter fun x =>
    x % 49 = residue

def tailR263EvenOneConcentratedDiagonal
    (N : Nat) (cell : Fin 9) : Finset Nat :=
  tailR263EvenTwoAllDiagonal N ∪ tailR263EvenOneCellDiagonal N cell

def tailR263EvenOneFibreCoverDiagonal
    (N : Nat) (cells : Finset (Fin 9)) (residues : Fin 9 -> Fin 49) :
    Finset Nat :=
  tailR263EvenTwoAllDiagonal N ∪
    cells.biUnion fun cell =>
      tailR263EvenOneCellFibreDiagonal N cell (residues cell)

theorem tailDiagonalBad_card_le_marker
    (certificate : LowRangeDiagonalCoverageCertificate)
    (hordered : certificate.marker.AdjacentOrdered)
    {upper count N : Nat}
    (hcutoff : certificate.marker.Cutoff upper count)
    (hUpperLimit : upper <= certificate.marker.limit)
    (hNUpper : N <= upper) :
    (tailDiagonalBad N).card <= count := by
  refine IndexedMarkerData.card_le_cutoff hordered hcutoff ?_ ?_
  · intro x hx
    exact certificate.contains_of_not_squarefree
      (bounds_of_mem_tailDiagonalBad hx).1
      ((bounds_of_mem_tailDiagonalBad hx).2.trans
        (hNUpper.trans hUpperLimit))
      (outside_of_mem_tailDiagonalBad hx)
      (not_squarefree_of_mem_tailDiagonalBad hx)
  · intro x hx
    exact (bounds_of_mem_tailDiagonalBad hx).2.trans hNUpper

theorem tailR263EvenOneCellDiagonal_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (cellTargets : Fin 9 -> IndexedMarkerData)
    (hprojects :
      certificate.marker.ProjectsTailR263EvenOneCells cellTargets)
    {cell : Fin 9} (hordered : (cellTargets cell).AdjacentOrdered)
    {upper count N : Nat}
    (hcutoff : (cellTargets cell).Cutoff upper count)
    (hUpperLimit : upper <= certificate.marker.limit)
    (hNUpper : N <= upper) :
    (tailR263EvenOneCellDiagonal N cell).card <= count := by
  refine IndexedMarkerData.card_le_cutoff hordered hcutoff ?_ ?_
  · intro x hx
    have hparts := Finset.mem_filter.mp hx
    exact hprojects.contains
      (certificate.contains_of_not_squarefree
        (bounds_of_mem_tailDiagonalBad hparts.1).1
        ((bounds_of_mem_tailDiagonalBad hparts.1).2.trans
          (hNUpper.trans hUpperLimit))
        (outside_of_mem_tailDiagonalBad hparts.1)
        (not_squarefree_of_mem_tailDiagonalBad hparts.1))
      hparts.2.1 hparts.2.2
  · intro x hx
    exact (bounds_of_mem_tailDiagonalBad
      (Finset.mem_filter.mp hx).1).2.trans hNUpper

theorem tailR263EvenOneCellFibreDiagonal_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (cellTargets : Fin 9 -> IndexedMarkerData)
    (hcellProjects :
      certificate.marker.ProjectsTailR263EvenOneCells cellTargets)
    (fibreTargets : Fin 9 -> Fin 49 -> IndexedMarkerData)
    (hfibreProjects : ∀ cell,
      (cellTargets cell).ProjectsModFortyNine (fibreTargets cell))
    {cell : Fin 9} {residue : Fin 49}
    (hordered : (fibreTargets cell residue).AdjacentOrdered)
    {upper count N : Nat}
    (hcutoff : (fibreTargets cell residue).Cutoff upper count)
    (hUpperLimit : upper <= certificate.marker.limit)
    (hNUpper : N <= upper) :
    (tailR263EvenOneCellFibreDiagonal N cell residue).card <= count := by
  refine IndexedMarkerData.card_le_cutoff hordered hcutoff ?_ ?_
  · intro x hx
    have hfibre := Finset.mem_filter.mp hx
    have hcell := Finset.mem_filter.mp hfibre.1
    exact (hfibreProjects cell).contains
      (hcellProjects.contains
        (certificate.contains_of_not_squarefree
          (bounds_of_mem_tailDiagonalBad hcell.1).1
          ((bounds_of_mem_tailDiagonalBad hcell.1).2.trans
            (hNUpper.trans hUpperLimit))
          (outside_of_mem_tailDiagonalBad hcell.1)
          (not_squarefree_of_mem_tailDiagonalBad hcell.1))
        hcell.2.1 hcell.2.2)
      hfibre.2
  · intro x hx
    exact (bounds_of_mem_tailDiagonalBad
      (Finset.mem_filter.mp (Finset.mem_filter.mp hx).1).1).2.trans hNUpper

theorem tailR263EvenOneConcentratedDiagonal_card_le
    {N baseCount cellCount : Nat} {cell : Fin 9}
    (hbase : (tailR263EvenTwoAllDiagonal N).card <= baseCount)
    (hcell : (tailR263EvenOneCellDiagonal N cell).card <= cellCount) :
    (tailR263EvenOneConcentratedDiagonal N cell).card <=
      baseCount + cellCount :=
  (Finset.card_union_le _ _).trans (Nat.add_le_add hbase hcell)

theorem tailR263EvenOneFibreCoverDiagonal_card_le
    {N baseCount : Nat} {cells : Finset (Fin 9)}
    {residues : Fin 9 -> Fin 49} {fibreCount : Fin 9 -> Nat}
    (hbase : (tailR263EvenTwoAllDiagonal N).card <= baseCount)
    (hfibre : ∀ cell ∈ cells,
      (tailR263EvenOneCellFibreDiagonal
        N cell (residues cell)).card <= fibreCount cell) :
    (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
      baseCount + ∑ cell ∈ cells, fibreCount cell := by
  calc
    (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
        (tailR263EvenTwoAllDiagonal N).card +
          (cells.biUnion fun cell =>
            tailR263EvenOneCellFibreDiagonal
              N cell (residues cell)).card :=
      Finset.card_union_le _ _
    _ <= (tailR263EvenTwoAllDiagonal N).card +
        ∑ cell ∈ cells,
          (tailR263EvenOneCellFibreDiagonal
            N cell (residues cell)).card := by
      gcongr
      exact Finset.card_biUnion_le
    _ <= baseCount + ∑ cell ∈ cells, fibreCount cell := by
      gcongr
      exact Finset.sum_le_sum fun cell hcell => hfibre cell hcell

def tailR263EvenOneUnrestrictedDiagonalEnvelope : Rat :=
  25292570996345879 / 10^18

def tailR263EvenOneConcentratedDiagonalEnvelope : Rat :=
  19679054509101707 / 10^18

def tailR263EvenOneFibreCoverDiagonalEnvelope : Rat :=
  19111561730128430 / 10^18

structure TailR263EvenOneDiagonalBounds (N : Nat) : Prop where
  unrestricted :
    ((tailDiagonalBad N).card : Rat) / N <=
      tailR263EvenOneUnrestrictedDiagonalEnvelope
  concentrated : ∀ cell,
    ((tailR263EvenOneConcentratedDiagonal N cell).card : Rat) / N <=
      tailR263EvenOneConcentratedDiagonalEnvelope
  fibreCover : ∀ cells residues,
    ((tailR263EvenOneFibreCoverDiagonal N cells residues).card : Rat) / N <=
      tailR263EvenOneFibreCoverDiagonalEnvelope

def TailR263EvenOneDiagonalRange (start stop : Nat) : Prop :=
  ∀ N, start <= N -> N < stop -> TailR263EvenOneDiagonalBounds N

theorem tailR263EvenOneDiagonalRangeAppend
    {start middle stop : Nat}
    (hleft : TailR263EvenOneDiagonalRange start middle)
    (hright : TailR263EvenOneDiagonalRange middle stop) :
    TailR263EvenOneDiagonalRange start stop := by
  intro N hstart hstop
  by_cases hN : N < middle
  · exact hleft N hstart hN
  · exact hright N (Nat.le_of_not_gt hN) hstop

#print axioms tailDiagonalBad_card_le_marker
#print axioms tailR263EvenOneCellDiagonal_card_le
#print axioms tailR263EvenOneCellFibreDiagonal_card_le
#print axioms tailR263EvenOneFibreCoverDiagonal_card_le

end Erdos848
