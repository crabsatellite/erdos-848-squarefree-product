import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0018
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0018Part00_group_passes :
    rootMaskSemanticGroup0018Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part00 p := by
    simp only [rootMaskSemanticGroup0018Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part00 p := by
    simp only [rootMaskSemanticGroup0018Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part01_group_passes :
    rootMaskSemanticGroup0018Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part01 p := by
    simp only [rootMaskSemanticGroup0018Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part01 p := by
    simp only [rootMaskSemanticGroup0018Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part02_group_passes :
    rootMaskSemanticGroup0018Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part02 p := by
    simp only [rootMaskSemanticGroup0018Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part02 p := by
    simp only [rootMaskSemanticGroup0018Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part03_group_passes :
    rootMaskSemanticGroup0018Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part03 p := by
    simp only [rootMaskSemanticGroup0018Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part03 p := by
    simp only [rootMaskSemanticGroup0018Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part04_group_passes :
    rootMaskSemanticGroup0018Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part04 p := by
    simp only [rootMaskSemanticGroup0018Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part04 p := by
    simp only [rootMaskSemanticGroup0018Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part05_group_passes :
    rootMaskSemanticGroup0018Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part05 p := by
    simp only [rootMaskSemanticGroup0018Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part05 p := by
    simp only [rootMaskSemanticGroup0018Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part06_group_passes :
    rootMaskSemanticGroup0018Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part06 p := by
    simp only [rootMaskSemanticGroup0018Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part06 p := by
    simp only [rootMaskSemanticGroup0018Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part07_group_passes :
    rootMaskSemanticGroup0018Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part07 p := by
    simp only [rootMaskSemanticGroup0018Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part07 p := by
    simp only [rootMaskSemanticGroup0018Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part08_group_passes :
    rootMaskSemanticGroup0018Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part08 p := by
    simp only [rootMaskSemanticGroup0018Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part08 p := by
    simp only [rootMaskSemanticGroup0018Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part09_group_passes :
    rootMaskSemanticGroup0018Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part09 p := by
    simp only [rootMaskSemanticGroup0018Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part09 p := by
    simp only [rootMaskSemanticGroup0018Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part10_group_passes :
    rootMaskSemanticGroup0018Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part10 p := by
    simp only [rootMaskSemanticGroup0018Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part10 p := by
    simp only [rootMaskSemanticGroup0018Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part11_group_passes :
    rootMaskSemanticGroup0018Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part11 p := by
    simp only [rootMaskSemanticGroup0018Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part11 p := by
    simp only [rootMaskSemanticGroup0018Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part12_group_passes :
    rootMaskSemanticGroup0018Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part12 p := by
    simp only [rootMaskSemanticGroup0018Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part12 p := by
    simp only [rootMaskSemanticGroup0018Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part13_group_passes :
    rootMaskSemanticGroup0018Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part13 p := by
    simp only [rootMaskSemanticGroup0018Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part13 p := by
    simp only [rootMaskSemanticGroup0018Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part14_group_passes :
    rootMaskSemanticGroup0018Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part14 p := by
    simp only [rootMaskSemanticGroup0018Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part14 p := by
    simp only [rootMaskSemanticGroup0018Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0018Part15_group_passes :
    rootMaskSemanticGroup0018Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0018 p =
      rootNormalQrMaskWords0018Part15 p := by
    simp only [rootMaskSemanticGroup0018Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0018 p =
      rootTwistQrMaskWords0018Part15 p := by
    simp only [rootMaskSemanticGroup0018Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0018 : List ℕ :=
  [1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973, 1979, 1987, 1993, 1997, 1999, 2003, 2011, 2017]

theorem rootMaskSemanticGroup0018_passes :
    rootMaskSemanticGroup0018.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  rw [show rootMaskSemanticGroup0018 =
      rootMaskSemanticGroup0018Part00 ++
      rootMaskSemanticGroup0018Part01 ++
      rootMaskSemanticGroup0018Part02 ++
      rootMaskSemanticGroup0018Part03 ++
      rootMaskSemanticGroup0018Part04 ++
      rootMaskSemanticGroup0018Part05 ++
      rootMaskSemanticGroup0018Part06 ++
      rootMaskSemanticGroup0018Part07 ++
      rootMaskSemanticGroup0018Part08 ++
      rootMaskSemanticGroup0018Part09 ++
      rootMaskSemanticGroup0018Part10 ++
      rootMaskSemanticGroup0018Part11 ++
      rootMaskSemanticGroup0018Part12 ++
      rootMaskSemanticGroup0018Part13 ++
      rootMaskSemanticGroup0018Part14 ++
      rootMaskSemanticGroup0018Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0018Part00_group_passes]
  rw [rootMaskSemanticGroup0018Part01_group_passes]
  rw [rootMaskSemanticGroup0018Part02_group_passes]
  rw [rootMaskSemanticGroup0018Part03_group_passes]
  rw [rootMaskSemanticGroup0018Part04_group_passes]
  rw [rootMaskSemanticGroup0018Part05_group_passes]
  rw [rootMaskSemanticGroup0018Part06_group_passes]
  rw [rootMaskSemanticGroup0018Part07_group_passes]
  rw [rootMaskSemanticGroup0018Part08_group_passes]
  rw [rootMaskSemanticGroup0018Part09_group_passes]
  rw [rootMaskSemanticGroup0018Part10_group_passes]
  rw [rootMaskSemanticGroup0018Part11_group_passes]
  rw [rootMaskSemanticGroup0018Part12_group_passes]
  rw [rootMaskSemanticGroup0018Part13_group_passes]
  rw [rootMaskSemanticGroup0018Part14_group_passes]
  rw [rootMaskSemanticGroup0018Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
