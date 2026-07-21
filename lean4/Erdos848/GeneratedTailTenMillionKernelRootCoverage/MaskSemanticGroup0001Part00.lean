import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0001Part00 : List ℕ :=
  [67, 71, 73, 79]

theorem rootMaskSemanticGroup0001Part00_passes :
    rootMaskSemanticGroup0001Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0001
        rootTwistQrMaskWords0001) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
