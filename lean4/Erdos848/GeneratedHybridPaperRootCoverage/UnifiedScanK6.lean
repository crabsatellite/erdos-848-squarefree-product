import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock0NonsquareK6SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock0SquareK6SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock1NonsquareK6SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock1SquareK6SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock2NonsquareK6SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock2SquareK6SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK6SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3SquareK6SelectorBridge

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedScanPassesK6
    : ∀ (regime : Erdos848.HybridPaperDiagonalRegime)
        (squareCoset : Bool),
      unifiedScanStatement regime squareCoset 6
  | .twoHundredToThreeHundred, false => unifiedBlock0NonsquareK6SelectorScanPasses
  | .twoHundredToThreeHundred, true => unifiedBlock0SquareK6SelectorScanPasses
  | .threeHundredToFiveHundred, false => unifiedBlock1NonsquareK6SelectorScanPasses
  | .threeHundredToFiveHundred, true => unifiedBlock1SquareK6SelectorScanPasses
  | .fiveHundredToOneBillion, false => unifiedBlock2NonsquareK6SelectorScanPasses
  | .fiveHundredToOneBillion, true => unifiedBlock2SquareK6SelectorScanPasses
  | .oneToTwoBillion, false => unifiedBlock3NonsquareK6SelectorScanPasses
  | .oneToTwoBillion, true => unifiedBlock3SquareK6SelectorScanPasses

end Erdos848.GeneratedHybridPaperRootCoverage
