import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0003

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0003Part00 : List ℕ :=
  [233, 239, 241, 251]

theorem rootMaskSemanticGroup0003Part00_passes :
    rootMaskSemanticGroup0003Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0003
        rootTwistQrMaskWords0003) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
