import Erdos848.GeneratedTailPrimeSquareCoverage.Block0015
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0013

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0014 : Erdos848.PrimeIntervalProofTree
    30722 6144 594 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0015 costTreeNode0013

theorem costTreeNode0014_cost :
    costTreeNode0014.squareTailCost 47 10_000_000_000 = 5_546 := by
  calc
    costTreeNode0014.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0015.squareTailCost 47 10_000_000_000 +
          costTreeNode0013.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0014, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 5_546 := by
      rw [blockCost0015, costTreeNode0013_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
