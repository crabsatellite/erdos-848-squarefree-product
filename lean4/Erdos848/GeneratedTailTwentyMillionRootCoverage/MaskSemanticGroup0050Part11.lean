import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part11NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part11NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part11TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0050Part11 : List ℕ :=
  [6263]

theorem rootMaskSemanticGroup0050Part11_passes :
    rootMaskSemanticGroup0050Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050Part11
        rootTwistQrMaskWords0050Part11) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0050Part11, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0050Part11_normal_period_passes
    rootMaskSemanticGroup0050Part11_normal_squares_passes
    rootMaskSemanticGroup0050Part11_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
