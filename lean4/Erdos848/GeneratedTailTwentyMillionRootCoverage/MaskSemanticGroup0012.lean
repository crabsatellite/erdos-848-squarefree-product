import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012Part03

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0012 : List ℕ :=
  [1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291]

theorem rootMaskSemanticGroup0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0012
        rootTwistQrMaskWords0012) = true := by
  rw [show rootMaskSemanticGroup0012 =
      rootMaskSemanticGroup0012Part00 ++
      rootMaskSemanticGroup0012Part01 ++
      rootMaskSemanticGroup0012Part02 ++
      rootMaskSemanticGroup0012Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0012Part00_passes]
  rw [rootMaskSemanticGroup0012Part01_passes]
  rw [rootMaskSemanticGroup0012Part02_passes]
  rw [rootMaskSemanticGroup0012Part03_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
