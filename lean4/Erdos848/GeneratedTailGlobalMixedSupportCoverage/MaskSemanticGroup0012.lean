import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0012

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0012 : List ℕ :=
  [1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291]

theorem maskSemanticGroup0012_passes :
    maskSemanticGroup0012.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0012 twistQrMaskWords0012) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
