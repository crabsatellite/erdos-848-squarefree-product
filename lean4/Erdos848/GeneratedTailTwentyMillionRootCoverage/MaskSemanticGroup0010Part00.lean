import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0010

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0010Part00 : List ℕ :=
  [967, 971, 977, 983]

theorem rootMaskSemanticGroup0010Part00_passes :
    rootMaskSemanticGroup0010Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0010
        rootTwistQrMaskWords0010) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
