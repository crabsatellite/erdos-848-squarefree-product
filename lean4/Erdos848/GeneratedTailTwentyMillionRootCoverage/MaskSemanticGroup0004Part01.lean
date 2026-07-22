import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0004Part01 : List ℕ :=
  [353, 359, 367, 373]

theorem rootMaskSemanticGroup0004Part01_passes :
    rootMaskSemanticGroup0004Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0004
        rootTwistQrMaskWords0004) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
