import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0010

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0010 : List ℕ :=
  [967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, 1031, 1033, 1039, 1049, 1051, 1061]

theorem maskSemanticGroup0010_passes :
    maskSemanticGroup0010.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0010 twistQrMaskWords0010) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
