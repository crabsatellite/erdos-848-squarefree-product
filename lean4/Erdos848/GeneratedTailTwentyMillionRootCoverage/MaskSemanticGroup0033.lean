import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0033
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0033Part00_group_passes :
    rootMaskSemanticGroup0033Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part00 p := by
    simp only [rootMaskSemanticGroup0033Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part00 p := by
    simp only [rootMaskSemanticGroup0033Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part01_group_passes :
    rootMaskSemanticGroup0033Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part01 p := by
    simp only [rootMaskSemanticGroup0033Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part01 p := by
    simp only [rootMaskSemanticGroup0033Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part02_group_passes :
    rootMaskSemanticGroup0033Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part02 p := by
    simp only [rootMaskSemanticGroup0033Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part02 p := by
    simp only [rootMaskSemanticGroup0033Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part03_group_passes :
    rootMaskSemanticGroup0033Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part03 p := by
    simp only [rootMaskSemanticGroup0033Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part03 p := by
    simp only [rootMaskSemanticGroup0033Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part04_group_passes :
    rootMaskSemanticGroup0033Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part04 p := by
    simp only [rootMaskSemanticGroup0033Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part04 p := by
    simp only [rootMaskSemanticGroup0033Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part05_group_passes :
    rootMaskSemanticGroup0033Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part05 p := by
    simp only [rootMaskSemanticGroup0033Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part05 p := by
    simp only [rootMaskSemanticGroup0033Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part06_group_passes :
    rootMaskSemanticGroup0033Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part06 p := by
    simp only [rootMaskSemanticGroup0033Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part06 p := by
    simp only [rootMaskSemanticGroup0033Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part07_group_passes :
    rootMaskSemanticGroup0033Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part07 p := by
    simp only [rootMaskSemanticGroup0033Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part07 p := by
    simp only [rootMaskSemanticGroup0033Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part08_group_passes :
    rootMaskSemanticGroup0033Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part08 p := by
    simp only [rootMaskSemanticGroup0033Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part08 p := by
    simp only [rootMaskSemanticGroup0033Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part09_group_passes :
    rootMaskSemanticGroup0033Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part09 p := by
    simp only [rootMaskSemanticGroup0033Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part09 p := by
    simp only [rootMaskSemanticGroup0033Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part10_group_passes :
    rootMaskSemanticGroup0033Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part10 p := by
    simp only [rootMaskSemanticGroup0033Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part10 p := by
    simp only [rootMaskSemanticGroup0033Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part11_group_passes :
    rootMaskSemanticGroup0033Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part11 p := by
    simp only [rootMaskSemanticGroup0033Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part11 p := by
    simp only [rootMaskSemanticGroup0033Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part12_group_passes :
    rootMaskSemanticGroup0033Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part12 p := by
    simp only [rootMaskSemanticGroup0033Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part12 p := by
    simp only [rootMaskSemanticGroup0033Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part13_group_passes :
    rootMaskSemanticGroup0033Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part13 p := by
    simp only [rootMaskSemanticGroup0033Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part13 p := by
    simp only [rootMaskSemanticGroup0033Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part14_group_passes :
    rootMaskSemanticGroup0033Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part14 p := by
    simp only [rootMaskSemanticGroup0033Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part14 p := by
    simp only [rootMaskSemanticGroup0033Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0033Part15_group_passes :
    rootMaskSemanticGroup0033Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0033 p =
      rootNormalQrMaskWords0033Part15 p := by
    simp only [rootMaskSemanticGroup0033Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0033 p =
      rootTwistQrMaskWords0033Part15 p := by
    simp only [rootMaskSemanticGroup0033Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0033 : List ℕ :=
  [3823, 3833, 3847, 3851, 3853, 3863, 3877, 3881, 3889, 3907, 3911, 3917, 3919, 3923, 3929, 3931]

theorem rootMaskSemanticGroup0033_passes :
    rootMaskSemanticGroup0033.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  rw [show rootMaskSemanticGroup0033 =
      rootMaskSemanticGroup0033Part00 ++
      rootMaskSemanticGroup0033Part01 ++
      rootMaskSemanticGroup0033Part02 ++
      rootMaskSemanticGroup0033Part03 ++
      rootMaskSemanticGroup0033Part04 ++
      rootMaskSemanticGroup0033Part05 ++
      rootMaskSemanticGroup0033Part06 ++
      rootMaskSemanticGroup0033Part07 ++
      rootMaskSemanticGroup0033Part08 ++
      rootMaskSemanticGroup0033Part09 ++
      rootMaskSemanticGroup0033Part10 ++
      rootMaskSemanticGroup0033Part11 ++
      rootMaskSemanticGroup0033Part12 ++
      rootMaskSemanticGroup0033Part13 ++
      rootMaskSemanticGroup0033Part14 ++
      rootMaskSemanticGroup0033Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0033Part00_group_passes]
  rw [rootMaskSemanticGroup0033Part01_group_passes]
  rw [rootMaskSemanticGroup0033Part02_group_passes]
  rw [rootMaskSemanticGroup0033Part03_group_passes]
  rw [rootMaskSemanticGroup0033Part04_group_passes]
  rw [rootMaskSemanticGroup0033Part05_group_passes]
  rw [rootMaskSemanticGroup0033Part06_group_passes]
  rw [rootMaskSemanticGroup0033Part07_group_passes]
  rw [rootMaskSemanticGroup0033Part08_group_passes]
  rw [rootMaskSemanticGroup0033Part09_group_passes]
  rw [rootMaskSemanticGroup0033Part10_group_passes]
  rw [rootMaskSemanticGroup0033Part11_group_passes]
  rw [rootMaskSemanticGroup0033Part12_group_passes]
  rw [rootMaskSemanticGroup0033Part13_group_passes]
  rw [rootMaskSemanticGroup0033Part14_group_passes]
  rw [rootMaskSemanticGroup0033Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
