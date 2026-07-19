import Erdos848.GeneratedTailPrimeSquareCoverage.Block0091
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0092

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0086 : Erdos848.PrimeIntervalProofTree
    186370 4096 331 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0091 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0092

theorem costTreeNode0086_cost :
    costTreeNode0086.squareTailCost 47 10_000_000_000 = 331 := by
  calc
    costTreeNode0086.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0091.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0092.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0086, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 331 := by
      rw [blockCost0091, blockCost0092]

end Erdos848.GeneratedTailPrimeSquareCoverage
