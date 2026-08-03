import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0032
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0032Part00_group_passes :
    rootMaskSemanticGroup0032Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part00 p := by
    simp only [rootMaskSemanticGroup0032Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part00 p := by
    simp only [rootMaskSemanticGroup0032Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part01_group_passes :
    rootMaskSemanticGroup0032Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part01 p := by
    simp only [rootMaskSemanticGroup0032Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part01 p := by
    simp only [rootMaskSemanticGroup0032Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part02_group_passes :
    rootMaskSemanticGroup0032Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part02 p := by
    simp only [rootMaskSemanticGroup0032Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part02 p := by
    simp only [rootMaskSemanticGroup0032Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part03_group_passes :
    rootMaskSemanticGroup0032Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part03 p := by
    simp only [rootMaskSemanticGroup0032Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part03 p := by
    simp only [rootMaskSemanticGroup0032Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part04_group_passes :
    rootMaskSemanticGroup0032Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part04 p := by
    simp only [rootMaskSemanticGroup0032Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part04 p := by
    simp only [rootMaskSemanticGroup0032Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part05_group_passes :
    rootMaskSemanticGroup0032Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part05 p := by
    simp only [rootMaskSemanticGroup0032Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part05 p := by
    simp only [rootMaskSemanticGroup0032Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part06_group_passes :
    rootMaskSemanticGroup0032Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part06 p := by
    simp only [rootMaskSemanticGroup0032Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part06 p := by
    simp only [rootMaskSemanticGroup0032Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part07_group_passes :
    rootMaskSemanticGroup0032Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part07 p := by
    simp only [rootMaskSemanticGroup0032Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part07 p := by
    simp only [rootMaskSemanticGroup0032Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part08_group_passes :
    rootMaskSemanticGroup0032Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part08 p := by
    simp only [rootMaskSemanticGroup0032Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part08 p := by
    simp only [rootMaskSemanticGroup0032Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part09_group_passes :
    rootMaskSemanticGroup0032Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part09 p := by
    simp only [rootMaskSemanticGroup0032Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part09 p := by
    simp only [rootMaskSemanticGroup0032Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part10_group_passes :
    rootMaskSemanticGroup0032Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part10 p := by
    simp only [rootMaskSemanticGroup0032Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part10 p := by
    simp only [rootMaskSemanticGroup0032Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part11_group_passes :
    rootMaskSemanticGroup0032Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part11 p := by
    simp only [rootMaskSemanticGroup0032Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part11 p := by
    simp only [rootMaskSemanticGroup0032Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part12_group_passes :
    rootMaskSemanticGroup0032Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part12 p := by
    simp only [rootMaskSemanticGroup0032Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part12 p := by
    simp only [rootMaskSemanticGroup0032Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part13_group_passes :
    rootMaskSemanticGroup0032Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part13 p := by
    simp only [rootMaskSemanticGroup0032Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part13 p := by
    simp only [rootMaskSemanticGroup0032Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part14_group_passes :
    rootMaskSemanticGroup0032Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part14 p := by
    simp only [rootMaskSemanticGroup0032Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part14 p := by
    simp only [rootMaskSemanticGroup0032Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0032Part15_group_passes :
    rootMaskSemanticGroup0032Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0032 p =
      rootNormalQrMaskWords0032Part15 p := by
    simp only [rootMaskSemanticGroup0032Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0032 p =
      rootTwistQrMaskWords0032Part15 p := by
    simp only [rootMaskSemanticGroup0032Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0032 : List ℕ :=
  [3691, 3697, 3701, 3709, 3719, 3727, 3733, 3739, 3761, 3767, 3769, 3779, 3793, 3797, 3803, 3821]

theorem rootMaskSemanticGroup0032_passes :
    rootMaskSemanticGroup0032.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  rw [show rootMaskSemanticGroup0032 =
      rootMaskSemanticGroup0032Part00 ++
      rootMaskSemanticGroup0032Part01 ++
      rootMaskSemanticGroup0032Part02 ++
      rootMaskSemanticGroup0032Part03 ++
      rootMaskSemanticGroup0032Part04 ++
      rootMaskSemanticGroup0032Part05 ++
      rootMaskSemanticGroup0032Part06 ++
      rootMaskSemanticGroup0032Part07 ++
      rootMaskSemanticGroup0032Part08 ++
      rootMaskSemanticGroup0032Part09 ++
      rootMaskSemanticGroup0032Part10 ++
      rootMaskSemanticGroup0032Part11 ++
      rootMaskSemanticGroup0032Part12 ++
      rootMaskSemanticGroup0032Part13 ++
      rootMaskSemanticGroup0032Part14 ++
      rootMaskSemanticGroup0032Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0032Part00_group_passes]
  rw [rootMaskSemanticGroup0032Part01_group_passes]
  rw [rootMaskSemanticGroup0032Part02_group_passes]
  rw [rootMaskSemanticGroup0032Part03_group_passes]
  rw [rootMaskSemanticGroup0032Part04_group_passes]
  rw [rootMaskSemanticGroup0032Part05_group_passes]
  rw [rootMaskSemanticGroup0032Part06_group_passes]
  rw [rootMaskSemanticGroup0032Part07_group_passes]
  rw [rootMaskSemanticGroup0032Part08_group_passes]
  rw [rootMaskSemanticGroup0032Part09_group_passes]
  rw [rootMaskSemanticGroup0032Part10_group_passes]
  rw [rootMaskSemanticGroup0032Part11_group_passes]
  rw [rootMaskSemanticGroup0032Part12_group_passes]
  rw [rootMaskSemanticGroup0032Part13_group_passes]
  rw [rootMaskSemanticGroup0032Part14_group_passes]
  rw [rootMaskSemanticGroup0032Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
