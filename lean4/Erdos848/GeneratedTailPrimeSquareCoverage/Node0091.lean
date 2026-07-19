import Erdos848.GeneratedTailPrimeSquareCoverage.Block0096
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0097

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0091 : Erdos848.PrimeIntervalProofTree
    196610 4096 334 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0096 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097

theorem costTreeNode0091_cost :
    costTreeNode0091.squareTailCost 47 10_000_000_000 = 334 := by
  calc
    costTreeNode0091.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0096.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0091, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 334 := by
      rw [blockCost0096, blockCost0097]

end Erdos848.GeneratedTailPrimeSquareCoverage
