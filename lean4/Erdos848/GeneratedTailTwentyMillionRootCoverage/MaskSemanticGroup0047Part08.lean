import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part08NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part08NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part08TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0047Part08 : List ℕ :=
  [5813]

theorem rootMaskSemanticGroup0047Part08_passes :
    rootMaskSemanticGroup0047Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047Part08
        rootTwistQrMaskWords0047Part08) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0047Part08, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0047Part08_normal_period_passes
    rootMaskSemanticGroup0047Part08_normal_squares_passes
    rootMaskSemanticGroup0047Part08_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
