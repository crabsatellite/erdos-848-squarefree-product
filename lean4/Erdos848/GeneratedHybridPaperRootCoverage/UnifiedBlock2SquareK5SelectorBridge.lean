import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedStatement
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock2SquareK5Scan

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedBlock2SquareK5SelectorScanPasses :
    unifiedScanStatement .fiveHundredToOneBillion true 5 := by
  simpa only [
    unifiedScanStatement,
    Erdos848.HybridPaperDiagonalRegime.stop,
    Erdos848.HybridPaperDiagonalRegime.rootBaseWords
  ] using unifiedBlock2SquareK5ScanPasses

end Erdos848.GeneratedHybridPaperRootCoverage
