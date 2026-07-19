import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0020

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0020 : List ℕ :=
  [2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273]

theorem maskSemanticGroup0020_passes :
    maskSemanticGroup0020.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0020 twistQrMaskWords0020) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
