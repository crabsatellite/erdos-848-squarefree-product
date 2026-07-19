import Erdos848.GeneratedTailPrimeSquareCoverage.Block0001
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0002

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0000 : Erdos848.PrimeIntervalProofTree
    2050 4096 492 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0001 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0002

theorem costTreeNode0000_cost :
    costTreeNode0000.squareTailCost 47 10_000_000_000 = 400_750 := by
  calc
    costTreeNode0000.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0001.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0002.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0000, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 400_750 := by
      rw [blockCost0001, blockCost0002]

end Erdos848.GeneratedTailPrimeSquareCoverage
