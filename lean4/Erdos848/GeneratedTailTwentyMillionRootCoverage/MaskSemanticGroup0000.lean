import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000Part03

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0000 : List ℕ :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61]

theorem rootMaskSemanticGroup0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0000
        rootTwistQrMaskWords0000) = true := by
  rw [show rootMaskSemanticGroup0000 =
      rootMaskSemanticGroup0000Part00 ++
      rootMaskSemanticGroup0000Part01 ++
      rootMaskSemanticGroup0000Part02 ++
      rootMaskSemanticGroup0000Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0000Part00_passes]
  rw [rootMaskSemanticGroup0000Part01_passes]
  rw [rootMaskSemanticGroup0000Part02_passes]
  rw [rootMaskSemanticGroup0000Part03_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
