import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0050
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0050Part00_group_passes :
    rootMaskSemanticGroup0050Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part00 p := by
    simp only [rootMaskSemanticGroup0050Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part00 p := by
    simp only [rootMaskSemanticGroup0050Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part01_group_passes :
    rootMaskSemanticGroup0050Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part01 p := by
    simp only [rootMaskSemanticGroup0050Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part01 p := by
    simp only [rootMaskSemanticGroup0050Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part02_group_passes :
    rootMaskSemanticGroup0050Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part02 p := by
    simp only [rootMaskSemanticGroup0050Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part02 p := by
    simp only [rootMaskSemanticGroup0050Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part03_group_passes :
    rootMaskSemanticGroup0050Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part03 p := by
    simp only [rootMaskSemanticGroup0050Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part03 p := by
    simp only [rootMaskSemanticGroup0050Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part04_group_passes :
    rootMaskSemanticGroup0050Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part04 p := by
    simp only [rootMaskSemanticGroup0050Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part04 p := by
    simp only [rootMaskSemanticGroup0050Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part05_group_passes :
    rootMaskSemanticGroup0050Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part05 p := by
    simp only [rootMaskSemanticGroup0050Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part05 p := by
    simp only [rootMaskSemanticGroup0050Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part06_group_passes :
    rootMaskSemanticGroup0050Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part06 p := by
    simp only [rootMaskSemanticGroup0050Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part06 p := by
    simp only [rootMaskSemanticGroup0050Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part07_group_passes :
    rootMaskSemanticGroup0050Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part07 p := by
    simp only [rootMaskSemanticGroup0050Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part07 p := by
    simp only [rootMaskSemanticGroup0050Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part08_group_passes :
    rootMaskSemanticGroup0050Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part08 p := by
    simp only [rootMaskSemanticGroup0050Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part08 p := by
    simp only [rootMaskSemanticGroup0050Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part09_group_passes :
    rootMaskSemanticGroup0050Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part09 p := by
    simp only [rootMaskSemanticGroup0050Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part09 p := by
    simp only [rootMaskSemanticGroup0050Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part10_group_passes :
    rootMaskSemanticGroup0050Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part10 p := by
    simp only [rootMaskSemanticGroup0050Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part10 p := by
    simp only [rootMaskSemanticGroup0050Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part11_group_passes :
    rootMaskSemanticGroup0050Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part11 p := by
    simp only [rootMaskSemanticGroup0050Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part11 p := by
    simp only [rootMaskSemanticGroup0050Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part12_group_passes :
    rootMaskSemanticGroup0050Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part12 p := by
    simp only [rootMaskSemanticGroup0050Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part12 p := by
    simp only [rootMaskSemanticGroup0050Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part13_group_passes :
    rootMaskSemanticGroup0050Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part13 p := by
    simp only [rootMaskSemanticGroup0050Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part13 p := by
    simp only [rootMaskSemanticGroup0050Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part14_group_passes :
    rootMaskSemanticGroup0050Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part14 p := by
    simp only [rootMaskSemanticGroup0050Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part14 p := by
    simp only [rootMaskSemanticGroup0050Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0050Part15_group_passes :
    rootMaskSemanticGroup0050Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0050 p =
      rootNormalQrMaskWords0050Part15 p := by
    simp only [rootMaskSemanticGroup0050Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0050 p =
      rootTwistQrMaskWords0050Part15 p := by
    simp only [rootMaskSemanticGroup0050Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0050 : List ℕ :=
  [6163, 6173, 6197, 6199, 6203, 6211, 6217, 6221, 6229, 6247, 6257, 6263, 6269, 6271, 6277, 6287]

theorem rootMaskSemanticGroup0050_passes :
    rootMaskSemanticGroup0050.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0050
        rootTwistQrMaskWords0050) = true := by
  rw [show rootMaskSemanticGroup0050 =
      rootMaskSemanticGroup0050Part00 ++
      rootMaskSemanticGroup0050Part01 ++
      rootMaskSemanticGroup0050Part02 ++
      rootMaskSemanticGroup0050Part03 ++
      rootMaskSemanticGroup0050Part04 ++
      rootMaskSemanticGroup0050Part05 ++
      rootMaskSemanticGroup0050Part06 ++
      rootMaskSemanticGroup0050Part07 ++
      rootMaskSemanticGroup0050Part08 ++
      rootMaskSemanticGroup0050Part09 ++
      rootMaskSemanticGroup0050Part10 ++
      rootMaskSemanticGroup0050Part11 ++
      rootMaskSemanticGroup0050Part12 ++
      rootMaskSemanticGroup0050Part13 ++
      rootMaskSemanticGroup0050Part14 ++
      rootMaskSemanticGroup0050Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0050Part00_group_passes]
  rw [rootMaskSemanticGroup0050Part01_group_passes]
  rw [rootMaskSemanticGroup0050Part02_group_passes]
  rw [rootMaskSemanticGroup0050Part03_group_passes]
  rw [rootMaskSemanticGroup0050Part04_group_passes]
  rw [rootMaskSemanticGroup0050Part05_group_passes]
  rw [rootMaskSemanticGroup0050Part06_group_passes]
  rw [rootMaskSemanticGroup0050Part07_group_passes]
  rw [rootMaskSemanticGroup0050Part08_group_passes]
  rw [rootMaskSemanticGroup0050Part09_group_passes]
  rw [rootMaskSemanticGroup0050Part10_group_passes]
  rw [rootMaskSemanticGroup0050Part11_group_passes]
  rw [rootMaskSemanticGroup0050Part12_group_passes]
  rw [rootMaskSemanticGroup0050Part13_group_passes]
  rw [rootMaskSemanticGroup0050Part14_group_passes]
  rw [rootMaskSemanticGroup0050Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
