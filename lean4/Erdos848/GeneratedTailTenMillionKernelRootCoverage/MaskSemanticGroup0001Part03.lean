import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0001Part03 : List ℕ :=
  [127, 131, 137, 139]

theorem rootMaskSemanticGroup0001Part03_passes :
    rootMaskSemanticGroup0001Part03.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0001
        rootTwistQrMaskWords0001) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
