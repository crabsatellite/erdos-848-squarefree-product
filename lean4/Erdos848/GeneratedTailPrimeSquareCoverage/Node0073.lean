import Erdos848.GeneratedTailPrimeSquareCoverage.Block0076
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0077

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0073 : Erdos848.PrimeIntervalProofTree
    155650 4096 335 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0076 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0077

theorem costTreeNode0073_cost :
    costTreeNode0073.squareTailCost 47 10_000_000_000 = 335 := by
  calc
    costTreeNode0073.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0076.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0077.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0073, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 335 := by
      rw [blockCost0076, blockCost0077]

end Erdos848.GeneratedTailPrimeSquareCoverage
