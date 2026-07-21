import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0007

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0007Part01 : List ℕ :=
  [653, 659, 661, 673]

theorem rootMaskSemanticGroup0007Part01_passes :
    rootMaskSemanticGroup0007Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0007
        rootTwistQrMaskWords0007) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
