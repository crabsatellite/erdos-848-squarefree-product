import Erdos848.GeneratedTailPrimeSquareCoverage.Block0007
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0008

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0005 : Erdos848.PrimeIntervalProofTree
    14338 4096 430 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0007 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0008

theorem costTreeNode0005_cost :
    costTreeNode0005.squareTailCost 47 10_000_000_000 = 16_529 := by
  calc
    costTreeNode0005.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0007.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0008.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0005, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 16_529 := by
      rw [blockCost0007, blockCost0008]

end Erdos848.GeneratedTailPrimeSquareCoverage
