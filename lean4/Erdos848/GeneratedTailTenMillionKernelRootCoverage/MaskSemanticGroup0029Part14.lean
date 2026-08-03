import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0029

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0029Part14 : List ℕ :=
  [3433]

theorem rootMaskSemanticGroup0029Part14_passes :
    rootMaskSemanticGroup0029Part14.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
