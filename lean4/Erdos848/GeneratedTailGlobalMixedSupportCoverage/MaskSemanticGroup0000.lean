import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0000

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0000 : List ℕ :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61]

theorem maskSemanticGroup0000_passes :
    maskSemanticGroup0000.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0000 twistQrMaskWords0000) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
