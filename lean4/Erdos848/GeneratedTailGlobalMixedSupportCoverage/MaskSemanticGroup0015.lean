import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0015

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0015 : List ℕ :=
  [1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597, 1601, 1607, 1609, 1613, 1619, 1621, 1627]

theorem maskSemanticGroup0015_passes :
    maskSemanticGroup0015.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0015 twistQrMaskWords0015) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
