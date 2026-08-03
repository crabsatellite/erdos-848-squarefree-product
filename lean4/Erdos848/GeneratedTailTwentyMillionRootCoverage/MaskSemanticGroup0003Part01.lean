import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0003

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0003Part01 : List ℕ :=
  [257, 263, 269, 271]

theorem rootMaskSemanticGroup0003Part01_passes :
    rootMaskSemanticGroup0003Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0003
        rootTwistQrMaskWords0003) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
