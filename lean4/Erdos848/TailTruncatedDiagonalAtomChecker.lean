import Erdos848.TailTruncatedDiagonalProjectionChecker

namespace Erdos848

/-!
# One-pass atomic partition of a truncated diagonal marker

Every natural number belongs to exactly one of the four valuation/residue
families needed by the R263 and upper-interval allocations.  A generated
certificate can therefore traverse the long source marker once, rather than
once per overlapping terminal branch.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive TruncatedDiagonalAtom where
  | divisibleByEightCell (cell : Fin 9)
  | evenTwoCell (cell : Fin 9)
  | evenOneFibre (cell : Fin 9) (residue : Fin 49)
  | oddCell (parity : Bool) (cell : Fin 9)
  deriving DecidableEq, Fintype

/-- Canonical disjoint atom containing `x`.  For odd values, `false` is the
class `1 mod 4` and `true` is the class `3 mod 4`. -/
def truncatedDiagonalAtomOf (x : Nat) : TruncatedDiagonalAtom :=
  if x % 2 = 1 then
    .oddCell (x % 4 = 3)
      ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩
  else if x % 4 = 2 then
    .evenOneFibre
      ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩
      ⟨x % 49, Nat.mod_lt _ (by norm_num)⟩
  else if x % 8 = 4 then
    .evenTwoCell ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩
  else
    .divisibleByEightCell ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩

def TruncatedDiagonalAtom.Accepts
    (atom : TruncatedDiagonalAtom) (x : Nat) : Prop :=
  truncatedDiagonalAtomOf x = atom

instance (atom : TruncatedDiagonalAtom) (x : Nat) :
    Decidable (atom.Accepts x) := by
  unfold TruncatedDiagonalAtom.Accepts
  infer_instance

namespace IndexedMarkerData

inductive TruncatedAtomProjectionTree where
  | leaf (atom : TruncatedDiagonalAtom) (targetIndex : Nat)
  | node (left right : TruncatedAtomProjectionTree)

namespace TruncatedAtomProjectionTree

def size : TruncatedAtomProjectionTree → Nat
  | .leaf _ _ => 1
  | .node left right => left.size + right.size

def check (tree : TruncatedAtomProjectionTree)
    (source : IndexedMarkerData)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (start : Nat) : Bool :=
  match tree with
  | .leaf atom targetIndex =>
      decide (start < source.values.size ∧
        targetIndex < (targets atom).values.size ∧
        atom.Accepts (source.values.get start) ∧
        (targets atom).values.get targetIndex = source.values.get start)
  | .node left right =>
      left.check source targets start &&
        right.check source targets (start + left.size)

def RangeProjected (source : IndexedMarkerData)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (start stop : Nat) : Prop :=
  ∀ index, start ≤ index → index < stop →
    ∀ atom, atom.Accepts (source.values.get index) →
      (targets atom).Contains (source.values.get index)

theorem range {tree : TruncatedAtomProjectionTree}
    {source : IndexedMarkerData}
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {start : Nat}
    (hcheck : tree.check source targets start = true) :
    RangeProjected source targets start (start + tree.size) := by
  induction tree generalizing start with
  | leaf storedAtom targetIndex =>
      intro index hstart hstop atom haccepts
      have hindex : index = start := by
        simp [size] at hstop
        omega
      subst index
      have hvalid :
          start < source.values.size ∧
            targetIndex < (targets storedAtom).values.size ∧
            storedAtom.Accepts (source.values.get start) ∧
            (targets storedAtom).values.get targetIndex =
              source.values.get start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      have hatom : storedAtom = atom := by
        exact hvalid.2.2.1.symm.trans haccepts
      have htarget :
          (targets storedAtom).Contains (source.values.get start) :=
        ⟨targetIndex, hvalid.2.1, hvalid.2.2.2⟩
      exact hatom ▸ htarget
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by
        simpa [check] using hcheck)
      intro index hstart hstop atom haccepts
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex atom haccepts
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop) atom haccepts

end TruncatedAtomProjectionTree

def ProjectsTruncatedAtoms (source : IndexedMarkerData)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData) : Prop :=
  ∀ index, index < source.values.size →
    ∀ atom, atom.Accepts (source.values.get index) →
      (targets atom).Contains (source.values.get index)

theorem projectsTruncatedAtoms_of_range
    {source : IndexedMarkerData}
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    (hrange : TruncatedAtomProjectionTree.RangeProjected
      source targets 0 source.values.size) :
    source.ProjectsTruncatedAtoms targets := by
  intro index hindex atom haccepts
  exact hrange index (Nat.zero_le index) hindex atom haccepts

theorem truncatedAtomProjectionRangeAppend
    {source : IndexedMarkerData}
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {start middle stop : Nat}
    (hleft : TruncatedAtomProjectionTree.RangeProjected
      source targets start middle)
    (hright : TruncatedAtomProjectionTree.RangeProjected
      source targets middle stop) :
    TruncatedAtomProjectionTree.RangeProjected
      source targets start stop := by
  intro index hstart hstop atom haccepts
  by_cases hindex : index < middle
  · exact hleft index hstart hindex atom haccepts
  · exact hright index (Nat.le_of_not_gt hindex) hstop atom haccepts

theorem ProjectsTruncatedAtoms.projectsPredicate
    {source : IndexedMarkerData}
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    (hprojects : source.ProjectsTruncatedAtoms targets)
    (atom : TruncatedDiagonalAtom) :
    source.ProjectsPredicate (targets atom) atom.Accepts := by
  intro x hx haccepts
  obtain ⟨index, hindex, hget⟩ := hx
  exact hget ▸ hprojects index hindex atom (hget ▸ haccepts)

#print axioms TruncatedAtomProjectionTree.range
#print axioms projectsTruncatedAtoms_of_range
#print axioms ProjectsTruncatedAtoms.projectsPredicate

end IndexedMarkerData

end Erdos848
