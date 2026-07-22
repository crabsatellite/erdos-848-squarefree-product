import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0029
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0029Part00_group_passes :
    rootMaskSemanticGroup0029Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part00 p := by
    simp only [rootMaskSemanticGroup0029Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part00 p := by
    simp only [rootMaskSemanticGroup0029Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part01_group_passes :
    rootMaskSemanticGroup0029Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part01 p := by
    simp only [rootMaskSemanticGroup0029Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part01 p := by
    simp only [rootMaskSemanticGroup0029Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part02_group_passes :
    rootMaskSemanticGroup0029Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part02 p := by
    simp only [rootMaskSemanticGroup0029Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part02 p := by
    simp only [rootMaskSemanticGroup0029Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part03_group_passes :
    rootMaskSemanticGroup0029Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part03 p := by
    simp only [rootMaskSemanticGroup0029Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part03 p := by
    simp only [rootMaskSemanticGroup0029Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part04_group_passes :
    rootMaskSemanticGroup0029Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part04 p := by
    simp only [rootMaskSemanticGroup0029Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part04 p := by
    simp only [rootMaskSemanticGroup0029Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part05_group_passes :
    rootMaskSemanticGroup0029Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part05 p := by
    simp only [rootMaskSemanticGroup0029Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part05 p := by
    simp only [rootMaskSemanticGroup0029Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part06_group_passes :
    rootMaskSemanticGroup0029Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part06 p := by
    simp only [rootMaskSemanticGroup0029Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part06 p := by
    simp only [rootMaskSemanticGroup0029Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part07_group_passes :
    rootMaskSemanticGroup0029Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part07 p := by
    simp only [rootMaskSemanticGroup0029Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part07 p := by
    simp only [rootMaskSemanticGroup0029Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part08_group_passes :
    rootMaskSemanticGroup0029Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part08 p := by
    simp only [rootMaskSemanticGroup0029Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part08 p := by
    simp only [rootMaskSemanticGroup0029Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part09_group_passes :
    rootMaskSemanticGroup0029Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part09 p := by
    simp only [rootMaskSemanticGroup0029Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part09 p := by
    simp only [rootMaskSemanticGroup0029Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part10_group_passes :
    rootMaskSemanticGroup0029Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part10 p := by
    simp only [rootMaskSemanticGroup0029Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part10 p := by
    simp only [rootMaskSemanticGroup0029Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part11_group_passes :
    rootMaskSemanticGroup0029Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part11 p := by
    simp only [rootMaskSemanticGroup0029Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part11 p := by
    simp only [rootMaskSemanticGroup0029Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part12_group_passes :
    rootMaskSemanticGroup0029Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part12 p := by
    simp only [rootMaskSemanticGroup0029Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part12 p := by
    simp only [rootMaskSemanticGroup0029Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part13_group_passes :
    rootMaskSemanticGroup0029Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part13 p := by
    simp only [rootMaskSemanticGroup0029Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part13 p := by
    simp only [rootMaskSemanticGroup0029Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part14_group_passes :
    rootMaskSemanticGroup0029Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part14 p := by
    simp only [rootMaskSemanticGroup0029Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part14 p := by
    simp only [rootMaskSemanticGroup0029Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0029Part15_group_passes :
    rootMaskSemanticGroup0029Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0029 p =
      rootNormalQrMaskWords0029Part15 p := by
    simp only [rootMaskSemanticGroup0029Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0029 p =
      rootTwistQrMaskWords0029Part15 p := by
    simp only [rootMaskSemanticGroup0029Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0029 : List ℕ :=
  [3319, 3323, 3329, 3331, 3343, 3347, 3359, 3361, 3371, 3373, 3389, 3391, 3407, 3413, 3433, 3449]

theorem rootMaskSemanticGroup0029_passes :
    rootMaskSemanticGroup0029.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  rw [show rootMaskSemanticGroup0029 =
      rootMaskSemanticGroup0029Part00 ++
      rootMaskSemanticGroup0029Part01 ++
      rootMaskSemanticGroup0029Part02 ++
      rootMaskSemanticGroup0029Part03 ++
      rootMaskSemanticGroup0029Part04 ++
      rootMaskSemanticGroup0029Part05 ++
      rootMaskSemanticGroup0029Part06 ++
      rootMaskSemanticGroup0029Part07 ++
      rootMaskSemanticGroup0029Part08 ++
      rootMaskSemanticGroup0029Part09 ++
      rootMaskSemanticGroup0029Part10 ++
      rootMaskSemanticGroup0029Part11 ++
      rootMaskSemanticGroup0029Part12 ++
      rootMaskSemanticGroup0029Part13 ++
      rootMaskSemanticGroup0029Part14 ++
      rootMaskSemanticGroup0029Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0029Part00_group_passes]
  rw [rootMaskSemanticGroup0029Part01_group_passes]
  rw [rootMaskSemanticGroup0029Part02_group_passes]
  rw [rootMaskSemanticGroup0029Part03_group_passes]
  rw [rootMaskSemanticGroup0029Part04_group_passes]
  rw [rootMaskSemanticGroup0029Part05_group_passes]
  rw [rootMaskSemanticGroup0029Part06_group_passes]
  rw [rootMaskSemanticGroup0029Part07_group_passes]
  rw [rootMaskSemanticGroup0029Part08_group_passes]
  rw [rootMaskSemanticGroup0029Part09_group_passes]
  rw [rootMaskSemanticGroup0029Part10_group_passes]
  rw [rootMaskSemanticGroup0029Part11_group_passes]
  rw [rootMaskSemanticGroup0029Part12_group_passes]
  rw [rootMaskSemanticGroup0029Part13_group_passes]
  rw [rootMaskSemanticGroup0029Part14_group_passes]
  rw [rootMaskSemanticGroup0029Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
