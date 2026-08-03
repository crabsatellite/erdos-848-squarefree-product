import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0025

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0025Part11 : List ℕ :=
  [2851]

theorem rootMaskSemanticGroup0025Part11_passes :
    rootMaskSemanticGroup0025Part11.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
