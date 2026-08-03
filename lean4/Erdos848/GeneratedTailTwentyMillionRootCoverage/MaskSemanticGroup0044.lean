import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0044
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0044Part00_group_passes :
    rootMaskSemanticGroup0044Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part00 p := by
    simp only [rootMaskSemanticGroup0044Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part00 p := by
    simp only [rootMaskSemanticGroup0044Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part01_group_passes :
    rootMaskSemanticGroup0044Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part01 p := by
    simp only [rootMaskSemanticGroup0044Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part01 p := by
    simp only [rootMaskSemanticGroup0044Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part02_group_passes :
    rootMaskSemanticGroup0044Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part02 p := by
    simp only [rootMaskSemanticGroup0044Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part02 p := by
    simp only [rootMaskSemanticGroup0044Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part03_group_passes :
    rootMaskSemanticGroup0044Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part03 p := by
    simp only [rootMaskSemanticGroup0044Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part03 p := by
    simp only [rootMaskSemanticGroup0044Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part04_group_passes :
    rootMaskSemanticGroup0044Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part04 p := by
    simp only [rootMaskSemanticGroup0044Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part04 p := by
    simp only [rootMaskSemanticGroup0044Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part05_group_passes :
    rootMaskSemanticGroup0044Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part05 p := by
    simp only [rootMaskSemanticGroup0044Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part05 p := by
    simp only [rootMaskSemanticGroup0044Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part06_group_passes :
    rootMaskSemanticGroup0044Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part06 p := by
    simp only [rootMaskSemanticGroup0044Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part06 p := by
    simp only [rootMaskSemanticGroup0044Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part07_group_passes :
    rootMaskSemanticGroup0044Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part07 p := by
    simp only [rootMaskSemanticGroup0044Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part07 p := by
    simp only [rootMaskSemanticGroup0044Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part08_group_passes :
    rootMaskSemanticGroup0044Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part08 p := by
    simp only [rootMaskSemanticGroup0044Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part08 p := by
    simp only [rootMaskSemanticGroup0044Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part09_group_passes :
    rootMaskSemanticGroup0044Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part09 p := by
    simp only [rootMaskSemanticGroup0044Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part09 p := by
    simp only [rootMaskSemanticGroup0044Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part10_group_passes :
    rootMaskSemanticGroup0044Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part10 p := by
    simp only [rootMaskSemanticGroup0044Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part10 p := by
    simp only [rootMaskSemanticGroup0044Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part11_group_passes :
    rootMaskSemanticGroup0044Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part11 p := by
    simp only [rootMaskSemanticGroup0044Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part11 p := by
    simp only [rootMaskSemanticGroup0044Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part12_group_passes :
    rootMaskSemanticGroup0044Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part12 p := by
    simp only [rootMaskSemanticGroup0044Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part12 p := by
    simp only [rootMaskSemanticGroup0044Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part13_group_passes :
    rootMaskSemanticGroup0044Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part13 p := by
    simp only [rootMaskSemanticGroup0044Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part13 p := by
    simp only [rootMaskSemanticGroup0044Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part14_group_passes :
    rootMaskSemanticGroup0044Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part14 p := by
    simp only [rootMaskSemanticGroup0044Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part14 p := by
    simp only [rootMaskSemanticGroup0044Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0044Part15_group_passes :
    rootMaskSemanticGroup0044Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0044 p =
      rootNormalQrMaskWords0044Part15 p := by
    simp only [rootMaskSemanticGroup0044Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0044 p =
      rootTwistQrMaskWords0044Part15 p := by
    simp only [rootMaskSemanticGroup0044Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0044 : List ℕ :=
  [5347, 5351, 5381, 5387, 5393, 5399, 5407, 5413, 5417, 5419, 5431, 5437, 5441, 5443, 5449, 5471]

theorem rootMaskSemanticGroup0044_passes :
    rootMaskSemanticGroup0044.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0044
        rootTwistQrMaskWords0044) = true := by
  rw [show rootMaskSemanticGroup0044 =
      rootMaskSemanticGroup0044Part00 ++
      rootMaskSemanticGroup0044Part01 ++
      rootMaskSemanticGroup0044Part02 ++
      rootMaskSemanticGroup0044Part03 ++
      rootMaskSemanticGroup0044Part04 ++
      rootMaskSemanticGroup0044Part05 ++
      rootMaskSemanticGroup0044Part06 ++
      rootMaskSemanticGroup0044Part07 ++
      rootMaskSemanticGroup0044Part08 ++
      rootMaskSemanticGroup0044Part09 ++
      rootMaskSemanticGroup0044Part10 ++
      rootMaskSemanticGroup0044Part11 ++
      rootMaskSemanticGroup0044Part12 ++
      rootMaskSemanticGroup0044Part13 ++
      rootMaskSemanticGroup0044Part14 ++
      rootMaskSemanticGroup0044Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0044Part00_group_passes]
  rw [rootMaskSemanticGroup0044Part01_group_passes]
  rw [rootMaskSemanticGroup0044Part02_group_passes]
  rw [rootMaskSemanticGroup0044Part03_group_passes]
  rw [rootMaskSemanticGroup0044Part04_group_passes]
  rw [rootMaskSemanticGroup0044Part05_group_passes]
  rw [rootMaskSemanticGroup0044Part06_group_passes]
  rw [rootMaskSemanticGroup0044Part07_group_passes]
  rw [rootMaskSemanticGroup0044Part08_group_passes]
  rw [rootMaskSemanticGroup0044Part09_group_passes]
  rw [rootMaskSemanticGroup0044Part10_group_passes]
  rw [rootMaskSemanticGroup0044Part11_group_passes]
  rw [rootMaskSemanticGroup0044Part12_group_passes]
  rw [rootMaskSemanticGroup0044Part13_group_passes]
  rw [rootMaskSemanticGroup0044Part14_group_passes]
  rw [rootMaskSemanticGroup0044Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
