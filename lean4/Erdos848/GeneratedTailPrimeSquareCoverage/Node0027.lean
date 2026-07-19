import Erdos848.GeneratedTailPrimeSquareCoverage.Block0028
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0026

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0027 : Erdos848.PrimeIntervalProofTree
    57346 6144 549 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0028 costTreeNode0026

theorem costTreeNode0027_cost :
    costTreeNode0027.squareTailCost 47 10_000_000_000 = 1_682 := by
  calc
    costTreeNode0027.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0028.squareTailCost 47 10_000_000_000 +
          costTreeNode0026.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0027, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_682 := by
      rw [blockCost0028, costTreeNode0026_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
