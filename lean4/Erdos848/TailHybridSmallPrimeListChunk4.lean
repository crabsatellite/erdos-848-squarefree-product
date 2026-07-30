import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def paperSmallDiagonalPrimesFastChunk4 : Finset Nat :=
  [509, 521, 541, 557, 569, 577, 593, 601, 613, 617].toFinset

def paperSmallDiagonalPrimesSemanticChunk4 : Finset Nat :=
  (Finset.Ico 500 625).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem paperSmallDiagonalPrimesFastChunk4_eq :
    paperSmallDiagonalPrimesFastChunk4 =
      paperSmallDiagonalPrimesSemanticChunk4 := by
  decide

#print axioms paperSmallDiagonalPrimesFastChunk4_eq

end Erdos848
