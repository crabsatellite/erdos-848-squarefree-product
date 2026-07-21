import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0004

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0004Part03 : List ℕ :=
  [401, 409, 419, 421]

theorem rootMaskSemanticGroup0004Part03_passes :
    rootMaskSemanticGroup0004Part03.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0004
        rootTwistQrMaskWords0004) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
