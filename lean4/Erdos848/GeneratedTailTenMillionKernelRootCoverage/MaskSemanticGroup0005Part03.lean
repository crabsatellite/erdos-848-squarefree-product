import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0005

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0005Part03 : List ℕ :=
  [499, 503, 509, 521]

theorem rootMaskSemanticGroup0005Part03_passes :
    rootMaskSemanticGroup0005Part03.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0005
        rootTwistQrMaskWords0005) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
