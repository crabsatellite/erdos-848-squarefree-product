import Erdos848.GeneratedTailPrimeSquareCoverage.Node0006
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0008

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0009 : Erdos848.PrimeIntervalProofTree
    12290 12288 1255 :=
  .node costTreeNode0006 costTreeNode0008

theorem costTreeNode0009_cost :
    costTreeNode0009.squareTailCost 47 10_000_000_000 = 42_478 := by
  calc
    costTreeNode0009.squareTailCost 47 10_000_000_000 =
        costTreeNode0006.squareTailCost 47 10_000_000_000 +
          costTreeNode0008.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0009, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 42_478 := by
      rw [costTreeNode0006_cost, costTreeNode0008_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
