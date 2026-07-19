import Erdos848.GeneratedTailPrimeSquareCoverage.Block0073
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0074

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0068 : Erdos848.PrimeIntervalProofTree
    149506 4096 352 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0074

theorem costTreeNode0068_cost :
    costTreeNode0068.squareTailCost 47 10_000_000_000 = 352 := by
  calc
    costTreeNode0068.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0074.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0068, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 352 := by
      rw [blockCost0073, blockCost0074]

end Erdos848.GeneratedTailPrimeSquareCoverage
