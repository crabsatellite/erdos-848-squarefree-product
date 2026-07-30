import Erdos848.TailPaperDiagonalFastCountsData

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem TruncatedDiagonalAtomCounts.fastSum_unrestricted_eq_sum
    (counts : TruncatedDiagonalAtomCounts) :
    counts.fastSum .unrestricted = counts.sum .unrestricted := by
  let f : TruncatedDiagonalAtom → Nat := fun atom =>
    if PaperDiagonalSelection.unrestricted.AcceptsAtom atom
      then counts.count atom else 0
  rw [counts.sum_eq_ite_sum .unrestricted]
  change counts.fastSum .unrestricted = ∑ atom, f atom
  rw [truncatedDiagonalAtom_sum_equiv f]
  let g : TruncatedDiagonalAtomCode → Nat := fun code =>
    f (truncatedDiagonalAtomEquiv.symm code)
  change counts.fastSum .unrestricted = ∑ code, g code
  rw [truncatedDiagonalAtomCode_sum_outer g,
    truncatedDiagonalAtomCode_sum_rest1 g,
    truncatedDiagonalAtomCode_sum_rest2 g,
    truncatedDiagonalAtomCode_sum_evenOne g,
    truncatedDiagonalAtomCode_sum_odd g,
    truncatedDiagonalAtomCode_sum_parity_ordered g]
  simp [g, f, fastSum, PaperDiagonalSelection.AcceptsAtom, sum9, sum49,
    evenOneTotal, TruncatedDiagonalAtomCounts.count,
    truncatedDiagonalAtomEquiv]
  omega

theorem TruncatedDiagonalAtomCounts.fastSum_lowTwoAdic_eq_sum
    (counts : TruncatedDiagonalAtomCounts) :
    counts.fastSum .lowTwoAdic = counts.sum .lowTwoAdic := by
  let f : TruncatedDiagonalAtom → Nat := fun atom =>
    if PaperDiagonalSelection.lowTwoAdic.AcceptsAtom atom
      then counts.count atom else 0
  rw [counts.sum_eq_ite_sum .lowTwoAdic]
  change counts.fastSum .lowTwoAdic = ∑ atom, f atom
  rw [truncatedDiagonalAtom_sum_equiv f]
  let g : TruncatedDiagonalAtomCode → Nat := fun code =>
    f (truncatedDiagonalAtomEquiv.symm code)
  change counts.fastSum .lowTwoAdic = ∑ code, g code
  rw [truncatedDiagonalAtomCode_sum_outer g,
    truncatedDiagonalAtomCode_sum_rest1 g,
    truncatedDiagonalAtomCode_sum_rest2 g,
    truncatedDiagonalAtomCode_sum_evenOne g,
    truncatedDiagonalAtomCode_sum_odd g,
    truncatedDiagonalAtomCode_sum_parity_ordered g]
  simp [g, f, fastSum, PaperDiagonalSelection.AcceptsAtom, sum9,
    TruncatedDiagonalAtomCounts.count, truncatedDiagonalAtomEquiv]
  omega

theorem TruncatedDiagonalAtomCounts.fastSum_oddUnion_eq_sum
    (counts : TruncatedDiagonalAtomCounts) :
    counts.fastSum .oddUnion = counts.sum .oddUnion := by
  let f : TruncatedDiagonalAtom → Nat := fun atom =>
    if PaperDiagonalSelection.oddUnion.AcceptsAtom atom
      then counts.count atom else 0
  rw [counts.sum_eq_ite_sum .oddUnion]
  change counts.fastSum .oddUnion = ∑ atom, f atom
  rw [truncatedDiagonalAtom_sum_equiv f]
  let g : TruncatedDiagonalAtomCode → Nat := fun code =>
    f (truncatedDiagonalAtomEquiv.symm code)
  change counts.fastSum .oddUnion = ∑ code, g code
  rw [truncatedDiagonalAtomCode_sum_outer g,
    truncatedDiagonalAtomCode_sum_rest1 g,
    truncatedDiagonalAtomCode_sum_rest2 g,
    truncatedDiagonalAtomCode_sum_evenOne g,
    truncatedDiagonalAtomCode_sum_odd g,
    truncatedDiagonalAtomCode_sum_parity_ordered g]
  simp [g, f, fastSum, PaperDiagonalSelection.AcceptsAtom, sum9,
    TruncatedDiagonalAtomCounts.count, truncatedDiagonalAtomEquiv]

theorem TruncatedDiagonalAtomCounts.fastSum_oneOdd_eq_sum
    (counts : TruncatedDiagonalAtomCounts) (parity : Bool) :
    counts.fastSum (.oneOdd parity) =
      counts.sum (.oneOdd parity) := by
  let f : TruncatedDiagonalAtom → Nat := fun atom =>
    if (PaperDiagonalSelection.oneOdd parity).AcceptsAtom atom
      then counts.count atom else 0
  rw [counts.sum_eq_ite_sum]
  change counts.fastSum (.oneOdd parity) = ∑ atom, f atom
  rw [truncatedDiagonalAtom_sum_equiv f]
  let g : TruncatedDiagonalAtomCode → Nat := fun code =>
    f (truncatedDiagonalAtomEquiv.symm code)
  change counts.fastSum (.oneOdd parity) = ∑ code, g code
  rw [truncatedDiagonalAtomCode_sum_outer g,
    truncatedDiagonalAtomCode_sum_rest1 g,
    truncatedDiagonalAtomCode_sum_rest2 g,
    truncatedDiagonalAtomCode_sum_evenOne g,
    truncatedDiagonalAtomCode_sum_odd g,
    truncatedDiagonalAtomCode_sum_parity_ordered g]
  cases parity <;>
    simp [g, f, fastSum, PaperDiagonalSelection.AcceptsAtom, sum9,
      TruncatedDiagonalAtomCounts.count, truncatedDiagonalAtomEquiv]

#print axioms TruncatedDiagonalAtomCounts.fastSum_unrestricted_eq_sum
#print axioms TruncatedDiagonalAtomCounts.fastSum_lowTwoAdic_eq_sum
#print axioms TruncatedDiagonalAtomCounts.fastSum_oddUnion_eq_sum
#print axioms TruncatedDiagonalAtomCounts.fastSum_oneOdd_eq_sum

end Erdos848
