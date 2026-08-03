import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0021

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0021Part05 : List ℕ :=
  [2311]

theorem rootMaskSemanticGroup0021Part05_passes :
    rootMaskSemanticGroup0021Part05.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
