import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0037

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0037Part03 : List ℕ :=
  [4391]

theorem rootMaskSemanticGroup0037Part03_passes :
    rootMaskSemanticGroup0037Part03.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
