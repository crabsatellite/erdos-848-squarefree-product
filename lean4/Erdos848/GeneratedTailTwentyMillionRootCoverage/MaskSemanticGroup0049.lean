import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0049
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0049Part00_group_passes :
    rootMaskSemanticGroup0049Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part00 p := by
    simp only [rootMaskSemanticGroup0049Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part00 p := by
    simp only [rootMaskSemanticGroup0049Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part01_group_passes :
    rootMaskSemanticGroup0049Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part01 p := by
    simp only [rootMaskSemanticGroup0049Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part01 p := by
    simp only [rootMaskSemanticGroup0049Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part02_group_passes :
    rootMaskSemanticGroup0049Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part02 p := by
    simp only [rootMaskSemanticGroup0049Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part02 p := by
    simp only [rootMaskSemanticGroup0049Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part03_group_passes :
    rootMaskSemanticGroup0049Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part03 p := by
    simp only [rootMaskSemanticGroup0049Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part03 p := by
    simp only [rootMaskSemanticGroup0049Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part04_group_passes :
    rootMaskSemanticGroup0049Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part04 p := by
    simp only [rootMaskSemanticGroup0049Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part04 p := by
    simp only [rootMaskSemanticGroup0049Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part05_group_passes :
    rootMaskSemanticGroup0049Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part05 p := by
    simp only [rootMaskSemanticGroup0049Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part05 p := by
    simp only [rootMaskSemanticGroup0049Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part06_group_passes :
    rootMaskSemanticGroup0049Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part06 p := by
    simp only [rootMaskSemanticGroup0049Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part06 p := by
    simp only [rootMaskSemanticGroup0049Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part07_group_passes :
    rootMaskSemanticGroup0049Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part07 p := by
    simp only [rootMaskSemanticGroup0049Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part07 p := by
    simp only [rootMaskSemanticGroup0049Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part08_group_passes :
    rootMaskSemanticGroup0049Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part08 p := by
    simp only [rootMaskSemanticGroup0049Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part08 p := by
    simp only [rootMaskSemanticGroup0049Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part09_group_passes :
    rootMaskSemanticGroup0049Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part09 p := by
    simp only [rootMaskSemanticGroup0049Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part09 p := by
    simp only [rootMaskSemanticGroup0049Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part10_group_passes :
    rootMaskSemanticGroup0049Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part10 p := by
    simp only [rootMaskSemanticGroup0049Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part10 p := by
    simp only [rootMaskSemanticGroup0049Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part11_group_passes :
    rootMaskSemanticGroup0049Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part11 p := by
    simp only [rootMaskSemanticGroup0049Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part11 p := by
    simp only [rootMaskSemanticGroup0049Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part12_group_passes :
    rootMaskSemanticGroup0049Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part12 p := by
    simp only [rootMaskSemanticGroup0049Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part12 p := by
    simp only [rootMaskSemanticGroup0049Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part13_group_passes :
    rootMaskSemanticGroup0049Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part13 p := by
    simp only [rootMaskSemanticGroup0049Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part13 p := by
    simp only [rootMaskSemanticGroup0049Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part14_group_passes :
    rootMaskSemanticGroup0049Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part14 p := by
    simp only [rootMaskSemanticGroup0049Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part14 p := by
    simp only [rootMaskSemanticGroup0049Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0049Part15_group_passes :
    rootMaskSemanticGroup0049Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0049 p =
      rootNormalQrMaskWords0049Part15 p := by
    simp only [rootMaskSemanticGroup0049Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0049 p =
      rootTwistQrMaskWords0049Part15 p := by
    simp only [rootMaskSemanticGroup0049Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0049 : List ℕ :=
  [6037, 6043, 6047, 6053, 6067, 6073, 6079, 6089, 6091, 6101, 6113, 6121, 6131, 6133, 6143, 6151]

theorem rootMaskSemanticGroup0049_passes :
    rootMaskSemanticGroup0049.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0049
        rootTwistQrMaskWords0049) = true := by
  rw [show rootMaskSemanticGroup0049 =
      rootMaskSemanticGroup0049Part00 ++
      rootMaskSemanticGroup0049Part01 ++
      rootMaskSemanticGroup0049Part02 ++
      rootMaskSemanticGroup0049Part03 ++
      rootMaskSemanticGroup0049Part04 ++
      rootMaskSemanticGroup0049Part05 ++
      rootMaskSemanticGroup0049Part06 ++
      rootMaskSemanticGroup0049Part07 ++
      rootMaskSemanticGroup0049Part08 ++
      rootMaskSemanticGroup0049Part09 ++
      rootMaskSemanticGroup0049Part10 ++
      rootMaskSemanticGroup0049Part11 ++
      rootMaskSemanticGroup0049Part12 ++
      rootMaskSemanticGroup0049Part13 ++
      rootMaskSemanticGroup0049Part14 ++
      rootMaskSemanticGroup0049Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0049Part00_group_passes]
  rw [rootMaskSemanticGroup0049Part01_group_passes]
  rw [rootMaskSemanticGroup0049Part02_group_passes]
  rw [rootMaskSemanticGroup0049Part03_group_passes]
  rw [rootMaskSemanticGroup0049Part04_group_passes]
  rw [rootMaskSemanticGroup0049Part05_group_passes]
  rw [rootMaskSemanticGroup0049Part06_group_passes]
  rw [rootMaskSemanticGroup0049Part07_group_passes]
  rw [rootMaskSemanticGroup0049Part08_group_passes]
  rw [rootMaskSemanticGroup0049Part09_group_passes]
  rw [rootMaskSemanticGroup0049Part10_group_passes]
  rw [rootMaskSemanticGroup0049Part11_group_passes]
  rw [rootMaskSemanticGroup0049Part12_group_passes]
  rw [rootMaskSemanticGroup0049Part13_group_passes]
  rw [rootMaskSemanticGroup0049Part14_group_passes]
  rw [rootMaskSemanticGroup0049Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
