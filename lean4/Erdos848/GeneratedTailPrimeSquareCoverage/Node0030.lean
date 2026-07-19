import Erdos848.GeneratedTailPrimeSquareCoverage.Block0031
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0029

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0030 : Erdos848.PrimeIntervalProofTree
    63490 6144 543 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0031 costTreeNode0029

theorem costTreeNode0030_cost :
    costTreeNode0030.squareTailCost 47 10_000_000_000 = 1_629 := by
  calc
    costTreeNode0030.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0031.squareTailCost 47 10_000_000_000 +
          costTreeNode0029.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0030, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_629 := by
      rw [blockCost0031, costTreeNode0029_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
