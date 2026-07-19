import Erdos848.GeneratedTailPrimeSquareCoverage.Block0041
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0042

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0037 : Erdos848.PrimeIntervalProofTree
    83970 4096 360 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0041 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0042

theorem costTreeNode0037_cost :
    costTreeNode0037.squareTailCost 47 10_000_000_000 = 720 := by
  calc
    costTreeNode0037.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0041.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0042.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0037, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 720 := by
      rw [blockCost0041, blockCost0042]

end Erdos848.GeneratedTailPrimeSquareCoverage
