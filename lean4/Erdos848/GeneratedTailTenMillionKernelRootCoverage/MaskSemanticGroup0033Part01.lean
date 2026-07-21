import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0033

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0033Part01 : List ℕ :=
  [3833]

theorem rootMaskSemanticGroup0033Part01_passes :
    rootMaskSemanticGroup0033Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
