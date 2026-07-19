import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0021

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0021 : List ℕ :=
  [2281, 2287, 2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357, 2371, 2377, 2381, 2383]

theorem maskSemanticGroup0021_passes :
    maskSemanticGroup0021.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0021 twistQrMaskWords0021) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
