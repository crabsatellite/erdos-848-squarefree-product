import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0000

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0000Part02 : List ℕ :=
  [31, 37, 41, 43]

theorem rootMaskSemanticGroup0000Part02_passes :
    rootMaskSemanticGroup0000Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0000
        rootTwistQrMaskWords0000) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
