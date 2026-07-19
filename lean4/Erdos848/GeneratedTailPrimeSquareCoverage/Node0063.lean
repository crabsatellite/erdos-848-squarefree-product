import Erdos848.GeneratedTailPrimeSquareCoverage.Block0065
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0062

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0063 : Erdos848.PrimeIntervalProofTree
    133122 6144 515 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0065 costTreeNode0062

theorem costTreeNode0063_cost :
    costTreeNode0063.squareTailCost 47 10_000_000_000 = 515 := by
  calc
    costTreeNode0063.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0065.squareTailCost 47 10_000_000_000 +
          costTreeNode0062.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0063, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 515 := by
      rw [blockCost0065, costTreeNode0062_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
