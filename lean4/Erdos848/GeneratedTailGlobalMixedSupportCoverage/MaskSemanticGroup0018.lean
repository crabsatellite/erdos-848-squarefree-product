import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0018

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0018 : List ℕ :=
  [1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973, 1979, 1987, 1993, 1997, 1999, 2003, 2011, 2017]

theorem maskSemanticGroup0018_passes :
    maskSemanticGroup0018.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0018 twistQrMaskWords0018) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
