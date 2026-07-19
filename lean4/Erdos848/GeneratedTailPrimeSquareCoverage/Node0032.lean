import Erdos848.GeneratedTailPrimeSquareCoverage.Block0034
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0031

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0032 : Erdos848.PrimeIntervalProofTree
    69634 6144 559 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0034 costTreeNode0031

theorem costTreeNode0032_cost :
    costTreeNode0032.squareTailCost 47 10_000_000_000 = 1_216 := by
  calc
    costTreeNode0032.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0034.squareTailCost 47 10_000_000_000 +
          costTreeNode0031.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0032, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_216 := by
      rw [blockCost0034, costTreeNode0031_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
