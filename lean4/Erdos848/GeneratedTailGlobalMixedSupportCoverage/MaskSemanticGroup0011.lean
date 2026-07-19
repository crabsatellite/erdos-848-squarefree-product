import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0011

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0011 : List ℕ :=
  [1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181]

theorem maskSemanticGroup0011_passes :
    maskSemanticGroup0011.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0011 twistQrMaskWords0011) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
