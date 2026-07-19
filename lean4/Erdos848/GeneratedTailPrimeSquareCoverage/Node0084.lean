import Erdos848.GeneratedTailPrimeSquareCoverage.Block0088
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0089

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0084 : Erdos848.PrimeIntervalProofTree
    180226 4096 334 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0088 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0089

theorem costTreeNode0084_cost :
    costTreeNode0084.squareTailCost 47 10_000_000_000 = 334 := by
  calc
    costTreeNode0084.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0088.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0089.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0084, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 334 := by
      rw [blockCost0088, blockCost0089]

end Erdos848.GeneratedTailPrimeSquareCoverage
