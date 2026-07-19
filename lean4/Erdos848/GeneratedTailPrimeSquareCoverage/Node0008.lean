import Erdos848.GeneratedTailPrimeSquareCoverage.Block0009
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0007

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0008 : Erdos848.PrimeIntervalProofTree
    18434 6144 614 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0009 costTreeNode0007

theorem costTreeNode0008_cost :
    costTreeNode0008.squareTailCost 47 10_000_000_000 = 13_814 := by
  calc
    costTreeNode0008.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0009.squareTailCost 47 10_000_000_000 +
          costTreeNode0007.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0008, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 13_814 := by
      rw [blockCost0009, costTreeNode0007_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
