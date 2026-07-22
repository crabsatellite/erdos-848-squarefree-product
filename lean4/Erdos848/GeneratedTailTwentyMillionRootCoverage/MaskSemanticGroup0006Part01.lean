import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0006

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0006Part01 : List ℕ :=
  [563, 569, 571, 577]

theorem rootMaskSemanticGroup0006Part01_passes :
    rootMaskSemanticGroup0006Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0006
        rootTwistQrMaskWords0006) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
