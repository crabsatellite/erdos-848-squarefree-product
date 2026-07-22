import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007Part03

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0007 : List ℕ :=
  [631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733]

theorem rootMaskSemanticGroup0007_passes :
    rootMaskSemanticGroup0007.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0007
        rootTwistQrMaskWords0007) = true := by
  rw [show rootMaskSemanticGroup0007 =
      rootMaskSemanticGroup0007Part00 ++
      rootMaskSemanticGroup0007Part01 ++
      rootMaskSemanticGroup0007Part02 ++
      rootMaskSemanticGroup0007Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0007Part00_passes]
  rw [rootMaskSemanticGroup0007Part01_passes]
  rw [rootMaskSemanticGroup0007Part02_passes]
  rw [rootMaskSemanticGroup0007Part03_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
