import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0034

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0034Part06 : List ℕ :=
  [4007]

theorem rootMaskSemanticGroup0034Part06_passes :
    rootMaskSemanticGroup0034Part06.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
