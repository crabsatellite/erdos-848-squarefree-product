import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0032

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0032Part04 : List ℕ :=
  [3719]

theorem rootMaskSemanticGroup0032Part04_passes :
    rootMaskSemanticGroup0032Part04.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
