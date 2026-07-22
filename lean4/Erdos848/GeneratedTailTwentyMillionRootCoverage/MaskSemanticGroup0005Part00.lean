import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0005

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0005Part00 : List ℕ :=
  [431, 433, 439, 443]

theorem rootMaskSemanticGroup0005Part00_passes :
    rootMaskSemanticGroup0005Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0005
        rootTwistQrMaskWords0005) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
