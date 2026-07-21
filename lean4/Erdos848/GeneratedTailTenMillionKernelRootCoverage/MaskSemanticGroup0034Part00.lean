import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0034

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0034Part00 : List ℕ :=
  [3943]

theorem rootMaskSemanticGroup0034Part00_passes :
    rootMaskSemanticGroup0034Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
