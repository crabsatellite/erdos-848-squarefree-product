import Erdos848.GeneratedTailPrimeSquareCoverage.Block0040
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0037

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0038 : Erdos848.PrimeIntervalProofTree
    81922 6144 539 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0040 costTreeNode0037

theorem costTreeNode0038_cost :
    costTreeNode0038.squareTailCost 47 10_000_000_000 = 1_078 := by
  calc
    costTreeNode0038.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0040.squareTailCost 47 10_000_000_000 +
          costTreeNode0037.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0038, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_078 := by
      rw [blockCost0040, costTreeNode0037_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
