import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0014
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0014Part00_group_passes :
    rootMaskSemanticGroup0014Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part00 p := by
    simp only [rootMaskSemanticGroup0014Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part00 p := by
    simp only [rootMaskSemanticGroup0014Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part01_group_passes :
    rootMaskSemanticGroup0014Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part01 p := by
    simp only [rootMaskSemanticGroup0014Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part01 p := by
    simp only [rootMaskSemanticGroup0014Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part02_group_passes :
    rootMaskSemanticGroup0014Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part02 p := by
    simp only [rootMaskSemanticGroup0014Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part02 p := by
    simp only [rootMaskSemanticGroup0014Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part03_group_passes :
    rootMaskSemanticGroup0014Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part03 p := by
    simp only [rootMaskSemanticGroup0014Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part03 p := by
    simp only [rootMaskSemanticGroup0014Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part04_group_passes :
    rootMaskSemanticGroup0014Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part04 p := by
    simp only [rootMaskSemanticGroup0014Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part04 p := by
    simp only [rootMaskSemanticGroup0014Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part05_group_passes :
    rootMaskSemanticGroup0014Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part05 p := by
    simp only [rootMaskSemanticGroup0014Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part05 p := by
    simp only [rootMaskSemanticGroup0014Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part06_group_passes :
    rootMaskSemanticGroup0014Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part06 p := by
    simp only [rootMaskSemanticGroup0014Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part06 p := by
    simp only [rootMaskSemanticGroup0014Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part07_group_passes :
    rootMaskSemanticGroup0014Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part07 p := by
    simp only [rootMaskSemanticGroup0014Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part07 p := by
    simp only [rootMaskSemanticGroup0014Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part08_group_passes :
    rootMaskSemanticGroup0014Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part08 p := by
    simp only [rootMaskSemanticGroup0014Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part08 p := by
    simp only [rootMaskSemanticGroup0014Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part09_group_passes :
    rootMaskSemanticGroup0014Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part09 p := by
    simp only [rootMaskSemanticGroup0014Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part09 p := by
    simp only [rootMaskSemanticGroup0014Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part10_group_passes :
    rootMaskSemanticGroup0014Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part10 p := by
    simp only [rootMaskSemanticGroup0014Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part10 p := by
    simp only [rootMaskSemanticGroup0014Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part11_group_passes :
    rootMaskSemanticGroup0014Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part11 p := by
    simp only [rootMaskSemanticGroup0014Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part11 p := by
    simp only [rootMaskSemanticGroup0014Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part12_group_passes :
    rootMaskSemanticGroup0014Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part12 p := by
    simp only [rootMaskSemanticGroup0014Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part12 p := by
    simp only [rootMaskSemanticGroup0014Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part13_group_passes :
    rootMaskSemanticGroup0014Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part13 p := by
    simp only [rootMaskSemanticGroup0014Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part13 p := by
    simp only [rootMaskSemanticGroup0014Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part14_group_passes :
    rootMaskSemanticGroup0014Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part14 p := by
    simp only [rootMaskSemanticGroup0014Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part14 p := by
    simp only [rootMaskSemanticGroup0014Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0014Part15_group_passes :
    rootMaskSemanticGroup0014Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0014 p =
      rootNormalQrMaskWords0014Part15 p := by
    simp only [rootMaskSemanticGroup0014Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0014 p =
      rootTwistQrMaskWords0014Part15 p := by
    simp only [rootMaskSemanticGroup0014Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0014 : List ℕ :=
  [1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511, 1523, 1531]

theorem rootMaskSemanticGroup0014_passes :
    rootMaskSemanticGroup0014.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  rw [show rootMaskSemanticGroup0014 =
      rootMaskSemanticGroup0014Part00 ++
      rootMaskSemanticGroup0014Part01 ++
      rootMaskSemanticGroup0014Part02 ++
      rootMaskSemanticGroup0014Part03 ++
      rootMaskSemanticGroup0014Part04 ++
      rootMaskSemanticGroup0014Part05 ++
      rootMaskSemanticGroup0014Part06 ++
      rootMaskSemanticGroup0014Part07 ++
      rootMaskSemanticGroup0014Part08 ++
      rootMaskSemanticGroup0014Part09 ++
      rootMaskSemanticGroup0014Part10 ++
      rootMaskSemanticGroup0014Part11 ++
      rootMaskSemanticGroup0014Part12 ++
      rootMaskSemanticGroup0014Part13 ++
      rootMaskSemanticGroup0014Part14 ++
      rootMaskSemanticGroup0014Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0014Part00_group_passes]
  rw [rootMaskSemanticGroup0014Part01_group_passes]
  rw [rootMaskSemanticGroup0014Part02_group_passes]
  rw [rootMaskSemanticGroup0014Part03_group_passes]
  rw [rootMaskSemanticGroup0014Part04_group_passes]
  rw [rootMaskSemanticGroup0014Part05_group_passes]
  rw [rootMaskSemanticGroup0014Part06_group_passes]
  rw [rootMaskSemanticGroup0014Part07_group_passes]
  rw [rootMaskSemanticGroup0014Part08_group_passes]
  rw [rootMaskSemanticGroup0014Part09_group_passes]
  rw [rootMaskSemanticGroup0014Part10_group_passes]
  rw [rootMaskSemanticGroup0014Part11_group_passes]
  rw [rootMaskSemanticGroup0014Part12_group_passes]
  rw [rootMaskSemanticGroup0014Part13_group_passes]
  rw [rootMaskSemanticGroup0014Part14_group_passes]
  rw [rootMaskSemanticGroup0014Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
