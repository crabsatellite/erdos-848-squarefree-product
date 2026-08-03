import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0027
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0027Part00_group_passes :
    rootMaskSemanticGroup0027Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part00 p := by
    simp only [rootMaskSemanticGroup0027Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part00 p := by
    simp only [rootMaskSemanticGroup0027Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part01_group_passes :
    rootMaskSemanticGroup0027Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part01 p := by
    simp only [rootMaskSemanticGroup0027Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part01 p := by
    simp only [rootMaskSemanticGroup0027Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part02_group_passes :
    rootMaskSemanticGroup0027Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part02 p := by
    simp only [rootMaskSemanticGroup0027Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part02 p := by
    simp only [rootMaskSemanticGroup0027Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part03_group_passes :
    rootMaskSemanticGroup0027Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part03 p := by
    simp only [rootMaskSemanticGroup0027Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part03 p := by
    simp only [rootMaskSemanticGroup0027Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part04_group_passes :
    rootMaskSemanticGroup0027Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part04 p := by
    simp only [rootMaskSemanticGroup0027Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part04 p := by
    simp only [rootMaskSemanticGroup0027Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part05_group_passes :
    rootMaskSemanticGroup0027Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part05 p := by
    simp only [rootMaskSemanticGroup0027Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part05 p := by
    simp only [rootMaskSemanticGroup0027Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part06_group_passes :
    rootMaskSemanticGroup0027Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part06 p := by
    simp only [rootMaskSemanticGroup0027Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part06 p := by
    simp only [rootMaskSemanticGroup0027Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part07_group_passes :
    rootMaskSemanticGroup0027Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part07 p := by
    simp only [rootMaskSemanticGroup0027Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part07 p := by
    simp only [rootMaskSemanticGroup0027Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part08_group_passes :
    rootMaskSemanticGroup0027Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part08 p := by
    simp only [rootMaskSemanticGroup0027Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part08 p := by
    simp only [rootMaskSemanticGroup0027Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part09_group_passes :
    rootMaskSemanticGroup0027Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part09 p := by
    simp only [rootMaskSemanticGroup0027Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part09 p := by
    simp only [rootMaskSemanticGroup0027Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part10_group_passes :
    rootMaskSemanticGroup0027Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part10 p := by
    simp only [rootMaskSemanticGroup0027Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part10 p := by
    simp only [rootMaskSemanticGroup0027Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part11_group_passes :
    rootMaskSemanticGroup0027Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part11 p := by
    simp only [rootMaskSemanticGroup0027Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part11 p := by
    simp only [rootMaskSemanticGroup0027Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part12_group_passes :
    rootMaskSemanticGroup0027Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part12 p := by
    simp only [rootMaskSemanticGroup0027Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part12 p := by
    simp only [rootMaskSemanticGroup0027Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part13_group_passes :
    rootMaskSemanticGroup0027Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part13 p := by
    simp only [rootMaskSemanticGroup0027Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part13 p := by
    simp only [rootMaskSemanticGroup0027Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part14_group_passes :
    rootMaskSemanticGroup0027Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part14 p := by
    simp only [rootMaskSemanticGroup0027Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part14 p := by
    simp only [rootMaskSemanticGroup0027Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0027Part15_group_passes :
    rootMaskSemanticGroup0027Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0027 p =
      rootNormalQrMaskWords0027Part15 p := by
    simp only [rootMaskSemanticGroup0027Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0027 p =
      rootTwistQrMaskWords0027Part15 p := by
    simp only [rootMaskSemanticGroup0027Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0027 : List ℕ :=
  [3037, 3041, 3049, 3061, 3067, 3079, 3083, 3089, 3109, 3119, 3121, 3137, 3163, 3167, 3169, 3181]

theorem rootMaskSemanticGroup0027_passes :
    rootMaskSemanticGroup0027.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  rw [show rootMaskSemanticGroup0027 =
      rootMaskSemanticGroup0027Part00 ++
      rootMaskSemanticGroup0027Part01 ++
      rootMaskSemanticGroup0027Part02 ++
      rootMaskSemanticGroup0027Part03 ++
      rootMaskSemanticGroup0027Part04 ++
      rootMaskSemanticGroup0027Part05 ++
      rootMaskSemanticGroup0027Part06 ++
      rootMaskSemanticGroup0027Part07 ++
      rootMaskSemanticGroup0027Part08 ++
      rootMaskSemanticGroup0027Part09 ++
      rootMaskSemanticGroup0027Part10 ++
      rootMaskSemanticGroup0027Part11 ++
      rootMaskSemanticGroup0027Part12 ++
      rootMaskSemanticGroup0027Part13 ++
      rootMaskSemanticGroup0027Part14 ++
      rootMaskSemanticGroup0027Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0027Part00_group_passes]
  rw [rootMaskSemanticGroup0027Part01_group_passes]
  rw [rootMaskSemanticGroup0027Part02_group_passes]
  rw [rootMaskSemanticGroup0027Part03_group_passes]
  rw [rootMaskSemanticGroup0027Part04_group_passes]
  rw [rootMaskSemanticGroup0027Part05_group_passes]
  rw [rootMaskSemanticGroup0027Part06_group_passes]
  rw [rootMaskSemanticGroup0027Part07_group_passes]
  rw [rootMaskSemanticGroup0027Part08_group_passes]
  rw [rootMaskSemanticGroup0027Part09_group_passes]
  rw [rootMaskSemanticGroup0027Part10_group_passes]
  rw [rootMaskSemanticGroup0027Part11_group_passes]
  rw [rootMaskSemanticGroup0027Part12_group_passes]
  rw [rootMaskSemanticGroup0027Part13_group_passes]
  rw [rootMaskSemanticGroup0027Part14_group_passes]
  rw [rootMaskSemanticGroup0027Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
