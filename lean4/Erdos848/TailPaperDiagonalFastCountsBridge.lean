import Erdos848.TailPaperDiagonalFastCountsData

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem TruncatedDiagonalAtomCounts.fastSum_eq_sum_of_code
    (counts : TruncatedDiagonalAtomCounts)
    (selection : PaperDiagonalSelection)
    (hcode :
      counts.fastSum selection =
        ∑ code,
          if selection.AcceptsAtom
              (truncatedDiagonalAtomEquiv.symm code)
            then counts.count (truncatedDiagonalAtomEquiv.symm code)
            else 0) :
    counts.fastSum selection = counts.sum selection := by
  let f : TruncatedDiagonalAtom → Nat := fun atom =>
    if selection.AcceptsAtom atom then counts.count atom else 0
  calc
    counts.fastSum selection =
        ∑ code, f (truncatedDiagonalAtomEquiv.symm code) := hcode
    _ = ∑ atom, f atom := (truncatedDiagonalAtom_sum_equiv f).symm
    _ = counts.sum selection := by
      simpa [f] using (counts.sum_eq_ite_sum selection).symm

#print axioms TruncatedDiagonalAtomCounts.fastSum_eq_sum_of_code

end Erdos848
