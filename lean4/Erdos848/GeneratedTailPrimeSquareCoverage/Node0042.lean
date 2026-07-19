import Erdos848.GeneratedTailPrimeSquareCoverage.Block0046
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0047

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0042 : Erdos848.PrimeIntervalProofTree
    94210 4096 352 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0046 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0047

theorem costTreeNode0042_cost :
    costTreeNode0042.squareTailCost 47 10_000_000_000 = 704 := by
  calc
    costTreeNode0042.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0046.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0047.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0042, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 704 := by
      rw [blockCost0046, blockCost0047]

end Erdos848.GeneratedTailPrimeSquareCoverage
