import Erdos848.GeneratedTailPrimeSquareCoverage.Node0098

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeSquareScale : ℕ := 10_000_000_000
def primeSquareCostThrough204081 : ℕ := 38_779_428

theorem rootTree_listed_eq_primesLE :
    costTreeNode0098.listed = Nat.primesLE 204081 := by
  exact costTreeNode0098.listed_eq_primesLE (by decide)

end Erdos848.GeneratedTailPrimeSquareCoverage
