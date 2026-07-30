import Erdos848.TailPaperDiagonalFastCountsDefs

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedDiagonalAtomCode_sum_rest1
    (g : TruncatedDiagonalAtomCode → Nat) :
    (∑ rest : Fin 9 ⊕ ((Fin 9 × Fin 49) ⊕ (Bool × Fin 9)),
        g (Sum.inr rest)) =
      (∑ cell : Fin 9, g (Sum.inr (Sum.inl cell))) +
      ∑ rest : (Fin 9 × Fin 49) ⊕ (Bool × Fin 9),
        g (Sum.inr (Sum.inr rest)) :=
  Fintype.sum_sum_type _

#print axioms truncatedDiagonalAtomCode_sum_rest1

end Erdos848
