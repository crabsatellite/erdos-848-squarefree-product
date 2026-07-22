import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0040
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0040Part00_group_passes :
    rootMaskSemanticGroup0040Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part00 p := by
    simp only [rootMaskSemanticGroup0040Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part00 p := by
    simp only [rootMaskSemanticGroup0040Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part01_group_passes :
    rootMaskSemanticGroup0040Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part01 p := by
    simp only [rootMaskSemanticGroup0040Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part01 p := by
    simp only [rootMaskSemanticGroup0040Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part02_group_passes :
    rootMaskSemanticGroup0040Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part02 p := by
    simp only [rootMaskSemanticGroup0040Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part02 p := by
    simp only [rootMaskSemanticGroup0040Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part03_group_passes :
    rootMaskSemanticGroup0040Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part03 p := by
    simp only [rootMaskSemanticGroup0040Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part03 p := by
    simp only [rootMaskSemanticGroup0040Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part04_group_passes :
    rootMaskSemanticGroup0040Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part04 p := by
    simp only [rootMaskSemanticGroup0040Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part04 p := by
    simp only [rootMaskSemanticGroup0040Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part05_group_passes :
    rootMaskSemanticGroup0040Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part05 p := by
    simp only [rootMaskSemanticGroup0040Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part05 p := by
    simp only [rootMaskSemanticGroup0040Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part06_group_passes :
    rootMaskSemanticGroup0040Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part06 p := by
    simp only [rootMaskSemanticGroup0040Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part06 p := by
    simp only [rootMaskSemanticGroup0040Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part07_group_passes :
    rootMaskSemanticGroup0040Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part07 p := by
    simp only [rootMaskSemanticGroup0040Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part07 p := by
    simp only [rootMaskSemanticGroup0040Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part08_group_passes :
    rootMaskSemanticGroup0040Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part08 p := by
    simp only [rootMaskSemanticGroup0040Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part08 p := by
    simp only [rootMaskSemanticGroup0040Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part09_group_passes :
    rootMaskSemanticGroup0040Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part09 p := by
    simp only [rootMaskSemanticGroup0040Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part09 p := by
    simp only [rootMaskSemanticGroup0040Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part10_group_passes :
    rootMaskSemanticGroup0040Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part10 p := by
    simp only [rootMaskSemanticGroup0040Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part10 p := by
    simp only [rootMaskSemanticGroup0040Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part11_group_passes :
    rootMaskSemanticGroup0040Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part11 p := by
    simp only [rootMaskSemanticGroup0040Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part11 p := by
    simp only [rootMaskSemanticGroup0040Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part12_group_passes :
    rootMaskSemanticGroup0040Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part12 p := by
    simp only [rootMaskSemanticGroup0040Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part12 p := by
    simp only [rootMaskSemanticGroup0040Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part13_group_passes :
    rootMaskSemanticGroup0040Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part13 p := by
    simp only [rootMaskSemanticGroup0040Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part13 p := by
    simp only [rootMaskSemanticGroup0040Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part14_group_passes :
    rootMaskSemanticGroup0040Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part14 p := by
    simp only [rootMaskSemanticGroup0040Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part14 p := by
    simp only [rootMaskSemanticGroup0040Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0040Part15_group_passes :
    rootMaskSemanticGroup0040Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0040 p =
      rootNormalQrMaskWords0040Part15 p := by
    simp only [rootMaskSemanticGroup0040Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0040 p =
      rootTwistQrMaskWords0040Part15 p := by
    simp only [rootMaskSemanticGroup0040Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0040 : List ℕ :=
  [4787, 4789, 4793, 4799, 4801, 4813, 4817, 4831, 4861, 4871, 4877, 4889, 4903, 4909, 4919, 4931]

theorem rootMaskSemanticGroup0040_passes :
    rootMaskSemanticGroup0040.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0040
        rootTwistQrMaskWords0040) = true := by
  rw [show rootMaskSemanticGroup0040 =
      rootMaskSemanticGroup0040Part00 ++
      rootMaskSemanticGroup0040Part01 ++
      rootMaskSemanticGroup0040Part02 ++
      rootMaskSemanticGroup0040Part03 ++
      rootMaskSemanticGroup0040Part04 ++
      rootMaskSemanticGroup0040Part05 ++
      rootMaskSemanticGroup0040Part06 ++
      rootMaskSemanticGroup0040Part07 ++
      rootMaskSemanticGroup0040Part08 ++
      rootMaskSemanticGroup0040Part09 ++
      rootMaskSemanticGroup0040Part10 ++
      rootMaskSemanticGroup0040Part11 ++
      rootMaskSemanticGroup0040Part12 ++
      rootMaskSemanticGroup0040Part13 ++
      rootMaskSemanticGroup0040Part14 ++
      rootMaskSemanticGroup0040Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0040Part00_group_passes]
  rw [rootMaskSemanticGroup0040Part01_group_passes]
  rw [rootMaskSemanticGroup0040Part02_group_passes]
  rw [rootMaskSemanticGroup0040Part03_group_passes]
  rw [rootMaskSemanticGroup0040Part04_group_passes]
  rw [rootMaskSemanticGroup0040Part05_group_passes]
  rw [rootMaskSemanticGroup0040Part06_group_passes]
  rw [rootMaskSemanticGroup0040Part07_group_passes]
  rw [rootMaskSemanticGroup0040Part08_group_passes]
  rw [rootMaskSemanticGroup0040Part09_group_passes]
  rw [rootMaskSemanticGroup0040Part10_group_passes]
  rw [rootMaskSemanticGroup0040Part11_group_passes]
  rw [rootMaskSemanticGroup0040Part12_group_passes]
  rw [rootMaskSemanticGroup0040Part13_group_passes]
  rw [rootMaskSemanticGroup0040Part14_group_passes]
  rw [rootMaskSemanticGroup0040Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
