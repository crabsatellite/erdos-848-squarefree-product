import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0039Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0039
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0039Part00_group_passes :
    rootMaskSemanticGroup0039Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part00 p := by
    simp only [rootMaskSemanticGroup0039Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part00 p := by
    simp only [rootMaskSemanticGroup0039Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part01_group_passes :
    rootMaskSemanticGroup0039Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part01 p := by
    simp only [rootMaskSemanticGroup0039Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part01 p := by
    simp only [rootMaskSemanticGroup0039Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part02_group_passes :
    rootMaskSemanticGroup0039Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part02 p := by
    simp only [rootMaskSemanticGroup0039Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part02 p := by
    simp only [rootMaskSemanticGroup0039Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part03_group_passes :
    rootMaskSemanticGroup0039Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part03 p := by
    simp only [rootMaskSemanticGroup0039Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part03 p := by
    simp only [rootMaskSemanticGroup0039Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part04_group_passes :
    rootMaskSemanticGroup0039Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part04 p := by
    simp only [rootMaskSemanticGroup0039Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part04 p := by
    simp only [rootMaskSemanticGroup0039Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part05_group_passes :
    rootMaskSemanticGroup0039Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part05 p := by
    simp only [rootMaskSemanticGroup0039Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part05 p := by
    simp only [rootMaskSemanticGroup0039Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part06_group_passes :
    rootMaskSemanticGroup0039Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part06 p := by
    simp only [rootMaskSemanticGroup0039Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part06 p := by
    simp only [rootMaskSemanticGroup0039Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part07_group_passes :
    rootMaskSemanticGroup0039Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part07 p := by
    simp only [rootMaskSemanticGroup0039Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part07 p := by
    simp only [rootMaskSemanticGroup0039Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part08_group_passes :
    rootMaskSemanticGroup0039Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part08 p := by
    simp only [rootMaskSemanticGroup0039Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part08 p := by
    simp only [rootMaskSemanticGroup0039Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part09_group_passes :
    rootMaskSemanticGroup0039Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part09 p := by
    simp only [rootMaskSemanticGroup0039Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part09 p := by
    simp only [rootMaskSemanticGroup0039Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part10_group_passes :
    rootMaskSemanticGroup0039Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part10 p := by
    simp only [rootMaskSemanticGroup0039Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part10 p := by
    simp only [rootMaskSemanticGroup0039Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part11_group_passes :
    rootMaskSemanticGroup0039Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part11 p := by
    simp only [rootMaskSemanticGroup0039Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part11 p := by
    simp only [rootMaskSemanticGroup0039Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part12_group_passes :
    rootMaskSemanticGroup0039Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part12 p := by
    simp only [rootMaskSemanticGroup0039Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part12 p := by
    simp only [rootMaskSemanticGroup0039Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part13_group_passes :
    rootMaskSemanticGroup0039Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part13 p := by
    simp only [rootMaskSemanticGroup0039Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part13 p := by
    simp only [rootMaskSemanticGroup0039Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part14_group_passes :
    rootMaskSemanticGroup0039Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part14 p := by
    simp only [rootMaskSemanticGroup0039Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part14 p := by
    simp only [rootMaskSemanticGroup0039Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0039Part15_group_passes :
    rootMaskSemanticGroup0039Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0039Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0039 p =
      rootNormalQrMaskWords0039Part15 p := by
    simp only [rootMaskSemanticGroup0039Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0039 p =
      rootTwistQrMaskWords0039Part15 p := by
    simp only [rootMaskSemanticGroup0039Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0039 : List ℕ :=
  [4643, 4649, 4651, 4657, 4663, 4673, 4679, 4691, 4703, 4721, 4723, 4729, 4733, 4751, 4759, 4783]

theorem rootMaskSemanticGroup0039_passes :
    rootMaskSemanticGroup0039.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0039
        rootTwistQrMaskWords0039) = true := by
  rw [show rootMaskSemanticGroup0039 =
      rootMaskSemanticGroup0039Part00 ++
      rootMaskSemanticGroup0039Part01 ++
      rootMaskSemanticGroup0039Part02 ++
      rootMaskSemanticGroup0039Part03 ++
      rootMaskSemanticGroup0039Part04 ++
      rootMaskSemanticGroup0039Part05 ++
      rootMaskSemanticGroup0039Part06 ++
      rootMaskSemanticGroup0039Part07 ++
      rootMaskSemanticGroup0039Part08 ++
      rootMaskSemanticGroup0039Part09 ++
      rootMaskSemanticGroup0039Part10 ++
      rootMaskSemanticGroup0039Part11 ++
      rootMaskSemanticGroup0039Part12 ++
      rootMaskSemanticGroup0039Part13 ++
      rootMaskSemanticGroup0039Part14 ++
      rootMaskSemanticGroup0039Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0039Part00_group_passes]
  rw [rootMaskSemanticGroup0039Part01_group_passes]
  rw [rootMaskSemanticGroup0039Part02_group_passes]
  rw [rootMaskSemanticGroup0039Part03_group_passes]
  rw [rootMaskSemanticGroup0039Part04_group_passes]
  rw [rootMaskSemanticGroup0039Part05_group_passes]
  rw [rootMaskSemanticGroup0039Part06_group_passes]
  rw [rootMaskSemanticGroup0039Part07_group_passes]
  rw [rootMaskSemanticGroup0039Part08_group_passes]
  rw [rootMaskSemanticGroup0039Part09_group_passes]
  rw [rootMaskSemanticGroup0039Part10_group_passes]
  rw [rootMaskSemanticGroup0039Part11_group_passes]
  rw [rootMaskSemanticGroup0039Part12_group_passes]
  rw [rootMaskSemanticGroup0039Part13_group_passes]
  rw [rootMaskSemanticGroup0039Part14_group_passes]
  rw [rootMaskSemanticGroup0039Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
