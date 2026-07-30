import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK7Scan

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock3SquareK7SelectorScanPasses :
    unifiedScanStatement .oneToTwoBillion true 7 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock3SquareK7ScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
