import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part03NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part03NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part03TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0051Part03 : List ℕ :=
  [6317]

theorem rootMaskSemanticGroup0051Part03_passes :
    rootMaskSemanticGroup0051Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0051Part03
        rootTwistQrMaskWords0051Part03) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0051Part03, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0051Part03_normal_period_passes
    rootMaskSemanticGroup0051Part03_normal_squares_passes
    rootMaskSemanticGroup0051Part03_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
