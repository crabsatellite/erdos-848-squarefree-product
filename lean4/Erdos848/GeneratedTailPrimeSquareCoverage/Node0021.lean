import Erdos848.GeneratedTailPrimeSquareCoverage.Node0017
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0020

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0021 : Erdos848.PrimeIntervalProofTree
    36866 14336 1331 :=
  .node costTreeNode0017 costTreeNode0020

theorem costTreeNode0021_cost :
    costTreeNode0021.squareTailCost 47 10_000_000_000 = 7_744 := by
  calc
    costTreeNode0021.squareTailCost 47 10_000_000_000 =
        costTreeNode0017.squareTailCost 47 10_000_000_000 +
          costTreeNode0020.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0021, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 7_744 := by
      rw [costTreeNode0017_cost, costTreeNode0020_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
