import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0022

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0022 : List ℕ :=
  [2389, 2393, 2399, 2411, 2417, 2423, 2437, 2441, 2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531]

theorem maskSemanticGroup0022_passes :
    maskSemanticGroup0022.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0022 twistQrMaskWords0022) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
