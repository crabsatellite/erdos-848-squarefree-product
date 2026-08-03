import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0001Part01 : List ℕ :=
  [83, 89, 97, 101]

theorem rootMaskSemanticGroup0001Part01_passes :
    rootMaskSemanticGroup0001Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0001
        rootTwistQrMaskWords0001) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
