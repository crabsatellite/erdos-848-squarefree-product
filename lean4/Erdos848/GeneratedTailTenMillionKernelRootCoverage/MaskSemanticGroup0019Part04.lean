import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0019

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0019Part04 : List ℕ :=
  [2063]

theorem rootMaskSemanticGroup0019Part04_passes :
    rootMaskSemanticGroup0019Part04.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
