import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0018

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0018Part02 : List ℕ :=
  [1913]

theorem rootMaskSemanticGroup0018Part02_passes :
    rootMaskSemanticGroup0018Part02.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
