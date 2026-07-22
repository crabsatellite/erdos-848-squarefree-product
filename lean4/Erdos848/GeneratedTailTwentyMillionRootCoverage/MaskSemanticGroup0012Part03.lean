import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0012

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0012Part03 : List ℕ :=
  [1279, 1283, 1289, 1291]

theorem rootMaskSemanticGroup0012Part03_passes :
    rootMaskSemanticGroup0012Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0012
        rootTwistQrMaskWords0012) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
