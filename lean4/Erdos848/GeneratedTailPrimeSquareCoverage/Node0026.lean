import Erdos848.GeneratedTailPrimeSquareCoverage.Block0029
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0030

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0026 : Erdos848.PrimeIntervalProofTree
    59394 4096 359 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0029 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0030

theorem costTreeNode0026_cost :
    costTreeNode0026.squareTailCost 47 10_000_000_000 = 1_077 := by
  calc
    costTreeNode0026.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0029.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0030.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0026, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_077 := by
      rw [blockCost0029, blockCost0030]

end Erdos848.GeneratedTailPrimeSquareCoverage
