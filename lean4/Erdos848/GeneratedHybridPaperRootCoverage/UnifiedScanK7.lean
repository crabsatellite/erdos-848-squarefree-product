import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock0NonsquareK7SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock0SquareK7SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock1NonsquareK7SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock1SquareK7SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock2NonsquareK7SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock2SquareK7SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK7SelectorBridge
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3SquareK7SelectorBridge

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedScanPassesK7
    : ∀ (regime : Erdos848.HybridPaperDiagonalRegime)
        (squareCoset : Bool),
      unifiedScanStatement regime squareCoset 7
  | .twoHundredToThreeHundred, false => unifiedBlock0NonsquareK7SelectorScanPasses
  | .twoHundredToThreeHundred, true => unifiedBlock0SquareK7SelectorScanPasses
  | .threeHundredToFiveHundred, false => unifiedBlock1NonsquareK7SelectorScanPasses
  | .threeHundredToFiveHundred, true => unifiedBlock1SquareK7SelectorScanPasses
  | .fiveHundredToOneBillion, false => unifiedBlock2NonsquareK7SelectorScanPasses
  | .fiveHundredToOneBillion, true => unifiedBlock2SquareK7SelectorScanPasses
  | .oneToTwoBillion, false => unifiedBlock3NonsquareK7SelectorScanPasses
  | .oneToTwoBillion, true => unifiedBlock3SquareK7SelectorScanPasses

end Erdos848.GeneratedHybridPaperRootCoverage
