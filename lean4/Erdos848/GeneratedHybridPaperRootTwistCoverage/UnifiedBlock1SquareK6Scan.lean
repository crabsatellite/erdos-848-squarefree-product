import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedData

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock1SquareK6ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (unifiedLookup .threeHundredToFiveHundred)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .threeHundredToFiveHundred 6)
      500000000 5 1 Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      Erdos848.GeneratedHybridPaperRootCoverage.block1SquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootTwistCoverage
