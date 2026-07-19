import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0024

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0024 : List ℕ :=
  [2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707, 2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753]

theorem maskSemanticGroup0024_passes :
    maskSemanticGroup0024.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0024 twistQrMaskWords0024) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
