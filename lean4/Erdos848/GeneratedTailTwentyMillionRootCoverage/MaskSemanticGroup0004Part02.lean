import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0004Part02 : List ℕ :=
  [379, 383, 389, 397]

theorem rootMaskSemanticGroup0004Part02_passes :
    rootMaskSemanticGroup0004Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0004
        rootTwistQrMaskWords0004) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
