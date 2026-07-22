import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0006

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0006Part03 : List ℕ :=
  [607, 613, 617, 619]

theorem rootMaskSemanticGroup0006Part03_passes :
    rootMaskSemanticGroup0006Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0006
        rootTwistQrMaskWords0006) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
