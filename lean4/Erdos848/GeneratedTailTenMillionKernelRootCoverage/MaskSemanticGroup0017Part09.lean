import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0017

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0017Part09 : List ℕ :=
  [1861]

theorem rootMaskSemanticGroup0017Part09_passes :
    rootMaskSemanticGroup0017Part09.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
