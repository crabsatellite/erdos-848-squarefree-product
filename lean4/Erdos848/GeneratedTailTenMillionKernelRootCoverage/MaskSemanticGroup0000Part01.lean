import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0000

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0000Part01 : List ℕ :=
  [17, 19, 23, 29]

theorem rootMaskSemanticGroup0000Part01_passes :
    rootMaskSemanticGroup0000Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0000
        rootTwistQrMaskWords0000) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
