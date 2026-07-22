import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0001Part00 : List ℕ :=
  [67, 71, 73, 79]

theorem rootMaskSemanticGroup0001Part00_passes :
    rootMaskSemanticGroup0001Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0001
        rootTwistQrMaskWords0001) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
