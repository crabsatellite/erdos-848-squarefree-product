import Erdos848.TailPaperDiagonalFastCountsDefs

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedDiagonalAtomCode_sum_outer
    (g : TruncatedDiagonalAtomCode → Nat) :
    (∑ code, g code) =
      (∑ cell : Fin 9, g (Sum.inl cell)) +
      ∑ rest : Fin 9 ⊕ ((Fin 9 × Fin 49) ⊕ (Bool × Fin 9)),
        g (Sum.inr rest) :=
  Fintype.sum_sum_type g

#print axioms truncatedDiagonalAtomCode_sum_outer

end Erdos848
