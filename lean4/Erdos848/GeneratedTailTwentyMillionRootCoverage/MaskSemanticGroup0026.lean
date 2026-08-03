import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0026
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0026Part00_group_passes :
    rootMaskSemanticGroup0026Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part00 p := by
    simp only [rootMaskSemanticGroup0026Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part00 p := by
    simp only [rootMaskSemanticGroup0026Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part01_group_passes :
    rootMaskSemanticGroup0026Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part01 p := by
    simp only [rootMaskSemanticGroup0026Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part01 p := by
    simp only [rootMaskSemanticGroup0026Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part02_group_passes :
    rootMaskSemanticGroup0026Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part02 p := by
    simp only [rootMaskSemanticGroup0026Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part02 p := by
    simp only [rootMaskSemanticGroup0026Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part03_group_passes :
    rootMaskSemanticGroup0026Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part03 p := by
    simp only [rootMaskSemanticGroup0026Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part03 p := by
    simp only [rootMaskSemanticGroup0026Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part04_group_passes :
    rootMaskSemanticGroup0026Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part04 p := by
    simp only [rootMaskSemanticGroup0026Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part04 p := by
    simp only [rootMaskSemanticGroup0026Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part05_group_passes :
    rootMaskSemanticGroup0026Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part05 p := by
    simp only [rootMaskSemanticGroup0026Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part05 p := by
    simp only [rootMaskSemanticGroup0026Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part06_group_passes :
    rootMaskSemanticGroup0026Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part06 p := by
    simp only [rootMaskSemanticGroup0026Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part06 p := by
    simp only [rootMaskSemanticGroup0026Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part07_group_passes :
    rootMaskSemanticGroup0026Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part07 p := by
    simp only [rootMaskSemanticGroup0026Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part07 p := by
    simp only [rootMaskSemanticGroup0026Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part08_group_passes :
    rootMaskSemanticGroup0026Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part08 p := by
    simp only [rootMaskSemanticGroup0026Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part08 p := by
    simp only [rootMaskSemanticGroup0026Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part09_group_passes :
    rootMaskSemanticGroup0026Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part09 p := by
    simp only [rootMaskSemanticGroup0026Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part09 p := by
    simp only [rootMaskSemanticGroup0026Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part10_group_passes :
    rootMaskSemanticGroup0026Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part10 p := by
    simp only [rootMaskSemanticGroup0026Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part10 p := by
    simp only [rootMaskSemanticGroup0026Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part11_group_passes :
    rootMaskSemanticGroup0026Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part11 p := by
    simp only [rootMaskSemanticGroup0026Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part11 p := by
    simp only [rootMaskSemanticGroup0026Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part12_group_passes :
    rootMaskSemanticGroup0026Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part12 p := by
    simp only [rootMaskSemanticGroup0026Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part12 p := by
    simp only [rootMaskSemanticGroup0026Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part13_group_passes :
    rootMaskSemanticGroup0026Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part13 p := by
    simp only [rootMaskSemanticGroup0026Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part13 p := by
    simp only [rootMaskSemanticGroup0026Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part14_group_passes :
    rootMaskSemanticGroup0026Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part14 p := by
    simp only [rootMaskSemanticGroup0026Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part14 p := by
    simp only [rootMaskSemanticGroup0026Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0026Part15_group_passes :
    rootMaskSemanticGroup0026Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0026 p =
      rootNormalQrMaskWords0026Part15 p := by
    simp only [rootMaskSemanticGroup0026Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0026 p =
      rootTwistQrMaskWords0026Part15 p := by
    simp only [rootMaskSemanticGroup0026Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0026 : List ℕ :=
  [2897, 2903, 2909, 2917, 2927, 2939, 2953, 2957, 2963, 2969, 2971, 2999, 3001, 3011, 3019, 3023]

theorem rootMaskSemanticGroup0026_passes :
    rootMaskSemanticGroup0026.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  rw [show rootMaskSemanticGroup0026 =
      rootMaskSemanticGroup0026Part00 ++
      rootMaskSemanticGroup0026Part01 ++
      rootMaskSemanticGroup0026Part02 ++
      rootMaskSemanticGroup0026Part03 ++
      rootMaskSemanticGroup0026Part04 ++
      rootMaskSemanticGroup0026Part05 ++
      rootMaskSemanticGroup0026Part06 ++
      rootMaskSemanticGroup0026Part07 ++
      rootMaskSemanticGroup0026Part08 ++
      rootMaskSemanticGroup0026Part09 ++
      rootMaskSemanticGroup0026Part10 ++
      rootMaskSemanticGroup0026Part11 ++
      rootMaskSemanticGroup0026Part12 ++
      rootMaskSemanticGroup0026Part13 ++
      rootMaskSemanticGroup0026Part14 ++
      rootMaskSemanticGroup0026Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0026Part00_group_passes]
  rw [rootMaskSemanticGroup0026Part01_group_passes]
  rw [rootMaskSemanticGroup0026Part02_group_passes]
  rw [rootMaskSemanticGroup0026Part03_group_passes]
  rw [rootMaskSemanticGroup0026Part04_group_passes]
  rw [rootMaskSemanticGroup0026Part05_group_passes]
  rw [rootMaskSemanticGroup0026Part06_group_passes]
  rw [rootMaskSemanticGroup0026Part07_group_passes]
  rw [rootMaskSemanticGroup0026Part08_group_passes]
  rw [rootMaskSemanticGroup0026Part09_group_passes]
  rw [rootMaskSemanticGroup0026Part10_group_passes]
  rw [rootMaskSemanticGroup0026Part11_group_passes]
  rw [rootMaskSemanticGroup0026Part12_group_passes]
  rw [rootMaskSemanticGroup0026Part13_group_passes]
  rw [rootMaskSemanticGroup0026Part14_group_passes]
  rw [rootMaskSemanticGroup0026Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
