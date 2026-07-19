import Erdos848.GeneratedTailPrimeSquareCoverage.Block0013
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0014

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0011 : Erdos848.PrimeIntervalProofTree
    26626 4096 396 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0013 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0014

theorem costTreeNode0011_cost :
    costTreeNode0011.squareTailCost 47 10_000_000_000 = 5_044 := by
  calc
    costTreeNode0011.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0013.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0014.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0011, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 5_044 := by
      rw [blockCost0013, blockCost0014]

end Erdos848.GeneratedTailPrimeSquareCoverage
