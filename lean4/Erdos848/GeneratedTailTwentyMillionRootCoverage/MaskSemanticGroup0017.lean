import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0017
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0017Part00_group_passes :
    rootMaskSemanticGroup0017Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part00 p := by
    simp only [rootMaskSemanticGroup0017Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part00 p := by
    simp only [rootMaskSemanticGroup0017Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part01_group_passes :
    rootMaskSemanticGroup0017Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part01 p := by
    simp only [rootMaskSemanticGroup0017Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part01 p := by
    simp only [rootMaskSemanticGroup0017Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part02_group_passes :
    rootMaskSemanticGroup0017Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part02 p := by
    simp only [rootMaskSemanticGroup0017Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part02 p := by
    simp only [rootMaskSemanticGroup0017Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part03_group_passes :
    rootMaskSemanticGroup0017Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part03 p := by
    simp only [rootMaskSemanticGroup0017Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part03 p := by
    simp only [rootMaskSemanticGroup0017Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part04_group_passes :
    rootMaskSemanticGroup0017Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part04 p := by
    simp only [rootMaskSemanticGroup0017Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part04 p := by
    simp only [rootMaskSemanticGroup0017Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part05_group_passes :
    rootMaskSemanticGroup0017Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part05 p := by
    simp only [rootMaskSemanticGroup0017Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part05 p := by
    simp only [rootMaskSemanticGroup0017Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part06_group_passes :
    rootMaskSemanticGroup0017Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part06 p := by
    simp only [rootMaskSemanticGroup0017Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part06 p := by
    simp only [rootMaskSemanticGroup0017Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part07_group_passes :
    rootMaskSemanticGroup0017Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part07 p := by
    simp only [rootMaskSemanticGroup0017Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part07 p := by
    simp only [rootMaskSemanticGroup0017Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part08_group_passes :
    rootMaskSemanticGroup0017Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part08 p := by
    simp only [rootMaskSemanticGroup0017Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part08 p := by
    simp only [rootMaskSemanticGroup0017Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part09_group_passes :
    rootMaskSemanticGroup0017Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part09 p := by
    simp only [rootMaskSemanticGroup0017Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part09 p := by
    simp only [rootMaskSemanticGroup0017Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part10_group_passes :
    rootMaskSemanticGroup0017Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part10 p := by
    simp only [rootMaskSemanticGroup0017Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part10 p := by
    simp only [rootMaskSemanticGroup0017Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part11_group_passes :
    rootMaskSemanticGroup0017Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part11 p := by
    simp only [rootMaskSemanticGroup0017Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part11 p := by
    simp only [rootMaskSemanticGroup0017Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part12_group_passes :
    rootMaskSemanticGroup0017Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part12 p := by
    simp only [rootMaskSemanticGroup0017Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part12 p := by
    simp only [rootMaskSemanticGroup0017Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part13_group_passes :
    rootMaskSemanticGroup0017Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part13 p := by
    simp only [rootMaskSemanticGroup0017Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part13 p := by
    simp only [rootMaskSemanticGroup0017Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part14_group_passes :
    rootMaskSemanticGroup0017Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part14 p := by
    simp only [rootMaskSemanticGroup0017Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part14 p := by
    simp only [rootMaskSemanticGroup0017Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0017Part15_group_passes :
    rootMaskSemanticGroup0017Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0017 p =
      rootNormalQrMaskWords0017Part15 p := by
    simp only [rootMaskSemanticGroup0017Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0017 p =
      rootTwistQrMaskWords0017Part15 p := by
    simp only [rootMaskSemanticGroup0017Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0017 : List ℕ :=
  [1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831, 1847, 1861, 1867, 1871, 1873, 1877, 1879, 1889]

theorem rootMaskSemanticGroup0017_passes :
    rootMaskSemanticGroup0017.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  rw [show rootMaskSemanticGroup0017 =
      rootMaskSemanticGroup0017Part00 ++
      rootMaskSemanticGroup0017Part01 ++
      rootMaskSemanticGroup0017Part02 ++
      rootMaskSemanticGroup0017Part03 ++
      rootMaskSemanticGroup0017Part04 ++
      rootMaskSemanticGroup0017Part05 ++
      rootMaskSemanticGroup0017Part06 ++
      rootMaskSemanticGroup0017Part07 ++
      rootMaskSemanticGroup0017Part08 ++
      rootMaskSemanticGroup0017Part09 ++
      rootMaskSemanticGroup0017Part10 ++
      rootMaskSemanticGroup0017Part11 ++
      rootMaskSemanticGroup0017Part12 ++
      rootMaskSemanticGroup0017Part13 ++
      rootMaskSemanticGroup0017Part14 ++
      rootMaskSemanticGroup0017Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0017Part00_group_passes]
  rw [rootMaskSemanticGroup0017Part01_group_passes]
  rw [rootMaskSemanticGroup0017Part02_group_passes]
  rw [rootMaskSemanticGroup0017Part03_group_passes]
  rw [rootMaskSemanticGroup0017Part04_group_passes]
  rw [rootMaskSemanticGroup0017Part05_group_passes]
  rw [rootMaskSemanticGroup0017Part06_group_passes]
  rw [rootMaskSemanticGroup0017Part07_group_passes]
  rw [rootMaskSemanticGroup0017Part08_group_passes]
  rw [rootMaskSemanticGroup0017Part09_group_passes]
  rw [rootMaskSemanticGroup0017Part10_group_passes]
  rw [rootMaskSemanticGroup0017Part11_group_passes]
  rw [rootMaskSemanticGroup0017Part12_group_passes]
  rw [rootMaskSemanticGroup0017Part13_group_passes]
  rw [rootMaskSemanticGroup0017Part14_group_passes]
  rw [rootMaskSemanticGroup0017Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
