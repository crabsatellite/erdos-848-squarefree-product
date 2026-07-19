import Erdos848.TailDiagonalModFortyNineChecker

namespace Erdos848

/-!
## Small scalar checkers for the eight- and nine-cell Hall failures

For nine occupied cells the state is determined by the restricted set.  For
eight occupied cells it is determined by one missing cell and the restricted
set.  Enumerating only these real states is materially smaller than the
generic three-state checker while proving exactly the same cut.
-/

namespace IndexedMarkerData

/-- Compactly checks the forty-nine cutoff claims for one mod-nine cell. -/
inductive FortyNineCutoffTree where
  | leaf
  | node (left right : FortyNineCutoffTree)

namespace FortyNineCutoffTree

def size : FortyNineCutoffTree → Nat
  | .leaf => 1
  | .node left right => left.size + right.size

def residueAt (index : Nat) : Fin 49 :=
  ⟨index % 49, Nat.mod_lt index (by decide)⟩

def check (tree : FortyNineCutoffTree)
    (targets : Fin 49 → IndexedMarkerData) (counts : Fin 49 → Nat)
    (upper start : Nat) : Bool :=
  match tree with
  | .leaf =>
      decide (start < 49 ∧
        (targets (residueAt start)).Cutoff upper (counts (residueAt start)))
  | .node left right =>
      left.check targets counts upper start &&
        right.check targets counts upper (start + left.size)

def RangeCutoff (targets : Fin 49 → IndexedMarkerData)
    (counts : Fin 49 → Nat) (upper start stop : Nat) : Prop :=
  ∀ index, start ≤ index → index < stop →
    (targets (residueAt index)).Cutoff upper (counts (residueAt index))

theorem range {tree : FortyNineCutoffTree}
    {targets : Fin 49 → IndexedMarkerData} {counts : Fin 49 → Nat}
    {upper start : Nat} (hcheck : tree.check targets counts upper start = true) :
    RangeCutoff targets counts upper start (start + tree.size) := by
  induction tree generalizing start with
  | leaf =>
      intro index hstart hstop
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < 49 ∧
          (targets (residueAt start)).Cutoff upper
            (counts (residueAt start)) :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact hvalid.2
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro index hstart hstop
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop)

theorem cutoff_of_range {targets : Fin 49 → IndexedMarkerData}
    {counts : Fin 49 → Nat} {upper : Nat}
    (hrange : RangeCutoff targets counts upper 0 49)
    (residue : Fin 49) :
    (targets residue).Cutoff upper (counts residue) := by
  have hraw := hrange residue.val (Nat.zero_le residue.val) residue.isLt
  simpa [residueAt, Nat.mod_eq_of_lt residue.isLt] using hraw

end FortyNineCutoffTree

end IndexedMarkerData

def eightCellCapacityFailureBoundPasses
    (full fibre : Fin 9 → Nat) (bound : Nat) : Bool :=
  decide (∀ missing : Fin 9, ∀ restricted : Finset (Fin 9),
    ∀ residueCount : Fin 5,
    missing ∉ restricted → 0 < residueCount.val →
    1 + 2 * residueCount.val ≤ restricted.card →
    (∑ cell ∈ (Finset.univ.erase missing) \ restricted, full cell) +
      residueCount.val * (∑ cell ∈ restricted, fibre cell) ≤ bound)

def nineCellCapacityFailureBoundPasses
    (full fibre : Fin 9 → Nat) (bound : Nat) : Bool :=
  decide (∀ restricted : Finset (Fin 9), ∀ residueCount : Fin 5,
    0 < residueCount.val →
    2 + 2 * residueCount.val ≤ restricted.card →
    (∑ cell ∈ (Finset.univ : Finset (Fin 9)) \ restricted, full cell) +
      residueCount.val * (∑ cell ∈ restricted, fibre cell) ≤ bound)

theorem eightCellCapacityFailureBoundPasses_sound
    {full fibre : Fin 9 → Nat} {bound : Nat}
    (hpasses : eightCellCapacityFailureBoundPasses full fibre bound = true)
    (cells restricted : Finset (Fin 9)) (residueCount : Nat)
    (hsubset : restricted ⊆ cells) (hresiduePositive : 0 < residueCount)
    (hresidueSmall : residueCount < 5) (hcells : cells.card = 8)
    (hdefect : 1 + 2 * residueCount ≤ restricted.card) :
    (∑ cell ∈ cells \ restricted, full cell) +
      residueCount * (∑ cell ∈ restricted, fibre cell) ≤ bound := by
  have hdiffCard :
      ((Finset.univ : Finset (Fin 9)) \ cells).card = 1 := by
    simp [Finset.card_sdiff, Finset.card_univ, Fintype.card_fin, hcells]
  have hdiffNonempty :
      ((Finset.univ : Finset (Fin 9)) \ cells).Nonempty := by
    exact Finset.card_pos.mp (by omega)
  obtain ⟨missing, hmissing⟩ := hdiffNonempty
  have hmissingCells : missing ∉ cells := (Finset.mem_sdiff.mp hmissing).2
  have hcellsSubset : cells ⊆ (Finset.univ : Finset (Fin 9)).erase missing := by
    intro cell hcell
    exact Finset.mem_erase.mpr
      ⟨fun heq => hmissingCells (heq ▸ hcell), Finset.mem_univ cell⟩
  have hcellsErase :
      cells = (Finset.univ : Finset (Fin 9)).erase missing := by
    apply Finset.eq_of_subset_of_card_le hcellsSubset
    rw [Finset.card_erase_of_mem (Finset.mem_univ missing),
      Finset.card_univ, Fintype.card_fin, hcells]
  have hmissingRestricted : missing ∉ restricted := by
    intro hmissingRestricted
    exact hmissingCells (hsubset hmissingRestricted)
  have hraw := of_decide_eq_true hpasses missing restricted
    (⟨residueCount, hresidueSmall⟩ : Fin 5)
    hmissingRestricted hresiduePositive hdefect
  simpa [hcellsErase] using hraw

theorem nineCellCapacityFailureBoundPasses_sound
    {full fibre : Fin 9 → Nat} {bound : Nat}
    (hpasses : nineCellCapacityFailureBoundPasses full fibre bound = true)
    (cells restricted : Finset (Fin 9)) (residueCount : Nat)
    (hresiduePositive : 0 < residueCount)
    (hresidueSmall : residueCount < 5) (hcells : cells.card = 9)
    (hdefect : 2 + 2 * residueCount ≤ restricted.card) :
    (∑ cell ∈ cells \ restricted, full cell) +
      residueCount * (∑ cell ∈ restricted, fibre cell) ≤ bound := by
  have hcellsUniv : cells = (Finset.univ : Finset (Fin 9)) := by
    apply Finset.eq_of_subset_of_card_le (Finset.subset_univ cells)
    simpa [Finset.card_univ, Fintype.card_fin, hcells]
  have hraw := of_decide_eq_true hpasses restricted
    (⟨residueCount, hresidueSmall⟩ : Fin 5)
    hresiduePositive hdefect
  simpa [hcellsUniv] using hraw

theorem tailDiagonalCapacityFailure_ratio_le_of_scalar
    (certificate : LowRangeDiagonalCoverageCertificate)
    (cellTargets : OddModNineCell → IndexedMarkerData)
    (hcellProjects : certificate.marker.ProjectsOddCells cellTargets)
    (fibreTargets : OddModNineCell → Fin 49 → IndexedMarkerData)
    (hfibreProjects : ∀ cell,
      (cellTargets cell).ProjectsModFortyNine (fibreTargets cell))
    (parity : Bool) (fullCounts fibreCounts : Fin 9 → Nat)
    (fibreCutoffCounts : Fin 9 → Fin 49 → Nat)
    {lower upper N bound : Nat}
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
    (cells restricted : Finset (Fin 9)) (residues : Finset (Fin 49))
    (hscalar : (∑ cell ∈ cells \ restricted, fullCounts cell) +
      residues.card * (∑ cell ∈ restricted, fibreCounts cell) ≤ bound) :
    ((tailDiagonalCapacityFailureCover N parity cells restricted residues).card :
        Rat) / N ≤ (bound : Rat) / lower := by
  apply natCardRatio_le_block hLowerPositive hNLower
  refine (tailDiagonalCapacityFailureCover_card_le N parity cells restricted
    residues fullCounts fibreCounts ?_ ?_).trans hscalar
  · intro cell hcell
    exact tailDiagonalCell_card_le certificate cellTargets hcellProjects
      (hcellOrdered cell) (hcellCutoff cell) hUpperLimit hNUpper
  · intro cell hcell residue hresidue
    exact (tailDiagonalCellFortyNine_card_le certificate cellTargets
      hcellProjects fibreTargets hfibreProjects
      (hfibreOrdered cell residue) (hfibreCutoff cell residue)
      hUpperLimit hNUpper).trans (hfibreBound cell residue)

#print axioms eightCellCapacityFailureBoundPasses_sound
#print axioms nineCellCapacityFailureBoundPasses_sound
#print axioms tailDiagonalCapacityFailure_ratio_le_of_scalar

end Erdos848
