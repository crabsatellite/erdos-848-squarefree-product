import Erdos848.TailPaperDiagonalFastCountsDefs

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedDiagonalAtomCode_sum_odd
    (g : TruncatedDiagonalAtomCode → Nat) :
    (∑ pair : Bool × Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr pair)))) =
      ∑ parity : Bool, ∑ cell : Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr (parity, cell)))) :=
  Fintype.sum_prod_type _

#print axioms truncatedDiagonalAtomCode_sum_odd

end Erdos848
