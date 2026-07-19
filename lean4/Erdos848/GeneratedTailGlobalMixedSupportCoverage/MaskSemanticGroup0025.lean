import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0025

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0025 : List ℕ :=
  [2767, 2777, 2789, 2791, 2797, 2801, 2803, 2819, 2833, 2837, 2843]

theorem maskSemanticGroup0025_passes :
    maskSemanticGroup0025.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0025 twistQrMaskWords0025) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
