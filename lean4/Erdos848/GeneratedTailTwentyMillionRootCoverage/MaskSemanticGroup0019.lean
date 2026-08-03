import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0019
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0019Part00_group_passes :
    rootMaskSemanticGroup0019Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part00 p := by
    simp only [rootMaskSemanticGroup0019Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part00 p := by
    simp only [rootMaskSemanticGroup0019Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part01_group_passes :
    rootMaskSemanticGroup0019Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part01 p := by
    simp only [rootMaskSemanticGroup0019Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part01 p := by
    simp only [rootMaskSemanticGroup0019Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part02_group_passes :
    rootMaskSemanticGroup0019Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part02 p := by
    simp only [rootMaskSemanticGroup0019Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part02 p := by
    simp only [rootMaskSemanticGroup0019Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part03_group_passes :
    rootMaskSemanticGroup0019Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part03 p := by
    simp only [rootMaskSemanticGroup0019Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part03 p := by
    simp only [rootMaskSemanticGroup0019Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part04_group_passes :
    rootMaskSemanticGroup0019Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part04 p := by
    simp only [rootMaskSemanticGroup0019Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part04 p := by
    simp only [rootMaskSemanticGroup0019Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part05_group_passes :
    rootMaskSemanticGroup0019Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part05 p := by
    simp only [rootMaskSemanticGroup0019Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part05 p := by
    simp only [rootMaskSemanticGroup0019Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part06_group_passes :
    rootMaskSemanticGroup0019Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part06 p := by
    simp only [rootMaskSemanticGroup0019Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part06 p := by
    simp only [rootMaskSemanticGroup0019Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part07_group_passes :
    rootMaskSemanticGroup0019Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part07 p := by
    simp only [rootMaskSemanticGroup0019Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part07 p := by
    simp only [rootMaskSemanticGroup0019Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part08_group_passes :
    rootMaskSemanticGroup0019Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part08 p := by
    simp only [rootMaskSemanticGroup0019Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part08 p := by
    simp only [rootMaskSemanticGroup0019Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part09_group_passes :
    rootMaskSemanticGroup0019Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part09 p := by
    simp only [rootMaskSemanticGroup0019Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part09 p := by
    simp only [rootMaskSemanticGroup0019Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part10_group_passes :
    rootMaskSemanticGroup0019Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part10 p := by
    simp only [rootMaskSemanticGroup0019Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part10 p := by
    simp only [rootMaskSemanticGroup0019Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part11_group_passes :
    rootMaskSemanticGroup0019Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part11 p := by
    simp only [rootMaskSemanticGroup0019Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part11 p := by
    simp only [rootMaskSemanticGroup0019Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part12_group_passes :
    rootMaskSemanticGroup0019Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part12 p := by
    simp only [rootMaskSemanticGroup0019Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part12 p := by
    simp only [rootMaskSemanticGroup0019Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part13_group_passes :
    rootMaskSemanticGroup0019Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part13 p := by
    simp only [rootMaskSemanticGroup0019Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part13 p := by
    simp only [rootMaskSemanticGroup0019Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part14_group_passes :
    rootMaskSemanticGroup0019Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part14 p := by
    simp only [rootMaskSemanticGroup0019Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part14 p := by
    simp only [rootMaskSemanticGroup0019Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0019Part15_group_passes :
    rootMaskSemanticGroup0019Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0019 p =
      rootNormalQrMaskWords0019Part15 p := by
    simp only [rootMaskSemanticGroup0019Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0019 p =
      rootTwistQrMaskWords0019Part15 p := by
    simp only [rootMaskSemanticGroup0019Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0019 : List ℕ :=
  [2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083, 2087, 2089, 2099, 2111, 2113, 2129, 2131, 2137]

theorem rootMaskSemanticGroup0019_passes :
    rootMaskSemanticGroup0019.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  rw [show rootMaskSemanticGroup0019 =
      rootMaskSemanticGroup0019Part00 ++
      rootMaskSemanticGroup0019Part01 ++
      rootMaskSemanticGroup0019Part02 ++
      rootMaskSemanticGroup0019Part03 ++
      rootMaskSemanticGroup0019Part04 ++
      rootMaskSemanticGroup0019Part05 ++
      rootMaskSemanticGroup0019Part06 ++
      rootMaskSemanticGroup0019Part07 ++
      rootMaskSemanticGroup0019Part08 ++
      rootMaskSemanticGroup0019Part09 ++
      rootMaskSemanticGroup0019Part10 ++
      rootMaskSemanticGroup0019Part11 ++
      rootMaskSemanticGroup0019Part12 ++
      rootMaskSemanticGroup0019Part13 ++
      rootMaskSemanticGroup0019Part14 ++
      rootMaskSemanticGroup0019Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0019Part00_group_passes]
  rw [rootMaskSemanticGroup0019Part01_group_passes]
  rw [rootMaskSemanticGroup0019Part02_group_passes]
  rw [rootMaskSemanticGroup0019Part03_group_passes]
  rw [rootMaskSemanticGroup0019Part04_group_passes]
  rw [rootMaskSemanticGroup0019Part05_group_passes]
  rw [rootMaskSemanticGroup0019Part06_group_passes]
  rw [rootMaskSemanticGroup0019Part07_group_passes]
  rw [rootMaskSemanticGroup0019Part08_group_passes]
  rw [rootMaskSemanticGroup0019Part09_group_passes]
  rw [rootMaskSemanticGroup0019Part10_group_passes]
  rw [rootMaskSemanticGroup0019Part11_group_passes]
  rw [rootMaskSemanticGroup0019Part12_group_passes]
  rw [rootMaskSemanticGroup0019Part13_group_passes]
  rw [rootMaskSemanticGroup0019Part14_group_passes]
  rw [rootMaskSemanticGroup0019Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
