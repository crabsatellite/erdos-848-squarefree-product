import Erdos848.TailHybridPaperRootData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock1SquareK6ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (Erdos848.HybridPaperDiagonalRegime.rootLookup
        .threeHundredToFiveHundred)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .threeHundredToFiveHundred 6)
      500000000 5 1 supportPrimes
      block1SquareBaseWords = true := by
  rfl

end Erdos848.GeneratedHybridPaperRootCoverage
