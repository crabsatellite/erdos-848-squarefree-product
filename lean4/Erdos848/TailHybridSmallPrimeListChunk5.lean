import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def paperSmallDiagonalPrimesFastChunk5 : Finset Nat :=
  [641, 653, 661, 673, 677, 701, 709, 733].toFinset

def paperSmallDiagonalPrimesSemanticChunk5 : Finset Nat :=
  (Finset.Ico 625 750).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem paperSmallDiagonalPrimesFastChunk5_eq :
    paperSmallDiagonalPrimesFastChunk5 =
      paperSmallDiagonalPrimesSemanticChunk5 := by
  decide

#print axioms paperSmallDiagonalPrimesFastChunk5_eq

end Erdos848
