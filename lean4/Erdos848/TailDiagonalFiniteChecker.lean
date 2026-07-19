import Erdos848.OutsideDiagonalChecker

namespace Erdos848

/-!
## Exact finite checker for the eighteen odd `(mod 4, mod 9)` cells

The five-million tail argument needs the diagonal count supported on any
seven of the nine mod-nine cells in one odd mod-four class.  This module does
not import the exploratory Mobius/Pell producer.  Instead it projects the
already sound prime-square marker into eighteen sorted cell markers.  A
generated projection tree is checked by reduction, so the producer is not in
the trusted base.
-/

/-- One of the eighteen cells: `parity = false` means `1 mod 4`, while
`parity = true` means `3 mod 4`. -/
structure OddModNineCell where
  parity : Bool
  residue : Fin 9
  deriving DecidableEq

namespace OddModNineCell

def modFour (cell : OddModNineCell) : ℕ :=
  if cell.parity then 3 else 1

def Accepts (cell : OddModNineCell) (value : ℕ) : Prop :=
  value % 4 = cell.modFour ∧ value % 9 = cell.residue

instance acceptsDecidable (cell : OddModNineCell) (value : ℕ) :
    Decidable (cell.Accepts value) := by
  unfold Accepts
  infer_instance

lemma odd_of_accepts {cell : OddModNineCell} {value : ℕ}
    (h : cell.Accepts value) : value % 4 = 1 ∨ value % 4 = 3 := by
  rcases cell with ⟨parity, residue⟩
  cases parity <;> simp [Accepts, modFour] at h ⊢
  · exact Or.inl h.1
  · exact Or.inr h.1

lemma eq_of_accepts {left right : OddModNineCell} {value : ℕ}
    (hleft : left.Accepts value) (hright : right.Accepts value) :
    left = right := by
  rcases left with ⟨leftParity, leftResidue⟩
  rcases right with ⟨rightParity, rightResidue⟩
  cases leftParity <;> cases rightParity
  · simp only [Accepts, modFour, Bool.false_eq_true, ↓reduceIte,
      Bool.true_eq_false] at hleft hright
    congr
    apply Fin.ext
    exact hleft.2.symm.trans hright.2
  · simp only [Accepts, modFour, Bool.false_eq_true, ↓reduceIte,
      Bool.true_eq_false] at hleft hright
    omega
  · simp only [Accepts, modFour, Bool.false_eq_true, ↓reduceIte,
      Bool.true_eq_false] at hleft hright
    omega
  · simp only [Accepts, modFour, Bool.false_eq_true, ↓reduceIte,
      Bool.true_eq_false] at hleft hright
    congr
    apply Fin.ext
    exact hleft.2.symm.trans hright.2

end OddModNineCell

namespace IndexedMarkerData

/-- A single pass over the source marker.  Odd values point into exactly one
cell marker; even values are skipped. -/
inductive OddCellProjectionTree where
  | skip
  | leaf (cell : OddModNineCell) (targetIndex : ℕ)
  | node (left right : OddCellProjectionTree)

namespace OddCellProjectionTree

def size : OddCellProjectionTree → ℕ
  | .skip => 1
  | .leaf _ _ => 1
  | .node left right => left.size + right.size

def check (tree : OddCellProjectionTree) (source : IndexedMarkerData)
    (targets : OddModNineCell → IndexedMarkerData) (start : ℕ) : Bool :=
  match tree with
  | .skip =>
      decide (start < source.values.size ∧
        ¬ (source.values.get start % 4 = 1 ∨
          source.values.get start % 4 = 3))
  | .leaf cell targetIndex =>
      decide (start < source.values.size ∧
        targetIndex < (targets cell).values.size ∧
        cell.Accepts (source.values.get start) ∧
        (targets cell).values.get targetIndex = source.values.get start)
  | .node left right =>
      left.check source targets start &&
        right.check source targets (start + left.size)

def RangeProjected (source : IndexedMarkerData)
    (targets : OddModNineCell → IndexedMarkerData)
    (start stop : ℕ) : Prop :=
  ∀ index, start ≤ index → index < stop →
    ∀ cell, cell.Accepts (source.values.get index) →
      (targets cell).Contains (source.values.get index)

theorem range {tree : OddCellProjectionTree} {source : IndexedMarkerData}
    {targets : OddModNineCell → IndexedMarkerData} {start : ℕ}
    (hcheck : tree.check source targets start = true) :
    RangeProjected source targets start (start + tree.size) := by
  induction tree generalizing start with
  | skip =>
      intro index hstart hstop cell haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          ¬ (source.values.get start % 4 = 1 ∨
            source.values.get start % 4 = 3) :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact False.elim (hvalid.2 (OddModNineCell.odd_of_accepts haccepts))
  | leaf storedCell targetIndex =>
      intro index hstart hstop cell haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          targetIndex < (targets storedCell).values.size ∧
          storedCell.Accepts (source.values.get start) ∧
          (targets storedCell).values.get targetIndex =
            source.values.get start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      have hcell : storedCell = cell :=
        OddModNineCell.eq_of_accepts hvalid.2.2.1 haccepts
      subst cell
      exact ⟨targetIndex, hvalid.2.1, hvalid.2.2.2⟩
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro index hstart hstop cell haccepts
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex cell haccepts
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop) cell haccepts

end OddCellProjectionTree

def ProjectsOddCells (source : IndexedMarkerData)
    (targets : OddModNineCell → IndexedMarkerData) : Prop :=
  ∀ index, index < source.values.size →
    ∀ cell, cell.Accepts (source.values.get index) →
      (targets cell).Contains (source.values.get index)

theorem projectsOddCells_of_range {source : IndexedMarkerData}
    {targets : OddModNineCell → IndexedMarkerData}
    (hrange : OddCellProjectionTree.RangeProjected source targets 0
      source.values.size) :
    source.ProjectsOddCells targets := by
  intro index hindex cell haccepts
  exact hrange index (Nat.zero_le index) hindex cell haccepts

theorem oddCellProjectionRangeAppend {source : IndexedMarkerData}
    {targets : OddModNineCell → IndexedMarkerData}
    {start middle stop : ℕ}
    (hleft : OddCellProjectionTree.RangeProjected source targets start middle)
    (hright : OddCellProjectionTree.RangeProjected source targets middle stop) :
    OddCellProjectionTree.RangeProjected source targets start stop := by
  intro index hstart hstop cell haccepts
  by_cases hindex : index < middle
  · exact hleft index hstart hindex cell haccepts
  · exact hright index (Nat.le_of_not_gt hindex) hstop cell haccepts

theorem ProjectsOddCells.contains {source : IndexedMarkerData}
    {targets : OddModNineCell → IndexedMarkerData}
    (hprojects : source.ProjectsOddCells targets)
    {cell : OddModNineCell} {value : ℕ}
    (hcontains : source.Contains value) (haccepts : cell.Accepts value) :
    (targets cell).Contains value := by
  obtain ⟨index, hindex, hget⟩ := hcontains
  exact hget ▸ hprojects index hindex cell (hget ▸ haccepts)

end IndexedMarkerData

/-- Outside-base diagonal candidates in one odd `(mod 4, mod 9)` cell. -/
def tailDiagonalBad (N : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter fun x =>
    OutsideLowBase x ∧ ¬ Squarefree (x ^ 2 + 1)

def tailDiagonalCell (N : ℕ) (cell : OddModNineCell) : Finset ℕ :=
  (tailDiagonalBad N).filter cell.Accepts

lemma outside_of_mem_tailDiagonalBad {N x : ℕ}
    (hx : x ∈ tailDiagonalBad N) : OutsideLowBase x :=
  (Finset.mem_filter.mp hx).2.1

lemma bounds_of_mem_tailDiagonalBad {N x : ℕ}
    (hx : x ∈ tailDiagonalBad N) : 1 ≤ x ∧ x ≤ N :=
  Finset.mem_Icc.mp (Finset.mem_filter.mp hx).1

lemma not_squarefree_of_mem_tailDiagonalBad {N x : ℕ}
    (hx : x ∈ tailDiagonalBad N) : ¬ Squarefree (x ^ 2 + 1) :=
  (Finset.mem_filter.mp hx).2.2

lemma value_le_of_mem_tailDiagonalCell {N x : ℕ} {cell : OddModNineCell}
    (hx : x ∈ tailDiagonalCell N cell) : x ≤ N := by
  exact (bounds_of_mem_tailDiagonalBad (Finset.mem_filter.mp hx).1).2

theorem tailDiagonalCell_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (targets : OddModNineCell → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsOddCells targets)
    {cell : OddModNineCell}
    (hordered : (targets cell).AdjacentOrdered)
    {upper count N : ℕ}
    (hcutoff : (targets cell).Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNUpper : N ≤ upper) :
    (tailDiagonalCell N cell).card ≤ count := by
  refine IndexedMarkerData.card_le_cutoff hordered hcutoff ?_ ?_
  · intro x hx
    have hxFilter := Finset.mem_filter.mp hx
    exact hprojects.contains
      (certificate.contains_of_not_squarefree
        (bounds_of_mem_tailDiagonalBad hxFilter.1).1
        ((bounds_of_mem_tailDiagonalBad hxFilter.1).2.trans
          (hNUpper.trans hUpperLimit))
        (outside_of_mem_tailDiagonalBad hxFilter.1)
        (not_squarefree_of_mem_tailDiagonalBad hxFilter.1))
      hxFilter.2
  · intro x hx
    exact (value_le_of_mem_tailDiagonalCell hx).trans hNUpper

/-- The actual diagonal set supported on the selected mod-nine cells in one
odd mod-four class. -/
def tailDiagonalCellUnion (N : ℕ) (parity : Bool)
    (cells : Finset (Fin 9)) : Finset ℕ :=
  cells.biUnion fun residue =>
    tailDiagonalCell N { parity := parity, residue := residue }

theorem tailDiagonalCellUnion_card_le_sum
    (N : ℕ) (parity : Bool) (cells : Finset (Fin 9))
    (counts : Fin 9 → ℕ)
    (hcount : ∀ residue ∈ cells,
      (tailDiagonalCell N { parity := parity, residue := residue }).card ≤
        counts residue) :
    (tailDiagonalCellUnion N parity cells).card ≤
      ∑ residue ∈ cells, counts residue := by
  calc
    (tailDiagonalCellUnion N parity cells).card ≤
        ∑ residue ∈ cells,
          (tailDiagonalCell N
            { parity := parity, residue := residue }).card := by
      exact Finset.card_biUnion_le
    _ ≤ ∑ residue ∈ cells, counts residue := by
      exact Finset.sum_le_sum fun residue hresidue => hcount residue hresidue

/-- Exhaustive checker for all `2^9 = 512` cell subsets. -/
def sevenCellBoundPasses (counts : Fin 9 → ℕ) (bound : ℕ) : Bool :=
  decide (∀ cells : Finset (Fin 9), cells.card ≤ 7 →
    ∑ residue ∈ cells, counts residue ≤ bound)

theorem sevenCellBoundPasses_sound {counts : Fin 9 → ℕ} {bound : ℕ}
    (hpasses : sevenCellBoundPasses counts bound = true)
    (cells : Finset (Fin 9)) (hcard : cells.card ≤ 7) :
    ∑ residue ∈ cells, counts residue ≤ bound := by
  exact (of_decide_eq_true hpasses) cells hcard

/-! The matching rows use the same exact nine-cell data with cardinality
eight or nine.  Keeping the maximum cell count explicit avoids duplicating
the finite marker and cutoff proof. -/

def cellBoundPasses (counts : Fin 9 → ℕ) (maxCells bound : ℕ) : Bool :=
  decide (∀ cells : Finset (Fin 9), cells.card ≤ maxCells →
    ∑ residue ∈ cells, counts residue ≤ bound)

theorem cellBoundPasses_sound
    {counts : Fin 9 → ℕ} {maxCells bound : ℕ}
    (hpasses : cellBoundPasses counts maxCells bound = true)
    (cells : Finset (Fin 9)) (hcard : cells.card ≤ maxCells) :
    ∑ residue ∈ cells, counts residue ≤ bound := by
  exact (of_decide_eq_true hpasses) cells hcard

/-- Kernel endpoint for one finite block.  Generated data need only provide
the eighteen sorted markers, their exact cutoffs at `upper`, and the tiny
subset-sum check above. -/
theorem tailDiagonalSevenCells_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (targets : OddModNineCell → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsOddCells targets)
    (parity : Bool) (counts : Fin 9 → ℕ)
    {upper N bound : ℕ}
    (hordered : ∀ residue : Fin 9,
      (targets { parity := parity, residue := residue }).AdjacentOrdered)
    (hcutoff : ∀ residue : Fin 9,
      (targets { parity := parity, residue := residue }).Cutoff
        upper (counts residue))
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNUpper : N ≤ upper)
    (hpasses : sevenCellBoundPasses counts bound = true)
    (cells : Finset (Fin 9)) (hcard : cells.card ≤ 7) :
    (tailDiagonalCellUnion N parity cells).card ≤ bound := by
  refine (tailDiagonalCellUnion_card_le_sum N parity cells counts ?_).trans ?_
  · intro residue hresidue
    exact tailDiagonalCell_card_le certificate targets hprojects
      (hordered residue) (hcutoff residue) hUpperLimit hNUpper
  · exact sevenCellBoundPasses_sound hpasses cells hcard

theorem natCardRatio_le_block {S : Finset ℕ} {lower N count : ℕ}
    (hLowerPositive : 0 < lower) (hNLower : lower ≤ N)
    (hcard : S.card ≤ count) :
    (S.card : ℚ) / N ≤ (count : ℚ) / lower := by
  have hNPositive : (0 : ℚ) < N := by
    exact_mod_cast (lt_of_lt_of_le hLowerPositive hNLower)
  have hLowerQ : (0 : ℚ) < lower := by exact_mod_cast hLowerPositive
  rw [div_le_div_iff₀ hNPositive hLowerQ]
  exact_mod_cast Nat.mul_le_mul hcard hNLower

theorem tailDiagonalCells_ratio_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (targets : OddModNineCell → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsOddCells targets)
    (parity : Bool) (counts : Fin 9 → ℕ)
    {maxCells lower upper N bound : ℕ}
    (hordered : ∀ residue : Fin 9,
      (targets { parity := parity, residue := residue }).AdjacentOrdered)
    (hcutoff : ∀ residue : Fin 9,
      (targets { parity := parity, residue := residue }).Cutoff
        upper (counts residue))
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hLowerPositive : 0 < lower) (hNLower : lower ≤ N)
    (hNUpper : N ≤ upper)
    (hpasses : cellBoundPasses counts maxCells bound = true)
    (cells : Finset (Fin 9)) (hcard : cells.card ≤ maxCells) :
    ((tailDiagonalCellUnion N parity cells).card : ℚ) / N ≤
      (bound : ℚ) / lower := by
  apply natCardRatio_le_block hLowerPositive hNLower
  refine (tailDiagonalCellUnion_card_le_sum N parity cells counts ?_).trans ?_
  · intro residue hresidue
    exact tailDiagonalCell_card_le certificate targets hprojects
      (hordered residue) (hcutoff residue) hUpperLimit hNUpper
  · exact cellBoundPasses_sound hpasses cells hcard

def TailDiagonalCellRatioRange
    (maxCells start stop : ℕ) (envelope : ℚ) : Prop :=
  ∀ N, start ≤ N → N < stop → ∀ parity cells,
    cells.card ≤ maxCells →
    ((tailDiagonalCellUnion N parity cells).card : ℚ) / N ≤ envelope

theorem tailDiagonalCellRatioRangeAppend
    {maxCells start middle stop : ℕ} {envelope : ℚ}
    (hleft : TailDiagonalCellRatioRange maxCells start middle envelope)
    (hright : TailDiagonalCellRatioRange maxCells middle stop envelope) :
    TailDiagonalCellRatioRange maxCells start stop envelope := by
  intro N hstart hstop parity cells hcard
  by_cases hN : N < middle
  · exact hleft N hstart hN parity cells hcard
  · exact hright N (Nat.le_of_not_gt hN) hstop parity cells hcard

theorem tailDiagonalSevenCells_ratio_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (targets : OddModNineCell → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsOddCells targets)
    (parity : Bool) (counts : Fin 9 → ℕ)
    {lower upper N bound : ℕ}
    (hordered : ∀ residue : Fin 9,
      (targets { parity := parity, residue := residue }).AdjacentOrdered)
    (hcutoff : ∀ residue : Fin 9,
      (targets { parity := parity, residue := residue }).Cutoff
        upper (counts residue))
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hLowerPositive : 0 < lower) (hNLower : lower ≤ N)
    (hNUpper : N ≤ upper)
    (hpasses : sevenCellBoundPasses counts bound = true)
    (cells : Finset (Fin 9)) (hcard : cells.card ≤ 7) :
    ((tailDiagonalCellUnion N parity cells).card : ℚ) / N ≤
      (bound : ℚ) / lower := by
  apply natCardRatio_le_block hLowerPositive hNLower
  exact tailDiagonalSevenCells_card_le certificate targets hprojects parity
    counts hordered hcutoff hUpperLimit hNUpper hpasses cells hcard

def TailDiagonalSevenCellRatioRange
    (start stop : ℕ) (envelope : ℚ) : Prop :=
  ∀ N, start ≤ N → N < stop → ∀ parity cells,
    cells.card ≤ 7 →
    ((tailDiagonalCellUnion N parity cells).card : ℚ) / N ≤ envelope

theorem tailDiagonalSevenCellRatioRangeAppend
    {start middle stop : ℕ} {envelope : ℚ}
    (hleft : TailDiagonalSevenCellRatioRange start middle envelope)
    (hright : TailDiagonalSevenCellRatioRange middle stop envelope) :
    TailDiagonalSevenCellRatioRange start stop envelope := by
  intro N hstart hstop parity cells hcard
  by_cases hN : N < middle
  · exact hleft N hstart hN parity cells hcard
  · exact hright N (Nat.le_of_not_gt hN) hstop parity cells hcard

end Erdos848
