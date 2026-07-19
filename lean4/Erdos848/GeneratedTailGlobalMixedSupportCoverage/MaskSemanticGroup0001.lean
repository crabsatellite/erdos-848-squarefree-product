import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0001

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0001 : List ℕ :=
  [67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139]

theorem maskSemanticGroup0001_passes :
    maskSemanticGroup0001.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0001 twistQrMaskWords0001) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
