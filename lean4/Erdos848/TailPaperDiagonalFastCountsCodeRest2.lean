import Erdos848.TailPaperDiagonalFastCountsDefs

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedDiagonalAtomCode_sum_rest2
    (g : TruncatedDiagonalAtomCode → Nat) :
    (∑ rest : (Fin 9 × Fin 49) ⊕ (Bool × Fin 9),
        g (Sum.inr (Sum.inr rest))) =
      (∑ pair : Fin 9 × Fin 49,
        g (Sum.inr (Sum.inr (Sum.inl pair)))) +
      ∑ pair : Bool × Fin 9,
        g (Sum.inr (Sum.inr (Sum.inr pair))) :=
  Fintype.sum_sum_type _

#print axioms truncatedDiagonalAtomCode_sum_rest2

end Erdos848
