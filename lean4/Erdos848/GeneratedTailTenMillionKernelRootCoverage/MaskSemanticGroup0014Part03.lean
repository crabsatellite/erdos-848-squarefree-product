import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0014

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0014Part03 : List ℕ :=
  [1451]

theorem rootMaskSemanticGroup0014Part03_passes :
    rootMaskSemanticGroup0014Part03.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
