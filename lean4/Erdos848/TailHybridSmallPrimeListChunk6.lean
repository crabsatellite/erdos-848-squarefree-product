import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def paperSmallDiagonalPrimesFastChunk6 : Finset Nat :=
  [757, 761, 769, 773, 797, 809, 821, 829, 853, 857].toFinset

def paperSmallDiagonalPrimesSemanticChunk6 : Finset Nat :=
  (Finset.Ico 750 875).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem paperSmallDiagonalPrimesFastChunk6_eq :
    paperSmallDiagonalPrimesFastChunk6 =
      paperSmallDiagonalPrimesSemanticChunk6 := by
  decide

#print axioms paperSmallDiagonalPrimesFastChunk6_eq

end Erdos848
