import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001Part03

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0001 : List ℕ :=
  [67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139]

theorem rootMaskSemanticGroup0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0001
        rootTwistQrMaskWords0001) = true := by
  rw [show rootMaskSemanticGroup0001 =
      rootMaskSemanticGroup0001Part00 ++
      rootMaskSemanticGroup0001Part01 ++
      rootMaskSemanticGroup0001Part02 ++
      rootMaskSemanticGroup0001Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0001Part00_passes]
  rw [rootMaskSemanticGroup0001Part01_passes]
  rw [rootMaskSemanticGroup0001Part02_passes]
  rw [rootMaskSemanticGroup0001Part03_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
