import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def paperSmallDiagonalPrimesFastChunk1 : Finset Nat :=
  [137, 149, 157, 173, 181, 193, 197, 229, 233, 241].toFinset

def paperSmallDiagonalPrimesSemanticChunk1 : Finset Nat :=
  (Finset.Ico 125 250).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem paperSmallDiagonalPrimesFastChunk1_eq :
    paperSmallDiagonalPrimesFastChunk1 =
      paperSmallDiagonalPrimesSemanticChunk1 := by
  decide

#print axioms paperSmallDiagonalPrimesFastChunk1_eq

end Erdos848
