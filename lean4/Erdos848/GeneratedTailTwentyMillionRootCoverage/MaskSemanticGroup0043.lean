import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0043
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0043Part00_group_passes :
    rootMaskSemanticGroup0043Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part00 p := by
    simp only [rootMaskSemanticGroup0043Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part00 p := by
    simp only [rootMaskSemanticGroup0043Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part01_group_passes :
    rootMaskSemanticGroup0043Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part01 p := by
    simp only [rootMaskSemanticGroup0043Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part01 p := by
    simp only [rootMaskSemanticGroup0043Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part02_group_passes :
    rootMaskSemanticGroup0043Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part02 p := by
    simp only [rootMaskSemanticGroup0043Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part02 p := by
    simp only [rootMaskSemanticGroup0043Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part03_group_passes :
    rootMaskSemanticGroup0043Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part03 p := by
    simp only [rootMaskSemanticGroup0043Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part03 p := by
    simp only [rootMaskSemanticGroup0043Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part04_group_passes :
    rootMaskSemanticGroup0043Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part04 p := by
    simp only [rootMaskSemanticGroup0043Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part04 p := by
    simp only [rootMaskSemanticGroup0043Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part05_group_passes :
    rootMaskSemanticGroup0043Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part05 p := by
    simp only [rootMaskSemanticGroup0043Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part05 p := by
    simp only [rootMaskSemanticGroup0043Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part06_group_passes :
    rootMaskSemanticGroup0043Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part06 p := by
    simp only [rootMaskSemanticGroup0043Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part06 p := by
    simp only [rootMaskSemanticGroup0043Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part07_group_passes :
    rootMaskSemanticGroup0043Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part07 p := by
    simp only [rootMaskSemanticGroup0043Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part07 p := by
    simp only [rootMaskSemanticGroup0043Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part08_group_passes :
    rootMaskSemanticGroup0043Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part08 p := by
    simp only [rootMaskSemanticGroup0043Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part08 p := by
    simp only [rootMaskSemanticGroup0043Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part09_group_passes :
    rootMaskSemanticGroup0043Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part09 p := by
    simp only [rootMaskSemanticGroup0043Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part09 p := by
    simp only [rootMaskSemanticGroup0043Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part10_group_passes :
    rootMaskSemanticGroup0043Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part10 p := by
    simp only [rootMaskSemanticGroup0043Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part10 p := by
    simp only [rootMaskSemanticGroup0043Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part11_group_passes :
    rootMaskSemanticGroup0043Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part11 p := by
    simp only [rootMaskSemanticGroup0043Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part11 p := by
    simp only [rootMaskSemanticGroup0043Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part12_group_passes :
    rootMaskSemanticGroup0043Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part12 p := by
    simp only [rootMaskSemanticGroup0043Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part12 p := by
    simp only [rootMaskSemanticGroup0043Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part13_group_passes :
    rootMaskSemanticGroup0043Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part13 p := by
    simp only [rootMaskSemanticGroup0043Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part13 p := by
    simp only [rootMaskSemanticGroup0043Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part14_group_passes :
    rootMaskSemanticGroup0043Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part14 p := by
    simp only [rootMaskSemanticGroup0043Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part14 p := by
    simp only [rootMaskSemanticGroup0043Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0043Part15_group_passes :
    rootMaskSemanticGroup0043Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0043 p =
      rootNormalQrMaskWords0043Part15 p := by
    simp only [rootMaskSemanticGroup0043Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0043 p =
      rootTwistQrMaskWords0043Part15 p := by
    simp only [rootMaskSemanticGroup0043Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0043 : List ℕ :=
  [5189, 5197, 5209, 5227, 5231, 5233, 5237, 5261, 5273, 5279, 5281, 5297, 5303, 5309, 5323, 5333]

theorem rootMaskSemanticGroup0043_passes :
    rootMaskSemanticGroup0043.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0043
        rootTwistQrMaskWords0043) = true := by
  rw [show rootMaskSemanticGroup0043 =
      rootMaskSemanticGroup0043Part00 ++
      rootMaskSemanticGroup0043Part01 ++
      rootMaskSemanticGroup0043Part02 ++
      rootMaskSemanticGroup0043Part03 ++
      rootMaskSemanticGroup0043Part04 ++
      rootMaskSemanticGroup0043Part05 ++
      rootMaskSemanticGroup0043Part06 ++
      rootMaskSemanticGroup0043Part07 ++
      rootMaskSemanticGroup0043Part08 ++
      rootMaskSemanticGroup0043Part09 ++
      rootMaskSemanticGroup0043Part10 ++
      rootMaskSemanticGroup0043Part11 ++
      rootMaskSemanticGroup0043Part12 ++
      rootMaskSemanticGroup0043Part13 ++
      rootMaskSemanticGroup0043Part14 ++
      rootMaskSemanticGroup0043Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0043Part00_group_passes]
  rw [rootMaskSemanticGroup0043Part01_group_passes]
  rw [rootMaskSemanticGroup0043Part02_group_passes]
  rw [rootMaskSemanticGroup0043Part03_group_passes]
  rw [rootMaskSemanticGroup0043Part04_group_passes]
  rw [rootMaskSemanticGroup0043Part05_group_passes]
  rw [rootMaskSemanticGroup0043Part06_group_passes]
  rw [rootMaskSemanticGroup0043Part07_group_passes]
  rw [rootMaskSemanticGroup0043Part08_group_passes]
  rw [rootMaskSemanticGroup0043Part09_group_passes]
  rw [rootMaskSemanticGroup0043Part10_group_passes]
  rw [rootMaskSemanticGroup0043Part11_group_passes]
  rw [rootMaskSemanticGroup0043Part12_group_passes]
  rw [rootMaskSemanticGroup0043Part13_group_passes]
  rw [rootMaskSemanticGroup0043Part14_group_passes]
  rw [rootMaskSemanticGroup0043Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
