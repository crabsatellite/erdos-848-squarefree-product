import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0027

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0027Part08 : List ℕ :=
  [3109]

theorem rootMaskSemanticGroup0027Part08_passes :
    rootMaskSemanticGroup0027Part08.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
