import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0041
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0041Part00_group_passes :
    rootMaskSemanticGroup0041Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part00 p := by
    simp only [rootMaskSemanticGroup0041Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part00 p := by
    simp only [rootMaskSemanticGroup0041Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part01_group_passes :
    rootMaskSemanticGroup0041Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part01 p := by
    simp only [rootMaskSemanticGroup0041Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part01 p := by
    simp only [rootMaskSemanticGroup0041Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part02_group_passes :
    rootMaskSemanticGroup0041Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part02 p := by
    simp only [rootMaskSemanticGroup0041Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part02 p := by
    simp only [rootMaskSemanticGroup0041Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part03_group_passes :
    rootMaskSemanticGroup0041Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part03 p := by
    simp only [rootMaskSemanticGroup0041Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part03 p := by
    simp only [rootMaskSemanticGroup0041Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part04_group_passes :
    rootMaskSemanticGroup0041Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part04 p := by
    simp only [rootMaskSemanticGroup0041Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part04 p := by
    simp only [rootMaskSemanticGroup0041Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part05_group_passes :
    rootMaskSemanticGroup0041Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part05 p := by
    simp only [rootMaskSemanticGroup0041Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part05 p := by
    simp only [rootMaskSemanticGroup0041Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part06_group_passes :
    rootMaskSemanticGroup0041Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part06 p := by
    simp only [rootMaskSemanticGroup0041Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part06 p := by
    simp only [rootMaskSemanticGroup0041Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part07_group_passes :
    rootMaskSemanticGroup0041Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part07 p := by
    simp only [rootMaskSemanticGroup0041Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part07 p := by
    simp only [rootMaskSemanticGroup0041Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part08_group_passes :
    rootMaskSemanticGroup0041Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part08 p := by
    simp only [rootMaskSemanticGroup0041Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part08 p := by
    simp only [rootMaskSemanticGroup0041Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part09_group_passes :
    rootMaskSemanticGroup0041Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part09 p := by
    simp only [rootMaskSemanticGroup0041Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part09 p := by
    simp only [rootMaskSemanticGroup0041Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part10_group_passes :
    rootMaskSemanticGroup0041Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part10 p := by
    simp only [rootMaskSemanticGroup0041Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part10 p := by
    simp only [rootMaskSemanticGroup0041Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part11_group_passes :
    rootMaskSemanticGroup0041Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part11 p := by
    simp only [rootMaskSemanticGroup0041Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part11 p := by
    simp only [rootMaskSemanticGroup0041Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part12_group_passes :
    rootMaskSemanticGroup0041Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part12 p := by
    simp only [rootMaskSemanticGroup0041Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part12 p := by
    simp only [rootMaskSemanticGroup0041Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part13_group_passes :
    rootMaskSemanticGroup0041Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part13 p := by
    simp only [rootMaskSemanticGroup0041Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part13 p := by
    simp only [rootMaskSemanticGroup0041Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part14_group_passes :
    rootMaskSemanticGroup0041Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part14 p := by
    simp only [rootMaskSemanticGroup0041Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part14 p := by
    simp only [rootMaskSemanticGroup0041Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0041Part15_group_passes :
    rootMaskSemanticGroup0041Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0041 p =
      rootNormalQrMaskWords0041Part15 p := by
    simp only [rootMaskSemanticGroup0041Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0041 p =
      rootTwistQrMaskWords0041Part15 p := by
    simp only [rootMaskSemanticGroup0041Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0041 : List ℕ :=
  [4933, 4937, 4943, 4951, 4957, 4967, 4969, 4973, 4987, 4993, 4999, 5003, 5009, 5011, 5021, 5023]

theorem rootMaskSemanticGroup0041_passes :
    rootMaskSemanticGroup0041.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0041
        rootTwistQrMaskWords0041) = true := by
  rw [show rootMaskSemanticGroup0041 =
      rootMaskSemanticGroup0041Part00 ++
      rootMaskSemanticGroup0041Part01 ++
      rootMaskSemanticGroup0041Part02 ++
      rootMaskSemanticGroup0041Part03 ++
      rootMaskSemanticGroup0041Part04 ++
      rootMaskSemanticGroup0041Part05 ++
      rootMaskSemanticGroup0041Part06 ++
      rootMaskSemanticGroup0041Part07 ++
      rootMaskSemanticGroup0041Part08 ++
      rootMaskSemanticGroup0041Part09 ++
      rootMaskSemanticGroup0041Part10 ++
      rootMaskSemanticGroup0041Part11 ++
      rootMaskSemanticGroup0041Part12 ++
      rootMaskSemanticGroup0041Part13 ++
      rootMaskSemanticGroup0041Part14 ++
      rootMaskSemanticGroup0041Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0041Part00_group_passes]
  rw [rootMaskSemanticGroup0041Part01_group_passes]
  rw [rootMaskSemanticGroup0041Part02_group_passes]
  rw [rootMaskSemanticGroup0041Part03_group_passes]
  rw [rootMaskSemanticGroup0041Part04_group_passes]
  rw [rootMaskSemanticGroup0041Part05_group_passes]
  rw [rootMaskSemanticGroup0041Part06_group_passes]
  rw [rootMaskSemanticGroup0041Part07_group_passes]
  rw [rootMaskSemanticGroup0041Part08_group_passes]
  rw [rootMaskSemanticGroup0041Part09_group_passes]
  rw [rootMaskSemanticGroup0041Part10_group_passes]
  rw [rootMaskSemanticGroup0041Part11_group_passes]
  rw [rootMaskSemanticGroup0041Part12_group_passes]
  rw [rootMaskSemanticGroup0041Part13_group_passes]
  rw [rootMaskSemanticGroup0041Part14_group_passes]
  rw [rootMaskSemanticGroup0041Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
