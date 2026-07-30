import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedData

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock1NonsquareK7ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (unifiedLookup .threeHundredToFiveHundred)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .threeHundredToFiveHundred 7)
      500000000 6 1 Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      Erdos848.GeneratedHybridPaperRootCoverage.block1NonsquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootTwistCoverage
