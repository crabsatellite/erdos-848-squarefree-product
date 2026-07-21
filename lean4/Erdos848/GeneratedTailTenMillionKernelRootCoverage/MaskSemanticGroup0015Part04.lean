import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0015

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0015Part04 : List ℕ :=
  [1567]

theorem rootMaskSemanticGroup0015Part04_passes :
    rootMaskSemanticGroup0015Part04.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
