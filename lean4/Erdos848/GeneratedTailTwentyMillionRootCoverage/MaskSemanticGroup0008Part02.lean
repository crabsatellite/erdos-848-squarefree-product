import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0008

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0008Part02 : List ℕ :=
  [797, 809, 811, 821]

theorem rootMaskSemanticGroup0008Part02_passes :
    rootMaskSemanticGroup0008Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0008
        rootTwistQrMaskWords0008) = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
