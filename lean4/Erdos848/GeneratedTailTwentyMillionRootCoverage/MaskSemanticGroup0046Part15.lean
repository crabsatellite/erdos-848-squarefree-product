import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part15NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part15NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part15TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0046Part15 : List ℕ :=
  [5737]

theorem rootMaskSemanticGroup0046Part15_passes :
    rootMaskSemanticGroup0046Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046Part15
        rootTwistQrMaskWords0046Part15) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0046Part15, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0046Part15_normal_period_passes
    rootMaskSemanticGroup0046Part15_normal_squares_passes
    rootMaskSemanticGroup0046Part15_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
