import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0002Part03 : List ℕ :=
  [211, 223, 227, 229]

theorem rootMaskSemanticGroup0002Part03_passes :
    rootMaskSemanticGroup0002Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0002
        rootTwistQrMaskWords0002) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
