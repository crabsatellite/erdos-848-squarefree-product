import Erdos848.GeneratedTailPrimeSquareCoverage.Block0023
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0024

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0019 : Erdos848.PrimeIntervalProofTree
    47106 4096 381 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0023 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0024

theorem costTreeNode0019_cost :
    costTreeNode0019.squareTailCost 47 10_000_000_000 = 1_799 := by
  calc
    costTreeNode0019.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0023.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0024.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0019, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_799 := by
      rw [blockCost0023, blockCost0024]

end Erdos848.GeneratedTailPrimeSquareCoverage
