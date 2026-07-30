import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0SquareK3Scan

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock0SquareK3SelectorScanPasses :
    unifiedScanStatement .twoHundredToThreeHundred true 3 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock0SquareK3ScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
