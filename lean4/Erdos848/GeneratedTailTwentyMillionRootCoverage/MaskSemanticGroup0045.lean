import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0045
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0045Part00_group_passes :
    rootMaskSemanticGroup0045Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part00 p := by
    simp only [rootMaskSemanticGroup0045Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part00 p := by
    simp only [rootMaskSemanticGroup0045Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part01_group_passes :
    rootMaskSemanticGroup0045Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part01 p := by
    simp only [rootMaskSemanticGroup0045Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part01 p := by
    simp only [rootMaskSemanticGroup0045Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part02_group_passes :
    rootMaskSemanticGroup0045Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part02 p := by
    simp only [rootMaskSemanticGroup0045Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part02 p := by
    simp only [rootMaskSemanticGroup0045Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part03_group_passes :
    rootMaskSemanticGroup0045Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part03 p := by
    simp only [rootMaskSemanticGroup0045Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part03 p := by
    simp only [rootMaskSemanticGroup0045Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part04_group_passes :
    rootMaskSemanticGroup0045Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part04 p := by
    simp only [rootMaskSemanticGroup0045Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part04 p := by
    simp only [rootMaskSemanticGroup0045Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part05_group_passes :
    rootMaskSemanticGroup0045Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part05 p := by
    simp only [rootMaskSemanticGroup0045Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part05 p := by
    simp only [rootMaskSemanticGroup0045Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part06_group_passes :
    rootMaskSemanticGroup0045Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part06 p := by
    simp only [rootMaskSemanticGroup0045Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part06 p := by
    simp only [rootMaskSemanticGroup0045Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part07_group_passes :
    rootMaskSemanticGroup0045Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part07 p := by
    simp only [rootMaskSemanticGroup0045Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part07 p := by
    simp only [rootMaskSemanticGroup0045Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part08_group_passes :
    rootMaskSemanticGroup0045Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part08 p := by
    simp only [rootMaskSemanticGroup0045Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part08 p := by
    simp only [rootMaskSemanticGroup0045Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part09_group_passes :
    rootMaskSemanticGroup0045Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part09 p := by
    simp only [rootMaskSemanticGroup0045Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part09 p := by
    simp only [rootMaskSemanticGroup0045Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part10_group_passes :
    rootMaskSemanticGroup0045Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part10 p := by
    simp only [rootMaskSemanticGroup0045Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part10 p := by
    simp only [rootMaskSemanticGroup0045Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part11_group_passes :
    rootMaskSemanticGroup0045Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part11 p := by
    simp only [rootMaskSemanticGroup0045Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part11 p := by
    simp only [rootMaskSemanticGroup0045Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part12_group_passes :
    rootMaskSemanticGroup0045Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part12 p := by
    simp only [rootMaskSemanticGroup0045Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part12 p := by
    simp only [rootMaskSemanticGroup0045Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part13_group_passes :
    rootMaskSemanticGroup0045Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part13 p := by
    simp only [rootMaskSemanticGroup0045Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part13 p := by
    simp only [rootMaskSemanticGroup0045Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part14_group_passes :
    rootMaskSemanticGroup0045Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part14 p := by
    simp only [rootMaskSemanticGroup0045Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part14 p := by
    simp only [rootMaskSemanticGroup0045Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0045Part15_group_passes :
    rootMaskSemanticGroup0045Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0045 p =
      rootNormalQrMaskWords0045Part15 p := by
    simp only [rootMaskSemanticGroup0045Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0045 p =
      rootTwistQrMaskWords0045Part15 p := by
    simp only [rootMaskSemanticGroup0045Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0045 : List ℕ :=
  [5477, 5479, 5483, 5501, 5503, 5507, 5519, 5521, 5527, 5531, 5557, 5563, 5569, 5573, 5581, 5591]

theorem rootMaskSemanticGroup0045_passes :
    rootMaskSemanticGroup0045.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0045
        rootTwistQrMaskWords0045) = true := by
  rw [show rootMaskSemanticGroup0045 =
      rootMaskSemanticGroup0045Part00 ++
      rootMaskSemanticGroup0045Part01 ++
      rootMaskSemanticGroup0045Part02 ++
      rootMaskSemanticGroup0045Part03 ++
      rootMaskSemanticGroup0045Part04 ++
      rootMaskSemanticGroup0045Part05 ++
      rootMaskSemanticGroup0045Part06 ++
      rootMaskSemanticGroup0045Part07 ++
      rootMaskSemanticGroup0045Part08 ++
      rootMaskSemanticGroup0045Part09 ++
      rootMaskSemanticGroup0045Part10 ++
      rootMaskSemanticGroup0045Part11 ++
      rootMaskSemanticGroup0045Part12 ++
      rootMaskSemanticGroup0045Part13 ++
      rootMaskSemanticGroup0045Part14 ++
      rootMaskSemanticGroup0045Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0045Part00_group_passes]
  rw [rootMaskSemanticGroup0045Part01_group_passes]
  rw [rootMaskSemanticGroup0045Part02_group_passes]
  rw [rootMaskSemanticGroup0045Part03_group_passes]
  rw [rootMaskSemanticGroup0045Part04_group_passes]
  rw [rootMaskSemanticGroup0045Part05_group_passes]
  rw [rootMaskSemanticGroup0045Part06_group_passes]
  rw [rootMaskSemanticGroup0045Part07_group_passes]
  rw [rootMaskSemanticGroup0045Part08_group_passes]
  rw [rootMaskSemanticGroup0045Part09_group_passes]
  rw [rootMaskSemanticGroup0045Part10_group_passes]
  rw [rootMaskSemanticGroup0045Part11_group_passes]
  rw [rootMaskSemanticGroup0045Part12_group_passes]
  rw [rootMaskSemanticGroup0045Part13_group_passes]
  rw [rootMaskSemanticGroup0045Part14_group_passes]
  rw [rootMaskSemanticGroup0045Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
