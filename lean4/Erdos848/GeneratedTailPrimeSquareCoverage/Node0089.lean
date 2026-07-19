import Erdos848.GeneratedTailPrimeSquareCoverage.Block0094
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0095

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0089 : Erdos848.PrimeIntervalProofTree
    192514 4096 335 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0094 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095

theorem costTreeNode0089_cost :
    costTreeNode0089.squareTailCost 47 10_000_000_000 = 335 := by
  calc
    costTreeNode0089.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0094.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0089, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 335 := by
      rw [blockCost0094, blockCost0095]

end Erdos848.GeneratedTailPrimeSquareCoverage
