import Erdos848.TailHybridPaperRootData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock2NonsquareK4ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (Erdos848.HybridPaperDiagonalRegime.rootLookup
        .fiveHundredToOneBillion)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .fiveHundredToOneBillion 4)
      1000000000 3 1 supportPrimes
      block2NonsquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootCoverage
