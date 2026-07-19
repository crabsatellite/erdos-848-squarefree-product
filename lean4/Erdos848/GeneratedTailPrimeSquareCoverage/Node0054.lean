import Erdos848.GeneratedTailPrimeSquareCoverage.Block0057
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0058

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0054 : Erdos848.PrimeIntervalProofTree
    116738 4096 351 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0057 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0058

theorem costTreeNode0054_cost :
    costTreeNode0054.squareTailCost 47 10_000_000_000 = 351 := by
  calc
    costTreeNode0054.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0057.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0058.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0054, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 351 := by
      rw [blockCost0057, blockCost0058]

end Erdos848.GeneratedTailPrimeSquareCoverage
