import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0037Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0037
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0037Part00_group_passes :
    rootMaskSemanticGroup0037Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part00 p := by
    simp only [rootMaskSemanticGroup0037Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part00 p := by
    simp only [rootMaskSemanticGroup0037Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part01_group_passes :
    rootMaskSemanticGroup0037Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part01 p := by
    simp only [rootMaskSemanticGroup0037Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part01 p := by
    simp only [rootMaskSemanticGroup0037Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part02_group_passes :
    rootMaskSemanticGroup0037Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part02 p := by
    simp only [rootMaskSemanticGroup0037Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part02 p := by
    simp only [rootMaskSemanticGroup0037Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part03_group_passes :
    rootMaskSemanticGroup0037Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part03 p := by
    simp only [rootMaskSemanticGroup0037Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part03 p := by
    simp only [rootMaskSemanticGroup0037Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part04_group_passes :
    rootMaskSemanticGroup0037Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part04 p := by
    simp only [rootMaskSemanticGroup0037Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part04 p := by
    simp only [rootMaskSemanticGroup0037Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part05_group_passes :
    rootMaskSemanticGroup0037Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part05 p := by
    simp only [rootMaskSemanticGroup0037Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part05 p := by
    simp only [rootMaskSemanticGroup0037Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part06_group_passes :
    rootMaskSemanticGroup0037Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part06 p := by
    simp only [rootMaskSemanticGroup0037Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part06 p := by
    simp only [rootMaskSemanticGroup0037Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part07_group_passes :
    rootMaskSemanticGroup0037Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part07 p := by
    simp only [rootMaskSemanticGroup0037Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part07 p := by
    simp only [rootMaskSemanticGroup0037Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part08_group_passes :
    rootMaskSemanticGroup0037Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part08 p := by
    simp only [rootMaskSemanticGroup0037Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part08 p := by
    simp only [rootMaskSemanticGroup0037Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part09_group_passes :
    rootMaskSemanticGroup0037Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part09 p := by
    simp only [rootMaskSemanticGroup0037Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part09 p := by
    simp only [rootMaskSemanticGroup0037Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part10_group_passes :
    rootMaskSemanticGroup0037Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part10 p := by
    simp only [rootMaskSemanticGroup0037Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part10 p := by
    simp only [rootMaskSemanticGroup0037Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part11_group_passes :
    rootMaskSemanticGroup0037Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part11 p := by
    simp only [rootMaskSemanticGroup0037Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part11 p := by
    simp only [rootMaskSemanticGroup0037Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part12_group_passes :
    rootMaskSemanticGroup0037Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part12 p := by
    simp only [rootMaskSemanticGroup0037Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part12 p := by
    simp only [rootMaskSemanticGroup0037Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part13_group_passes :
    rootMaskSemanticGroup0037Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part13 p := by
    simp only [rootMaskSemanticGroup0037Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part13 p := by
    simp only [rootMaskSemanticGroup0037Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part14_group_passes :
    rootMaskSemanticGroup0037Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part14 p := by
    simp only [rootMaskSemanticGroup0037Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part14 p := by
    simp only [rootMaskSemanticGroup0037Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0037Part15_group_passes :
    rootMaskSemanticGroup0037Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0037 p =
      rootNormalQrMaskWords0037Part15 p := by
    simp only [rootMaskSemanticGroup0037Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0037 p =
      rootTwistQrMaskWords0037Part15 p := by
    simp only [rootMaskSemanticGroup0037Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0037 : List ℕ :=
  [4357, 4363, 4373, 4391, 4397, 4409, 4421, 4423, 4441, 4447, 4451, 4457, 4463, 4481, 4483, 4493]

theorem rootMaskSemanticGroup0037_passes :
    rootMaskSemanticGroup0037.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  rw [show rootMaskSemanticGroup0037 =
      rootMaskSemanticGroup0037Part00 ++
      rootMaskSemanticGroup0037Part01 ++
      rootMaskSemanticGroup0037Part02 ++
      rootMaskSemanticGroup0037Part03 ++
      rootMaskSemanticGroup0037Part04 ++
      rootMaskSemanticGroup0037Part05 ++
      rootMaskSemanticGroup0037Part06 ++
      rootMaskSemanticGroup0037Part07 ++
      rootMaskSemanticGroup0037Part08 ++
      rootMaskSemanticGroup0037Part09 ++
      rootMaskSemanticGroup0037Part10 ++
      rootMaskSemanticGroup0037Part11 ++
      rootMaskSemanticGroup0037Part12 ++
      rootMaskSemanticGroup0037Part13 ++
      rootMaskSemanticGroup0037Part14 ++
      rootMaskSemanticGroup0037Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0037Part00_group_passes]
  rw [rootMaskSemanticGroup0037Part01_group_passes]
  rw [rootMaskSemanticGroup0037Part02_group_passes]
  rw [rootMaskSemanticGroup0037Part03_group_passes]
  rw [rootMaskSemanticGroup0037Part04_group_passes]
  rw [rootMaskSemanticGroup0037Part05_group_passes]
  rw [rootMaskSemanticGroup0037Part06_group_passes]
  rw [rootMaskSemanticGroup0037Part07_group_passes]
  rw [rootMaskSemanticGroup0037Part08_group_passes]
  rw [rootMaskSemanticGroup0037Part09_group_passes]
  rw [rootMaskSemanticGroup0037Part10_group_passes]
  rw [rootMaskSemanticGroup0037Part11_group_passes]
  rw [rootMaskSemanticGroup0037Part12_group_passes]
  rw [rootMaskSemanticGroup0037Part13_group_passes]
  rw [rootMaskSemanticGroup0037Part14_group_passes]
  rw [rootMaskSemanticGroup0037Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
