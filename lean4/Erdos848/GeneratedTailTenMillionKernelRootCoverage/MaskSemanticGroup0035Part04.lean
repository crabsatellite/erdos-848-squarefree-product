import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0035

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0035Part04 : List ℕ :=
  [4127]

theorem rootMaskSemanticGroup0035Part04_passes :
    rootMaskSemanticGroup0035Part04.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
