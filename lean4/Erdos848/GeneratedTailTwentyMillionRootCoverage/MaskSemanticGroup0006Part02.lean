import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0006

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0006Part02 : List ℕ :=
  [587, 593, 599, 601]

theorem rootMaskSemanticGroup0006Part02_passes :
    rootMaskSemanticGroup0006Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0006
        rootTwistQrMaskWords0006) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
