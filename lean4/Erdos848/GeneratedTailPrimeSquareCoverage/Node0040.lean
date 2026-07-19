import Erdos848.GeneratedTailPrimeSquareCoverage.Block0044
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0045

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0040 : Erdos848.PrimeIntervalProofTree
    90114 4096 360 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0044 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0045

theorem costTreeNode0040_cost :
    costTreeNode0040.squareTailCost 47 10_000_000_000 = 720 := by
  calc
    costTreeNode0040.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0044.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0045.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0040, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 720 := by
      rw [blockCost0044, blockCost0045]

end Erdos848.GeneratedTailPrimeSquareCoverage
