import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0003

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0003 : List ℕ :=
  [233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317]

theorem maskSemanticGroup0003_passes :
    maskSemanticGroup0003.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0003 twistQrMaskWords0003) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
