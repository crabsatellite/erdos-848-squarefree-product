import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0000

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0000Part03 : List ℕ :=
  [47, 53, 59, 61]

theorem rootMaskSemanticGroup0000Part03_passes :
    rootMaskSemanticGroup0000Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0000
        rootTwistQrMaskWords0000) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
