import Erdos848.TailDiagonalFiniteChecker

namespace Erdos848

/-!
# Exact modular diagonal checker for the remaining R263 even branches

The existing outside-base marker already contains every diagonal candidate
below ten million.  This file only projects that sound marker into the ten
pieces used by the R263 cut: the low-two-adic core and the nine
`v₂ = 2` mod-nine cells.  Generated data is therefore a finite projection
certificate, not a second root enumeration.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive TailR263DiagonalTarget where
  | lowTwo
  | evenTwoCell (residue : Fin 9)
  deriving DecidableEq

namespace TailR263DiagonalTarget

def Accepts : TailR263DiagonalTarget → ℕ → Prop
  | .lowTwo, x => x % 8 = 0 ∨ x % 8 = 1 ∨ x % 8 = 3 ∨
      x % 8 = 5 ∨ x % 8 = 7
  | .evenTwoCell residue, x => x % 8 = 4 ∧ x % 9 = residue

instance acceptsDecidable (target : TailR263DiagonalTarget) (x : ℕ) :
    Decidable (target.Accepts x) := by
  cases target <;> simp [Accepts] <;> infer_instance

lemma eq_of_accepts {left right : TailR263DiagonalTarget} {x : ℕ}
    (hleft : left.Accepts x) (hright : right.Accepts x) : left = right := by
  cases left with
  | lowTwo =>
      cases right with
      | lowTwo => rfl
      | evenTwoCell residue =>
          simp only [Accepts] at hleft hright
          rcases hleft with h0 | h1 | h3 | h5 | h7 <;> omega
  | evenTwoCell leftResidue =>
      cases right with
      | lowTwo =>
          simp only [Accepts] at hleft hright
          rcases hright with h0 | h1 | h3 | h5 | h7 <;> omega
      | evenTwoCell rightResidue =>
          simp only [Accepts] at hleft hright
          congr
          apply Fin.ext
          exact hleft.2.symm.trans hright.2

end TailR263DiagonalTarget

namespace IndexedMarkerData

inductive TailR263ProjectionTree where
  | skip
  | leaf (target : TailR263DiagonalTarget) (targetIndex : ℕ)
  | node (left right : TailR263ProjectionTree)

namespace TailR263ProjectionTree

def size : TailR263ProjectionTree → ℕ
  | .skip => 1
  | .leaf _ _ => 1
  | .node left right => left.size + right.size

def check (tree : TailR263ProjectionTree) (source : IndexedMarkerData)
    (targets : TailR263DiagonalTarget → IndexedMarkerData)
    (start : ℕ) : Bool :=
  match tree with
  | .skip =>
      decide (start < source.values.size ∧
        (source.values.get start % 8 = 2 ∨
          source.values.get start % 8 = 6))
  | .leaf target targetIndex =>
      decide (start < source.values.size ∧
        targetIndex < (targets target).values.size ∧
        target.Accepts (source.values.get start) ∧
        (targets target).values.get targetIndex = source.values.get start)
  | .node left right =>
      left.check source targets start &&
        right.check source targets (start + left.size)

def RangeProjected (source : IndexedMarkerData)
    (targets : TailR263DiagonalTarget → IndexedMarkerData)
    (start stop : ℕ) : Prop :=
  ∀ index, start ≤ index → index < stop →
    ∀ target : TailR263DiagonalTarget,
      target.Accepts (source.values.get index) →
      (targets target).Contains (source.values.get index)

theorem range {tree : TailR263ProjectionTree} {source : IndexedMarkerData}
    {targets : TailR263DiagonalTarget → IndexedMarkerData} {start : ℕ}
    (hcheck : tree.check source targets start = true) :
    RangeProjected source targets start (start + tree.size) := by
  induction tree generalizing start with
  | skip =>
      intro index hstart hstop target haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          (source.values.get start % 8 = 2 ∨
            source.values.get start % 8 = 6) :=
        of_decide_eq_true (by simpa [check] using hcheck)
      cases target with
      | lowTwo =>
          simp only [TailR263DiagonalTarget.Accepts] at haccepts
          rcases haccepts with h0 | h1 | h3 | h5 | h7 <;>
            rcases hvalid.2 with h2 | h6 <;> omega
      | evenTwoCell residue =>
          simp only [TailR263DiagonalTarget.Accepts] at haccepts
          rcases hvalid.2 with h2 | h6 <;> omega
  | leaf storedTarget targetIndex =>
      intro index hstart hstop target haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          targetIndex < (targets storedTarget).values.size ∧
          storedTarget.Accepts (source.values.get start) ∧
          (targets storedTarget).values.get targetIndex =
            source.values.get start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      have htarget : storedTarget = target :=
        TailR263DiagonalTarget.eq_of_accepts hvalid.2.2.1 haccepts
      subst target
      exact ⟨targetIndex, hvalid.2.1, hvalid.2.2.2⟩
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro index hstart hstop target haccepts
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex target haccepts
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop) target haccepts

end TailR263ProjectionTree

def ProjectsTailR263Targets (source : IndexedMarkerData)
    (targets : TailR263DiagonalTarget → IndexedMarkerData) : Prop :=
  ∀ index, index < source.values.size →
    ∀ target, target.Accepts (source.values.get index) →
      (targets target).Contains (source.values.get index)

theorem projectsTailR263Targets_of_range {source : IndexedMarkerData}
    {targets : TailR263DiagonalTarget → IndexedMarkerData}
    (hrange : TailR263ProjectionTree.RangeProjected source targets 0
      source.values.size) :
    source.ProjectsTailR263Targets targets := by
  intro index hindex target haccepts
  exact hrange index (Nat.zero_le index) hindex target haccepts

theorem tailR263ProjectionRangeAppend {source : IndexedMarkerData}
    {targets : TailR263DiagonalTarget → IndexedMarkerData}
    {start middle stop : ℕ}
    (hleft : TailR263ProjectionTree.RangeProjected source targets start middle)
    (hright : TailR263ProjectionTree.RangeProjected source targets middle stop) :
    TailR263ProjectionTree.RangeProjected source targets start stop := by
  intro index hstart hstop target haccepts
  by_cases hindex : index < middle
  · exact hleft index hstart hindex target haccepts
  · exact hright index (Nat.le_of_not_gt hindex) hstop target haccepts

theorem ProjectsTailR263Targets.contains {source : IndexedMarkerData}
    {targets : TailR263DiagonalTarget → IndexedMarkerData}
    (hprojects : source.ProjectsTailR263Targets targets)
    {target : TailR263DiagonalTarget} {value : ℕ}
    (hcontains : source.Contains value) (haccepts : target.Accepts value) :
    (targets target).Contains value := by
  obtain ⟨index, hindex, hget⟩ := hcontains
  exact hget ▸ hprojects index hindex target (hget ▸ haccepts)

end IndexedMarkerData

def tailR263DiagonalTargetSet
    (N : ℕ) (target : TailR263DiagonalTarget) : Finset ℕ :=
  (tailDiagonalBad N).filter target.Accepts

def tailR263LowTwoDiagonal (N : ℕ) : Finset ℕ :=
  tailR263DiagonalTargetSet N .lowTwo

def tailR263EvenTwoCellOnlyDiagonal (N : ℕ) (residue : Fin 9) : Finset ℕ :=
  tailR263DiagonalTargetSet N (.evenTwoCell residue)

def tailR263EvenTwoCellDiagonal (N : ℕ) (residue : Fin 9) : Finset ℕ :=
  tailR263LowTwoDiagonal N ∪ tailR263EvenTwoCellOnlyDiagonal N residue

def tailR263EvenTwoAllDiagonal (N : ℕ) : Finset ℕ :=
  tailR263LowTwoDiagonal N ∪
    Finset.univ.biUnion (tailR263EvenTwoCellOnlyDiagonal N)

lemma tailR263DiagonalTargetSet_value_le_direct
    {N x : ℕ} {target : TailR263DiagonalTarget}
    (hx : x ∈ tailR263DiagonalTargetSet N target) : x ≤ N := by
  exact (bounds_of_mem_tailDiagonalBad (Finset.mem_filter.mp hx).1).2

theorem tailR263DiagonalTargetSet_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (targets : TailR263DiagonalTarget → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsTailR263Targets targets)
    {target : TailR263DiagonalTarget}
    (hordered : (targets target).AdjacentOrdered)
    {upper count N : ℕ}
    (hcutoff : (targets target).Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNUpper : N ≤ upper) :
    (tailR263DiagonalTargetSet N target).card ≤ count := by
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
    exact (tailR263DiagonalTargetSet_value_le_direct hx).trans hNUpper

theorem tailR263LowTwoDiagonal_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (targets : TailR263DiagonalTarget → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsTailR263Targets targets)
    (hordered : ∀ target, (targets target).AdjacentOrdered)
    (counts : TailR263DiagonalTarget → ℕ)
    {upper N : ℕ}
    (hcutoff : ∀ target, (targets target).Cutoff upper (counts target))
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNUpper : N ≤ upper) :
    (tailR263LowTwoDiagonal N).card ≤ counts .lowTwo := by
  exact tailR263DiagonalTargetSet_card_le certificate targets hprojects
    (hordered .lowTwo) (hcutoff .lowTwo) hUpperLimit hNUpper

theorem tailR263EvenTwoCellDiagonal_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (targets : TailR263DiagonalTarget → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsTailR263Targets targets)
    (hordered : ∀ target, (targets target).AdjacentOrdered)
    (counts : TailR263DiagonalTarget → ℕ)
    {upper N : ℕ}
    (hcutoff : ∀ target, (targets target).Cutoff upper (counts target))
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNUpper : N ≤ upper) (residue : Fin 9) :
    (tailR263EvenTwoCellDiagonal N residue).card ≤
      counts .lowTwo + counts (.evenTwoCell residue) := by
  calc
    (tailR263EvenTwoCellDiagonal N residue).card ≤
        (tailR263LowTwoDiagonal N).card +
          (tailR263EvenTwoCellOnlyDiagonal N residue).card := by
      exact Finset.card_union_le _ _
    _ ≤ counts .lowTwo + counts (.evenTwoCell residue) := by
      gcongr
      · exact tailR263LowTwoDiagonal_card_le certificate targets hprojects
          hordered counts hcutoff hUpperLimit hNUpper
      · exact tailR263DiagonalTargetSet_card_le certificate targets hprojects
          (hordered (.evenTwoCell residue))
          (hcutoff (.evenTwoCell residue)) hUpperLimit hNUpper

theorem tailR263EvenTwoAllDiagonal_card_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (targets : TailR263DiagonalTarget → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsTailR263Targets targets)
    (hordered : ∀ target, (targets target).AdjacentOrdered)
    (counts : TailR263DiagonalTarget → ℕ)
    {upper N : ℕ}
    (hcutoff : ∀ target, (targets target).Cutoff upper (counts target))
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNUpper : N ≤ upper) :
    (tailR263EvenTwoAllDiagonal N).card ≤
      counts .lowTwo + ∑ residue : Fin 9, counts (.evenTwoCell residue) := by
  calc
    (tailR263EvenTwoAllDiagonal N).card ≤
        (tailR263LowTwoDiagonal N).card +
          (Finset.univ.biUnion
            (tailR263EvenTwoCellOnlyDiagonal N)).card := by
      exact Finset.card_union_le _ _
    _ ≤ (tailR263LowTwoDiagonal N).card +
        ∑ residue : Fin 9,
          (tailR263EvenTwoCellOnlyDiagonal N residue).card := by
      gcongr
      simpa using Finset.card_biUnion_le
        (s := (Finset.univ : Finset (Fin 9)))
        (t := tailR263EvenTwoCellOnlyDiagonal N)
    _ ≤ counts .lowTwo + ∑ residue : Fin 9,
        counts (.evenTwoCell residue) := by
      apply Nat.add_le_add
      · exact tailR263LowTwoDiagonal_card_le certificate targets hprojects
          hordered counts hcutoff hUpperLimit hNUpper
      · apply Finset.sum_le_sum
        intro residue _
        exact
          tailR263DiagonalTargetSet_card_le certificate targets hprojects
            (hordered (.evenTwoCell residue))
            (hcutoff (.evenTwoCell residue)) hUpperLimit hNUpper

def tailR263LowTwoDiagonalEnvelope : ℚ :=
  15808492435876035 / 10^18

def tailR263EvenTwoCellDiagonalEnvelope : ℚ :=
  16162004887495201 / 10^18

def tailR263EvenTwoAllDiagonalEnvelope : ℚ :=
  18971129793932698 / 10^18

structure TailR263DiagonalBounds (N : ℕ) : Prop where
  lowTwo : ((tailR263LowTwoDiagonal N).card : ℚ) / N ≤
    tailR263LowTwoDiagonalEnvelope
  evenTwoCell : ∀ residue,
    ((tailR263EvenTwoCellDiagonal N residue).card : ℚ) / N ≤
      tailR263EvenTwoCellDiagonalEnvelope
  evenTwoAll : ((tailR263EvenTwoAllDiagonal N).card : ℚ) / N ≤
    tailR263EvenTwoAllDiagonalEnvelope

def TailR263DiagonalRange (start stop : ℕ) : Prop :=
  ∀ N, start ≤ N → N < stop → TailR263DiagonalBounds N

theorem tailR263DiagonalRangeAppend
    {start middle stop : ℕ}
    (hleft : TailR263DiagonalRange start middle)
    (hright : TailR263DiagonalRange middle stop) :
    TailR263DiagonalRange start stop := by
  intro N hstart hstop
  by_cases hN : N < middle
  · exact hleft N hstart hN
  · exact hright N (Nat.le_of_not_gt hN) hstop

#print axioms tailR263DiagonalTargetSet_card_le
#print axioms tailR263EvenTwoCellDiagonal_card_le
#print axioms tailR263EvenTwoAllDiagonal_card_le

end Erdos848
