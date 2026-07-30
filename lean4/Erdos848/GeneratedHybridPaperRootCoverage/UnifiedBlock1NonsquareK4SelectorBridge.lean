import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock1NonsquareK4Scan

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock1NonsquareK4SelectorScanPasses :
    unifiedScanStatement .threeHundredToFiveHundred false 4 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock1NonsquareK4ScanPasses

end Erdos848.GeneratedHybridPaperRootCoverage
