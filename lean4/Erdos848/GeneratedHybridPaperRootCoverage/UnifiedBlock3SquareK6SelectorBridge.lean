import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3SquareK6Scan

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock3SquareK6SelectorScanPasses :
    unifiedScanStatement .oneToTwoBillion true 6 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock3SquareK6ScanPasses

end Erdos848.GeneratedHybridPaperRootCoverage
