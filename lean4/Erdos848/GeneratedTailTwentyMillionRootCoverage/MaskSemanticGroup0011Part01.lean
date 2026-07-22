import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0011

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0011Part01 : List ℕ :=
  [1093, 1097, 1103, 1109]

theorem rootMaskSemanticGroup0011Part01_passes :
    rootMaskSemanticGroup0011Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0011
        rootTwistQrMaskWords0011) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
