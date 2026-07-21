import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0011

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0011Part02 : List ℕ :=
  [1117, 1123, 1129, 1151]

theorem rootMaskSemanticGroup0011Part02_passes :
    rootMaskSemanticGroup0011Part02.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0011
        rootTwistQrMaskWords0011) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
