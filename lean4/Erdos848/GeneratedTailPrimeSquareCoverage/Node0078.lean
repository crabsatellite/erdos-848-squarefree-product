import Erdos848.GeneratedTailPrimeSquareCoverage.Block0082
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0083

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0078 : Erdos848.PrimeIntervalProofTree
    167938 4096 336 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0082 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0083

theorem costTreeNode0078_cost :
    costTreeNode0078.squareTailCost 47 10_000_000_000 = 336 := by
  calc
    costTreeNode0078.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0082.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0083.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0078, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 336 := by
      rw [blockCost0082, blockCost0083]

end Erdos848.GeneratedTailPrimeSquareCoverage
