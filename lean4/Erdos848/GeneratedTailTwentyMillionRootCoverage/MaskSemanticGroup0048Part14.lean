import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part14NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part14NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part14TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0048Part14 : List ℕ :=
  [6011]

theorem rootMaskSemanticGroup0048Part14_passes :
    rootMaskSemanticGroup0048Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048Part14
        rootTwistQrMaskWords0048Part14) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0048Part14, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0048Part14_normal_period_passes
    rootMaskSemanticGroup0048Part14_normal_squares_passes
    rootMaskSemanticGroup0048Part14_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
