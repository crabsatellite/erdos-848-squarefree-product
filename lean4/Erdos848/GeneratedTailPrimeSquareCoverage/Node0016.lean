import Erdos848.GeneratedTailPrimeSquareCoverage.Block0019
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0020

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0016 : Erdos848.PrimeIntervalProofTree
    38914 4096 397 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0019 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0020

theorem costTreeNode0016_cost :
    costTreeNode0016.squareTailCost 47 10_000_000_000 = 2_558 := by
  calc
    costTreeNode0016.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0019.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0020.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0016, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_558 := by
      rw [blockCost0019, blockCost0020]

end Erdos848.GeneratedTailPrimeSquareCoverage
