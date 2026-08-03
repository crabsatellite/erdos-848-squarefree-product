import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0034

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0034Part05 : List ℕ :=
  [4003]

theorem rootMaskSemanticGroup0034Part05_passes :
    rootMaskSemanticGroup0034Part05.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
