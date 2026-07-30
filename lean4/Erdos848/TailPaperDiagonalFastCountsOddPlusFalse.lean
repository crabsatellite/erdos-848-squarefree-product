import Erdos848.TailPaperDiagonalFastCountsBridge

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem TruncatedDiagonalAtomCounts.fastSum_oddPlusFalse_eq_sum
    (counts : TruncatedDiagonalAtomCounts) (cell : Fin 9) :
    counts.fastSum (.oddPlusCell false cell) =
      counts.sum (.oddPlusCell false cell) := by
  apply counts.fastSum_eq_sum_of_code
  let g : TruncatedDiagonalAtomCode → Nat := fun code =>
    if (PaperDiagonalSelection.oddPlusCell false cell).AcceptsAtom
        (truncatedDiagonalAtomEquiv.symm code)
      then counts.count (truncatedDiagonalAtomEquiv.symm code) else 0
  change counts.fastSum (.oddPlusCell false cell) = ∑ code, g code
  rw [truncatedDiagonalAtomCode_sum_outer g,
    truncatedDiagonalAtomCode_sum_rest1 g,
    truncatedDiagonalAtomCode_sum_rest2 g,
    truncatedDiagonalAtomCode_sum_evenOne g,
    truncatedDiagonalAtomCode_sum_odd g,
    truncatedDiagonalAtomCode_sum_parity_ordered g]
  fin_cases cell <;>
    simp [g, fastSum, PaperDiagonalSelection.AcceptsAtom,
      oppositeOddParity, sum9, TruncatedDiagonalAtomCounts.count,
      truncatedDiagonalAtomEquiv] <;>
    omega

#print axioms TruncatedDiagonalAtomCounts.fastSum_oddPlusFalse_eq_sum

end Erdos848
