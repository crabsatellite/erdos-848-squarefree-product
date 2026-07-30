import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def paperSmallDiagonalPrimesFastChunk7 : Finset Nat :=
  [877, 881, 929, 937, 941, 953, 977, 997].toFinset

def paperSmallDiagonalPrimesSemanticChunk7 : Finset Nat :=
  (Finset.Ico 875 1001).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem paperSmallDiagonalPrimesFastChunk7_eq :
    paperSmallDiagonalPrimesFastChunk7 =
      paperSmallDiagonalPrimesSemanticChunk7 := by
  decide

#print axioms paperSmallDiagonalPrimesFastChunk7_eq

end Erdos848
