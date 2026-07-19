import Erdos848.GeneratedTailPrimeSquareCoverage.Block0000
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0000

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0001 : Erdos848.PrimeIntervalProofTree
    2 6144 801 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0000 costTreeNode0000

theorem costTreeNode0001_cost :
    costTreeNode0001.squareTailCost 47 10_000_000_000 = 38_606_033 := by
  calc
    costTreeNode0001.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0000.squareTailCost 47 10_000_000_000 +
          costTreeNode0000.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0001, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 38_606_033 := by
      rw [blockCost0000, costTreeNode0000_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
