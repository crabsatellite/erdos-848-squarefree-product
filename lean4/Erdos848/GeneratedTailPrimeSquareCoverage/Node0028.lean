import Erdos848.GeneratedTailPrimeSquareCoverage.Node0025
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0027

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0028 : Erdos848.PrimeIntervalProofTree
    51202 12288 1124 :=
  .node costTreeNode0025 costTreeNode0027

theorem costTreeNode0028_cost :
    costTreeNode0028.squareTailCost 47 10_000_000_000 = 3_982 := by
  calc
    costTreeNode0028.squareTailCost 47 10_000_000_000 =
        costTreeNode0025.squareTailCost 47 10_000_000_000 +
          costTreeNode0027.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0028, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 3_982 := by
      rw [costTreeNode0025_cost, costTreeNode0027_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
