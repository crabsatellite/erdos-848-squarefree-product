import Erdos848.GeneratedTailPrimeSquareCoverage.Block0079
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0080

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0075 : Erdos848.PrimeIntervalProofTree
    161794 4096 332 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0079 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0080

theorem costTreeNode0075_cost :
    costTreeNode0075.squareTailCost 47 10_000_000_000 = 332 := by
  calc
    costTreeNode0075.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0079.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0080.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0075, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 332 := by
      rw [blockCost0079, blockCost0080]

end Erdos848.GeneratedTailPrimeSquareCoverage
