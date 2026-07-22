import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part10NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part10NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part10TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0050Part10 : List ℕ :=
  [6257]

theorem rootMaskSemanticGroup0050Part10_passes :
    rootMaskSemanticGroup0050Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050Part10
        rootTwistQrMaskWords0050Part10) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0050Part10, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0050Part10_normal_period_passes
    rootMaskSemanticGroup0050Part10_normal_squares_passes
    rootMaskSemanticGroup0050Part10_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
