import Erdos848.GeneratedTailPrimeSquareCoverage.Block0053
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0051

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0052 : Erdos848.PrimeIntervalProofTree
    108546 6144 523 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0053 costTreeNode0051

theorem costTreeNode0052_cost :
    costTreeNode0052.squareTailCost 47 10_000_000_000 = 523 := by
  calc
    costTreeNode0052.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0053.squareTailCost 47 10_000_000_000 +
          costTreeNode0051.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0052, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 523 := by
      rw [blockCost0053, costTreeNode0051_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
