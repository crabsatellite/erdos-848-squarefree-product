import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0047
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0047Part00_group_passes :
    rootMaskSemanticGroup0047Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part00 p := by
    simp only [rootMaskSemanticGroup0047Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part00 p := by
    simp only [rootMaskSemanticGroup0047Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part01_group_passes :
    rootMaskSemanticGroup0047Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part01 p := by
    simp only [rootMaskSemanticGroup0047Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part01 p := by
    simp only [rootMaskSemanticGroup0047Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part02_group_passes :
    rootMaskSemanticGroup0047Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part02 p := by
    simp only [rootMaskSemanticGroup0047Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part02 p := by
    simp only [rootMaskSemanticGroup0047Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part03_group_passes :
    rootMaskSemanticGroup0047Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part03 p := by
    simp only [rootMaskSemanticGroup0047Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part03 p := by
    simp only [rootMaskSemanticGroup0047Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part04_group_passes :
    rootMaskSemanticGroup0047Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part04 p := by
    simp only [rootMaskSemanticGroup0047Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part04 p := by
    simp only [rootMaskSemanticGroup0047Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part05_group_passes :
    rootMaskSemanticGroup0047Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part05 p := by
    simp only [rootMaskSemanticGroup0047Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part05 p := by
    simp only [rootMaskSemanticGroup0047Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part06_group_passes :
    rootMaskSemanticGroup0047Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part06 p := by
    simp only [rootMaskSemanticGroup0047Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part06 p := by
    simp only [rootMaskSemanticGroup0047Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part07_group_passes :
    rootMaskSemanticGroup0047Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part07 p := by
    simp only [rootMaskSemanticGroup0047Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part07 p := by
    simp only [rootMaskSemanticGroup0047Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part08_group_passes :
    rootMaskSemanticGroup0047Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part08 p := by
    simp only [rootMaskSemanticGroup0047Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part08 p := by
    simp only [rootMaskSemanticGroup0047Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part09_group_passes :
    rootMaskSemanticGroup0047Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part09 p := by
    simp only [rootMaskSemanticGroup0047Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part09 p := by
    simp only [rootMaskSemanticGroup0047Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part10_group_passes :
    rootMaskSemanticGroup0047Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part10 p := by
    simp only [rootMaskSemanticGroup0047Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part10 p := by
    simp only [rootMaskSemanticGroup0047Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part11_group_passes :
    rootMaskSemanticGroup0047Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part11 p := by
    simp only [rootMaskSemanticGroup0047Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part11 p := by
    simp only [rootMaskSemanticGroup0047Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part12_group_passes :
    rootMaskSemanticGroup0047Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part12 p := by
    simp only [rootMaskSemanticGroup0047Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part12 p := by
    simp only [rootMaskSemanticGroup0047Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part13_group_passes :
    rootMaskSemanticGroup0047Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part13 p := by
    simp only [rootMaskSemanticGroup0047Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part13 p := by
    simp only [rootMaskSemanticGroup0047Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part14_group_passes :
    rootMaskSemanticGroup0047Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part14 p := by
    simp only [rootMaskSemanticGroup0047Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part14 p := by
    simp only [rootMaskSemanticGroup0047Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0047Part15_group_passes :
    rootMaskSemanticGroup0047Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0047 p =
      rootNormalQrMaskWords0047Part15 p := by
    simp only [rootMaskSemanticGroup0047Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0047 p =
      rootTwistQrMaskWords0047Part15 p := by
    simp only [rootMaskSemanticGroup0047Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0047 : List ℕ :=
  [5741, 5743, 5749, 5779, 5783, 5791, 5801, 5807, 5813, 5821, 5827, 5839, 5843, 5849, 5851, 5857]

theorem rootMaskSemanticGroup0047_passes :
    rootMaskSemanticGroup0047.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0047
        rootTwistQrMaskWords0047) = true := by
  rw [show rootMaskSemanticGroup0047 =
      rootMaskSemanticGroup0047Part00 ++
      rootMaskSemanticGroup0047Part01 ++
      rootMaskSemanticGroup0047Part02 ++
      rootMaskSemanticGroup0047Part03 ++
      rootMaskSemanticGroup0047Part04 ++
      rootMaskSemanticGroup0047Part05 ++
      rootMaskSemanticGroup0047Part06 ++
      rootMaskSemanticGroup0047Part07 ++
      rootMaskSemanticGroup0047Part08 ++
      rootMaskSemanticGroup0047Part09 ++
      rootMaskSemanticGroup0047Part10 ++
      rootMaskSemanticGroup0047Part11 ++
      rootMaskSemanticGroup0047Part12 ++
      rootMaskSemanticGroup0047Part13 ++
      rootMaskSemanticGroup0047Part14 ++
      rootMaskSemanticGroup0047Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0047Part00_group_passes]
  rw [rootMaskSemanticGroup0047Part01_group_passes]
  rw [rootMaskSemanticGroup0047Part02_group_passes]
  rw [rootMaskSemanticGroup0047Part03_group_passes]
  rw [rootMaskSemanticGroup0047Part04_group_passes]
  rw [rootMaskSemanticGroup0047Part05_group_passes]
  rw [rootMaskSemanticGroup0047Part06_group_passes]
  rw [rootMaskSemanticGroup0047Part07_group_passes]
  rw [rootMaskSemanticGroup0047Part08_group_passes]
  rw [rootMaskSemanticGroup0047Part09_group_passes]
  rw [rootMaskSemanticGroup0047Part10_group_passes]
  rw [rootMaskSemanticGroup0047Part11_group_passes]
  rw [rootMaskSemanticGroup0047Part12_group_passes]
  rw [rootMaskSemanticGroup0047Part13_group_passes]
  rw [rootMaskSemanticGroup0047Part14_group_passes]
  rw [rootMaskSemanticGroup0047Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
