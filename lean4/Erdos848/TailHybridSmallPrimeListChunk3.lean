import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def paperSmallDiagonalPrimesFastChunk3 : Finset Nat :=
  [389, 397, 401, 409, 421, 433, 449, 457, 461].toFinset

def paperSmallDiagonalPrimesSemanticChunk3 : Finset Nat :=
  (Finset.Ico 375 500).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem paperSmallDiagonalPrimesFastChunk3_eq :
    paperSmallDiagonalPrimesFastChunk3 =
      paperSmallDiagonalPrimesSemanticChunk3 := by
  decide

#print axioms paperSmallDiagonalPrimesFastChunk3_eq

end Erdos848
