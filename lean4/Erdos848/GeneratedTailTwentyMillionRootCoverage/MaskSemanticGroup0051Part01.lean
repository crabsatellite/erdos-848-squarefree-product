import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part01NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part01NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part01TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0051Part01 : List ℕ :=
  [6301]

theorem rootMaskSemanticGroup0051Part01_passes :
    rootMaskSemanticGroup0051Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0051Part01
        rootTwistQrMaskWords0051Part01) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0051Part01, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0051Part01_normal_period_passes
    rootMaskSemanticGroup0051Part01_normal_squares_passes
    rootMaskSemanticGroup0051Part01_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
