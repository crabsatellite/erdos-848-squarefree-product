import Erdos848.GeneratedTailPrimeSquareCoverage.Block0081
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0078

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0079 : Erdos848.PrimeIntervalProofTree
    165890 6144 503 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0081 costTreeNode0078

theorem costTreeNode0079_cost :
    costTreeNode0079.squareTailCost 47 10_000_000_000 = 503 := by
  calc
    costTreeNode0079.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0081.squareTailCost 47 10_000_000_000 +
          costTreeNode0078.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0079, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 503 := by
      rw [blockCost0081, costTreeNode0078_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
