import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0NonsquareK5SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0SquareK5SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1NonsquareK5SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1SquareK5SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2NonsquareK5SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2SquareK5SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3NonsquareK5SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5SelectorBridge

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedScanPassesK5
    : ∀ (regime : Erdos848.HybridPaperDiagonalRegime)
        (squareCoset : Bool),
      unifiedScanStatement regime squareCoset 5
  | .twoHundredToThreeHundred, false => unifiedBlock0NonsquareK5SelectorScanPasses
  | .twoHundredToThreeHundred, true => unifiedBlock0SquareK5SelectorScanPasses
  | .threeHundredToFiveHundred, false => unifiedBlock1NonsquareK5SelectorScanPasses
  | .threeHundredToFiveHundred, true => unifiedBlock1SquareK5SelectorScanPasses
  | .fiveHundredToOneBillion, false => unifiedBlock2NonsquareK5SelectorScanPasses
  | .fiveHundredToOneBillion, true => unifiedBlock2SquareK5SelectorScanPasses
  | .oneToTwoBillion, false => unifiedBlock3NonsquareK5SelectorScanPasses
  | .oneToTwoBillion, true => unifiedBlock3SquareK5SelectorScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
