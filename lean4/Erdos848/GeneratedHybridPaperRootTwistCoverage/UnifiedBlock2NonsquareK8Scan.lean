import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedData

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock2NonsquareK8ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (unifiedLookup .fiveHundredToOneBillion)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .fiveHundredToOneBillion 8)
      1000000000 7 1 Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      Erdos848.GeneratedHybridPaperRootCoverage.block2NonsquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootTwistCoverage
