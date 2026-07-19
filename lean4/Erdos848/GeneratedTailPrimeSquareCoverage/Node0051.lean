import Erdos848.GeneratedTailPrimeSquareCoverage.Block0054
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0055

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0051 : Erdos848.PrimeIntervalProofTree
    110594 4096 348 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0054 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0055

theorem costTreeNode0051_cost :
    costTreeNode0051.squareTailCost 47 10_000_000_000 = 348 := by
  calc
    costTreeNode0051.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0054.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0055.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0051, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 348 := by
      rw [blockCost0054, blockCost0055]

end Erdos848.GeneratedTailPrimeSquareCoverage
