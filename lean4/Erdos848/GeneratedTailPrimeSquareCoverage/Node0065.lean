import Erdos848.GeneratedTailPrimeSquareCoverage.Block0069
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0070

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0065 : Erdos848.PrimeIntervalProofTree
    141314 4096 327 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0069 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0070

theorem costTreeNode0065_cost :
    costTreeNode0065.squareTailCost 47 10_000_000_000 = 327 := by
  calc
    costTreeNode0065.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0069.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0070.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0065, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 327 := by
      rw [blockCost0069, blockCost0070]

end Erdos848.GeneratedTailPrimeSquareCoverage
