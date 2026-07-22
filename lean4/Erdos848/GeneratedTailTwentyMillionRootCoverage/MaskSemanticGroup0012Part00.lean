import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0012

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0012Part00 : List ℕ :=
  [1187, 1193, 1201, 1213]

theorem rootMaskSemanticGroup0012Part00_passes :
    rootMaskSemanticGroup0012Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0012
        rootTwistQrMaskWords0012) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
