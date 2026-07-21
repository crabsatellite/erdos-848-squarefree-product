import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0013

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0013Part02 : List ℕ :=
  [1367, 1373, 1381, 1399]

theorem rootMaskSemanticGroup0013Part02_passes :
    rootMaskSemanticGroup0013Part02.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0013
        rootTwistQrMaskWords0013) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
