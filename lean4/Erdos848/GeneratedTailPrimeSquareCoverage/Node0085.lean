import Erdos848.GeneratedTailPrimeSquareCoverage.Block0087
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0084

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0085 : Erdos848.PrimeIntervalProofTree
    178178 6144 518 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0087 costTreeNode0084

theorem costTreeNode0085_cost :
    costTreeNode0085.squareTailCost 47 10_000_000_000 = 518 := by
  calc
    costTreeNode0085.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0087.squareTailCost 47 10_000_000_000 +
          costTreeNode0084.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0085, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 518 := by
      rw [blockCost0087, costTreeNode0084_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
