import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2NonsquareK7Scan

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock2NonsquareK7SelectorScanPasses :
    unifiedScanStatement .fiveHundredToOneBillion false 7 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock2NonsquareK7ScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
