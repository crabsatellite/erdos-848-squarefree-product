import Erdos848.GeneratedTailPrimeSquareCoverage.Block0085
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0086

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0080 : Erdos848.PrimeIntervalProofTree
    174082 4096 330 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0085 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0086

theorem costTreeNode0080_cost :
    costTreeNode0080.squareTailCost 47 10_000_000_000 = 330 := by
  calc
    costTreeNode0080.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0085.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0086.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0080, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 330 := by
      rw [blockCost0085, blockCost0086]

end Erdos848.GeneratedTailPrimeSquareCoverage
