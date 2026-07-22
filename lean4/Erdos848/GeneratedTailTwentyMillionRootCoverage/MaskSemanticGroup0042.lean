import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0042
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0042Part00_group_passes :
    rootMaskSemanticGroup0042Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part00 p := by
    simp only [rootMaskSemanticGroup0042Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part00 p := by
    simp only [rootMaskSemanticGroup0042Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part01_group_passes :
    rootMaskSemanticGroup0042Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part01 p := by
    simp only [rootMaskSemanticGroup0042Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part01 p := by
    simp only [rootMaskSemanticGroup0042Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part02_group_passes :
    rootMaskSemanticGroup0042Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part02 p := by
    simp only [rootMaskSemanticGroup0042Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part02 p := by
    simp only [rootMaskSemanticGroup0042Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part03_group_passes :
    rootMaskSemanticGroup0042Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part03 p := by
    simp only [rootMaskSemanticGroup0042Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part03 p := by
    simp only [rootMaskSemanticGroup0042Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part04_group_passes :
    rootMaskSemanticGroup0042Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part04 p := by
    simp only [rootMaskSemanticGroup0042Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part04 p := by
    simp only [rootMaskSemanticGroup0042Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part05_group_passes :
    rootMaskSemanticGroup0042Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part05 p := by
    simp only [rootMaskSemanticGroup0042Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part05 p := by
    simp only [rootMaskSemanticGroup0042Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part06_group_passes :
    rootMaskSemanticGroup0042Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part06 p := by
    simp only [rootMaskSemanticGroup0042Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part06 p := by
    simp only [rootMaskSemanticGroup0042Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part07_group_passes :
    rootMaskSemanticGroup0042Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part07 p := by
    simp only [rootMaskSemanticGroup0042Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part07 p := by
    simp only [rootMaskSemanticGroup0042Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part08_group_passes :
    rootMaskSemanticGroup0042Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part08 p := by
    simp only [rootMaskSemanticGroup0042Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part08 p := by
    simp only [rootMaskSemanticGroup0042Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part09_group_passes :
    rootMaskSemanticGroup0042Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part09 p := by
    simp only [rootMaskSemanticGroup0042Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part09 p := by
    simp only [rootMaskSemanticGroup0042Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part10_group_passes :
    rootMaskSemanticGroup0042Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part10 p := by
    simp only [rootMaskSemanticGroup0042Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part10 p := by
    simp only [rootMaskSemanticGroup0042Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part11_group_passes :
    rootMaskSemanticGroup0042Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part11 p := by
    simp only [rootMaskSemanticGroup0042Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part11 p := by
    simp only [rootMaskSemanticGroup0042Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part12_group_passes :
    rootMaskSemanticGroup0042Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part12 p := by
    simp only [rootMaskSemanticGroup0042Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part12 p := by
    simp only [rootMaskSemanticGroup0042Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part13_group_passes :
    rootMaskSemanticGroup0042Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part13 p := by
    simp only [rootMaskSemanticGroup0042Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part13 p := by
    simp only [rootMaskSemanticGroup0042Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part14_group_passes :
    rootMaskSemanticGroup0042Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part14 p := by
    simp only [rootMaskSemanticGroup0042Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part14 p := by
    simp only [rootMaskSemanticGroup0042Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0042Part15_group_passes :
    rootMaskSemanticGroup0042Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0042 p =
      rootNormalQrMaskWords0042Part15 p := by
    simp only [rootMaskSemanticGroup0042Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0042 p =
      rootTwistQrMaskWords0042Part15 p := by
    simp only [rootMaskSemanticGroup0042Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0042 : List ℕ :=
  [5039, 5051, 5059, 5077, 5081, 5087, 5099, 5101, 5107, 5113, 5119, 5147, 5153, 5167, 5171, 5179]

theorem rootMaskSemanticGroup0042_passes :
    rootMaskSemanticGroup0042.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0042
        rootTwistQrMaskWords0042) = true := by
  rw [show rootMaskSemanticGroup0042 =
      rootMaskSemanticGroup0042Part00 ++
      rootMaskSemanticGroup0042Part01 ++
      rootMaskSemanticGroup0042Part02 ++
      rootMaskSemanticGroup0042Part03 ++
      rootMaskSemanticGroup0042Part04 ++
      rootMaskSemanticGroup0042Part05 ++
      rootMaskSemanticGroup0042Part06 ++
      rootMaskSemanticGroup0042Part07 ++
      rootMaskSemanticGroup0042Part08 ++
      rootMaskSemanticGroup0042Part09 ++
      rootMaskSemanticGroup0042Part10 ++
      rootMaskSemanticGroup0042Part11 ++
      rootMaskSemanticGroup0042Part12 ++
      rootMaskSemanticGroup0042Part13 ++
      rootMaskSemanticGroup0042Part14 ++
      rootMaskSemanticGroup0042Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0042Part00_group_passes]
  rw [rootMaskSemanticGroup0042Part01_group_passes]
  rw [rootMaskSemanticGroup0042Part02_group_passes]
  rw [rootMaskSemanticGroup0042Part03_group_passes]
  rw [rootMaskSemanticGroup0042Part04_group_passes]
  rw [rootMaskSemanticGroup0042Part05_group_passes]
  rw [rootMaskSemanticGroup0042Part06_group_passes]
  rw [rootMaskSemanticGroup0042Part07_group_passes]
  rw [rootMaskSemanticGroup0042Part08_group_passes]
  rw [rootMaskSemanticGroup0042Part09_group_passes]
  rw [rootMaskSemanticGroup0042Part10_group_passes]
  rw [rootMaskSemanticGroup0042Part11_group_passes]
  rw [rootMaskSemanticGroup0042Part12_group_passes]
  rw [rootMaskSemanticGroup0042Part13_group_passes]
  rw [rootMaskSemanticGroup0042Part14_group_passes]
  rw [rootMaskSemanticGroup0042Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
