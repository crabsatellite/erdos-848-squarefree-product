import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0004

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0004 : List ℕ :=
  [331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421]

theorem maskSemanticGroup0004_passes :
    maskSemanticGroup0004.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0004 twistQrMaskWords0004) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
