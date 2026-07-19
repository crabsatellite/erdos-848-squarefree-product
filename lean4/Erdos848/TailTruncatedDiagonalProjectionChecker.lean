import Erdos848.TailTruncatedDiagonalChecker

namespace Erdos848

/-!
# Generic projections of truncated diagonal markers

An untrusted producer may partition one checked long marker into arbitrary
branch markers.  The tree below checks, entry by entry, both that every
selected source value occurs at the claimed target index and that skipped
source values do not satisfy the selector.  This lets every terminal branch
reuse `truncatedPrimeSquareFiltered_card_le` without a bespoke trusted
projection theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace IndexedMarkerData

inductive PredicateProjectionTree where
  | skip
  | leaf (targetIndex : Nat)
  | node (left right : PredicateProjectionTree)

namespace PredicateProjectionTree

def size : PredicateProjectionTree → Nat
  | .skip => 1
  | .leaf _ => 1
  | .node left right => left.size + right.size

def check (tree : PredicateProjectionTree)
    (source target : IndexedMarkerData) (select : Nat → Prop)
    [DecidablePred select] (start : Nat) : Bool :=
  match tree with
  | .skip =>
      decide (start < source.values.size ∧
        ¬ select (source.values.get start))
  | .leaf targetIndex =>
      decide (start < source.values.size ∧
        targetIndex < target.values.size ∧
        select (source.values.get start) ∧
        target.values.get targetIndex = source.values.get start)
  | .node left right =>
      left.check source target select start &&
        right.check source target select (start + left.size)

def RangeProjected (source target : IndexedMarkerData)
    (select : Nat → Prop) (start stop : Nat) : Prop :=
  ∀ index, start ≤ index → index < stop →
    select (source.values.get index) →
      target.Contains (source.values.get index)

theorem range {tree : PredicateProjectionTree}
    {source target : IndexedMarkerData} {select : Nat → Prop}
    [DecidablePred select] {start : Nat}
    (hcheck : tree.check source target select start = true) :
    RangeProjected source target select start (start + tree.size) := by
  induction tree generalizing start with
  | skip =>
      intro index hstart hstop hselect
      have hindex : index = start := by
        simp [size] at hstop
        omega
      subst index
      have hvalid :
          start < source.values.size ∧
            ¬ select (source.values.get start) :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact False.elim (hvalid.2 hselect)
  | leaf targetIndex =>
      intro index hstart hstop _hselect
      have hindex : index = start := by
        simp [size] at hstop
        omega
      subst index
      have hvalid :
          start < source.values.size ∧
            targetIndex < target.values.size ∧
            select (source.values.get start) ∧
            target.values.get targetIndex = source.values.get start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact ⟨targetIndex, hvalid.2.1, hvalid.2.2.2⟩
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by
        simpa [check] using hcheck)
      intro index hstart hstop hselect
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex hselect
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop) hselect

end PredicateProjectionTree

theorem predicateProjectionRangeAppend
    {source target : IndexedMarkerData} {select : Nat → Prop}
    {start middle stop : Nat}
    (hleft : PredicateProjectionTree.RangeProjected
      source target select start middle)
    (hright : PredicateProjectionTree.RangeProjected
      source target select middle stop) :
    PredicateProjectionTree.RangeProjected
      source target select start stop := by
  intro index hstart hstop hselect
  by_cases hindex : index < middle
  · exact hleft index hstart hindex hselect
  · exact hright index (Nat.le_of_not_gt hindex) hstop hselect

theorem projectsPredicate_of_range
    {source target : IndexedMarkerData} {select : Nat → Prop}
    (hrange : PredicateProjectionTree.RangeProjected
      source target select 0 source.values.size) :
    source.ProjectsPredicate target select := by
  intro x hx hselect
  obtain ⟨index, hindex, hget⟩ := hx
  exact hget ▸ hrange index (Nat.zero_le index) hindex (hget ▸ hselect)

#print axioms PredicateProjectionTree.range
#print axioms projectsPredicate_of_range

end IndexedMarkerData

end Erdos848
