import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0016
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0016Part00_group_passes :
    rootMaskSemanticGroup0016Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part00 p := by
    simp only [rootMaskSemanticGroup0016Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part00 p := by
    simp only [rootMaskSemanticGroup0016Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part01_group_passes :
    rootMaskSemanticGroup0016Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part01 p := by
    simp only [rootMaskSemanticGroup0016Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part01 p := by
    simp only [rootMaskSemanticGroup0016Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part02_group_passes :
    rootMaskSemanticGroup0016Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part02 p := by
    simp only [rootMaskSemanticGroup0016Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part02 p := by
    simp only [rootMaskSemanticGroup0016Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part03_group_passes :
    rootMaskSemanticGroup0016Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part03 p := by
    simp only [rootMaskSemanticGroup0016Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part03 p := by
    simp only [rootMaskSemanticGroup0016Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part04_group_passes :
    rootMaskSemanticGroup0016Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part04 p := by
    simp only [rootMaskSemanticGroup0016Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part04 p := by
    simp only [rootMaskSemanticGroup0016Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part05_group_passes :
    rootMaskSemanticGroup0016Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part05 p := by
    simp only [rootMaskSemanticGroup0016Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part05 p := by
    simp only [rootMaskSemanticGroup0016Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part06_group_passes :
    rootMaskSemanticGroup0016Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part06 p := by
    simp only [rootMaskSemanticGroup0016Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part06 p := by
    simp only [rootMaskSemanticGroup0016Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part07_group_passes :
    rootMaskSemanticGroup0016Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part07 p := by
    simp only [rootMaskSemanticGroup0016Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part07 p := by
    simp only [rootMaskSemanticGroup0016Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part08_group_passes :
    rootMaskSemanticGroup0016Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part08 p := by
    simp only [rootMaskSemanticGroup0016Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part08 p := by
    simp only [rootMaskSemanticGroup0016Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part09_group_passes :
    rootMaskSemanticGroup0016Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part09 p := by
    simp only [rootMaskSemanticGroup0016Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part09 p := by
    simp only [rootMaskSemanticGroup0016Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part10_group_passes :
    rootMaskSemanticGroup0016Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part10 p := by
    simp only [rootMaskSemanticGroup0016Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part10 p := by
    simp only [rootMaskSemanticGroup0016Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part11_group_passes :
    rootMaskSemanticGroup0016Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part11 p := by
    simp only [rootMaskSemanticGroup0016Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part11 p := by
    simp only [rootMaskSemanticGroup0016Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part12_group_passes :
    rootMaskSemanticGroup0016Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part12 p := by
    simp only [rootMaskSemanticGroup0016Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part12 p := by
    simp only [rootMaskSemanticGroup0016Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part13_group_passes :
    rootMaskSemanticGroup0016Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part13 p := by
    simp only [rootMaskSemanticGroup0016Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part13 p := by
    simp only [rootMaskSemanticGroup0016Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part14_group_passes :
    rootMaskSemanticGroup0016Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part14 p := by
    simp only [rootMaskSemanticGroup0016Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part14 p := by
    simp only [rootMaskSemanticGroup0016Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0016Part15_group_passes :
    rootMaskSemanticGroup0016Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0016 p =
      rootNormalQrMaskWords0016Part15 p := by
    simp only [rootMaskSemanticGroup0016Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0016 p =
      rootTwistQrMaskWords0016Part15 p := by
    simp only [rootMaskSemanticGroup0016Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0016 : List ℕ :=
  [1637, 1657, 1663, 1667, 1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759]

theorem rootMaskSemanticGroup0016_passes :
    rootMaskSemanticGroup0016.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  rw [show rootMaskSemanticGroup0016 =
      rootMaskSemanticGroup0016Part00 ++
      rootMaskSemanticGroup0016Part01 ++
      rootMaskSemanticGroup0016Part02 ++
      rootMaskSemanticGroup0016Part03 ++
      rootMaskSemanticGroup0016Part04 ++
      rootMaskSemanticGroup0016Part05 ++
      rootMaskSemanticGroup0016Part06 ++
      rootMaskSemanticGroup0016Part07 ++
      rootMaskSemanticGroup0016Part08 ++
      rootMaskSemanticGroup0016Part09 ++
      rootMaskSemanticGroup0016Part10 ++
      rootMaskSemanticGroup0016Part11 ++
      rootMaskSemanticGroup0016Part12 ++
      rootMaskSemanticGroup0016Part13 ++
      rootMaskSemanticGroup0016Part14 ++
      rootMaskSemanticGroup0016Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0016Part00_group_passes]
  rw [rootMaskSemanticGroup0016Part01_group_passes]
  rw [rootMaskSemanticGroup0016Part02_group_passes]
  rw [rootMaskSemanticGroup0016Part03_group_passes]
  rw [rootMaskSemanticGroup0016Part04_group_passes]
  rw [rootMaskSemanticGroup0016Part05_group_passes]
  rw [rootMaskSemanticGroup0016Part06_group_passes]
  rw [rootMaskSemanticGroup0016Part07_group_passes]
  rw [rootMaskSemanticGroup0016Part08_group_passes]
  rw [rootMaskSemanticGroup0016Part09_group_passes]
  rw [rootMaskSemanticGroup0016Part10_group_passes]
  rw [rootMaskSemanticGroup0016Part11_group_passes]
  rw [rootMaskSemanticGroup0016Part12_group_passes]
  rw [rootMaskSemanticGroup0016Part13_group_passes]
  rw [rootMaskSemanticGroup0016Part14_group_passes]
  rw [rootMaskSemanticGroup0016Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
