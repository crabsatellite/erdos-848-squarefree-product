import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock2NonsquareK6Scan

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock2NonsquareK6SelectorScanPasses :
    unifiedScanStatement .fiveHundredToOneBillion false 6 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock2NonsquareK6ScanPasses

end Erdos848.GeneratedHybridPaperRootCoverage
