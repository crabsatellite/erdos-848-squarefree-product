import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0008

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0008 : List ℕ :=
  [739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839]

theorem maskSemanticGroup0008_passes :
    maskSemanticGroup0008.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0008 twistQrMaskWords0008) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
