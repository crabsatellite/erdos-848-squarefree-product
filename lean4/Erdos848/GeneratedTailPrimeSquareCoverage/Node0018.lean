import Erdos848.GeneratedTailPrimeSquareCoverage.Block0021
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0022

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0018 : Erdos848.PrimeIntervalProofTree
    43010 4096 363 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0021 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0022

theorem costTreeNode0018_cost :
    costTreeNode0018.squareTailCost 47 10_000_000_000 = 1_968 := by
  calc
    costTreeNode0018.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0021.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0022.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0018, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_968 := by
      rw [blockCost0021, blockCost0022]

end Erdos848.GeneratedTailPrimeSquareCoverage
