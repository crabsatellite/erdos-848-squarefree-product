import Erdos848.TailHybridPaperRootData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock3NonsquareK6ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (Erdos848.HybridPaperDiagonalRegime.rootLookup
        .oneToTwoBillion)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .oneToTwoBillion 6)
      2000000000 5 1 supportPrimes
      block3NonsquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootCoverage
