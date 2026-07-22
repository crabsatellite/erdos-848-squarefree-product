import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0038Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0038
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0038Part00_group_passes :
    rootMaskSemanticGroup0038Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part00 p := by
    simp only [rootMaskSemanticGroup0038Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part00 p := by
    simp only [rootMaskSemanticGroup0038Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part01_group_passes :
    rootMaskSemanticGroup0038Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part01 p := by
    simp only [rootMaskSemanticGroup0038Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part01 p := by
    simp only [rootMaskSemanticGroup0038Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part02_group_passes :
    rootMaskSemanticGroup0038Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part02 p := by
    simp only [rootMaskSemanticGroup0038Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part02 p := by
    simp only [rootMaskSemanticGroup0038Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part03_group_passes :
    rootMaskSemanticGroup0038Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part03 p := by
    simp only [rootMaskSemanticGroup0038Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part03 p := by
    simp only [rootMaskSemanticGroup0038Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part04_group_passes :
    rootMaskSemanticGroup0038Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part04 p := by
    simp only [rootMaskSemanticGroup0038Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part04 p := by
    simp only [rootMaskSemanticGroup0038Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part05_group_passes :
    rootMaskSemanticGroup0038Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part05 p := by
    simp only [rootMaskSemanticGroup0038Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part05 p := by
    simp only [rootMaskSemanticGroup0038Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part06_group_passes :
    rootMaskSemanticGroup0038Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part06 p := by
    simp only [rootMaskSemanticGroup0038Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part06 p := by
    simp only [rootMaskSemanticGroup0038Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part07_group_passes :
    rootMaskSemanticGroup0038Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part07 p := by
    simp only [rootMaskSemanticGroup0038Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part07 p := by
    simp only [rootMaskSemanticGroup0038Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part08_group_passes :
    rootMaskSemanticGroup0038Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part08 p := by
    simp only [rootMaskSemanticGroup0038Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part08 p := by
    simp only [rootMaskSemanticGroup0038Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part09_group_passes :
    rootMaskSemanticGroup0038Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part09 p := by
    simp only [rootMaskSemanticGroup0038Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part09 p := by
    simp only [rootMaskSemanticGroup0038Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part10_group_passes :
    rootMaskSemanticGroup0038Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part10 p := by
    simp only [rootMaskSemanticGroup0038Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part10 p := by
    simp only [rootMaskSemanticGroup0038Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part11_group_passes :
    rootMaskSemanticGroup0038Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part11 p := by
    simp only [rootMaskSemanticGroup0038Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part11 p := by
    simp only [rootMaskSemanticGroup0038Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part12_group_passes :
    rootMaskSemanticGroup0038Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part12 p := by
    simp only [rootMaskSemanticGroup0038Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part12 p := by
    simp only [rootMaskSemanticGroup0038Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part13_group_passes :
    rootMaskSemanticGroup0038Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part13 p := by
    simp only [rootMaskSemanticGroup0038Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part13 p := by
    simp only [rootMaskSemanticGroup0038Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part14_group_passes :
    rootMaskSemanticGroup0038Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part14 p := by
    simp only [rootMaskSemanticGroup0038Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part14 p := by
    simp only [rootMaskSemanticGroup0038Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0038Part15_group_passes :
    rootMaskSemanticGroup0038Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0038Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0038 p =
      rootNormalQrMaskWords0038Part15 p := by
    simp only [rootMaskSemanticGroup0038Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0038 p =
      rootTwistQrMaskWords0038Part15 p := by
    simp only [rootMaskSemanticGroup0038Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0038 : List ℕ :=
  [4507, 4513, 4517, 4519, 4523, 4547, 4549, 4561, 4567, 4583, 4591, 4597, 4603, 4621, 4637, 4639]

theorem rootMaskSemanticGroup0038_passes :
    rootMaskSemanticGroup0038.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0038
        rootTwistQrMaskWords0038) = true := by
  rw [show rootMaskSemanticGroup0038 =
      rootMaskSemanticGroup0038Part00 ++
      rootMaskSemanticGroup0038Part01 ++
      rootMaskSemanticGroup0038Part02 ++
      rootMaskSemanticGroup0038Part03 ++
      rootMaskSemanticGroup0038Part04 ++
      rootMaskSemanticGroup0038Part05 ++
      rootMaskSemanticGroup0038Part06 ++
      rootMaskSemanticGroup0038Part07 ++
      rootMaskSemanticGroup0038Part08 ++
      rootMaskSemanticGroup0038Part09 ++
      rootMaskSemanticGroup0038Part10 ++
      rootMaskSemanticGroup0038Part11 ++
      rootMaskSemanticGroup0038Part12 ++
      rootMaskSemanticGroup0038Part13 ++
      rootMaskSemanticGroup0038Part14 ++
      rootMaskSemanticGroup0038Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0038Part00_group_passes]
  rw [rootMaskSemanticGroup0038Part01_group_passes]
  rw [rootMaskSemanticGroup0038Part02_group_passes]
  rw [rootMaskSemanticGroup0038Part03_group_passes]
  rw [rootMaskSemanticGroup0038Part04_group_passes]
  rw [rootMaskSemanticGroup0038Part05_group_passes]
  rw [rootMaskSemanticGroup0038Part06_group_passes]
  rw [rootMaskSemanticGroup0038Part07_group_passes]
  rw [rootMaskSemanticGroup0038Part08_group_passes]
  rw [rootMaskSemanticGroup0038Part09_group_passes]
  rw [rootMaskSemanticGroup0038Part10_group_passes]
  rw [rootMaskSemanticGroup0038Part11_group_passes]
  rw [rootMaskSemanticGroup0038Part12_group_passes]
  rw [rootMaskSemanticGroup0038Part13_group_passes]
  rw [rootMaskSemanticGroup0038Part14_group_passes]
  rw [rootMaskSemanticGroup0038Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
