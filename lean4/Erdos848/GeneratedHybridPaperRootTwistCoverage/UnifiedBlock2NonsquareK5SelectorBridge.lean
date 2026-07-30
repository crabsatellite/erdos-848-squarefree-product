import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2NonsquareK5Scan

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock2NonsquareK5SelectorScanPasses :
    unifiedScanStatement .fiveHundredToOneBillion false 5 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock2NonsquareK5ScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
