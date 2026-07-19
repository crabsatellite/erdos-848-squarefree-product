import Erdos848.GeneratedTailPrimeSquareCoverage.Block0006
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0005

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0006 : Erdos848.PrimeIntervalProofTree
    12290 6144 641 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0006 costTreeNode0005

theorem costTreeNode0006_cost :
    costTreeNode0006.squareTailCost 47 10_000_000_000 = 28_664 := by
  calc
    costTreeNode0006.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0006.squareTailCost 47 10_000_000_000 +
          costTreeNode0005.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0006, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 28_664 := by
      rw [blockCost0006, costTreeNode0005_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
