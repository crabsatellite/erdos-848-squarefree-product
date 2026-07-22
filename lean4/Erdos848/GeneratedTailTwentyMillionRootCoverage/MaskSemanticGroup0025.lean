import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0025
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0025Part00_group_passes :
    rootMaskSemanticGroup0025Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part00 p := by
    simp only [rootMaskSemanticGroup0025Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part00 p := by
    simp only [rootMaskSemanticGroup0025Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part01_group_passes :
    rootMaskSemanticGroup0025Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part01 p := by
    simp only [rootMaskSemanticGroup0025Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part01 p := by
    simp only [rootMaskSemanticGroup0025Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part02_group_passes :
    rootMaskSemanticGroup0025Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part02 p := by
    simp only [rootMaskSemanticGroup0025Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part02 p := by
    simp only [rootMaskSemanticGroup0025Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part03_group_passes :
    rootMaskSemanticGroup0025Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part03 p := by
    simp only [rootMaskSemanticGroup0025Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part03 p := by
    simp only [rootMaskSemanticGroup0025Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part04_group_passes :
    rootMaskSemanticGroup0025Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part04 p := by
    simp only [rootMaskSemanticGroup0025Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part04 p := by
    simp only [rootMaskSemanticGroup0025Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part05_group_passes :
    rootMaskSemanticGroup0025Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part05 p := by
    simp only [rootMaskSemanticGroup0025Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part05 p := by
    simp only [rootMaskSemanticGroup0025Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part06_group_passes :
    rootMaskSemanticGroup0025Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part06 p := by
    simp only [rootMaskSemanticGroup0025Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part06 p := by
    simp only [rootMaskSemanticGroup0025Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part07_group_passes :
    rootMaskSemanticGroup0025Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part07 p := by
    simp only [rootMaskSemanticGroup0025Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part07 p := by
    simp only [rootMaskSemanticGroup0025Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part08_group_passes :
    rootMaskSemanticGroup0025Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part08 p := by
    simp only [rootMaskSemanticGroup0025Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part08 p := by
    simp only [rootMaskSemanticGroup0025Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part09_group_passes :
    rootMaskSemanticGroup0025Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part09 p := by
    simp only [rootMaskSemanticGroup0025Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part09 p := by
    simp only [rootMaskSemanticGroup0025Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part10_group_passes :
    rootMaskSemanticGroup0025Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part10 p := by
    simp only [rootMaskSemanticGroup0025Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part10 p := by
    simp only [rootMaskSemanticGroup0025Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part11_group_passes :
    rootMaskSemanticGroup0025Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part11 p := by
    simp only [rootMaskSemanticGroup0025Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part11 p := by
    simp only [rootMaskSemanticGroup0025Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part12_group_passes :
    rootMaskSemanticGroup0025Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part12 p := by
    simp only [rootMaskSemanticGroup0025Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part12 p := by
    simp only [rootMaskSemanticGroup0025Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part13_group_passes :
    rootMaskSemanticGroup0025Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part13 p := by
    simp only [rootMaskSemanticGroup0025Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part13 p := by
    simp only [rootMaskSemanticGroup0025Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part14_group_passes :
    rootMaskSemanticGroup0025Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part14 p := by
    simp only [rootMaskSemanticGroup0025Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part14 p := by
    simp only [rootMaskSemanticGroup0025Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0025Part15_group_passes :
    rootMaskSemanticGroup0025Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0025 p =
      rootNormalQrMaskWords0025Part15 p := by
    simp only [rootMaskSemanticGroup0025Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0025 p =
      rootTwistQrMaskWords0025Part15 p := by
    simp only [rootMaskSemanticGroup0025Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0025 : List ℕ :=
  [2767, 2777, 2789, 2791, 2797, 2801, 2803, 2819, 2833, 2837, 2843, 2851, 2857, 2861, 2879, 2887]

theorem rootMaskSemanticGroup0025_passes :
    rootMaskSemanticGroup0025.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  rw [show rootMaskSemanticGroup0025 =
      rootMaskSemanticGroup0025Part00 ++
      rootMaskSemanticGroup0025Part01 ++
      rootMaskSemanticGroup0025Part02 ++
      rootMaskSemanticGroup0025Part03 ++
      rootMaskSemanticGroup0025Part04 ++
      rootMaskSemanticGroup0025Part05 ++
      rootMaskSemanticGroup0025Part06 ++
      rootMaskSemanticGroup0025Part07 ++
      rootMaskSemanticGroup0025Part08 ++
      rootMaskSemanticGroup0025Part09 ++
      rootMaskSemanticGroup0025Part10 ++
      rootMaskSemanticGroup0025Part11 ++
      rootMaskSemanticGroup0025Part12 ++
      rootMaskSemanticGroup0025Part13 ++
      rootMaskSemanticGroup0025Part14 ++
      rootMaskSemanticGroup0025Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0025Part00_group_passes]
  rw [rootMaskSemanticGroup0025Part01_group_passes]
  rw [rootMaskSemanticGroup0025Part02_group_passes]
  rw [rootMaskSemanticGroup0025Part03_group_passes]
  rw [rootMaskSemanticGroup0025Part04_group_passes]
  rw [rootMaskSemanticGroup0025Part05_group_passes]
  rw [rootMaskSemanticGroup0025Part06_group_passes]
  rw [rootMaskSemanticGroup0025Part07_group_passes]
  rw [rootMaskSemanticGroup0025Part08_group_passes]
  rw [rootMaskSemanticGroup0025Part09_group_passes]
  rw [rootMaskSemanticGroup0025Part10_group_passes]
  rw [rootMaskSemanticGroup0025Part11_group_passes]
  rw [rootMaskSemanticGroup0025Part12_group_passes]
  rw [rootMaskSemanticGroup0025Part13_group_passes]
  rw [rootMaskSemanticGroup0025Part14_group_passes]
  rw [rootMaskSemanticGroup0025Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
