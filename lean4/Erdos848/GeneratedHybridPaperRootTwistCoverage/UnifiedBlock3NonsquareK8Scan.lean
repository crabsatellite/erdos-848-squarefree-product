import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedData

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock3NonsquareK8ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (unifiedLookup .oneToTwoBillion)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .oneToTwoBillion 8)
      2000000000 7 1 Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      Erdos848.GeneratedHybridPaperRootCoverage.block3NonsquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootTwistCoverage
