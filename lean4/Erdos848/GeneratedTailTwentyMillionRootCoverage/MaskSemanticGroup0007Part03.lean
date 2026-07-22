import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0007

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0007Part03 : List ℕ :=
  [709, 719, 727, 733]

theorem rootMaskSemanticGroup0007Part03_passes :
    rootMaskSemanticGroup0007Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0007
        rootTwistQrMaskWords0007) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
