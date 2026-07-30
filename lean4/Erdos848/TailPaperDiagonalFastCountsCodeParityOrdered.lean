import Erdos848.TailPaperDiagonalFastCountsCodeParity

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedDiagonalAtomCode_sum_parity_ordered
    (g : TruncatedDiagonalAtomCode → Nat) :
    (∑ parity : Bool, ∑ cell : Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr (parity, cell))))) =
      (∑ cell : Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr (false, cell))))) +
      ∑ cell : Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr (true, cell)))) := by
  rw [truncatedDiagonalAtomCode_sum_parity]
  omega

#print axioms truncatedDiagonalAtomCode_sum_parity_ordered

end Erdos848
