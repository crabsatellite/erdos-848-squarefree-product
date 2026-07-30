import Erdos848.TailPaperDiagonalFastCountsDefs

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedDiagonalAtomCode_sum_parity
    (g : TruncatedDiagonalAtomCode → Nat) :
    (∑ parity : Bool, ∑ cell : Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr (parity, cell))))) =
      (∑ cell : Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr (true, cell))))) +
      ∑ cell : Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr (false, cell)))) :=
  Fintype.sum_bool _

#print axioms truncatedDiagonalAtomCode_sum_parity

end Erdos848
