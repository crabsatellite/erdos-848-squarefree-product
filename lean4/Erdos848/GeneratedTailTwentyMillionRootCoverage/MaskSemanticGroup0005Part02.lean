import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0005

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0005Part02 : List ℕ :=
  [467, 479, 487, 491]

theorem rootMaskSemanticGroup0005Part02_passes :
    rootMaskSemanticGroup0005Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0005
        rootTwistQrMaskWords0005) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
