import Erdos848.GeneratedTailPrimeSquareCoverage.Block0048
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0049

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0043 : Erdos848.PrimeIntervalProofTree
    98306 4096 366 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0048 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0049

theorem costTreeNode0043_cost :
    costTreeNode0043.squareTailCost 47 10_000_000_000 = 519 := by
  calc
    costTreeNode0043.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0048.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0049.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0043, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 519 := by
      rw [blockCost0048, blockCost0049]

end Erdos848.GeneratedTailPrimeSquareCoverage
