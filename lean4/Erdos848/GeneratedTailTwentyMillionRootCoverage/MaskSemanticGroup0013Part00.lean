import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0013

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0013Part00 : List ℕ :=
  [1297, 1301, 1303, 1307]

theorem rootMaskSemanticGroup0013Part00_passes :
    rootMaskSemanticGroup0013Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0013
        rootTwistQrMaskWords0013) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
