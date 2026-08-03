import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0051
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0051Part00_group_passes :
    rootMaskSemanticGroup0051Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0051
        rootTwistQrMaskWords0051) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0051Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0051 p =
      rootNormalQrMaskWords0051Part00 p := by
    simp only [rootMaskSemanticGroup0051Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0051 p =
      rootTwistQrMaskWords0051Part00 p := by
    simp only [rootMaskSemanticGroup0051Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0051Part01_group_passes :
    rootMaskSemanticGroup0051Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0051
        rootTwistQrMaskWords0051) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0051Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0051 p =
      rootNormalQrMaskWords0051Part01 p := by
    simp only [rootMaskSemanticGroup0051Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0051 p =
      rootTwistQrMaskWords0051Part01 p := by
    simp only [rootMaskSemanticGroup0051Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0051Part02_group_passes :
    rootMaskSemanticGroup0051Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0051
        rootTwistQrMaskWords0051) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0051Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0051 p =
      rootNormalQrMaskWords0051Part02 p := by
    simp only [rootMaskSemanticGroup0051Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0051 p =
      rootTwistQrMaskWords0051Part02 p := by
    simp only [rootMaskSemanticGroup0051Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0051Part03_group_passes :
    rootMaskSemanticGroup0051Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0051
        rootTwistQrMaskWords0051) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0051Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0051 p =
      rootNormalQrMaskWords0051Part03 p := by
    simp only [rootMaskSemanticGroup0051Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0051 p =
      rootTwistQrMaskWords0051Part03 p := by
    simp only [rootMaskSemanticGroup0051Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0051 : List ℕ :=
  [6299, 6301, 6311, 6317]

theorem rootMaskSemanticGroup0051_passes :
    rootMaskSemanticGroup0051.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0051
        rootTwistQrMaskWords0051) = true := by
  rw [show rootMaskSemanticGroup0051 =
      rootMaskSemanticGroup0051Part00 ++
      rootMaskSemanticGroup0051Part01 ++
      rootMaskSemanticGroup0051Part02 ++
      rootMaskSemanticGroup0051Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0051Part00_group_passes]
  rw [rootMaskSemanticGroup0051Part01_group_passes]
  rw [rootMaskSemanticGroup0051Part02_group_passes]
  rw [rootMaskSemanticGroup0051Part03_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
