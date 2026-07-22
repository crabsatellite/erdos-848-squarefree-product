import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0036Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0036
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0036Part00_group_passes :
    rootMaskSemanticGroup0036Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part00 p := by
    simp only [rootMaskSemanticGroup0036Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part00 p := by
    simp only [rootMaskSemanticGroup0036Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part01_group_passes :
    rootMaskSemanticGroup0036Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part01 p := by
    simp only [rootMaskSemanticGroup0036Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part01 p := by
    simp only [rootMaskSemanticGroup0036Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part02_group_passes :
    rootMaskSemanticGroup0036Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part02 p := by
    simp only [rootMaskSemanticGroup0036Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part02 p := by
    simp only [rootMaskSemanticGroup0036Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part03_group_passes :
    rootMaskSemanticGroup0036Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part03 p := by
    simp only [rootMaskSemanticGroup0036Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part03 p := by
    simp only [rootMaskSemanticGroup0036Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part04_group_passes :
    rootMaskSemanticGroup0036Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part04 p := by
    simp only [rootMaskSemanticGroup0036Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part04 p := by
    simp only [rootMaskSemanticGroup0036Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part05_group_passes :
    rootMaskSemanticGroup0036Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part05 p := by
    simp only [rootMaskSemanticGroup0036Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part05 p := by
    simp only [rootMaskSemanticGroup0036Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part06_group_passes :
    rootMaskSemanticGroup0036Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part06 p := by
    simp only [rootMaskSemanticGroup0036Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part06 p := by
    simp only [rootMaskSemanticGroup0036Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part07_group_passes :
    rootMaskSemanticGroup0036Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part07 p := by
    simp only [rootMaskSemanticGroup0036Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part07 p := by
    simp only [rootMaskSemanticGroup0036Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part08_group_passes :
    rootMaskSemanticGroup0036Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part08 p := by
    simp only [rootMaskSemanticGroup0036Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part08 p := by
    simp only [rootMaskSemanticGroup0036Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part09_group_passes :
    rootMaskSemanticGroup0036Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part09 p := by
    simp only [rootMaskSemanticGroup0036Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part09 p := by
    simp only [rootMaskSemanticGroup0036Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part10_group_passes :
    rootMaskSemanticGroup0036Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part10 p := by
    simp only [rootMaskSemanticGroup0036Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part10 p := by
    simp only [rootMaskSemanticGroup0036Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part11_group_passes :
    rootMaskSemanticGroup0036Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part11 p := by
    simp only [rootMaskSemanticGroup0036Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part11 p := by
    simp only [rootMaskSemanticGroup0036Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part12_group_passes :
    rootMaskSemanticGroup0036Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part12 p := by
    simp only [rootMaskSemanticGroup0036Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part12 p := by
    simp only [rootMaskSemanticGroup0036Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part13_group_passes :
    rootMaskSemanticGroup0036Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part13 p := by
    simp only [rootMaskSemanticGroup0036Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part13 p := by
    simp only [rootMaskSemanticGroup0036Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part14_group_passes :
    rootMaskSemanticGroup0036Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part14 p := by
    simp only [rootMaskSemanticGroup0036Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part14 p := by
    simp only [rootMaskSemanticGroup0036Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0036Part15_group_passes :
    rootMaskSemanticGroup0036Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0036 p =
      rootNormalQrMaskWords0036Part15 p := by
    simp only [rootMaskSemanticGroup0036Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0036 p =
      rootTwistQrMaskWords0036Part15 p := by
    simp only [rootMaskSemanticGroup0036Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0036 : List ℕ :=
  [4229, 4231, 4241, 4243, 4253, 4259, 4261, 4271, 4273, 4283, 4289, 4297, 4327, 4337, 4339, 4349]

theorem rootMaskSemanticGroup0036_passes :
    rootMaskSemanticGroup0036.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  rw [show rootMaskSemanticGroup0036 =
      rootMaskSemanticGroup0036Part00 ++
      rootMaskSemanticGroup0036Part01 ++
      rootMaskSemanticGroup0036Part02 ++
      rootMaskSemanticGroup0036Part03 ++
      rootMaskSemanticGroup0036Part04 ++
      rootMaskSemanticGroup0036Part05 ++
      rootMaskSemanticGroup0036Part06 ++
      rootMaskSemanticGroup0036Part07 ++
      rootMaskSemanticGroup0036Part08 ++
      rootMaskSemanticGroup0036Part09 ++
      rootMaskSemanticGroup0036Part10 ++
      rootMaskSemanticGroup0036Part11 ++
      rootMaskSemanticGroup0036Part12 ++
      rootMaskSemanticGroup0036Part13 ++
      rootMaskSemanticGroup0036Part14 ++
      rootMaskSemanticGroup0036Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0036Part00_group_passes]
  rw [rootMaskSemanticGroup0036Part01_group_passes]
  rw [rootMaskSemanticGroup0036Part02_group_passes]
  rw [rootMaskSemanticGroup0036Part03_group_passes]
  rw [rootMaskSemanticGroup0036Part04_group_passes]
  rw [rootMaskSemanticGroup0036Part05_group_passes]
  rw [rootMaskSemanticGroup0036Part06_group_passes]
  rw [rootMaskSemanticGroup0036Part07_group_passes]
  rw [rootMaskSemanticGroup0036Part08_group_passes]
  rw [rootMaskSemanticGroup0036Part09_group_passes]
  rw [rootMaskSemanticGroup0036Part10_group_passes]
  rw [rootMaskSemanticGroup0036Part11_group_passes]
  rw [rootMaskSemanticGroup0036Part12_group_passes]
  rw [rootMaskSemanticGroup0036Part13_group_passes]
  rw [rootMaskSemanticGroup0036Part14_group_passes]
  rw [rootMaskSemanticGroup0036Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
