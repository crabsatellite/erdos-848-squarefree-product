import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0009

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0009Part02 : List ℕ :=
  [907, 911, 919, 929]

theorem rootMaskSemanticGroup0009Part02_passes :
    rootMaskSemanticGroup0009Part02.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0009
        rootTwistQrMaskWords0009) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
