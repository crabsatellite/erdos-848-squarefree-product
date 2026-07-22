import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part00NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part00NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part00TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0050Part00 : List ℕ :=
  [6163]

theorem rootMaskSemanticGroup0050Part00_passes :
    rootMaskSemanticGroup0050Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050Part00
        rootTwistQrMaskWords0050Part00) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0050Part00, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0050Part00_normal_period_passes
    rootMaskSemanticGroup0050Part00_normal_squares_passes
    rootMaskSemanticGroup0050Part00_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
