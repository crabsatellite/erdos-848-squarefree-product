import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0030
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0030Part00_group_passes :
    rootMaskSemanticGroup0030Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part00 p := by
    simp only [rootMaskSemanticGroup0030Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part00 p := by
    simp only [rootMaskSemanticGroup0030Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part01_group_passes :
    rootMaskSemanticGroup0030Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part01 p := by
    simp only [rootMaskSemanticGroup0030Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part01 p := by
    simp only [rootMaskSemanticGroup0030Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part02_group_passes :
    rootMaskSemanticGroup0030Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part02 p := by
    simp only [rootMaskSemanticGroup0030Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part02 p := by
    simp only [rootMaskSemanticGroup0030Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part03_group_passes :
    rootMaskSemanticGroup0030Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part03 p := by
    simp only [rootMaskSemanticGroup0030Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part03 p := by
    simp only [rootMaskSemanticGroup0030Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part04_group_passes :
    rootMaskSemanticGroup0030Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part04 p := by
    simp only [rootMaskSemanticGroup0030Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part04 p := by
    simp only [rootMaskSemanticGroup0030Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part05_group_passes :
    rootMaskSemanticGroup0030Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part05 p := by
    simp only [rootMaskSemanticGroup0030Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part05 p := by
    simp only [rootMaskSemanticGroup0030Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part06_group_passes :
    rootMaskSemanticGroup0030Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part06 p := by
    simp only [rootMaskSemanticGroup0030Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part06 p := by
    simp only [rootMaskSemanticGroup0030Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part07_group_passes :
    rootMaskSemanticGroup0030Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part07 p := by
    simp only [rootMaskSemanticGroup0030Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part07 p := by
    simp only [rootMaskSemanticGroup0030Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part08_group_passes :
    rootMaskSemanticGroup0030Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part08 p := by
    simp only [rootMaskSemanticGroup0030Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part08 p := by
    simp only [rootMaskSemanticGroup0030Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part09_group_passes :
    rootMaskSemanticGroup0030Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part09 p := by
    simp only [rootMaskSemanticGroup0030Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part09 p := by
    simp only [rootMaskSemanticGroup0030Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part10_group_passes :
    rootMaskSemanticGroup0030Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part10 p := by
    simp only [rootMaskSemanticGroup0030Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part10 p := by
    simp only [rootMaskSemanticGroup0030Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part11_group_passes :
    rootMaskSemanticGroup0030Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part11 p := by
    simp only [rootMaskSemanticGroup0030Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part11 p := by
    simp only [rootMaskSemanticGroup0030Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part12_group_passes :
    rootMaskSemanticGroup0030Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part12 p := by
    simp only [rootMaskSemanticGroup0030Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part12 p := by
    simp only [rootMaskSemanticGroup0030Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part13_group_passes :
    rootMaskSemanticGroup0030Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part13 p := by
    simp only [rootMaskSemanticGroup0030Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part13 p := by
    simp only [rootMaskSemanticGroup0030Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part14_group_passes :
    rootMaskSemanticGroup0030Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part14 p := by
    simp only [rootMaskSemanticGroup0030Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part14 p := by
    simp only [rootMaskSemanticGroup0030Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0030Part15_group_passes :
    rootMaskSemanticGroup0030Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0030 p =
      rootNormalQrMaskWords0030Part15 p := by
    simp only [rootMaskSemanticGroup0030Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0030 p =
      rootTwistQrMaskWords0030Part15 p := by
    simp only [rootMaskSemanticGroup0030Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0030 : List ℕ :=
  [3457, 3461, 3463, 3467, 3469, 3491, 3499, 3511, 3517, 3527, 3529, 3533, 3539, 3541, 3547, 3557]

theorem rootMaskSemanticGroup0030_passes :
    rootMaskSemanticGroup0030.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  rw [show rootMaskSemanticGroup0030 =
      rootMaskSemanticGroup0030Part00 ++
      rootMaskSemanticGroup0030Part01 ++
      rootMaskSemanticGroup0030Part02 ++
      rootMaskSemanticGroup0030Part03 ++
      rootMaskSemanticGroup0030Part04 ++
      rootMaskSemanticGroup0030Part05 ++
      rootMaskSemanticGroup0030Part06 ++
      rootMaskSemanticGroup0030Part07 ++
      rootMaskSemanticGroup0030Part08 ++
      rootMaskSemanticGroup0030Part09 ++
      rootMaskSemanticGroup0030Part10 ++
      rootMaskSemanticGroup0030Part11 ++
      rootMaskSemanticGroup0030Part12 ++
      rootMaskSemanticGroup0030Part13 ++
      rootMaskSemanticGroup0030Part14 ++
      rootMaskSemanticGroup0030Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0030Part00_group_passes]
  rw [rootMaskSemanticGroup0030Part01_group_passes]
  rw [rootMaskSemanticGroup0030Part02_group_passes]
  rw [rootMaskSemanticGroup0030Part03_group_passes]
  rw [rootMaskSemanticGroup0030Part04_group_passes]
  rw [rootMaskSemanticGroup0030Part05_group_passes]
  rw [rootMaskSemanticGroup0030Part06_group_passes]
  rw [rootMaskSemanticGroup0030Part07_group_passes]
  rw [rootMaskSemanticGroup0030Part08_group_passes]
  rw [rootMaskSemanticGroup0030Part09_group_passes]
  rw [rootMaskSemanticGroup0030Part10_group_passes]
  rw [rootMaskSemanticGroup0030Part11_group_passes]
  rw [rootMaskSemanticGroup0030Part12_group_passes]
  rw [rootMaskSemanticGroup0030Part13_group_passes]
  rw [rootMaskSemanticGroup0030Part14_group_passes]
  rw [rootMaskSemanticGroup0030Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
