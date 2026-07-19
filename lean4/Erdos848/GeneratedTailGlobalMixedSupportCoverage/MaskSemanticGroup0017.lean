import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0017

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0017 : List ℕ :=
  [1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831, 1847, 1861, 1867, 1871, 1873, 1877, 1879, 1889]

theorem maskSemanticGroup0017_passes :
    maskSemanticGroup0017.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0017 twistQrMaskWords0017) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
