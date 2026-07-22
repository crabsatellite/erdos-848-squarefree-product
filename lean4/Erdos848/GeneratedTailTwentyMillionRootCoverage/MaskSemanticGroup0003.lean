import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003Part03

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0003 : List ℕ :=
  [233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317]

theorem rootMaskSemanticGroup0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0003
        rootTwistQrMaskWords0003) = true := by
  rw [show rootMaskSemanticGroup0003 =
      rootMaskSemanticGroup0003Part00 ++
      rootMaskSemanticGroup0003Part01 ++
      rootMaskSemanticGroup0003Part02 ++
      rootMaskSemanticGroup0003Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0003Part00_passes]
  rw [rootMaskSemanticGroup0003Part01_passes]
  rw [rootMaskSemanticGroup0003Part02_passes]
  rw [rootMaskSemanticGroup0003Part03_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
