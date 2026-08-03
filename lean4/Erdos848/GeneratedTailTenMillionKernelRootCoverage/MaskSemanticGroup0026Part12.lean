import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskDataGroup0026

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0026Part12 : List ℕ :=
  [3001]

theorem rootMaskSemanticGroup0026Part12_passes :
    rootMaskSemanticGroup0026Part12.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
