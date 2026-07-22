import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part09NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part09NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part09TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0046Part09 : List ℕ :=
  [5683]

theorem rootMaskSemanticGroup0046Part09_passes :
    rootMaskSemanticGroup0046Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046Part09
        rootTwistQrMaskWords0046Part09) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0046Part09, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0046Part09_normal_period_passes
    rootMaskSemanticGroup0046Part09_normal_squares_passes
    rootMaskSemanticGroup0046Part09_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
