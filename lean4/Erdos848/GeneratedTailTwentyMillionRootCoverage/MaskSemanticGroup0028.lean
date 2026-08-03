import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0028
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0028Part00_group_passes :
    rootMaskSemanticGroup0028Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part00 p := by
    simp only [rootMaskSemanticGroup0028Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part00 p := by
    simp only [rootMaskSemanticGroup0028Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part01_group_passes :
    rootMaskSemanticGroup0028Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part01 p := by
    simp only [rootMaskSemanticGroup0028Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part01 p := by
    simp only [rootMaskSemanticGroup0028Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part02_group_passes :
    rootMaskSemanticGroup0028Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part02 p := by
    simp only [rootMaskSemanticGroup0028Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part02 p := by
    simp only [rootMaskSemanticGroup0028Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part03_group_passes :
    rootMaskSemanticGroup0028Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part03 p := by
    simp only [rootMaskSemanticGroup0028Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part03 p := by
    simp only [rootMaskSemanticGroup0028Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part04_group_passes :
    rootMaskSemanticGroup0028Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part04 p := by
    simp only [rootMaskSemanticGroup0028Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part04 p := by
    simp only [rootMaskSemanticGroup0028Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part05_group_passes :
    rootMaskSemanticGroup0028Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part05 p := by
    simp only [rootMaskSemanticGroup0028Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part05 p := by
    simp only [rootMaskSemanticGroup0028Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part06_group_passes :
    rootMaskSemanticGroup0028Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part06 p := by
    simp only [rootMaskSemanticGroup0028Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part06 p := by
    simp only [rootMaskSemanticGroup0028Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part07_group_passes :
    rootMaskSemanticGroup0028Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part07 p := by
    simp only [rootMaskSemanticGroup0028Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part07 p := by
    simp only [rootMaskSemanticGroup0028Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part08_group_passes :
    rootMaskSemanticGroup0028Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part08 p := by
    simp only [rootMaskSemanticGroup0028Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part08 p := by
    simp only [rootMaskSemanticGroup0028Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part09_group_passes :
    rootMaskSemanticGroup0028Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part09 p := by
    simp only [rootMaskSemanticGroup0028Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part09 p := by
    simp only [rootMaskSemanticGroup0028Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part10_group_passes :
    rootMaskSemanticGroup0028Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part10 p := by
    simp only [rootMaskSemanticGroup0028Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part10 p := by
    simp only [rootMaskSemanticGroup0028Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part11_group_passes :
    rootMaskSemanticGroup0028Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part11 p := by
    simp only [rootMaskSemanticGroup0028Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part11 p := by
    simp only [rootMaskSemanticGroup0028Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part12_group_passes :
    rootMaskSemanticGroup0028Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part12 p := by
    simp only [rootMaskSemanticGroup0028Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part12 p := by
    simp only [rootMaskSemanticGroup0028Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part13_group_passes :
    rootMaskSemanticGroup0028Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part13 p := by
    simp only [rootMaskSemanticGroup0028Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part13 p := by
    simp only [rootMaskSemanticGroup0028Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part14_group_passes :
    rootMaskSemanticGroup0028Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part14 p := by
    simp only [rootMaskSemanticGroup0028Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part14 p := by
    simp only [rootMaskSemanticGroup0028Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0028Part15_group_passes :
    rootMaskSemanticGroup0028Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0028 p =
      rootNormalQrMaskWords0028Part15 p := by
    simp only [rootMaskSemanticGroup0028Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0028 p =
      rootTwistQrMaskWords0028Part15 p := by
    simp only [rootMaskSemanticGroup0028Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0028 : List ℕ :=
  [3187, 3191, 3203, 3209, 3217, 3221, 3229, 3251, 3253, 3257, 3259, 3271, 3299, 3301, 3307, 3313]

theorem rootMaskSemanticGroup0028_passes :
    rootMaskSemanticGroup0028.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  rw [show rootMaskSemanticGroup0028 =
      rootMaskSemanticGroup0028Part00 ++
      rootMaskSemanticGroup0028Part01 ++
      rootMaskSemanticGroup0028Part02 ++
      rootMaskSemanticGroup0028Part03 ++
      rootMaskSemanticGroup0028Part04 ++
      rootMaskSemanticGroup0028Part05 ++
      rootMaskSemanticGroup0028Part06 ++
      rootMaskSemanticGroup0028Part07 ++
      rootMaskSemanticGroup0028Part08 ++
      rootMaskSemanticGroup0028Part09 ++
      rootMaskSemanticGroup0028Part10 ++
      rootMaskSemanticGroup0028Part11 ++
      rootMaskSemanticGroup0028Part12 ++
      rootMaskSemanticGroup0028Part13 ++
      rootMaskSemanticGroup0028Part14 ++
      rootMaskSemanticGroup0028Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0028Part00_group_passes]
  rw [rootMaskSemanticGroup0028Part01_group_passes]
  rw [rootMaskSemanticGroup0028Part02_group_passes]
  rw [rootMaskSemanticGroup0028Part03_group_passes]
  rw [rootMaskSemanticGroup0028Part04_group_passes]
  rw [rootMaskSemanticGroup0028Part05_group_passes]
  rw [rootMaskSemanticGroup0028Part06_group_passes]
  rw [rootMaskSemanticGroup0028Part07_group_passes]
  rw [rootMaskSemanticGroup0028Part08_group_passes]
  rw [rootMaskSemanticGroup0028Part09_group_passes]
  rw [rootMaskSemanticGroup0028Part10_group_passes]
  rw [rootMaskSemanticGroup0028Part11_group_passes]
  rw [rootMaskSemanticGroup0028Part12_group_passes]
  rw [rootMaskSemanticGroup0028Part13_group_passes]
  rw [rootMaskSemanticGroup0028Part14_group_passes]
  rw [rootMaskSemanticGroup0028Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
