import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def paperSmallDiagonalPrimesFastChunk0 : Finset Nat :=
  [13, 17, 29, 37, 41, 53, 61, 73, 89, 97, 101, 109, 113].toFinset

def paperSmallDiagonalPrimesSemanticChunk0 : Finset Nat :=
  (Finset.Ico 0 125).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem paperSmallDiagonalPrimesFastChunk0_eq :
    paperSmallDiagonalPrimesFastChunk0 =
      paperSmallDiagonalPrimesSemanticChunk0 := by
  decide

#print axioms paperSmallDiagonalPrimesFastChunk0_eq

end Erdos848
