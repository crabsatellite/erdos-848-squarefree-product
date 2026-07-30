import Erdos848.TailR263EvenOneFinite23ActualRoots

namespace Erdos848

/-! The literal three-pivot common-residue predicate shared by both routes. -/

def e1FiniteTripleCommonAt
    (pivots : Finset Nat) (hcard : pivots.card = 3)
    (index : E1FinitePrimeIndex) : Prop :=
  ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
    globalMixedThreePivotAt pivots hcard i %
      e1FiniteModulus index = residue.val

end Erdos848
