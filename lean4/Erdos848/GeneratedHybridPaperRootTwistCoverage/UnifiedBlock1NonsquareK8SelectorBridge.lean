import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1NonsquareK8Scan

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock1NonsquareK8SelectorScanPasses :
    unifiedScanStatement .threeHundredToFiveHundred false 8 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock1NonsquareK8ScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
