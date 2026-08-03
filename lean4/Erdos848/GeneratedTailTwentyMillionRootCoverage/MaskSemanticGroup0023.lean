import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0023
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0023Part00_group_passes :
    rootMaskSemanticGroup0023Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part00 p := by
    simp only [rootMaskSemanticGroup0023Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part00 p := by
    simp only [rootMaskSemanticGroup0023Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part01_group_passes :
    rootMaskSemanticGroup0023Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part01 p := by
    simp only [rootMaskSemanticGroup0023Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part01 p := by
    simp only [rootMaskSemanticGroup0023Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part02_group_passes :
    rootMaskSemanticGroup0023Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part02 p := by
    simp only [rootMaskSemanticGroup0023Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part02 p := by
    simp only [rootMaskSemanticGroup0023Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part03_group_passes :
    rootMaskSemanticGroup0023Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part03 p := by
    simp only [rootMaskSemanticGroup0023Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part03 p := by
    simp only [rootMaskSemanticGroup0023Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part04_group_passes :
    rootMaskSemanticGroup0023Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part04 p := by
    simp only [rootMaskSemanticGroup0023Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part04 p := by
    simp only [rootMaskSemanticGroup0023Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part05_group_passes :
    rootMaskSemanticGroup0023Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part05 p := by
    simp only [rootMaskSemanticGroup0023Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part05 p := by
    simp only [rootMaskSemanticGroup0023Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part06_group_passes :
    rootMaskSemanticGroup0023Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part06 p := by
    simp only [rootMaskSemanticGroup0023Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part06 p := by
    simp only [rootMaskSemanticGroup0023Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part07_group_passes :
    rootMaskSemanticGroup0023Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part07 p := by
    simp only [rootMaskSemanticGroup0023Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part07 p := by
    simp only [rootMaskSemanticGroup0023Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part08_group_passes :
    rootMaskSemanticGroup0023Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part08 p := by
    simp only [rootMaskSemanticGroup0023Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part08 p := by
    simp only [rootMaskSemanticGroup0023Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part09_group_passes :
    rootMaskSemanticGroup0023Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part09 p := by
    simp only [rootMaskSemanticGroup0023Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part09 p := by
    simp only [rootMaskSemanticGroup0023Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part10_group_passes :
    rootMaskSemanticGroup0023Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part10 p := by
    simp only [rootMaskSemanticGroup0023Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part10 p := by
    simp only [rootMaskSemanticGroup0023Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part11_group_passes :
    rootMaskSemanticGroup0023Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part11 p := by
    simp only [rootMaskSemanticGroup0023Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part11 p := by
    simp only [rootMaskSemanticGroup0023Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part12_group_passes :
    rootMaskSemanticGroup0023Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part12 p := by
    simp only [rootMaskSemanticGroup0023Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part12 p := by
    simp only [rootMaskSemanticGroup0023Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part13_group_passes :
    rootMaskSemanticGroup0023Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part13 p := by
    simp only [rootMaskSemanticGroup0023Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part13 p := by
    simp only [rootMaskSemanticGroup0023Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part14_group_passes :
    rootMaskSemanticGroup0023Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part14 p := by
    simp only [rootMaskSemanticGroup0023Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part14 p := by
    simp only [rootMaskSemanticGroup0023Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0023Part15_group_passes :
    rootMaskSemanticGroup0023Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0023 p =
      rootNormalQrMaskWords0023Part15 p := by
    simp only [rootMaskSemanticGroup0023Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0023 p =
      rootTwistQrMaskWords0023Part15 p := by
    simp only [rootMaskSemanticGroup0023Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0023 : List ℕ :=
  [2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617, 2621, 2633, 2647, 2657, 2659, 2663]

theorem rootMaskSemanticGroup0023_passes :
    rootMaskSemanticGroup0023.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  rw [show rootMaskSemanticGroup0023 =
      rootMaskSemanticGroup0023Part00 ++
      rootMaskSemanticGroup0023Part01 ++
      rootMaskSemanticGroup0023Part02 ++
      rootMaskSemanticGroup0023Part03 ++
      rootMaskSemanticGroup0023Part04 ++
      rootMaskSemanticGroup0023Part05 ++
      rootMaskSemanticGroup0023Part06 ++
      rootMaskSemanticGroup0023Part07 ++
      rootMaskSemanticGroup0023Part08 ++
      rootMaskSemanticGroup0023Part09 ++
      rootMaskSemanticGroup0023Part10 ++
      rootMaskSemanticGroup0023Part11 ++
      rootMaskSemanticGroup0023Part12 ++
      rootMaskSemanticGroup0023Part13 ++
      rootMaskSemanticGroup0023Part14 ++
      rootMaskSemanticGroup0023Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0023Part00_group_passes]
  rw [rootMaskSemanticGroup0023Part01_group_passes]
  rw [rootMaskSemanticGroup0023Part02_group_passes]
  rw [rootMaskSemanticGroup0023Part03_group_passes]
  rw [rootMaskSemanticGroup0023Part04_group_passes]
  rw [rootMaskSemanticGroup0023Part05_group_passes]
  rw [rootMaskSemanticGroup0023Part06_group_passes]
  rw [rootMaskSemanticGroup0023Part07_group_passes]
  rw [rootMaskSemanticGroup0023Part08_group_passes]
  rw [rootMaskSemanticGroup0023Part09_group_passes]
  rw [rootMaskSemanticGroup0023Part10_group_passes]
  rw [rootMaskSemanticGroup0023Part11_group_passes]
  rw [rootMaskSemanticGroup0023Part12_group_passes]
  rw [rootMaskSemanticGroup0023Part13_group_passes]
  rw [rootMaskSemanticGroup0023Part14_group_passes]
  rw [rootMaskSemanticGroup0023Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
