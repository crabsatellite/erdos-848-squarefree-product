import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0035
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0035Part00_group_passes :
    rootMaskSemanticGroup0035Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part00 p := by
    simp only [rootMaskSemanticGroup0035Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part00 p := by
    simp only [rootMaskSemanticGroup0035Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part01_group_passes :
    rootMaskSemanticGroup0035Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part01 p := by
    simp only [rootMaskSemanticGroup0035Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part01 p := by
    simp only [rootMaskSemanticGroup0035Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part02_group_passes :
    rootMaskSemanticGroup0035Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part02 p := by
    simp only [rootMaskSemanticGroup0035Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part02 p := by
    simp only [rootMaskSemanticGroup0035Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part03_group_passes :
    rootMaskSemanticGroup0035Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part03 p := by
    simp only [rootMaskSemanticGroup0035Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part03 p := by
    simp only [rootMaskSemanticGroup0035Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part04_group_passes :
    rootMaskSemanticGroup0035Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part04 p := by
    simp only [rootMaskSemanticGroup0035Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part04 p := by
    simp only [rootMaskSemanticGroup0035Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part05_group_passes :
    rootMaskSemanticGroup0035Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part05 p := by
    simp only [rootMaskSemanticGroup0035Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part05 p := by
    simp only [rootMaskSemanticGroup0035Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part06_group_passes :
    rootMaskSemanticGroup0035Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part06 p := by
    simp only [rootMaskSemanticGroup0035Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part06 p := by
    simp only [rootMaskSemanticGroup0035Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part07_group_passes :
    rootMaskSemanticGroup0035Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part07 p := by
    simp only [rootMaskSemanticGroup0035Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part07 p := by
    simp only [rootMaskSemanticGroup0035Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part08_group_passes :
    rootMaskSemanticGroup0035Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part08 p := by
    simp only [rootMaskSemanticGroup0035Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part08 p := by
    simp only [rootMaskSemanticGroup0035Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part09_group_passes :
    rootMaskSemanticGroup0035Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part09 p := by
    simp only [rootMaskSemanticGroup0035Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part09 p := by
    simp only [rootMaskSemanticGroup0035Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part10_group_passes :
    rootMaskSemanticGroup0035Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part10 p := by
    simp only [rootMaskSemanticGroup0035Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part10 p := by
    simp only [rootMaskSemanticGroup0035Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part11_group_passes :
    rootMaskSemanticGroup0035Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part11 p := by
    simp only [rootMaskSemanticGroup0035Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part11 p := by
    simp only [rootMaskSemanticGroup0035Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part12_group_passes :
    rootMaskSemanticGroup0035Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part12 p := by
    simp only [rootMaskSemanticGroup0035Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part12 p := by
    simp only [rootMaskSemanticGroup0035Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part13_group_passes :
    rootMaskSemanticGroup0035Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part13 p := by
    simp only [rootMaskSemanticGroup0035Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part13 p := by
    simp only [rootMaskSemanticGroup0035Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part14_group_passes :
    rootMaskSemanticGroup0035Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part14 p := by
    simp only [rootMaskSemanticGroup0035Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part14 p := by
    simp only [rootMaskSemanticGroup0035Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0035Part15_group_passes :
    rootMaskSemanticGroup0035Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0035 p =
      rootNormalQrMaskWords0035Part15 p := by
    simp only [rootMaskSemanticGroup0035Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0035 p =
      rootTwistQrMaskWords0035Part15 p := by
    simp only [rootMaskSemanticGroup0035Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0035 : List ℕ :=
  [4091, 4093, 4099, 4111, 4127, 4129, 4133, 4139, 4153, 4157, 4159, 4177, 4201, 4211, 4217, 4219]

theorem rootMaskSemanticGroup0035_passes :
    rootMaskSemanticGroup0035.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  rw [show rootMaskSemanticGroup0035 =
      rootMaskSemanticGroup0035Part00 ++
      rootMaskSemanticGroup0035Part01 ++
      rootMaskSemanticGroup0035Part02 ++
      rootMaskSemanticGroup0035Part03 ++
      rootMaskSemanticGroup0035Part04 ++
      rootMaskSemanticGroup0035Part05 ++
      rootMaskSemanticGroup0035Part06 ++
      rootMaskSemanticGroup0035Part07 ++
      rootMaskSemanticGroup0035Part08 ++
      rootMaskSemanticGroup0035Part09 ++
      rootMaskSemanticGroup0035Part10 ++
      rootMaskSemanticGroup0035Part11 ++
      rootMaskSemanticGroup0035Part12 ++
      rootMaskSemanticGroup0035Part13 ++
      rootMaskSemanticGroup0035Part14 ++
      rootMaskSemanticGroup0035Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0035Part00_group_passes]
  rw [rootMaskSemanticGroup0035Part01_group_passes]
  rw [rootMaskSemanticGroup0035Part02_group_passes]
  rw [rootMaskSemanticGroup0035Part03_group_passes]
  rw [rootMaskSemanticGroup0035Part04_group_passes]
  rw [rootMaskSemanticGroup0035Part05_group_passes]
  rw [rootMaskSemanticGroup0035Part06_group_passes]
  rw [rootMaskSemanticGroup0035Part07_group_passes]
  rw [rootMaskSemanticGroup0035Part08_group_passes]
  rw [rootMaskSemanticGroup0035Part09_group_passes]
  rw [rootMaskSemanticGroup0035Part10_group_passes]
  rw [rootMaskSemanticGroup0035Part11_group_passes]
  rw [rootMaskSemanticGroup0035Part12_group_passes]
  rw [rootMaskSemanticGroup0035Part13_group_passes]
  rw [rootMaskSemanticGroup0035Part14_group_passes]
  rw [rootMaskSemanticGroup0035Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
