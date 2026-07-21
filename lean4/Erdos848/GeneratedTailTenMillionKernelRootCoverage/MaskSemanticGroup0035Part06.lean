import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0035

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0035Part06 : List ℕ :=
  [4133]

theorem rootMaskSemanticGroup0035Part06_passes :
    rootMaskSemanticGroup0035Part06.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
