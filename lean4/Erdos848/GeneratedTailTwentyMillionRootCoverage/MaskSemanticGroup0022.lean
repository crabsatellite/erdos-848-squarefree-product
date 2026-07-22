import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0022
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0022Part00_group_passes :
    rootMaskSemanticGroup0022Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part00 p := by
    simp only [rootMaskSemanticGroup0022Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part00 p := by
    simp only [rootMaskSemanticGroup0022Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part01_group_passes :
    rootMaskSemanticGroup0022Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part01 p := by
    simp only [rootMaskSemanticGroup0022Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part01 p := by
    simp only [rootMaskSemanticGroup0022Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part02_group_passes :
    rootMaskSemanticGroup0022Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part02 p := by
    simp only [rootMaskSemanticGroup0022Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part02 p := by
    simp only [rootMaskSemanticGroup0022Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part03_group_passes :
    rootMaskSemanticGroup0022Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part03 p := by
    simp only [rootMaskSemanticGroup0022Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part03 p := by
    simp only [rootMaskSemanticGroup0022Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part04_group_passes :
    rootMaskSemanticGroup0022Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part04 p := by
    simp only [rootMaskSemanticGroup0022Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part04 p := by
    simp only [rootMaskSemanticGroup0022Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part05_group_passes :
    rootMaskSemanticGroup0022Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part05 p := by
    simp only [rootMaskSemanticGroup0022Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part05 p := by
    simp only [rootMaskSemanticGroup0022Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part06_group_passes :
    rootMaskSemanticGroup0022Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part06 p := by
    simp only [rootMaskSemanticGroup0022Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part06 p := by
    simp only [rootMaskSemanticGroup0022Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part07_group_passes :
    rootMaskSemanticGroup0022Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part07 p := by
    simp only [rootMaskSemanticGroup0022Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part07 p := by
    simp only [rootMaskSemanticGroup0022Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part08_group_passes :
    rootMaskSemanticGroup0022Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part08 p := by
    simp only [rootMaskSemanticGroup0022Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part08 p := by
    simp only [rootMaskSemanticGroup0022Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part09_group_passes :
    rootMaskSemanticGroup0022Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part09 p := by
    simp only [rootMaskSemanticGroup0022Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part09 p := by
    simp only [rootMaskSemanticGroup0022Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part10_group_passes :
    rootMaskSemanticGroup0022Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part10 p := by
    simp only [rootMaskSemanticGroup0022Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part10 p := by
    simp only [rootMaskSemanticGroup0022Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part11_group_passes :
    rootMaskSemanticGroup0022Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part11 p := by
    simp only [rootMaskSemanticGroup0022Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part11 p := by
    simp only [rootMaskSemanticGroup0022Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part12_group_passes :
    rootMaskSemanticGroup0022Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part12 p := by
    simp only [rootMaskSemanticGroup0022Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part12 p := by
    simp only [rootMaskSemanticGroup0022Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part13_group_passes :
    rootMaskSemanticGroup0022Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part13 p := by
    simp only [rootMaskSemanticGroup0022Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part13 p := by
    simp only [rootMaskSemanticGroup0022Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part14_group_passes :
    rootMaskSemanticGroup0022Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part14 p := by
    simp only [rootMaskSemanticGroup0022Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part14 p := by
    simp only [rootMaskSemanticGroup0022Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0022Part15_group_passes :
    rootMaskSemanticGroup0022Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0022 p =
      rootNormalQrMaskWords0022Part15 p := by
    simp only [rootMaskSemanticGroup0022Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0022 p =
      rootTwistQrMaskWords0022Part15 p := by
    simp only [rootMaskSemanticGroup0022Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0022 : List ℕ :=
  [2389, 2393, 2399, 2411, 2417, 2423, 2437, 2441, 2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531]

theorem rootMaskSemanticGroup0022_passes :
    rootMaskSemanticGroup0022.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  rw [show rootMaskSemanticGroup0022 =
      rootMaskSemanticGroup0022Part00 ++
      rootMaskSemanticGroup0022Part01 ++
      rootMaskSemanticGroup0022Part02 ++
      rootMaskSemanticGroup0022Part03 ++
      rootMaskSemanticGroup0022Part04 ++
      rootMaskSemanticGroup0022Part05 ++
      rootMaskSemanticGroup0022Part06 ++
      rootMaskSemanticGroup0022Part07 ++
      rootMaskSemanticGroup0022Part08 ++
      rootMaskSemanticGroup0022Part09 ++
      rootMaskSemanticGroup0022Part10 ++
      rootMaskSemanticGroup0022Part11 ++
      rootMaskSemanticGroup0022Part12 ++
      rootMaskSemanticGroup0022Part13 ++
      rootMaskSemanticGroup0022Part14 ++
      rootMaskSemanticGroup0022Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0022Part00_group_passes]
  rw [rootMaskSemanticGroup0022Part01_group_passes]
  rw [rootMaskSemanticGroup0022Part02_group_passes]
  rw [rootMaskSemanticGroup0022Part03_group_passes]
  rw [rootMaskSemanticGroup0022Part04_group_passes]
  rw [rootMaskSemanticGroup0022Part05_group_passes]
  rw [rootMaskSemanticGroup0022Part06_group_passes]
  rw [rootMaskSemanticGroup0022Part07_group_passes]
  rw [rootMaskSemanticGroup0022Part08_group_passes]
  rw [rootMaskSemanticGroup0022Part09_group_passes]
  rw [rootMaskSemanticGroup0022Part10_group_passes]
  rw [rootMaskSemanticGroup0022Part11_group_passes]
  rw [rootMaskSemanticGroup0022Part12_group_passes]
  rw [rootMaskSemanticGroup0022Part13_group_passes]
  rw [rootMaskSemanticGroup0022Part14_group_passes]
  rw [rootMaskSemanticGroup0022Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
