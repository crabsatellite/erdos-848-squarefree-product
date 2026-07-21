import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0012

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0012Part01 : List ℕ :=
  [1217, 1223, 1229, 1231]

theorem rootMaskSemanticGroup0012Part01_passes :
    rootMaskSemanticGroup0012Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0012
        rootTwistQrMaskWords0012) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
