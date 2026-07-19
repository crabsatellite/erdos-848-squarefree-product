import Erdos848.GeneratedTailPrimeSquareCoverage.Node0079
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0081

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0082 : Erdos848.PrimeIntervalProofTree
    165890 12288 1006 :=
  .node costTreeNode0079 costTreeNode0081

theorem costTreeNode0082_cost :
    costTreeNode0082.squareTailCost 47 10_000_000_000 = 1_006 := by
  calc
    costTreeNode0082.squareTailCost 47 10_000_000_000 =
        costTreeNode0079.squareTailCost 47 10_000_000_000 +
          costTreeNode0081.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0082, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_006 := by
      rw [costTreeNode0079_cost, costTreeNode0081_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
