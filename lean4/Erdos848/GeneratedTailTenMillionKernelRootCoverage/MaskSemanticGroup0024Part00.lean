import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0024

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0024Part00 : List ℕ :=
  [2671]

theorem rootMaskSemanticGroup0024Part00_passes :
    rootMaskSemanticGroup0024Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
