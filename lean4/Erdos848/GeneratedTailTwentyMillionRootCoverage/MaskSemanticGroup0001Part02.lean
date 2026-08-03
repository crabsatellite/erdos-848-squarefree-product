import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0001Part02 : List ℕ :=
  [103, 107, 109, 113]

theorem rootMaskSemanticGroup0001Part02_passes :
    rootMaskSemanticGroup0001Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0001
        rootTwistQrMaskWords0001) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
