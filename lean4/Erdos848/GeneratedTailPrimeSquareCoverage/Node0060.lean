import Erdos848.GeneratedTailPrimeSquareCoverage.Block0063
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0064

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0060 : Erdos848.PrimeIntervalProofTree
    129026 4096 347 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0063 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0064

theorem costTreeNode0060_cost :
    costTreeNode0060.squareTailCost 47 10_000_000_000 = 347 := by
  calc
    costTreeNode0060.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0063.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0064.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0060, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 347 := by
      rw [blockCost0063, blockCost0064]

end Erdos848.GeneratedTailPrimeSquareCoverage
