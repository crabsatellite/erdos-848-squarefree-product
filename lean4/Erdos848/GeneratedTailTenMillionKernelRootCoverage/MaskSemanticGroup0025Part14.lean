import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0025

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0025Part14 : List ℕ :=
  [2879]

theorem rootMaskSemanticGroup0025Part14_passes :
    rootMaskSemanticGroup0025Part14.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
