import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0004

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0004Part01 : List ℕ :=
  [353, 359, 367, 373]

theorem rootMaskSemanticGroup0004Part01_passes :
    rootMaskSemanticGroup0004Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0004
        rootTwistQrMaskWords0004) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
