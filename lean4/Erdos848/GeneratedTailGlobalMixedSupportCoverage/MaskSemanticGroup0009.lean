import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0009

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0009 : List ℕ :=
  [853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953]

theorem maskSemanticGroup0009_passes :
    maskSemanticGroup0009.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0009 twistQrMaskWords0009) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
