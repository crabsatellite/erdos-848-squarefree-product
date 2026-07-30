import Erdos848.TailDiagonalCapacityFailureScalar

namespace Erdos848.IndexedMarkerData.FortyNineCutoffTree

/-! Shared shapes for kernel-checked batches of cutoff boundaries. -/

def complete : Nat → FortyNineCutoffTree
  | 0 => .leaf
  | depth + 1 => .node (complete depth) (complete depth)

@[simp] theorem size_complete (depth : Nat) :
    (complete depth).size = 2 ^ depth := by
  induction depth with
  | zero => rfl
  | succ depth ih =>
      simp [complete, size, ih, pow_succ, Nat.mul_two]

/-- A balanced tree with exactly one leaf for every residue modulo 49. -/
def full : FortyNineCutoffTree :=
  .node (complete 5) (.node (complete 4) .leaf)

@[simp] theorem size_full : full.size = 49 := by
  simp [full, size]

theorem cutoff_of_full_check
    {targets : Fin 49 → IndexedMarkerData}
    {counts : Fin 49 → Nat} {upper : Nat}
    (hcheck : full.check targets counts upper 0 = true)
    (residue : Fin 49) :
    (targets residue).Cutoff upper (counts residue) := by
  apply cutoff_of_range
  simpa using range hcheck

#print axioms size_complete
#print axioms size_full
#print axioms cutoff_of_full_check

end Erdos848.IndexedMarkerData.FortyNineCutoffTree
