import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0031
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0031Part00_group_passes :
    rootMaskSemanticGroup0031Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part00 p := by
    simp only [rootMaskSemanticGroup0031Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part00 p := by
    simp only [rootMaskSemanticGroup0031Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part01_group_passes :
    rootMaskSemanticGroup0031Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part01 p := by
    simp only [rootMaskSemanticGroup0031Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part01 p := by
    simp only [rootMaskSemanticGroup0031Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part02_group_passes :
    rootMaskSemanticGroup0031Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part02 p := by
    simp only [rootMaskSemanticGroup0031Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part02 p := by
    simp only [rootMaskSemanticGroup0031Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part03_group_passes :
    rootMaskSemanticGroup0031Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part03 p := by
    simp only [rootMaskSemanticGroup0031Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part03 p := by
    simp only [rootMaskSemanticGroup0031Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part04_group_passes :
    rootMaskSemanticGroup0031Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part04 p := by
    simp only [rootMaskSemanticGroup0031Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part04 p := by
    simp only [rootMaskSemanticGroup0031Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part05_group_passes :
    rootMaskSemanticGroup0031Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part05 p := by
    simp only [rootMaskSemanticGroup0031Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part05 p := by
    simp only [rootMaskSemanticGroup0031Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part06_group_passes :
    rootMaskSemanticGroup0031Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part06 p := by
    simp only [rootMaskSemanticGroup0031Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part06 p := by
    simp only [rootMaskSemanticGroup0031Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part07_group_passes :
    rootMaskSemanticGroup0031Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part07 p := by
    simp only [rootMaskSemanticGroup0031Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part07 p := by
    simp only [rootMaskSemanticGroup0031Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part08_group_passes :
    rootMaskSemanticGroup0031Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part08 p := by
    simp only [rootMaskSemanticGroup0031Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part08 p := by
    simp only [rootMaskSemanticGroup0031Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part09_group_passes :
    rootMaskSemanticGroup0031Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part09 p := by
    simp only [rootMaskSemanticGroup0031Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part09 p := by
    simp only [rootMaskSemanticGroup0031Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part10_group_passes :
    rootMaskSemanticGroup0031Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part10 p := by
    simp only [rootMaskSemanticGroup0031Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part10 p := by
    simp only [rootMaskSemanticGroup0031Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part11_group_passes :
    rootMaskSemanticGroup0031Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part11 p := by
    simp only [rootMaskSemanticGroup0031Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part11 p := by
    simp only [rootMaskSemanticGroup0031Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part12_group_passes :
    rootMaskSemanticGroup0031Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part12 p := by
    simp only [rootMaskSemanticGroup0031Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part12 p := by
    simp only [rootMaskSemanticGroup0031Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part13_group_passes :
    rootMaskSemanticGroup0031Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part13 p := by
    simp only [rootMaskSemanticGroup0031Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part13 p := by
    simp only [rootMaskSemanticGroup0031Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part14_group_passes :
    rootMaskSemanticGroup0031Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part14 p := by
    simp only [rootMaskSemanticGroup0031Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part14 p := by
    simp only [rootMaskSemanticGroup0031Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0031Part15_group_passes :
    rootMaskSemanticGroup0031Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0031 p =
      rootNormalQrMaskWords0031Part15 p := by
    simp only [rootMaskSemanticGroup0031Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0031 p =
      rootTwistQrMaskWords0031Part15 p := by
    simp only [rootMaskSemanticGroup0031Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0031 : List ℕ :=
  [3559, 3571, 3581, 3583, 3593, 3607, 3613, 3617, 3623, 3631, 3637, 3643, 3659, 3671, 3673, 3677]

theorem rootMaskSemanticGroup0031_passes :
    rootMaskSemanticGroup0031.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  rw [show rootMaskSemanticGroup0031 =
      rootMaskSemanticGroup0031Part00 ++
      rootMaskSemanticGroup0031Part01 ++
      rootMaskSemanticGroup0031Part02 ++
      rootMaskSemanticGroup0031Part03 ++
      rootMaskSemanticGroup0031Part04 ++
      rootMaskSemanticGroup0031Part05 ++
      rootMaskSemanticGroup0031Part06 ++
      rootMaskSemanticGroup0031Part07 ++
      rootMaskSemanticGroup0031Part08 ++
      rootMaskSemanticGroup0031Part09 ++
      rootMaskSemanticGroup0031Part10 ++
      rootMaskSemanticGroup0031Part11 ++
      rootMaskSemanticGroup0031Part12 ++
      rootMaskSemanticGroup0031Part13 ++
      rootMaskSemanticGroup0031Part14 ++
      rootMaskSemanticGroup0031Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0031Part00_group_passes]
  rw [rootMaskSemanticGroup0031Part01_group_passes]
  rw [rootMaskSemanticGroup0031Part02_group_passes]
  rw [rootMaskSemanticGroup0031Part03_group_passes]
  rw [rootMaskSemanticGroup0031Part04_group_passes]
  rw [rootMaskSemanticGroup0031Part05_group_passes]
  rw [rootMaskSemanticGroup0031Part06_group_passes]
  rw [rootMaskSemanticGroup0031Part07_group_passes]
  rw [rootMaskSemanticGroup0031Part08_group_passes]
  rw [rootMaskSemanticGroup0031Part09_group_passes]
  rw [rootMaskSemanticGroup0031Part10_group_passes]
  rw [rootMaskSemanticGroup0031Part11_group_passes]
  rw [rootMaskSemanticGroup0031Part12_group_passes]
  rw [rootMaskSemanticGroup0031Part13_group_passes]
  rw [rootMaskSemanticGroup0031Part14_group_passes]
  rw [rootMaskSemanticGroup0031Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
