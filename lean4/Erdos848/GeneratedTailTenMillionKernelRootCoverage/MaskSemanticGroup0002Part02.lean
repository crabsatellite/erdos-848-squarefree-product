import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0002Part02 : List ℕ :=
  [191, 193, 197, 199]

theorem rootMaskSemanticGroup0002Part02_passes :
    rootMaskSemanticGroup0002Part02.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0002
        rootTwistQrMaskWords0002) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
