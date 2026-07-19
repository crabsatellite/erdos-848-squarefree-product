import Erdos848.GeneratedTailPrimeSquareCoverage.Block0026
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0027

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0024 : Erdos848.PrimeIntervalProofTree
    53250 4096 382 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0026 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0027

theorem costTreeNode0024_cost :
    costTreeNode0024.squareTailCost 47 10_000_000_000 = 1_528 := by
  calc
    costTreeNode0024.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0026.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0027.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0024, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_528 := by
      rw [blockCost0026, blockCost0027]

end Erdos848.GeneratedTailPrimeSquareCoverage
