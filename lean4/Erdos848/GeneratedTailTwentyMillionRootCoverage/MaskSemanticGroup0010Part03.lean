import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0010

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0010Part03 : List ℕ :=
  [1039, 1049, 1051, 1061]

theorem rootMaskSemanticGroup0010Part03_passes :
    rootMaskSemanticGroup0010Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0010
        rootTwistQrMaskWords0010) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
