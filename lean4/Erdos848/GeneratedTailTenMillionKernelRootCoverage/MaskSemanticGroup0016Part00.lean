import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0016

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0016Part00 : List ℕ :=
  [1637]

theorem rootMaskSemanticGroup0016Part00_passes :
    rootMaskSemanticGroup0016Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
