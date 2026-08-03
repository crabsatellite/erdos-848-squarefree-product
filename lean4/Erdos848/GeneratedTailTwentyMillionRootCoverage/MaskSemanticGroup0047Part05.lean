import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part05NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part05NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part05TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0047Part05 : List ℕ :=
  [5791]

theorem rootMaskSemanticGroup0047Part05_passes :
    rootMaskSemanticGroup0047Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047Part05
        rootTwistQrMaskWords0047Part05) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0047Part05, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0047Part05_normal_period_passes
    rootMaskSemanticGroup0047Part05_normal_squares_passes
    rootMaskSemanticGroup0047Part05_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
