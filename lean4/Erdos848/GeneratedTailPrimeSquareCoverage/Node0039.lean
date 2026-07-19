import Erdos848.GeneratedTailPrimeSquareCoverage.Node0036
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0038

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0039 : Erdos848.PrimeIntervalProofTree
    75778 12288 1083 :=
  .node costTreeNode0036 costTreeNode0038

theorem costTreeNode0039_cost :
    costTreeNode0039.squareTailCost 47 10_000_000_000 = 2_166 := by
  calc
    costTreeNode0039.squareTailCost 47 10_000_000_000 =
        costTreeNode0036.squareTailCost 47 10_000_000_000 +
          costTreeNode0038.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0039, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_166 := by
      rw [costTreeNode0036_cost, costTreeNode0038_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
