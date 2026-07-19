import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0002

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0002 : List ℕ :=
  [149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229]

theorem maskSemanticGroup0002_passes :
    maskSemanticGroup0002.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0002 twistQrMaskWords0002) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
