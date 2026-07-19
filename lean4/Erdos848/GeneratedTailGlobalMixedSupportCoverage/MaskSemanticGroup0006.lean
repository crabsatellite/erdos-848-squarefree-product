import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0006

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0006 : List ℕ :=
  [523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619]

theorem maskSemanticGroup0006_passes :
    maskSemanticGroup0006.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0006 twistQrMaskWords0006) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
