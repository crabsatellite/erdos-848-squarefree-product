import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock1NonsquareK7Scan

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock1NonsquareK7SelectorScanPasses :
    unifiedScanStatement .threeHundredToFiveHundred false 7 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock1NonsquareK7ScanPasses

end Erdos848.GeneratedHybridPaperRootCoverage
