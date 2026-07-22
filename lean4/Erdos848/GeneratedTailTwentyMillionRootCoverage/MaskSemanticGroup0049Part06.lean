import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part06NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part06NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part06TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0049Part06 : List ℕ :=
  [6079]

theorem rootMaskSemanticGroup0049Part06_passes :
    rootMaskSemanticGroup0049Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049Part06
        rootTwistQrMaskWords0049Part06) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0049Part06, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0049Part06_normal_period_passes
    rootMaskSemanticGroup0049Part06_normal_squares_passes
    rootMaskSemanticGroup0049Part06_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
