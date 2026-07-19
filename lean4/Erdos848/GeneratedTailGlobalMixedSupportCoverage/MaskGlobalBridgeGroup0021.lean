import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskSemanticGroup0021

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticGroup0021_global_passes :
    maskSemanticGroup0021.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords twistQrMaskWords) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    maskSemanticGroup0021_passes) p hp
  have hnormal : normalQrMaskWords p = normalQrMaskWords0021 p := by
    simp only [maskSemanticGroup0021, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : twistQrMaskWords p = twistQrMaskWords0021 p := by
    simp only [maskSemanticGroup0021, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.globalMixedMaskPassesWith
    Erdos848.globalMixedNormalMaskPassesWith
    Erdos848.globalMixedTwistMaskPassesWith at hlocal ⊢
  rw [hnormal, htwist]
  exact hlocal

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
