import Erdos848.GeneratedTailPrimeSquareCoverage.Block0003
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0002

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0003 : Erdos848.PrimeIntervalProofTree
    6146 6144 669 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0003 costTreeNode0002

theorem costTreeNode0003_cost :
    costTreeNode0003.squareTailCost 47 10_000_000_000 = 89_734 := by
  calc
    costTreeNode0003.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0003.squareTailCost 47 10_000_000_000 +
          costTreeNode0002.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0003, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 89_734 := by
      rw [blockCost0003, costTreeNode0002_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
