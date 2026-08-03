import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0031

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0031Part13 : List ℕ :=
  [3671]

theorem rootMaskSemanticGroup0031Part13_passes :
    rootMaskSemanticGroup0031Part13.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
