import Erdos848.GeneratedTailPrimeSquareCoverage.Block0062
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0060

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0061 : Erdos848.PrimeIntervalProofTree
    126978 6144 526 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0062 costTreeNode0060

theorem costTreeNode0061_cost :
    costTreeNode0061.squareTailCost 47 10_000_000_000 = 526 := by
  calc
    costTreeNode0061.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0062.squareTailCost 47 10_000_000_000 +
          costTreeNode0060.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0061, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 526 := by
      rw [blockCost0062, costTreeNode0060_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
