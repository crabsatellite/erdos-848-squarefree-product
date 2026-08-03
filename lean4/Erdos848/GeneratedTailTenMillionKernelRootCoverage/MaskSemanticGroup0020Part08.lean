import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0020

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0020Part08 : List ℕ :=
  [2221]

theorem rootMaskSemanticGroup0020Part08_passes :
    rootMaskSemanticGroup0020Part08.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
