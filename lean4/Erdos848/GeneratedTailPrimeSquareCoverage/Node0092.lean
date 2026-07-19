import Erdos848.GeneratedTailPrimeSquareCoverage.Block0098
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0099

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0092 : Erdos848.PrimeIntervalProofTree
    200706 3376 273 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0098 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0099

theorem costTreeNode0092_cost :
    costTreeNode0092.squareTailCost 47 10_000_000_000 = 273 := by
  calc
    costTreeNode0092.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0098.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0099.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0092, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 273 := by
      rw [blockCost0098, blockCost0099]

end Erdos848.GeneratedTailPrimeSquareCoverage
