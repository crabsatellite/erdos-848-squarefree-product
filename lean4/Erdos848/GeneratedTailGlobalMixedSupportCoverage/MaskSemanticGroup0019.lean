import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0019

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0019 : List ℕ :=
  [2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083, 2087, 2089, 2099, 2111, 2113, 2129, 2131, 2137]

theorem maskSemanticGroup0019_passes :
    maskSemanticGroup0019.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0019 twistQrMaskWords0019) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
