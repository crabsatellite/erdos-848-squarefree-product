import Erdos848.GeneratedTailPrimeSquareCoverage.Block0018
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0016

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0017 : Erdos848.PrimeIntervalProofTree
    36866 6144 587 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0018 costTreeNode0016

theorem costTreeNode0017_cost :
    costTreeNode0017.squareTailCost 47 10_000_000_000 = 3_977 := by
  calc
    costTreeNode0017.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0018.squareTailCost 47 10_000_000_000 +
          costTreeNode0016.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0017, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 3_977 := by
      rw [blockCost0018, costTreeNode0016_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
