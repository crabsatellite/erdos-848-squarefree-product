import Erdos848.GeneratedTailPrimeSquareCoverage.Block0043
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0040

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0041 : Erdos848.PrimeIntervalProofTree
    88066 6144 539 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0043 costTreeNode0040

theorem costTreeNode0041_cost :
    costTreeNode0041.squareTailCost 47 10_000_000_000 = 1_078 := by
  calc
    costTreeNode0041.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0043.squareTailCost 47 10_000_000_000 +
          costTreeNode0040.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0041, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_078 := by
      rw [blockCost0043, costTreeNode0040_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
