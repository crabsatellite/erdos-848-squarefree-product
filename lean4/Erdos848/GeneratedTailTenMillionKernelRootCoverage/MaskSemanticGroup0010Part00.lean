import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0010

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0010Part00 : List ℕ :=
  [967, 971, 977, 983]

theorem rootMaskSemanticGroup0010Part00_passes :
    rootMaskSemanticGroup0010Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0010
        rootTwistQrMaskWords0010) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
