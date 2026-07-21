import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0007

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0007Part02 : List ℕ :=
  [677, 683, 691, 701]

theorem rootMaskSemanticGroup0007Part02_passes :
    rootMaskSemanticGroup0007Part02.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0007
        rootTwistQrMaskWords0007) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
