import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0NonsquareK8SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock0SquareK8SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1NonsquareK8SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock1SquareK8SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2NonsquareK8SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock2SquareK8SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3NonsquareK8SelectorBridge
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK8SelectorBridge

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedScanPassesK8
    : ∀ (regime : Erdos848.HybridPaperDiagonalRegime)
        (squareCoset : Bool),
      unifiedScanStatement regime squareCoset 8
  | .twoHundredToThreeHundred, false => unifiedBlock0NonsquareK8SelectorScanPasses
  | .twoHundredToThreeHundred, true => unifiedBlock0SquareK8SelectorScanPasses
  | .threeHundredToFiveHundred, false => unifiedBlock1NonsquareK8SelectorScanPasses
  | .threeHundredToFiveHundred, true => unifiedBlock1SquareK8SelectorScanPasses
  | .fiveHundredToOneBillion, false => unifiedBlock2NonsquareK8SelectorScanPasses
  | .fiveHundredToOneBillion, true => unifiedBlock2SquareK8SelectorScanPasses
  | .oneToTwoBillion, false => unifiedBlock3NonsquareK8SelectorScanPasses
  | .oneToTwoBillion, true => unifiedBlock3SquareK8SelectorScanPasses

end Erdos848.GeneratedHybridPaperRootTwistCoverage
