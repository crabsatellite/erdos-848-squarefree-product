import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0032

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0032Part08 : List ℕ :=
  [3761]

theorem rootMaskSemanticGroup0032Part08_passes :
    rootMaskSemanticGroup0032Part08.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
