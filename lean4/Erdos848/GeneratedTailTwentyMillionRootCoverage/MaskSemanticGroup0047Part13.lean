import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part13NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part13NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part13TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0047Part13 : List ℕ :=
  [5849]

theorem rootMaskSemanticGroup0047Part13_passes :
    rootMaskSemanticGroup0047Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047Part13
        rootTwistQrMaskWords0047Part13) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0047Part13, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0047Part13_normal_period_passes
    rootMaskSemanticGroup0047Part13_normal_squares_passes
    rootMaskSemanticGroup0047Part13_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
