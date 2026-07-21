import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0028

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0028Part00 : List ℕ :=
  [3187]

theorem rootMaskSemanticGroup0028Part00_passes :
    rootMaskSemanticGroup0028Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
