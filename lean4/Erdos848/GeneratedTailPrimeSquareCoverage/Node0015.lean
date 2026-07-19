import Erdos848.GeneratedTailPrimeSquareCoverage.Node0012
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0014

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0015 : Erdos848.PrimeIntervalProofTree
    24578 12288 1183 :=
  .node costTreeNode0012 costTreeNode0014

theorem costTreeNode0015_cost :
    costTreeNode0015.squareTailCost 47 10_000_000_000 = 13_639 := by
  calc
    costTreeNode0015.squareTailCost 47 10_000_000_000 =
        costTreeNode0012.squareTailCost 47 10_000_000_000 +
          costTreeNode0014.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0015, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 13_639 := by
      rw [costTreeNode0012_cost, costTreeNode0014_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
