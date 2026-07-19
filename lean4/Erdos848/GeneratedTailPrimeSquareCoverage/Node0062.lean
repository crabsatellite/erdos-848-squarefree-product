import Erdos848.GeneratedTailPrimeSquareCoverage.Block0066
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0067

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0062 : Erdos848.PrimeIntervalProofTree
    135170 4096 352 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0066 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0067

theorem costTreeNode0062_cost :
    costTreeNode0062.squareTailCost 47 10_000_000_000 = 352 := by
  calc
    costTreeNode0062.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0066.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0067.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0062, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 352 := by
      rw [blockCost0066, blockCost0067]

end Erdos848.GeneratedTailPrimeSquareCoverage
