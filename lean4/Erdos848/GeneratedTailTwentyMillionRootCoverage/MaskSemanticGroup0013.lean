import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0013Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0013Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0013Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0013Part03

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0013 : List ℕ :=
  [1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429]

theorem rootMaskSemanticGroup0013_passes :
    rootMaskSemanticGroup0013.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0013
        rootTwistQrMaskWords0013) = true := by
  rw [show rootMaskSemanticGroup0013 =
      rootMaskSemanticGroup0013Part00 ++
      rootMaskSemanticGroup0013Part01 ++
      rootMaskSemanticGroup0013Part02 ++
      rootMaskSemanticGroup0013Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0013Part00_passes]
  rw [rootMaskSemanticGroup0013Part01_passes]
  rw [rootMaskSemanticGroup0013Part02_passes]
  rw [rootMaskSemanticGroup0013Part03_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
