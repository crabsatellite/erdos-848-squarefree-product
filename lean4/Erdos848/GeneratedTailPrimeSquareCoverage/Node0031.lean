import Erdos848.GeneratedTailPrimeSquareCoverage.Block0035
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0036

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0031 : Erdos848.PrimeIntervalProofTree
    71682 4096 370 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0035 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0036

theorem costTreeNode0031_cost :
    costTreeNode0031.squareTailCost 47 10_000_000_000 = 740 := by
  calc
    costTreeNode0031.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0035.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0036.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0031, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 740 := by
      rw [blockCost0035, blockCost0036]

end Erdos848.GeneratedTailPrimeSquareCoverage
