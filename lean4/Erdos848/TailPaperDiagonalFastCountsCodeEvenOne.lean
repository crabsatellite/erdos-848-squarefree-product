import Erdos848.TailPaperDiagonalFastCountsDefs

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedDiagonalAtomCode_sum_evenOne
    (g : TruncatedDiagonalAtomCode → Nat) :
    (∑ pair : Fin 9 × Fin 49,
        g (Sum.inr (Sum.inr (Sum.inl pair)))) =
      ∑ cell : Fin 9, ∑ residue : Fin 49,
        g (Sum.inr (Sum.inr (Sum.inl (cell, residue)))) :=
  Fintype.sum_prod_type _

#print axioms truncatedDiagonalAtomCode_sum_evenOne

end Erdos848
