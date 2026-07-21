import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0000

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0000Part00 : List ℕ :=
  [3, 7, 11, 13]

theorem rootMaskSemanticGroup0000Part00_passes :
    rootMaskSemanticGroup0000Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0000
        rootTwistQrMaskWords0000) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
