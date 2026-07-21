import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0010

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0010Part01 : List ℕ :=
  [991, 997, 1009, 1013]

theorem rootMaskSemanticGroup0010Part01_passes :
    rootMaskSemanticGroup0010Part01.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0010
        rootTwistQrMaskWords0010) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
