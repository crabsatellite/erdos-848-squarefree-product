import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0018

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0018Part01 : List ℕ :=
  [1907]

theorem rootMaskSemanticGroup0018Part01_passes :
    rootMaskSemanticGroup0018Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
