import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0009

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0009Part01 : List ℕ :=
  [877, 881, 883, 887]

theorem rootMaskSemanticGroup0009Part01_passes :
    rootMaskSemanticGroup0009Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0009
        rootTwistQrMaskWords0009) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
