import Erdos848.TailHybridPaperRootData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock3SquareK3ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (Erdos848.HybridPaperDiagonalRegime.rootLookup
        .oneToTwoBillion)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .oneToTwoBillion 3)
      2000000000 2 1 supportPrimes
      block3SquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootCoverage
