import Erdos848.GeneratedTailPrimeSquareCoverage.Block0012
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0011

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0012 : Erdos848.PrimeIntervalProofTree
    24578 6144 589 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0012 costTreeNode0011

theorem costTreeNode0012_cost :
    costTreeNode0012.squareTailCost 47 10_000_000_000 = 8_093 := by
  calc
    costTreeNode0012.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0012.squareTailCost 47 10_000_000_000 +
          costTreeNode0011.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0012, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 8_093 := by
      rw [blockCost0012, costTreeNode0011_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
