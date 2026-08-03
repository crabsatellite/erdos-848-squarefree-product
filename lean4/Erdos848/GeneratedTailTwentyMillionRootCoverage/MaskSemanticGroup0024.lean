import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0024
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0024Part00_group_passes :
    rootMaskSemanticGroup0024Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part00 p := by
    simp only [rootMaskSemanticGroup0024Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part00 p := by
    simp only [rootMaskSemanticGroup0024Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part01_group_passes :
    rootMaskSemanticGroup0024Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part01 p := by
    simp only [rootMaskSemanticGroup0024Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part01 p := by
    simp only [rootMaskSemanticGroup0024Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part02_group_passes :
    rootMaskSemanticGroup0024Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part02 p := by
    simp only [rootMaskSemanticGroup0024Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part02 p := by
    simp only [rootMaskSemanticGroup0024Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part03_group_passes :
    rootMaskSemanticGroup0024Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part03 p := by
    simp only [rootMaskSemanticGroup0024Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part03 p := by
    simp only [rootMaskSemanticGroup0024Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part04_group_passes :
    rootMaskSemanticGroup0024Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part04 p := by
    simp only [rootMaskSemanticGroup0024Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part04 p := by
    simp only [rootMaskSemanticGroup0024Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part05_group_passes :
    rootMaskSemanticGroup0024Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part05 p := by
    simp only [rootMaskSemanticGroup0024Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part05 p := by
    simp only [rootMaskSemanticGroup0024Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part06_group_passes :
    rootMaskSemanticGroup0024Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part06 p := by
    simp only [rootMaskSemanticGroup0024Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part06 p := by
    simp only [rootMaskSemanticGroup0024Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part07_group_passes :
    rootMaskSemanticGroup0024Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part07 p := by
    simp only [rootMaskSemanticGroup0024Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part07 p := by
    simp only [rootMaskSemanticGroup0024Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part08_group_passes :
    rootMaskSemanticGroup0024Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part08 p := by
    simp only [rootMaskSemanticGroup0024Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part08 p := by
    simp only [rootMaskSemanticGroup0024Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part09_group_passes :
    rootMaskSemanticGroup0024Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part09 p := by
    simp only [rootMaskSemanticGroup0024Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part09 p := by
    simp only [rootMaskSemanticGroup0024Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part10_group_passes :
    rootMaskSemanticGroup0024Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part10 p := by
    simp only [rootMaskSemanticGroup0024Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part10 p := by
    simp only [rootMaskSemanticGroup0024Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part11_group_passes :
    rootMaskSemanticGroup0024Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part11 p := by
    simp only [rootMaskSemanticGroup0024Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part11 p := by
    simp only [rootMaskSemanticGroup0024Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part12_group_passes :
    rootMaskSemanticGroup0024Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part12 p := by
    simp only [rootMaskSemanticGroup0024Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part12 p := by
    simp only [rootMaskSemanticGroup0024Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part13_group_passes :
    rootMaskSemanticGroup0024Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part13 p := by
    simp only [rootMaskSemanticGroup0024Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part13 p := by
    simp only [rootMaskSemanticGroup0024Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part14_group_passes :
    rootMaskSemanticGroup0024Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part14 p := by
    simp only [rootMaskSemanticGroup0024Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part14 p := by
    simp only [rootMaskSemanticGroup0024Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0024Part15_group_passes :
    rootMaskSemanticGroup0024Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0024 p =
      rootNormalQrMaskWords0024Part15 p := by
    simp only [rootMaskSemanticGroup0024Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0024 p =
      rootTwistQrMaskWords0024Part15 p := by
    simp only [rootMaskSemanticGroup0024Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0024 : List ℕ :=
  [2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707, 2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753]

theorem rootMaskSemanticGroup0024_passes :
    rootMaskSemanticGroup0024.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  rw [show rootMaskSemanticGroup0024 =
      rootMaskSemanticGroup0024Part00 ++
      rootMaskSemanticGroup0024Part01 ++
      rootMaskSemanticGroup0024Part02 ++
      rootMaskSemanticGroup0024Part03 ++
      rootMaskSemanticGroup0024Part04 ++
      rootMaskSemanticGroup0024Part05 ++
      rootMaskSemanticGroup0024Part06 ++
      rootMaskSemanticGroup0024Part07 ++
      rootMaskSemanticGroup0024Part08 ++
      rootMaskSemanticGroup0024Part09 ++
      rootMaskSemanticGroup0024Part10 ++
      rootMaskSemanticGroup0024Part11 ++
      rootMaskSemanticGroup0024Part12 ++
      rootMaskSemanticGroup0024Part13 ++
      rootMaskSemanticGroup0024Part14 ++
      rootMaskSemanticGroup0024Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0024Part00_group_passes]
  rw [rootMaskSemanticGroup0024Part01_group_passes]
  rw [rootMaskSemanticGroup0024Part02_group_passes]
  rw [rootMaskSemanticGroup0024Part03_group_passes]
  rw [rootMaskSemanticGroup0024Part04_group_passes]
  rw [rootMaskSemanticGroup0024Part05_group_passes]
  rw [rootMaskSemanticGroup0024Part06_group_passes]
  rw [rootMaskSemanticGroup0024Part07_group_passes]
  rw [rootMaskSemanticGroup0024Part08_group_passes]
  rw [rootMaskSemanticGroup0024Part09_group_passes]
  rw [rootMaskSemanticGroup0024Part10_group_passes]
  rw [rootMaskSemanticGroup0024Part11_group_passes]
  rw [rootMaskSemanticGroup0024Part12_group_passes]
  rw [rootMaskSemanticGroup0024Part13_group_passes]
  rw [rootMaskSemanticGroup0024Part14_group_passes]
  rw [rootMaskSemanticGroup0024Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
