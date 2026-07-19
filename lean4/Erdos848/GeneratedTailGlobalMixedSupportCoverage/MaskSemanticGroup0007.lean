import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0007

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0007 : List ℕ :=
  [631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733]

theorem maskSemanticGroup0007_passes :
    maskSemanticGroup0007.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0007 twistQrMaskWords0007) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
