import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0034
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0034Part00_group_passes :
    rootMaskSemanticGroup0034Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part00 p := by
    simp only [rootMaskSemanticGroup0034Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part00 p := by
    simp only [rootMaskSemanticGroup0034Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part01_group_passes :
    rootMaskSemanticGroup0034Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part01 p := by
    simp only [rootMaskSemanticGroup0034Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part01 p := by
    simp only [rootMaskSemanticGroup0034Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part02_group_passes :
    rootMaskSemanticGroup0034Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part02 p := by
    simp only [rootMaskSemanticGroup0034Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part02 p := by
    simp only [rootMaskSemanticGroup0034Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part03_group_passes :
    rootMaskSemanticGroup0034Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part03 p := by
    simp only [rootMaskSemanticGroup0034Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part03 p := by
    simp only [rootMaskSemanticGroup0034Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part04_group_passes :
    rootMaskSemanticGroup0034Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part04 p := by
    simp only [rootMaskSemanticGroup0034Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part04 p := by
    simp only [rootMaskSemanticGroup0034Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part05_group_passes :
    rootMaskSemanticGroup0034Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part05 p := by
    simp only [rootMaskSemanticGroup0034Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part05 p := by
    simp only [rootMaskSemanticGroup0034Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part06_group_passes :
    rootMaskSemanticGroup0034Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part06 p := by
    simp only [rootMaskSemanticGroup0034Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part06 p := by
    simp only [rootMaskSemanticGroup0034Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part07_group_passes :
    rootMaskSemanticGroup0034Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part07 p := by
    simp only [rootMaskSemanticGroup0034Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part07 p := by
    simp only [rootMaskSemanticGroup0034Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part08_group_passes :
    rootMaskSemanticGroup0034Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part08 p := by
    simp only [rootMaskSemanticGroup0034Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part08 p := by
    simp only [rootMaskSemanticGroup0034Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part09_group_passes :
    rootMaskSemanticGroup0034Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part09 p := by
    simp only [rootMaskSemanticGroup0034Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part09 p := by
    simp only [rootMaskSemanticGroup0034Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part10_group_passes :
    rootMaskSemanticGroup0034Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part10 p := by
    simp only [rootMaskSemanticGroup0034Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part10 p := by
    simp only [rootMaskSemanticGroup0034Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part11_group_passes :
    rootMaskSemanticGroup0034Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part11 p := by
    simp only [rootMaskSemanticGroup0034Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part11 p := by
    simp only [rootMaskSemanticGroup0034Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part12_group_passes :
    rootMaskSemanticGroup0034Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part12 p := by
    simp only [rootMaskSemanticGroup0034Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part12 p := by
    simp only [rootMaskSemanticGroup0034Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part13_group_passes :
    rootMaskSemanticGroup0034Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part13 p := by
    simp only [rootMaskSemanticGroup0034Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part13 p := by
    simp only [rootMaskSemanticGroup0034Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part14_group_passes :
    rootMaskSemanticGroup0034Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part14 p := by
    simp only [rootMaskSemanticGroup0034Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part14 p := by
    simp only [rootMaskSemanticGroup0034Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0034Part15_group_passes :
    rootMaskSemanticGroup0034Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0034 p =
      rootNormalQrMaskWords0034Part15 p := by
    simp only [rootMaskSemanticGroup0034Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0034 p =
      rootTwistQrMaskWords0034Part15 p := by
    simp only [rootMaskSemanticGroup0034Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0034 : List ℕ :=
  [3943, 3947, 3967, 3989, 4001, 4003, 4007, 4013, 4019, 4021, 4027, 4049, 4051, 4057, 4073, 4079]

theorem rootMaskSemanticGroup0034_passes :
    rootMaskSemanticGroup0034.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  rw [show rootMaskSemanticGroup0034 =
      rootMaskSemanticGroup0034Part00 ++
      rootMaskSemanticGroup0034Part01 ++
      rootMaskSemanticGroup0034Part02 ++
      rootMaskSemanticGroup0034Part03 ++
      rootMaskSemanticGroup0034Part04 ++
      rootMaskSemanticGroup0034Part05 ++
      rootMaskSemanticGroup0034Part06 ++
      rootMaskSemanticGroup0034Part07 ++
      rootMaskSemanticGroup0034Part08 ++
      rootMaskSemanticGroup0034Part09 ++
      rootMaskSemanticGroup0034Part10 ++
      rootMaskSemanticGroup0034Part11 ++
      rootMaskSemanticGroup0034Part12 ++
      rootMaskSemanticGroup0034Part13 ++
      rootMaskSemanticGroup0034Part14 ++
      rootMaskSemanticGroup0034Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0034Part00_group_passes]
  rw [rootMaskSemanticGroup0034Part01_group_passes]
  rw [rootMaskSemanticGroup0034Part02_group_passes]
  rw [rootMaskSemanticGroup0034Part03_group_passes]
  rw [rootMaskSemanticGroup0034Part04_group_passes]
  rw [rootMaskSemanticGroup0034Part05_group_passes]
  rw [rootMaskSemanticGroup0034Part06_group_passes]
  rw [rootMaskSemanticGroup0034Part07_group_passes]
  rw [rootMaskSemanticGroup0034Part08_group_passes]
  rw [rootMaskSemanticGroup0034Part09_group_passes]
  rw [rootMaskSemanticGroup0034Part10_group_passes]
  rw [rootMaskSemanticGroup0034Part11_group_passes]
  rw [rootMaskSemanticGroup0034Part12_group_passes]
  rw [rootMaskSemanticGroup0034Part13_group_passes]
  rw [rootMaskSemanticGroup0034Part14_group_passes]
  rw [rootMaskSemanticGroup0034Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
