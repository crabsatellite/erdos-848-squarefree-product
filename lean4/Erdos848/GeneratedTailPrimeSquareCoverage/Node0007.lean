import Erdos848.GeneratedTailPrimeSquareCoverage.Block0010
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0011

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0007 : Erdos848.PrimeIntervalProofTree
    20482 4096 413 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0010 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0011

theorem costTreeNode0007_cost :
    costTreeNode0007.squareTailCost 47 10_000_000_000 = 8_406 := by
  calc
    costTreeNode0007.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0010.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0011.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0007, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 8_406 := by
      rw [blockCost0010, blockCost0011]

end Erdos848.GeneratedTailPrimeSquareCoverage
