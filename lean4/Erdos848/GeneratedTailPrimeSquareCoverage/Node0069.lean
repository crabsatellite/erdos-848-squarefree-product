import Erdos848.GeneratedTailPrimeSquareCoverage.Node0067
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0068

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0069 : Erdos848.PrimeIntervalProofTree
    145410 8192 707 :=
  .node costTreeNode0067 costTreeNode0068

theorem costTreeNode0069_cost :
    costTreeNode0069.squareTailCost 47 10_000_000_000 = 707 := by
  calc
    costTreeNode0069.squareTailCost 47 10_000_000_000 =
        costTreeNode0067.squareTailCost 47 10_000_000_000 +
          costTreeNode0068.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0069, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 707 := by
      rw [costTreeNode0067_cost, costTreeNode0068_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
