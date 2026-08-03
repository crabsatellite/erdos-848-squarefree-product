import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part11NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part11NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part11TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0046Part11 : List ℕ :=
  [5693]

theorem rootMaskSemanticGroup0046Part11_passes :
    rootMaskSemanticGroup0046Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046Part11
        rootTwistQrMaskWords0046Part11) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0046Part11, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0046Part11_normal_period_passes
    rootMaskSemanticGroup0046Part11_normal_squares_passes
    rootMaskSemanticGroup0046Part11_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
