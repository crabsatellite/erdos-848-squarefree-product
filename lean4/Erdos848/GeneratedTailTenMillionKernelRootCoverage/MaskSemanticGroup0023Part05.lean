import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0023

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0023Part05 : List ℕ :=
  [2579]

theorem rootMaskSemanticGroup0023Part05_passes :
    rootMaskSemanticGroup0023Part05.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
