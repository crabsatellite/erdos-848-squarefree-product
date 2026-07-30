import Erdos848.TailPaperDiagonalFastCountsDefs

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem TruncatedDiagonalAtomCounts.sum_eq_ite_sum
    (counts : TruncatedDiagonalAtomCounts)
    (selection : PaperDiagonalSelection) :
    counts.sum selection =
      ∑ atom, if selection.AcceptsAtom atom
        then counts.count atom else 0 := by
  unfold TruncatedDiagonalAtomCounts.sum PaperDiagonalSelection.atoms
  exact Finset.sum_filter selection.AcceptsAtom counts.count

#print axioms TruncatedDiagonalAtomCounts.sum_eq_ite_sum

end Erdos848
