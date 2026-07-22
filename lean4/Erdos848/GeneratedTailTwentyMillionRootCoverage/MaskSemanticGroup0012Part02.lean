import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0012

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0012Part02 : List ℕ :=
  [1237, 1249, 1259, 1277]

theorem rootMaskSemanticGroup0012Part02_passes :
    rootMaskSemanticGroup0012Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0012
        rootTwistQrMaskWords0012) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
