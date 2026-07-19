import Erdos848.GeneratedTailPrimeSquareCoverage.Block0051
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0052

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0049 : Erdos848.PrimeIntervalProofTree
    104450 4096 353 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0051 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0052

theorem costTreeNode0049_cost :
    costTreeNode0049.squareTailCost 47 10_000_000_000 = 353 := by
  calc
    costTreeNode0049.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0051.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0052.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0049, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 353 := by
      rw [blockCost0051, blockCost0052]

end Erdos848.GeneratedTailPrimeSquareCoverage
