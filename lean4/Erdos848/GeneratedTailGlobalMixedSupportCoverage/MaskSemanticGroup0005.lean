import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0005

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0005 : List ℕ :=
  [431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521]

theorem maskSemanticGroup0005_passes :
    maskSemanticGroup0005.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0005 twistQrMaskWords0005) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
