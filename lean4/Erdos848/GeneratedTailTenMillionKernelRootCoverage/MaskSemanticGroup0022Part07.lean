import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0022

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0022Part07 : List ℕ :=
  [2441]

theorem rootMaskSemanticGroup0022Part07_passes :
    rootMaskSemanticGroup0022Part07.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
