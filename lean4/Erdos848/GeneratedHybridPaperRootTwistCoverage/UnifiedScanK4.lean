import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0NonsquareK4SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0SquareK4SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1NonsquareK4SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1SquareK4SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2NonsquareK4SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2SquareK4SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3NonsquareK4SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK4SelectorBridge

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedScanPassesK4
    : ∀ (regime : Erdos848.HybridPaperDiagonalRegime)
        (squareCoset : Bool),
      unifiedScanStatement regime squareCoset 4
  | .twoHundredToThreeHundred, false => unifiedBlock0NonsquareK4SelectorScanPasses
  | .twoHundredToThreeHundred, true => unifiedBlock0SquareK4SelectorScanPasses
  | .threeHundredToFiveHundred, false => unifiedBlock1NonsquareK4SelectorScanPasses
  | .threeHundredToFiveHundred, true => unifiedBlock1SquareK4SelectorScanPasses
  | .fiveHundredToOneBillion, false => unifiedBlock2NonsquareK4SelectorScanPasses
  | .fiveHundredToOneBillion, true => unifiedBlock2SquareK4SelectorScanPasses
  | .oneToTwoBillion, false => unifiedBlock3NonsquareK4SelectorScanPasses
  | .oneToTwoBillion, true => unifiedBlock3SquareK4SelectorScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
