import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0014

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0014 : List ℕ :=
  [1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511, 1523, 1531]

theorem maskSemanticGroup0014_passes :
    maskSemanticGroup0014.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0014 twistQrMaskWords0014) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
