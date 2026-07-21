import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0007

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0007Part00 : List ℕ :=
  [631, 641, 643, 647]

theorem rootMaskSemanticGroup0007Part00_passes :
    rootMaskSemanticGroup0007Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0007
        rootTwistQrMaskWords0007) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
