import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-- Thin view of the existing Block-3 twist masks used by the final route. -/
def highQrFinalTwistMaskWords (p : Nat) : List Nat :=
  if p ≤ 61 then
    Erdos848.GeneratedHybridPaperRootTwistCoverage.block3TwistQrMaskWordsGroup0000 p
  else if p ≤ 139 then
    Erdos848.GeneratedHybridPaperRootTwistCoverage.block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootTwistCoverage.block3TwistQrMaskWordsGroup0002 p

end Erdos848.GeneratedHybridPaperRootCoverage
