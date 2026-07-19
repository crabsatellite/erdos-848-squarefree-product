import Erdos848.GeneratedTailPrimeSquareCoverage.Block0060
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0061

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0056 : Erdos848.PrimeIntervalProofTree
    122882 4096 346 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0060 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0061

theorem costTreeNode0056_cost :
    costTreeNode0056.squareTailCost 47 10_000_000_000 = 346 := by
  calc
    costTreeNode0056.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0060.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0061.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0056, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 346 := by
      rw [blockCost0060, blockCost0061]

end Erdos848.GeneratedTailPrimeSquareCoverage
