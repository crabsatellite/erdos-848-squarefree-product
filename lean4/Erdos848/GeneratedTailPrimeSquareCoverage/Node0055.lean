import Erdos848.GeneratedTailPrimeSquareCoverage.Block0056
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0054

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0055 : Erdos848.PrimeIntervalProofTree
    114690 6144 525 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0056 costTreeNode0054

theorem costTreeNode0055_cost :
    costTreeNode0055.squareTailCost 47 10_000_000_000 = 525 := by
  calc
    costTreeNode0055.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0056.squareTailCost 47 10_000_000_000 +
          costTreeNode0054.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0055, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 525 := by
      rw [blockCost0056, costTreeNode0054_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
