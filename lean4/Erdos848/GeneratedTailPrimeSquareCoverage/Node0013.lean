import Erdos848.GeneratedTailPrimeSquareCoverage.Block0016
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0017

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0013 : Erdos848.PrimeIntervalProofTree
    32770 4096 396 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0016 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0017

theorem costTreeNode0013_cost :
    costTreeNode0013.squareTailCost 47 10_000_000_000 = 3_479 := by
  calc
    costTreeNode0013.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0016.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0017.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0013, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 3_479 := by
      rw [blockCost0016, blockCost0017]

end Erdos848.GeneratedTailPrimeSquareCoverage
