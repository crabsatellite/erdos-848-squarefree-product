import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part08NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part08NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part08TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0048Part08 : List ℕ :=
  [5927]

theorem rootMaskSemanticGroup0048Part08_passes :
    rootMaskSemanticGroup0048Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048Part08
        rootTwistQrMaskWords0048Part08) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0048Part08, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0048Part08_normal_period_passes
    rootMaskSemanticGroup0048Part08_normal_squares_passes
    rootMaskSemanticGroup0048Part08_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
