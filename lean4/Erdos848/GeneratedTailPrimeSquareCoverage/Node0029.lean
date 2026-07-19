import Erdos848.GeneratedTailPrimeSquareCoverage.Block0032
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0033

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0029 : Erdos848.PrimeIntervalProofTree
    65538 4096 363 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0032 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0033

theorem costTreeNode0029_cost :
    costTreeNode0029.squareTailCost 47 10_000_000_000 = 1_089 := by
  calc
    costTreeNode0029.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0032.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0033.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0029, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_089 := by
      rw [blockCost0032, blockCost0033]

end Erdos848.GeneratedTailPrimeSquareCoverage
