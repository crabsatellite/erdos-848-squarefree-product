import Erdos848.GeneratedTailPrimeSquareCoverage.Block0090
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0086

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0087 : Erdos848.PrimeIntervalProofTree
    184322 6144 509 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0090 costTreeNode0086

theorem costTreeNode0087_cost :
    costTreeNode0087.squareTailCost 47 10_000_000_000 = 509 := by
  calc
    costTreeNode0087.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0090.squareTailCost 47 10_000_000_000 +
          costTreeNode0086.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0087, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 509 := by
      rw [blockCost0090, costTreeNode0086_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
