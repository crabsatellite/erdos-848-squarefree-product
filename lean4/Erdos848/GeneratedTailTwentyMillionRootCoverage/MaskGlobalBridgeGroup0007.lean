import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskData
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0007_global_passes :
    rootMaskSemanticGroup0007.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords rootTwistQrMaskWords) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0007_passes) p hp
  have hnormal : rootNormalQrMaskWords p =
      rootNormalQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : rootTwistQrMaskWords p =
      rootTwistQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

end Erdos848.GeneratedTailTwentyMillionRootCoverage
