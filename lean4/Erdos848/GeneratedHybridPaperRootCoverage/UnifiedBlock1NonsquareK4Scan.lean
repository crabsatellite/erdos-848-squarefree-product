import Erdos848.TailHybridPaperRootData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock1NonsquareK4ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (Erdos848.HybridPaperDiagonalRegime.rootLookup
        .threeHundredToFiveHundred)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .threeHundredToFiveHundred 4)
      500000000 3 1 supportPrimes
      block1NonsquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootCoverage
