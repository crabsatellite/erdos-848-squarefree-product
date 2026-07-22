import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0048
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0048Part00_group_passes :
    rootMaskSemanticGroup0048Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part00 p := by
    simp only [rootMaskSemanticGroup0048Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part00 p := by
    simp only [rootMaskSemanticGroup0048Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part01_group_passes :
    rootMaskSemanticGroup0048Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part01 p := by
    simp only [rootMaskSemanticGroup0048Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part01 p := by
    simp only [rootMaskSemanticGroup0048Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part02_group_passes :
    rootMaskSemanticGroup0048Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part02 p := by
    simp only [rootMaskSemanticGroup0048Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part02 p := by
    simp only [rootMaskSemanticGroup0048Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part03_group_passes :
    rootMaskSemanticGroup0048Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part03 p := by
    simp only [rootMaskSemanticGroup0048Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part03 p := by
    simp only [rootMaskSemanticGroup0048Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part04_group_passes :
    rootMaskSemanticGroup0048Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part04 p := by
    simp only [rootMaskSemanticGroup0048Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part04 p := by
    simp only [rootMaskSemanticGroup0048Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part05_group_passes :
    rootMaskSemanticGroup0048Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part05 p := by
    simp only [rootMaskSemanticGroup0048Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part05 p := by
    simp only [rootMaskSemanticGroup0048Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part06_group_passes :
    rootMaskSemanticGroup0048Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part06 p := by
    simp only [rootMaskSemanticGroup0048Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part06 p := by
    simp only [rootMaskSemanticGroup0048Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part07_group_passes :
    rootMaskSemanticGroup0048Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part07 p := by
    simp only [rootMaskSemanticGroup0048Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part07 p := by
    simp only [rootMaskSemanticGroup0048Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part08_group_passes :
    rootMaskSemanticGroup0048Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part08 p := by
    simp only [rootMaskSemanticGroup0048Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part08 p := by
    simp only [rootMaskSemanticGroup0048Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part09_group_passes :
    rootMaskSemanticGroup0048Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part09 p := by
    simp only [rootMaskSemanticGroup0048Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part09 p := by
    simp only [rootMaskSemanticGroup0048Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part10_group_passes :
    rootMaskSemanticGroup0048Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part10 p := by
    simp only [rootMaskSemanticGroup0048Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part10 p := by
    simp only [rootMaskSemanticGroup0048Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part11_group_passes :
    rootMaskSemanticGroup0048Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part11 p := by
    simp only [rootMaskSemanticGroup0048Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part11 p := by
    simp only [rootMaskSemanticGroup0048Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part12_group_passes :
    rootMaskSemanticGroup0048Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part12 p := by
    simp only [rootMaskSemanticGroup0048Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part12 p := by
    simp only [rootMaskSemanticGroup0048Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part13_group_passes :
    rootMaskSemanticGroup0048Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part13 p := by
    simp only [rootMaskSemanticGroup0048Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part13 p := by
    simp only [rootMaskSemanticGroup0048Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part14_group_passes :
    rootMaskSemanticGroup0048Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part14 p := by
    simp only [rootMaskSemanticGroup0048Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part14 p := by
    simp only [rootMaskSemanticGroup0048Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0048Part15_group_passes :
    rootMaskSemanticGroup0048Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0048 p =
      rootNormalQrMaskWords0048Part15 p := by
    simp only [rootMaskSemanticGroup0048Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0048 p =
      rootTwistQrMaskWords0048Part15 p := by
    simp only [rootMaskSemanticGroup0048Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0048 : List ℕ :=
  [5861, 5867, 5869, 5879, 5881, 5897, 5903, 5923, 5927, 5939, 5953, 5981, 5987, 6007, 6011, 6029]

theorem rootMaskSemanticGroup0048_passes :
    rootMaskSemanticGroup0048.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0048
        rootTwistQrMaskWords0048) = true := by
  rw [show rootMaskSemanticGroup0048 =
      rootMaskSemanticGroup0048Part00 ++
      rootMaskSemanticGroup0048Part01 ++
      rootMaskSemanticGroup0048Part02 ++
      rootMaskSemanticGroup0048Part03 ++
      rootMaskSemanticGroup0048Part04 ++
      rootMaskSemanticGroup0048Part05 ++
      rootMaskSemanticGroup0048Part06 ++
      rootMaskSemanticGroup0048Part07 ++
      rootMaskSemanticGroup0048Part08 ++
      rootMaskSemanticGroup0048Part09 ++
      rootMaskSemanticGroup0048Part10 ++
      rootMaskSemanticGroup0048Part11 ++
      rootMaskSemanticGroup0048Part12 ++
      rootMaskSemanticGroup0048Part13 ++
      rootMaskSemanticGroup0048Part14 ++
      rootMaskSemanticGroup0048Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0048Part00_group_passes]
  rw [rootMaskSemanticGroup0048Part01_group_passes]
  rw [rootMaskSemanticGroup0048Part02_group_passes]
  rw [rootMaskSemanticGroup0048Part03_group_passes]
  rw [rootMaskSemanticGroup0048Part04_group_passes]
  rw [rootMaskSemanticGroup0048Part05_group_passes]
  rw [rootMaskSemanticGroup0048Part06_group_passes]
  rw [rootMaskSemanticGroup0048Part07_group_passes]
  rw [rootMaskSemanticGroup0048Part08_group_passes]
  rw [rootMaskSemanticGroup0048Part09_group_passes]
  rw [rootMaskSemanticGroup0048Part10_group_passes]
  rw [rootMaskSemanticGroup0048Part11_group_passes]
  rw [rootMaskSemanticGroup0048Part12_group_passes]
  rw [rootMaskSemanticGroup0048Part13_group_passes]
  rw [rootMaskSemanticGroup0048Part14_group_passes]
  rw [rootMaskSemanticGroup0048Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
