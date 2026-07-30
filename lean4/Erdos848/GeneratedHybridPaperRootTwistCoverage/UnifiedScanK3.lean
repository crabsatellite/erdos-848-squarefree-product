import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0NonsquareK3SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0SquareK3SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1NonsquareK3SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1SquareK3SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2NonsquareK3SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2SquareK3SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3NonsquareK3SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK3SelectorBridge

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedScanPassesK3
    : ∀ (regime : Erdos848.HybridPaperDiagonalRegime)
        (squareCoset : Bool),
      unifiedScanStatement regime squareCoset 3
  | .twoHundredToThreeHundred, false => unifiedBlock0NonsquareK3SelectorScanPasses
  | .twoHundredToThreeHundred, true => unifiedBlock0SquareK3SelectorScanPasses
  | .threeHundredToFiveHundred, false => unifiedBlock1NonsquareK3SelectorScanPasses
  | .threeHundredToFiveHundred, true => unifiedBlock1SquareK3SelectorScanPasses
  | .fiveHundredToOneBillion, false => unifiedBlock2NonsquareK3SelectorScanPasses
  | .fiveHundredToOneBillion, true => unifiedBlock2SquareK3SelectorScanPasses
  | .oneToTwoBillion, false => unifiedBlock3NonsquareK3SelectorScanPasses
  | .oneToTwoBillion, true => unifiedBlock3SquareK3SelectorScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
