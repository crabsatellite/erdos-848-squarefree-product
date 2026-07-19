import Erdos848.GeneratedTailPrimeSquareCoverage.Block0004
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0005

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0002 : Erdos848.PrimeIntervalProofTree
    8194 4096 442 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0004 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0005

theorem costTreeNode0002_cost :
    costTreeNode0002.squareTailCost 47 10_000_000_000 = 44_371 := by
  calc
    costTreeNode0002.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0004.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0005.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0002, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 44_371 := by
      rw [blockCost0004, blockCost0005]

end Erdos848.GeneratedTailPrimeSquareCoverage
