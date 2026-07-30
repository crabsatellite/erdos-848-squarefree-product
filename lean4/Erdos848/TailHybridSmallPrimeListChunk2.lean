import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def paperSmallDiagonalPrimesFastChunk2 : Finset Nat :=
  [257, 269, 277, 281, 293, 313, 317, 337, 349, 353, 373].toFinset

def paperSmallDiagonalPrimesSemanticChunk2 : Finset Nat :=
  (Finset.Ico 250 375).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem paperSmallDiagonalPrimesFastChunk2_eq :
    paperSmallDiagonalPrimesFastChunk2 =
      paperSmallDiagonalPrimesSemanticChunk2 := by
  decide

#print axioms paperSmallDiagonalPrimesFastChunk2_eq

end Erdos848
