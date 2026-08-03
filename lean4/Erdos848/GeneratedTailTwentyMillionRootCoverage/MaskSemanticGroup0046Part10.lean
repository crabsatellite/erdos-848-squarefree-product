import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part10NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part10NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part10TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0046Part10 : List ℕ :=
  [5689]

theorem rootMaskSemanticGroup0046Part10_passes :
    rootMaskSemanticGroup0046Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046Part10
        rootTwistQrMaskWords0046Part10) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0046Part10, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0046Part10_normal_period_passes
    rootMaskSemanticGroup0046Part10_normal_squares_passes
    rootMaskSemanticGroup0046Part10_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
