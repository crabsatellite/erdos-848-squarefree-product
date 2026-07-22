import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0015
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0015Part00_group_passes :
    rootMaskSemanticGroup0015Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part00 p := by
    simp only [rootMaskSemanticGroup0015Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part00 p := by
    simp only [rootMaskSemanticGroup0015Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part01_group_passes :
    rootMaskSemanticGroup0015Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part01 p := by
    simp only [rootMaskSemanticGroup0015Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part01 p := by
    simp only [rootMaskSemanticGroup0015Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part02_group_passes :
    rootMaskSemanticGroup0015Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part02 p := by
    simp only [rootMaskSemanticGroup0015Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part02 p := by
    simp only [rootMaskSemanticGroup0015Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part03_group_passes :
    rootMaskSemanticGroup0015Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part03 p := by
    simp only [rootMaskSemanticGroup0015Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part03 p := by
    simp only [rootMaskSemanticGroup0015Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part04_group_passes :
    rootMaskSemanticGroup0015Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part04 p := by
    simp only [rootMaskSemanticGroup0015Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part04 p := by
    simp only [rootMaskSemanticGroup0015Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part05_group_passes :
    rootMaskSemanticGroup0015Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part05 p := by
    simp only [rootMaskSemanticGroup0015Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part05 p := by
    simp only [rootMaskSemanticGroup0015Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part06_group_passes :
    rootMaskSemanticGroup0015Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part06 p := by
    simp only [rootMaskSemanticGroup0015Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part06 p := by
    simp only [rootMaskSemanticGroup0015Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part07_group_passes :
    rootMaskSemanticGroup0015Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part07 p := by
    simp only [rootMaskSemanticGroup0015Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part07 p := by
    simp only [rootMaskSemanticGroup0015Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part08_group_passes :
    rootMaskSemanticGroup0015Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part08 p := by
    simp only [rootMaskSemanticGroup0015Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part08 p := by
    simp only [rootMaskSemanticGroup0015Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part09_group_passes :
    rootMaskSemanticGroup0015Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part09 p := by
    simp only [rootMaskSemanticGroup0015Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part09 p := by
    simp only [rootMaskSemanticGroup0015Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part10_group_passes :
    rootMaskSemanticGroup0015Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part10 p := by
    simp only [rootMaskSemanticGroup0015Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part10 p := by
    simp only [rootMaskSemanticGroup0015Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part11_group_passes :
    rootMaskSemanticGroup0015Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part11 p := by
    simp only [rootMaskSemanticGroup0015Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part11 p := by
    simp only [rootMaskSemanticGroup0015Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part12_group_passes :
    rootMaskSemanticGroup0015Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part12 p := by
    simp only [rootMaskSemanticGroup0015Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part12 p := by
    simp only [rootMaskSemanticGroup0015Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part13_group_passes :
    rootMaskSemanticGroup0015Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part13 p := by
    simp only [rootMaskSemanticGroup0015Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part13 p := by
    simp only [rootMaskSemanticGroup0015Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part14_group_passes :
    rootMaskSemanticGroup0015Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part14 p := by
    simp only [rootMaskSemanticGroup0015Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part14 p := by
    simp only [rootMaskSemanticGroup0015Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0015Part15_group_passes :
    rootMaskSemanticGroup0015Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0015 p =
      rootNormalQrMaskWords0015Part15 p := by
    simp only [rootMaskSemanticGroup0015Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0015 p =
      rootTwistQrMaskWords0015Part15 p := by
    simp only [rootMaskSemanticGroup0015Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0015 : List ℕ :=
  [1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597, 1601, 1607, 1609, 1613, 1619, 1621, 1627]

theorem rootMaskSemanticGroup0015_passes :
    rootMaskSemanticGroup0015.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  rw [show rootMaskSemanticGroup0015 =
      rootMaskSemanticGroup0015Part00 ++
      rootMaskSemanticGroup0015Part01 ++
      rootMaskSemanticGroup0015Part02 ++
      rootMaskSemanticGroup0015Part03 ++
      rootMaskSemanticGroup0015Part04 ++
      rootMaskSemanticGroup0015Part05 ++
      rootMaskSemanticGroup0015Part06 ++
      rootMaskSemanticGroup0015Part07 ++
      rootMaskSemanticGroup0015Part08 ++
      rootMaskSemanticGroup0015Part09 ++
      rootMaskSemanticGroup0015Part10 ++
      rootMaskSemanticGroup0015Part11 ++
      rootMaskSemanticGroup0015Part12 ++
      rootMaskSemanticGroup0015Part13 ++
      rootMaskSemanticGroup0015Part14 ++
      rootMaskSemanticGroup0015Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0015Part00_group_passes]
  rw [rootMaskSemanticGroup0015Part01_group_passes]
  rw [rootMaskSemanticGroup0015Part02_group_passes]
  rw [rootMaskSemanticGroup0015Part03_group_passes]
  rw [rootMaskSemanticGroup0015Part04_group_passes]
  rw [rootMaskSemanticGroup0015Part05_group_passes]
  rw [rootMaskSemanticGroup0015Part06_group_passes]
  rw [rootMaskSemanticGroup0015Part07_group_passes]
  rw [rootMaskSemanticGroup0015Part08_group_passes]
  rw [rootMaskSemanticGroup0015Part09_group_passes]
  rw [rootMaskSemanticGroup0015Part10_group_passes]
  rw [rootMaskSemanticGroup0015Part11_group_passes]
  rw [rootMaskSemanticGroup0015Part12_group_passes]
  rw [rootMaskSemanticGroup0015Part13_group_passes]
  rw [rootMaskSemanticGroup0015Part14_group_passes]
  rw [rootMaskSemanticGroup0015Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
