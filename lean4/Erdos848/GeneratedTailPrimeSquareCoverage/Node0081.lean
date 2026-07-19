import Erdos848.GeneratedTailPrimeSquareCoverage.Block0084
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0080

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0081 : Erdos848.PrimeIntervalProofTree
    172034 6144 503 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0084 costTreeNode0080

theorem costTreeNode0081_cost :
    costTreeNode0081.squareTailCost 47 10_000_000_000 = 503 := by
  calc
    costTreeNode0081.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0084.squareTailCost 47 10_000_000_000 +
          costTreeNode0080.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0081, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 503 := by
      rw [blockCost0084, costTreeNode0080_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
