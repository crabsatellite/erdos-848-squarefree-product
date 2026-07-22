import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0006Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0006Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0006Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0006Part03

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0006 : List ℕ :=
  [523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619]

theorem rootMaskSemanticGroup0006_passes :
    rootMaskSemanticGroup0006.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0006
        rootTwistQrMaskWords0006) = true := by
  rw [show rootMaskSemanticGroup0006 =
      rootMaskSemanticGroup0006Part00 ++
      rootMaskSemanticGroup0006Part01 ++
      rootMaskSemanticGroup0006Part02 ++
      rootMaskSemanticGroup0006Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0006Part00_passes]
  rw [rootMaskSemanticGroup0006Part01_passes]
  rw [rootMaskSemanticGroup0006Part02_passes]
  rw [rootMaskSemanticGroup0006Part03_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
