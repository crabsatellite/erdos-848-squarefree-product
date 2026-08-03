import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0036

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0036Part09 : List ℕ :=
  [4283]

theorem rootMaskSemanticGroup0036Part09_passes :
    rootMaskSemanticGroup0036Part09.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
