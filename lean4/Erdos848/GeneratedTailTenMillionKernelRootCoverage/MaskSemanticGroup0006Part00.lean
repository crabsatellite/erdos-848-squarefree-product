import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0006

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0006Part00 : List ℕ :=
  [523, 541, 547, 557]

theorem rootMaskSemanticGroup0006Part00_passes :
    rootMaskSemanticGroup0006Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0006
        rootTwistQrMaskWords0006) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
