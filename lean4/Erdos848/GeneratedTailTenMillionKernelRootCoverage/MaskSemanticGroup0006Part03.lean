import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0006

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0006Part03 : List ℕ :=
  [607, 613, 617, 619]

theorem rootMaskSemanticGroup0006Part03_passes :
    rootMaskSemanticGroup0006Part03.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0006
        rootTwistQrMaskWords0006) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
