import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0003

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0003Part00 : List ℕ :=
  [233, 239, 241, 251]

theorem rootMaskSemanticGroup0003Part00_passes :
    rootMaskSemanticGroup0003Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0003
        rootTwistQrMaskWords0003) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
