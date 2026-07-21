import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0023

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0023Part00 : List ℕ :=
  [2539]

theorem rootMaskSemanticGroup0023Part00_passes :
    rootMaskSemanticGroup0023Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
