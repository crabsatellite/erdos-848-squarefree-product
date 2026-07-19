import Erdos848.GeneratedTailPrimeSquareCoverage.Block0038
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0039

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0035 : Erdos848.PrimeIntervalProofTree
    77826 4096 360 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0038 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0039

theorem costTreeNode0035_cost :
    costTreeNode0035.squareTailCost 47 10_000_000_000 = 720 := by
  calc
    costTreeNode0035.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0038.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0039.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0035, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 720 := by
      rw [blockCost0038, blockCost0039]

end Erdos848.GeneratedTailPrimeSquareCoverage
