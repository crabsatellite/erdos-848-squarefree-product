import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0021
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0021Part00_group_passes :
    rootMaskSemanticGroup0021Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part00 p := by
    simp only [rootMaskSemanticGroup0021Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part00 p := by
    simp only [rootMaskSemanticGroup0021Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part01_group_passes :
    rootMaskSemanticGroup0021Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part01 p := by
    simp only [rootMaskSemanticGroup0021Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part01 p := by
    simp only [rootMaskSemanticGroup0021Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part02_group_passes :
    rootMaskSemanticGroup0021Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part02 p := by
    simp only [rootMaskSemanticGroup0021Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part02 p := by
    simp only [rootMaskSemanticGroup0021Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part03_group_passes :
    rootMaskSemanticGroup0021Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part03 p := by
    simp only [rootMaskSemanticGroup0021Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part03 p := by
    simp only [rootMaskSemanticGroup0021Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part04_group_passes :
    rootMaskSemanticGroup0021Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part04 p := by
    simp only [rootMaskSemanticGroup0021Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part04 p := by
    simp only [rootMaskSemanticGroup0021Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part05_group_passes :
    rootMaskSemanticGroup0021Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part05 p := by
    simp only [rootMaskSemanticGroup0021Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part05 p := by
    simp only [rootMaskSemanticGroup0021Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part06_group_passes :
    rootMaskSemanticGroup0021Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part06 p := by
    simp only [rootMaskSemanticGroup0021Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part06 p := by
    simp only [rootMaskSemanticGroup0021Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part07_group_passes :
    rootMaskSemanticGroup0021Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part07 p := by
    simp only [rootMaskSemanticGroup0021Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part07 p := by
    simp only [rootMaskSemanticGroup0021Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part08_group_passes :
    rootMaskSemanticGroup0021Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part08 p := by
    simp only [rootMaskSemanticGroup0021Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part08 p := by
    simp only [rootMaskSemanticGroup0021Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part09_group_passes :
    rootMaskSemanticGroup0021Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part09 p := by
    simp only [rootMaskSemanticGroup0021Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part09 p := by
    simp only [rootMaskSemanticGroup0021Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part10_group_passes :
    rootMaskSemanticGroup0021Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part10 p := by
    simp only [rootMaskSemanticGroup0021Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part10 p := by
    simp only [rootMaskSemanticGroup0021Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part11_group_passes :
    rootMaskSemanticGroup0021Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part11 p := by
    simp only [rootMaskSemanticGroup0021Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part11 p := by
    simp only [rootMaskSemanticGroup0021Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part12_group_passes :
    rootMaskSemanticGroup0021Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part12 p := by
    simp only [rootMaskSemanticGroup0021Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part12 p := by
    simp only [rootMaskSemanticGroup0021Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part13_group_passes :
    rootMaskSemanticGroup0021Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part13 p := by
    simp only [rootMaskSemanticGroup0021Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part13 p := by
    simp only [rootMaskSemanticGroup0021Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part14_group_passes :
    rootMaskSemanticGroup0021Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part14 p := by
    simp only [rootMaskSemanticGroup0021Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part14 p := by
    simp only [rootMaskSemanticGroup0021Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0021Part15_group_passes :
    rootMaskSemanticGroup0021Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0021 p =
      rootNormalQrMaskWords0021Part15 p := by
    simp only [rootMaskSemanticGroup0021Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0021 p =
      rootTwistQrMaskWords0021Part15 p := by
    simp only [rootMaskSemanticGroup0021Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0021 : List ℕ :=
  [2281, 2287, 2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357, 2371, 2377, 2381, 2383]

theorem rootMaskSemanticGroup0021_passes :
    rootMaskSemanticGroup0021.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  rw [show rootMaskSemanticGroup0021 =
      rootMaskSemanticGroup0021Part00 ++
      rootMaskSemanticGroup0021Part01 ++
      rootMaskSemanticGroup0021Part02 ++
      rootMaskSemanticGroup0021Part03 ++
      rootMaskSemanticGroup0021Part04 ++
      rootMaskSemanticGroup0021Part05 ++
      rootMaskSemanticGroup0021Part06 ++
      rootMaskSemanticGroup0021Part07 ++
      rootMaskSemanticGroup0021Part08 ++
      rootMaskSemanticGroup0021Part09 ++
      rootMaskSemanticGroup0021Part10 ++
      rootMaskSemanticGroup0021Part11 ++
      rootMaskSemanticGroup0021Part12 ++
      rootMaskSemanticGroup0021Part13 ++
      rootMaskSemanticGroup0021Part14 ++
      rootMaskSemanticGroup0021Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0021Part00_group_passes]
  rw [rootMaskSemanticGroup0021Part01_group_passes]
  rw [rootMaskSemanticGroup0021Part02_group_passes]
  rw [rootMaskSemanticGroup0021Part03_group_passes]
  rw [rootMaskSemanticGroup0021Part04_group_passes]
  rw [rootMaskSemanticGroup0021Part05_group_passes]
  rw [rootMaskSemanticGroup0021Part06_group_passes]
  rw [rootMaskSemanticGroup0021Part07_group_passes]
  rw [rootMaskSemanticGroup0021Part08_group_passes]
  rw [rootMaskSemanticGroup0021Part09_group_passes]
  rw [rootMaskSemanticGroup0021Part10_group_passes]
  rw [rootMaskSemanticGroup0021Part11_group_passes]
  rw [rootMaskSemanticGroup0021Part12_group_passes]
  rw [rootMaskSemanticGroup0021Part13_group_passes]
  rw [rootMaskSemanticGroup0021Part14_group_passes]
  rw [rootMaskSemanticGroup0021Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
