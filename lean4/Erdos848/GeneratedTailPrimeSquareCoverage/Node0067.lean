import Erdos848.GeneratedTailPrimeSquareCoverage.Block0071
import Erdos848.GeneratedTailPrimeSquareCoverage.Block0072

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0067 : Erdos848.PrimeIntervalProofTree
    145410 4096 355 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0071 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0072

theorem costTreeNode0067_cost :
    costTreeNode0067.squareTailCost 47 10_000_000_000 = 355 := by
  calc
    costTreeNode0067.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0071.squareTailCost 47 10_000_000_000 +
          Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0072.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0067, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 355 := by
      rw [blockCost0071, blockCost0072]

end Erdos848.GeneratedTailPrimeSquareCoverage
