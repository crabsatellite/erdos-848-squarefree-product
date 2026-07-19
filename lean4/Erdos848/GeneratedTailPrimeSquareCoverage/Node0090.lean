import Erdos848.GeneratedTailPrimeSquareCoverage.Block0093
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0089

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0090 : Erdos848.PrimeIntervalProofTree
    190466 6144 504 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0093 costTreeNode0089

theorem costTreeNode0090_cost :
    costTreeNode0090.squareTailCost 47 10_000_000_000 = 504 := by
  calc
    costTreeNode0090.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0093.squareTailCost 47 10_000_000_000 +
          costTreeNode0089.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0090, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 504 := by
      rw [blockCost0093, costTreeNode0089_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
