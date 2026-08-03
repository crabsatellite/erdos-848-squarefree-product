import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0016

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0016Part11 : List ℕ :=
  [1733]

theorem rootMaskSemanticGroup0016Part11_passes :
    rootMaskSemanticGroup0016Part11.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
