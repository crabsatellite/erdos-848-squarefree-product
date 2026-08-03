import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part12NormalPeriod
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part12NormalSquares
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part12TwistPeriod

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0050Part12 : List ℕ :=
  [6269]

theorem rootMaskSemanticGroup0050Part12_passes :
    rootMaskSemanticGroup0050Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050Part12
        rootTwistQrMaskWords0050Part12) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  simp only [rootMaskSemanticGroup0050Part12, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    rootMaskSemanticGroup0050Part12_normal_period_passes
    rootMaskSemanticGroup0050Part12_normal_squares_passes
    rootMaskSemanticGroup0050Part12_twist_period_passes

end Erdos848.GeneratedTailTwentyMillionRootCoverage
