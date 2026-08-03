import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0030

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0030Part12 : List ℕ :=
  [3539]

theorem rootMaskSemanticGroup0030Part12_passes :
    rootMaskSemanticGroup0030Part12.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
