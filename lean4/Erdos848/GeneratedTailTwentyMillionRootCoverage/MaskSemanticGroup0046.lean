import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0046
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0046Part00_group_passes :
    rootMaskSemanticGroup0046Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part00 p := by
    simp only [rootMaskSemanticGroup0046Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part00 p := by
    simp only [rootMaskSemanticGroup0046Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part01_group_passes :
    rootMaskSemanticGroup0046Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part01 p := by
    simp only [rootMaskSemanticGroup0046Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part01 p := by
    simp only [rootMaskSemanticGroup0046Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part02_group_passes :
    rootMaskSemanticGroup0046Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part02 p := by
    simp only [rootMaskSemanticGroup0046Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part02 p := by
    simp only [rootMaskSemanticGroup0046Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part03_group_passes :
    rootMaskSemanticGroup0046Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part03 p := by
    simp only [rootMaskSemanticGroup0046Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part03 p := by
    simp only [rootMaskSemanticGroup0046Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part04_group_passes :
    rootMaskSemanticGroup0046Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part04 p := by
    simp only [rootMaskSemanticGroup0046Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part04 p := by
    simp only [rootMaskSemanticGroup0046Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part05_group_passes :
    rootMaskSemanticGroup0046Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part05 p := by
    simp only [rootMaskSemanticGroup0046Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part05 p := by
    simp only [rootMaskSemanticGroup0046Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part06_group_passes :
    rootMaskSemanticGroup0046Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part06 p := by
    simp only [rootMaskSemanticGroup0046Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part06 p := by
    simp only [rootMaskSemanticGroup0046Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part07_group_passes :
    rootMaskSemanticGroup0046Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part07 p := by
    simp only [rootMaskSemanticGroup0046Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part07 p := by
    simp only [rootMaskSemanticGroup0046Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part08_group_passes :
    rootMaskSemanticGroup0046Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part08 p := by
    simp only [rootMaskSemanticGroup0046Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part08 p := by
    simp only [rootMaskSemanticGroup0046Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part09_group_passes :
    rootMaskSemanticGroup0046Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part09 p := by
    simp only [rootMaskSemanticGroup0046Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part09 p := by
    simp only [rootMaskSemanticGroup0046Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part10_group_passes :
    rootMaskSemanticGroup0046Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part10 p := by
    simp only [rootMaskSemanticGroup0046Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part10 p := by
    simp only [rootMaskSemanticGroup0046Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part11_group_passes :
    rootMaskSemanticGroup0046Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part11 p := by
    simp only [rootMaskSemanticGroup0046Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part11 p := by
    simp only [rootMaskSemanticGroup0046Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part12_group_passes :
    rootMaskSemanticGroup0046Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part12 p := by
    simp only [rootMaskSemanticGroup0046Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part12 p := by
    simp only [rootMaskSemanticGroup0046Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part13_group_passes :
    rootMaskSemanticGroup0046Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part13 p := by
    simp only [rootMaskSemanticGroup0046Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part13 p := by
    simp only [rootMaskSemanticGroup0046Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part14_group_passes :
    rootMaskSemanticGroup0046Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part14 p := by
    simp only [rootMaskSemanticGroup0046Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part14 p := by
    simp only [rootMaskSemanticGroup0046Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0046Part15_group_passes :
    rootMaskSemanticGroup0046Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0046 p =
      rootNormalQrMaskWords0046Part15 p := by
    simp only [rootMaskSemanticGroup0046Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0046 p =
      rootTwistQrMaskWords0046Part15 p := by
    simp only [rootMaskSemanticGroup0046Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0046 : List ℕ :=
  [5623, 5639, 5641, 5647, 5651, 5653, 5657, 5659, 5669, 5683, 5689, 5693, 5701, 5711, 5717, 5737]

theorem rootMaskSemanticGroup0046_passes :
    rootMaskSemanticGroup0046.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0046
        rootTwistQrMaskWords0046) = true := by
  rw [show rootMaskSemanticGroup0046 =
      rootMaskSemanticGroup0046Part00 ++
      rootMaskSemanticGroup0046Part01 ++
      rootMaskSemanticGroup0046Part02 ++
      rootMaskSemanticGroup0046Part03 ++
      rootMaskSemanticGroup0046Part04 ++
      rootMaskSemanticGroup0046Part05 ++
      rootMaskSemanticGroup0046Part06 ++
      rootMaskSemanticGroup0046Part07 ++
      rootMaskSemanticGroup0046Part08 ++
      rootMaskSemanticGroup0046Part09 ++
      rootMaskSemanticGroup0046Part10 ++
      rootMaskSemanticGroup0046Part11 ++
      rootMaskSemanticGroup0046Part12 ++
      rootMaskSemanticGroup0046Part13 ++
      rootMaskSemanticGroup0046Part14 ++
      rootMaskSemanticGroup0046Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0046Part00_group_passes]
  rw [rootMaskSemanticGroup0046Part01_group_passes]
  rw [rootMaskSemanticGroup0046Part02_group_passes]
  rw [rootMaskSemanticGroup0046Part03_group_passes]
  rw [rootMaskSemanticGroup0046Part04_group_passes]
  rw [rootMaskSemanticGroup0046Part05_group_passes]
  rw [rootMaskSemanticGroup0046Part06_group_passes]
  rw [rootMaskSemanticGroup0046Part07_group_passes]
  rw [rootMaskSemanticGroup0046Part08_group_passes]
  rw [rootMaskSemanticGroup0046Part09_group_passes]
  rw [rootMaskSemanticGroup0046Part10_group_passes]
  rw [rootMaskSemanticGroup0046Part11_group_passes]
  rw [rootMaskSemanticGroup0046Part12_group_passes]
  rw [rootMaskSemanticGroup0046Part13_group_passes]
  rw [rootMaskSemanticGroup0046Part14_group_passes]
  rw [rootMaskSemanticGroup0046Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
