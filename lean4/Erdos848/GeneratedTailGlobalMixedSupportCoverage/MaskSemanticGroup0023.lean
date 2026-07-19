import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0023

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0023 : List ℕ :=
  [2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617, 2621, 2633, 2647, 2657, 2659, 2663]

theorem maskSemanticGroup0023_passes :
    maskSemanticGroup0023.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0023 twistQrMaskWords0023) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
