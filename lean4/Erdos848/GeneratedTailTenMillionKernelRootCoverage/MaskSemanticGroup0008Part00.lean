import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0008

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0008Part00 : List ℕ :=
  [739, 743, 751, 757]

theorem rootMaskSemanticGroup0008Part00_passes :
    rootMaskSemanticGroup0008Part00.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0008
        rootTwistQrMaskWords0008) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
