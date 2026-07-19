import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0016

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0016 : List ℕ :=
  [1637, 1657, 1663, 1667, 1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759]

theorem maskSemanticGroup0016_passes :
    maskSemanticGroup0016.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0016 twistQrMaskWords0016) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
